data {
	int<lower=0> N;
	real X[N];
  real MeanX;
	int<lower=0> y[N];
}
parameters {
	real beta1;
	real beta2;
}
model {
	for (i in 1:N){
		y[i] ~ poisson(exp(beta1 + (X[i] - MeanX) * beta2));
  }
  beta1 ~ normal(0, 100); //無情報事前分布
  beta2 ~ normal(0, 100); //無情報事前分布
}