package lssvm;

import util.Matrix;

public class LSSVM 
{
	private double[][] TrainX; //保存训练的输入数据
	private double[] TrainY; //保存训练的类别标签
	private double[][] TestX; //保存测试的输入数据
	private double[] TestY; //保存测试的类别标签
	private double[] w; //LSSVM权重
	private double b; //LSSVM偏置 
	private double gama; //LSSVM的gama参数
	private double c=0.0000001; //防止矩阵不可逆的参数
	private int n; //数据的维度
	
	public void train(double[][] X,double[] Y,double gama)
	{
		this.TrainX=X; //训练集输入数据的赋值
		this.TrainY=Y; //训练集标签的赋值
		this.gama=gama; //LSSVM中gamga参数的设置
		
		this.n=X[0].length; //获取数据的维度
		
		
		process();
		
	}
	
	public void process() //处理LSSVM的过程
	{
		
		int N=TrainX.length; //获取训练集合样本个数
		
		double[][] Z=new double[n][N]; //新建一个Z矩阵对应的二维数组
		
		for(int i=0;i<n;i++)
		{
			
			for(int j=0;j<N;j++)
			{
				
				Z[i][j]=TrainY[j]*TrainX[j][i];		//Z矩阵第i行i列的计算
				
			}
			
		}
		
		Matrix Z_matrix=new Matrix(Z); //新建Z矩阵实例
		
		Matrix Z_T_matrix=Z_matrix.transpose(); //矩阵Z的转置矩阵
		
		Matrix ZZ=Z_T_matrix.multiply(Z_matrix); //矩阵Z'*Z		
		
		double[][] zz_array=ZZ.toArray(); //矩阵Z'*Z转为二维数组
		
		double[][] LSSVM_A=new double[N+1][N+1]; //新建待求解的LSSVM的A矩阵
		
		LSSVM_A[0][0]=0+c; //第[0,0]个元素为0
		
		for(int i=0;i<N;i++)  //对第一行元素和第一列元素赋值
		{
			
			LSSVM_A[0][i+1]=-TrainY[i];
			
			LSSVM_A[i+1][0]=TrainY[i];
			
		}
		
		for(int i=0;i<N;i++) //第从第二行第二列起其他元素进行赋值
		{
			
			for(int j=0;j<N;j++)
			{
				
				if(i==j)
					LSSVM_A[i+1][j+1]=zz_array[i][j]+1/gama+c;
				else
					LSSVM_A[i+1][j+1]=zz_array[i][j];	
				
			}
		}
		
			
		double[][] LSSVM_b=new double[N+1][1]; //新建待求解的LSSVM的b矩阵
		
		LSSVM_b[0][0]=0; //第[0,0]个元素为0

		for(int i=0;i<N;i++) //对第一列元素赋值
		{
			LSSVM_b[i+1][0]=1;
		}
		
		
		Matrix LSSVM_A_matrix=new Matrix(LSSVM_A); //二维数组LSSVM_A转为矩阵对象
		
		Matrix LSSVM_b_matrix=new Matrix(LSSVM_b); //二维数组LSSVM_b转为矩阵对象
		

		Matrix x_matrix=LSSVM_A_matrix.getInv().multiply(LSSVM_b_matrix); //求解Ax=b的
				
		double[][] xx=x_matrix.toArray(); //矩阵x_matrix转为二维数组
	
		
		b=xx[0][0]; //LSSVM的偏置就是xx[0][0]
		
		double[][] alpha=new double[N][1]; //保存拉格朗日系数
		
		for(int i=0;i<N;i++) //LSSVM的朗格朗日系数就是xx第二个元素开始所有元素
			alpha[i][0]=xx[i+1][0];
		
		Matrix alpha_matrix=new Matrix(alpha); //二维数组alpha转为矩阵对象

		Matrix w_matrix=Z_matrix.multiply(alpha_matrix); //因为权重w=Z*alpha
		
		double[][] w_array=w_matrix.toArray(); //矩阵w_matrix转为二维数组
		
		w=new double[n]; //二维数组转为一位数组
		
		for(int i=0;i<n;i++)
			w[i]=w_array[i][0];
			
		System.out.print("w:"); //输出w和b
		
		for(int i=0;i<n;i++)
			System.out.print(w[i]+" ");
		
		System.out.println();
		System.out.println("b:"+b);
		
	

	}
	
	
	public double[] predict(double[][] X) //使用LSSVM进行预测
	{
		int N=X.length; //获取测试样本的个数
		
		double[] predict_y=new double[N]; //保存预测结果
		
		for(int i=0;i<N;i++)
		{
			double y=0;
			
			for(int j=0;j<n;j++)
			{
				
				y=y+w[j]*X[i][j];
				
			}
			
			y=y+b; //计算f(x)=wTx+b
			
			
			
			
			
			
//			System.out.println(y);
			if(y<0) //小于0为负样本
			{
				predict_y[i]=-1;
			}	
			else //大于0为正样本
			{
				predict_y[i]=1;
			}
				
		
			
		}
		
		return predict_y;
		
	}
	
}
