<?php 

	function largestPrimeFactor($n) {
		$primeFactors = array();

		function largestFactor($n) {
			$smallest = smallestFactor($n);
			$primeFactors[] = $smallest;
			return ($n == $smallest) ? max($primeFactors) : largestFactor($n / $smallest);
		}

		function smallestFactor($n) {
			for ($i = 2; $i <= $n ; $i++) { 
				if ($n % $i == 0) {
					return $i;
				}
			}
		}

		return largestFactor($n);
	}

	echo largestPrimeFactor(600851475143);
?>