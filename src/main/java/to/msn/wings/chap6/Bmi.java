package to.msn.wings.chap6;

import java.io.Serializable;

public class Bmi implements Serializable {
	private double height = 0;
	private double weight = 0;
	private double bmi = 0;
	
	public Bmi() {/* コンストラクタ */}//なんかJavaBeansの時はこれいるらしい...。

	public double getHeight() {
		return this.height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return this.weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getValue() {
		return this.bmi;
	}

	public String getRank() {
		if(this.bmi < 18.5) {
			return "痩せ気味";
		}else if(this.bmi < 25) {
			return "標準";
		}else {
			return "肥満気味";
		}
	}
	
	public void calculate() {
		this.bmi = this.weight / (this.height * this.height);
	}
}
