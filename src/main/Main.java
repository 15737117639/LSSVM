package main;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import lssvm.LSSVM;

import util.MyJDBC;

public class Main 
{
	
	public static void testIrisLSSVM() throws SQLException //运行iris数据集的结果
	{
		
		MyJDBC jdbc=new MyJDBC(); //建立JDBC对象
		
		jdbc.createConnection(); //获取数据库连接 
		
		String sql="select * from iris"; //使用sql语句查询所有的数据
		
		ResultSet rs=jdbc.executeQuery(sql); //执行sql语句查询
		
		List<Double> x1_list=new ArrayList<Double>(); //ArrayList保存所有x1
		List<Double> x2_list=new ArrayList<Double>(); //ArrayList保存所有x2
		List<Double> x3_list=new ArrayList<Double>(); //ArrayList保存所有x3
		List<Double> x4_list=new ArrayList<Double>(); //ArrayList保存所有x4
		
		List<String> y_list=new ArrayList<String>(); //ArrayList保存所有y
		
		

		while(rs.next())
		{
			double x1=rs.getDouble("x1"); //获取x1
			
			double x2=rs.getDouble("x2"); //获取x2
			
			double x3=rs.getDouble("x3"); //获取x3
		
			double x4=rs.getDouble("x4"); //获取x4
			
			
			String y=rs.getString("y"); //获取y
			
			x1_list.add(x1); //x1_list加入x1
			
			x2_list.add(x2); //x2_list加入x2
			
			x3_list.add(x3); //x3_list加入x2
			
			x4_list.add(x4); //x4_list加入x2
			
			y_list.add(y); //y_list加入y
			
//			System.out.println(x1+" "+x2+" "+y);
		
			
		}
		
		int N=x1_list.size(); //求数据的个数
		
		double[][] X=new double[N][4]; //使用一个二维数据保存输入的数据
		
		double[] Y=new double[N]; //使用一个一维数据保存类别标签
		
		for(int i=0;i<N;i++)
		{
			X[i][0]=x1_list.get(i); //输入数据的赋值
			
			X[i][1]=x2_list.get(i); 
			
			X[i][2]=x3_list.get(i); 
			
			X[i][3]=x4_list.get(i); 
			
			if(y_list.get(i).equals("Iris-setosa"))
				Y[i]=1; //标签数据的赋值
			else if(y_list.get(i).equals("Iris-versicolor"))
				Y[i]=-1; //标签数据的赋值
			
		
		}
		
		//选择80%的数据作为训练
		int len=(int)Math.ceil(0.8*N);
		double[][] TrainX=new double[len][4]; //二维数据保存训练集合中的输入数据
		double[] TrainY=new double[len];	//一维数据保存训练集合中的类别
		for(int i=0;i<len/2;i++)
		{
			TrainX[i][0]=X[i][0]; //训练集数据输入赋值
			TrainX[i][1]=X[i][1];
			TrainX[i][2]=X[i][2];
			TrainX[i][3]=X[i][3];
			TrainY[i]=Y[i]; //训练集标签输入赋值
		}
		
		
		for(int i=0;i<len/2;i++)
		{
			TrainX[len/2+i][0]=X[N/2+i][0]; //训练集数据输入赋值
			TrainX[len/2+i][1]=X[N/2+i][1];
			TrainX[len/2+i][2]=X[N/2+i][2];
			TrainX[len/2+i][3]=X[N/2+i][3];
			TrainY[len/2+i]=Y[N/2+i]; //训练集标签输入赋值
		}
		
		double[][] TestX=new double[N-len][4]; //二维数据保存测试集合中的输入数据
		double[] TestY=new double[N-len];	//一维数据保存测试集合中的类别
//		System.out.println(len+" "+(N-len));
		for(int i=0;i<(N-len)/2;i++)
		{
			TestX[i][0]=X[len/2+i][0]; //测试集数据输入赋值
			TestX[i][1]=X[len/2+i][1];
			TestX[i][2]=X[len/2+i][2];
			TestX[i][3]=X[len/2+i][3];
			TestY[i]=Y[len/2+i]; //测试集标签输入赋值
		}
		for(int i=0;i<(N-len)/2;i++)
		{
			TestX[(N-len)/2+i][0]=X[N/2+len/2+i][0]; //测试集数据输入赋值
			TestX[(N-len)/2+i][1]=X[N/2+len/2+i][1];
			TestX[(N-len)/2+i][2]=X[N/2+len/2+i][2];
			TestX[(N-len)/2+i][3]=X[N/2+len/2+i][3];
			TestY[(N-len)/2+i]=Y[N/2+len/2+i]; //测试集标签输入赋值
		}
		
		LSSVM lssvm=new LSSVM(); //新建LSSVM处理实例
		
		System.out.println("LSSVM for Iris 数据集的结果");
		lssvm.train(TrainX, TrainY, 12); //LSSVM对训练集进行训练
		double[] predict_y=lssvm.predict(TestX); //使用训练好的LSSVM进行类别的预测
		
		System.out.println("实际类别 预测类别"); //打印实际类别和预测类别
		int correct=0;
		for(int i=0;i<N-len;i++)
		{
			String test_y_str=TestY[i]==1?"Iris-setosa":"Iris-versicolor";
			String predict_y_str=predict_y[i]==1?"Iris-setosa":"Iris-versicolor";
			
			System.out.println(test_y_str+" "+predict_y_str);
			if(TestY[i]==predict_y[i])
				correct++;
		}
		
		System.out.println("正确率:"+correct/(N-len)*100+"%"); //输出整体的正确率
		
	}
	

	public static void testWineLSSVM() throws SQLException //运行wine数据集的结果
	{
		
		MyJDBC jdbc=new MyJDBC(); //建立JDBC对象
		
		jdbc.createConnection(); //获取数据库连接 
		
		String sql="select * from wine"; //使用sql语句查询所有的数据
		
		ResultSet rs=jdbc.executeQuery(sql); //执行sql语句查询
		
		List<Double> x1_list=new ArrayList<Double>(); //ArrayList保存所有x1
		List<Double> x2_list=new ArrayList<Double>(); //ArrayList保存所有x2
		List<Double> x3_list=new ArrayList<Double>(); //ArrayList保存所有x3
		List<Double> x4_list=new ArrayList<Double>(); //ArrayList保存所有x4
		List<Double> x5_list=new ArrayList<Double>(); //ArrayList保存所有x5
		List<Double> x6_list=new ArrayList<Double>(); //ArrayList保存所有x6
		List<Double> x7_list=new ArrayList<Double>(); //ArrayList保存所有x7
		List<Double> x8_list=new ArrayList<Double>(); //ArrayList保存所有x8
		List<Double> x9_list=new ArrayList<Double>(); //ArrayList保存所有x9
		List<Double> x10_list=new ArrayList<Double>(); //ArrayList保存所有x10
		List<Double> x11_list=new ArrayList<Double>(); //ArrayList保存所有x11
		List<Double> x12_list=new ArrayList<Double>(); //ArrayList保存所有x12
		List<Double> x13_list=new ArrayList<Double>(); //ArrayList保存所有x13
		
		List<Double> y_list=new ArrayList<Double>(); //ArrayList保存所有y
		
		

		while(rs.next())
		{
			double x1=rs.getDouble("x1"); //获取x1
			
			double x2=rs.getDouble("x2"); //获取x2
			
			double x3=rs.getDouble("x3"); //获取x3
		
			double x4=rs.getDouble("x4"); //获取x4
			
			double x5=rs.getDouble("x5"); //获取x5

			double x6=rs.getDouble("x6"); //获取x6
			
			double x7=rs.getDouble("x7"); //获取x7
			
			double x8=rs.getDouble("x8"); //获取x8
			
			double x9=rs.getDouble("x9"); //获取x9
			
			double x10=rs.getDouble("x10"); //获取x10
			
			double x11=rs.getDouble("x11"); //获取x11
			
			double x12=rs.getDouble("x12"); //获取x12
			
			double x13=rs.getDouble("x13"); //获取x13
			
			
			double y=rs.getDouble("y"); //获取y
			
			x1_list.add(x1); //x1_list加入x1
			
			x2_list.add(x2); //x2_list加入x2
			
			x3_list.add(x3); //x3_list加入x3
			
			x4_list.add(x4); //x4_list加入x4
			
			x5_list.add(x5); //x1_list加入x5
			
			x6_list.add(x6); //x1_list加入x6
			
			x7_list.add(x7); //x1_list加入x7
			
			x8_list.add(x8); //x1_list加入x8
			
			x9_list.add(x9); //x1_list加入x9
			
			x10_list.add(x10); //x1_list加入x10
			
			x11_list.add(x11); //x1_list加入x11
			
			x12_list.add(x12); //x1_list加入x12
			
			x13_list.add(x13); //x1_list加入x13
			
			if(y==1)
				y_list.add(1.0); //y_list加入y
			else
				y_list.add(-1.0); //y_list加入y
			
			
//			System.out.println(x1+" "+x2+" "+y);
		
			
		}
		
		int N=x1_list.size(); //求数据的个数
		
		double[][] X=new double[N][13]; //使用一个二维数据保存输入的数据
		
		double[] Y=new double[N]; //使用一个一维数据保存类别标签
		
		for(int i=0;i<N;i++)
		{
			X[i][0]=x1_list.get(i); //输入数据的赋值
			
			X[i][1]=x2_list.get(i); 
			
			X[i][2]=x3_list.get(i); 
			
			X[i][3]=x4_list.get(i); 
			
			X[i][4]=x5_list.get(i); 
			
			X[i][5]=x6_list.get(i); 
			
			X[i][6]=x7_list.get(i); 
			
			X[i][7]=x8_list.get(i); 
			
			X[i][8]=x9_list.get(i); 
			
			X[i][9]=x10_list.get(i); 
			
			X[i][10]=x11_list.get(i); 
			
			X[i][11]=x12_list.get(i); 
			
			X[i][12]=x13_list.get(i); 
			
			Y[i]=y_list.get(i);
			
			
			
		
		}
		
		//选择80%的数据作为训练
		int len=(int)Math.ceil(0.8*N);
		double[][] TrainX=new double[len][13]; //二维数据保存训练集合中的输入数据
		double[] TrainY=new double[len];	//一维数据保存训练集合中的类别
		for(int i=0;i<len/2;i++)
		{
			TrainX[i][0]=X[i][0]; //训练集数据输入赋值
			TrainX[i][1]=X[i][1];
			TrainX[i][2]=X[i][2];
			TrainX[i][3]=X[i][3];
			TrainX[i][4]=X[i][4];
			TrainX[i][5]=X[i][5];
			TrainX[i][6]=X[i][6];
			TrainX[i][7]=X[i][7];
			TrainX[i][8]=X[i][8];
			TrainX[i][9]=X[i][9];
			TrainX[i][10]=X[i][10];
			TrainX[i][11]=X[i][11];
			TrainX[i][12]=X[i][12];
			
			TrainY[i]=Y[i]; //训练集标签输入赋值
		}
		
		
		for(int i=0;i<len/2;i++)
		{
			TrainX[len/2+i][0]=X[N/2+i][0]; //训练集数据输入赋值
			TrainX[len/2+i][1]=X[N/2+i][1];
			TrainX[len/2+i][2]=X[N/2+i][2];
			TrainX[len/2+i][3]=X[N/2+i][3];
			TrainX[len/2+i][4]=X[N/2+i][4];
			TrainX[len/2+i][5]=X[N/2+i][5];
			TrainX[len/2+i][6]=X[N/2+i][6];
			TrainX[len/2+i][7]=X[N/2+i][7];
			TrainX[len/2+i][8]=X[N/2+i][8];
			TrainX[len/2+i][9]=X[N/2+i][9];
			TrainX[len/2+i][10]=X[N/2+i][10];
			TrainX[len/2+i][11]=X[N/2+i][11];
			TrainX[len/2+i][12]=X[N/2+i][12];
			
			TrainY[len/2+i]=Y[N/2+i]; //训练集标签输入赋值
		}
		
//		for(int i=0;i<TrainY.length;i++)
//			System.out.println(TrainY[i]);
		
		double[][] TestX=new double[N-len][13]; //二维数据保存测试集合中的输入数据
		double[] TestY=new double[N-len];	//一维数据保存测试集合中的类别
//		System.out.println(len+" "+(N-len));
		for(int i=0;i<(N-len)/2;i++)
		{
			TestX[i][0]=X[len/2+i][0]; //测试集数据输入赋值
			TestX[i][1]=X[len/2+i][1];
			TestX[i][2]=X[len/2+i][2];
			TestX[i][3]=X[len/2+i][3];
			TestX[i][4]=X[len/2+i][4];
			TestX[i][5]=X[len/2+i][5];
			TestX[i][6]=X[len/2+i][6];
			TestX[i][7]=X[len/2+i][7];
			TestX[i][8]=X[len/2+i][8];
			TestX[i][9]=X[len/2+i][9];
			TestX[i][10]=X[len/2+i][10];
			TestX[i][11]=X[len/2+i][11];
			TestX[i][12]=X[len/2+i][12];
			
			TestY[i]=Y[len/2+i]; //测试集标签输入赋值
		}
		for(int i=0;i<(N-len)/2;i++)
		{
			TestX[(N-len)/2+i][0]=X[N/2+len/2+i][0]; //测试集数据输入赋值
			TestX[(N-len)/2+i][1]=X[N/2+len/2+i][1];
			TestX[(N-len)/2+i][2]=X[N/2+len/2+i][2];
			TestX[(N-len)/2+i][3]=X[N/2+len/2+i][3];
			TestX[(N-len)/2+i][4]=X[N/2+len/2+i][4];
			TestX[(N-len)/2+i][5]=X[N/2+len/2+i][5];
			TestX[(N-len)/2+i][6]=X[N/2+len/2+i][6];
			TestX[(N-len)/2+i][7]=X[N/2+len/2+i][7];
			TestX[(N-len)/2+i][8]=X[N/2+len/2+i][8];
			TestX[(N-len)/2+i][9]=X[N/2+len/2+i][9];
			TestX[(N-len)/2+i][10]=X[N/2+len/2+i][10];
			TestX[(N-len)/2+i][11]=X[N/2+len/2+i][11];
			TestX[(N-len)/2+i][12]=X[N/2+len/2+i][12];
			
			TestY[(N-len)/2+i]=Y[N/2+len/2+i]; //测试集标签输入赋值
		}
		
		LSSVM lssvm=new LSSVM(); //新建LSSVM处理实例
		
		System.out.println("LSSVM for wine 数据集的结果");
		lssvm.train(TrainX, TrainY, 100); //LSSVM对训练集进行训练
		double[] predict_y=lssvm.predict(TestX); //使用训练好的LSSVM进行类别的预测
		
		System.out.println("实际类别 预测类别"); //打印实际类别和预测类别
		int correct=0;
		for(int i=0;i<N-len;i++)
		{
			String test_y_str=TestY[i]==1?"1":"2";
			String predict_y_str=predict_y[i]==1?"1":"2";
			
			System.out.println(test_y_str+" "+predict_y_str);
			if(TestY[i]==predict_y[i])
				correct++;
		}
		
		System.out.println("正确率:"+correct/(N-len)*100+"%"); //输出整体的正确率
		
	}
	
	public static void main(String[] args) throws SQLException 
	{
		testIrisLSSVM();
		System.out.println();
		testWineLSSVM();
//		MyJDBC jdbc=new MyJDBC(); //建立JDBC对象
//		
//		jdbc.createConnection(); //获取数据库连接 
//		
//		String sql="select * from source"; //使用sql语句查询所有的数据
//		
//		ResultSet rs=jdbc.executeQuery(sql); //执行sql语句查询
//		
//		
//		List<Double> x1_list=new ArrayList<Double>(); //ArrayList保存所有x1
//		List<Double> x2_list=new ArrayList<Double>(); //ArrayList保存所有x2
//		List<Double> y_list=new ArrayList<Double>(); //ArrayList保存所有y
//		
//		
//		
//		
//		while(rs.next())
//		{
//			double x1=rs.getDouble("x1"); //获取x1
//			
//			double x2=rs.getDouble("x2"); //获取x2
//			
//			double y=rs.getDouble("y"); //获取y
//			
//			x1_list.add(x1); //x1_list加入x1
//			
//			x2_list.add(x2); //x2_list加入x2
//			
//			y_list.add(y); //y_list加入y
//			
////			System.out.println(x1+" "+x2+" "+y);
//		
//			
//		}
//		
//		int N=x1_list.size(); //求数据的个数
//		
//		double[][] X=new double[N][2]; //使用一个二维数据保存输入的数据
//		
//		double[] Y=new double[N]; //使用一个一维数据保存类别标签
//		
//		for(int i=0;i<N;i++)
//		{
//			X[i][0]=x1_list.get(i); //输入数据的赋值
//			
//			X[i][1]=x2_list.get(i); 
//			
//			Y[i]=y_list.get(i); //标签数据的赋值
//		
//		}
//		
//		
//		
//		
//		
//		
//		
//		
//		
//		//选择80%的数据作为训练
//		int len=(int)Math.ceil(0.8*N);
//		double[][] TrainX=new double[len][2]; //二维数据保存训练集合中的输入数据
//		double[] TrainY=new double[len];	//一维数据保存训练集合中的类别
//		for(int i=0;i<len;i++)
//		{
//			TrainX[i][0]=X[i][0]; //训练集数据输入赋值
//			TrainX[i][1]=X[i][1];
//			TrainY[i]=Y[i]; //训练集标签输入赋值
//		}
//		
//		double[][] TestX=new double[N-len][2]; //二维数据保存测试集合中的输入数据
//		double[] TestY=new double[N-len];	//一维数据保存测试集合中的类别
////		System.out.println(len+" "+(N-len));
//		for(int i=0;i<N-len;i++)
//		{
//			TestX[i][0]=X[len+i][0]; //测试集数据输入赋值
//			TestX[i][1]=X[len+i][1];
//			TestY[i]=Y[len+i]; //测试集标签输入赋值
//		}
//		
////		double[][] A={{1,0,0},{1,2,0},{1,2,3}};
////		Matrix m=new Matrix(A);
////		Matrix m_1=m.getInv();
////		m_1.print();
//		
//		LSSVM lssvm=new LSSVM(); //新建LSSVM处理实例
//		lssvm.train(TrainX, TrainY, 12); //LSSVM对训练集进行训练
//		double[] predict_y=lssvm.predict(TestX); //使用训练好的LSSVM进行类别的预测
//		
//		System.out.println("实际类别 预测类别"); //打印实际类别和预测类别
//		int correct=0;
//		for(int i=0;i<N-len;i++)
//		{
//			System.out.println(TestY[i]+" "+predict_y[i]);
//			if(TestY[i]==predict_y[i])
//				correct++;
//		}
//		
//		System.out.println("正确率:"+correct/(N-len)*100+"%"); //输出整体的正确率
		
	
	}
	

}
