function aleatorio (min, max){

	return Math.floor(Math.random() * (max - min) + min );
}
 for (let i = 1; i <= 10; ++i) {
 	console.log(aleatorio (1,10));
 }