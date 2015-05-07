<?php 

	function smallestFactor($n) {
		for ($i = 2; $i <= $n ; $i++) { 
			if ($n % $i == 0) {
				return $i;
			}
		}
	}

	function largestPrimeFactor($n) {
		$primeFactors = array();

		function largestFactor($n) {
			$smallest = smallestFactor($n);
			$primeFactors[] = $smallest;
			return ($n == $smallest) ? max($primeFactors) : largestFactor($n / $smallest);
		}

		return largestFactor($n);
	}

	echo largestPrimeFactor(600851475143);
?>