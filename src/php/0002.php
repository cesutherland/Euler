<?php 
	function SumOfFibonacciEven($maxNumber) {
		$i = 1;
		$previous = 0;
		$sum = 0;
		$aux = 0;
		while ($i < $maxNumber) {
			if ($i%2 == 0) {
				$sum += $i;
			}
			$aux = $i;
			$i = $i + $previous;
			$previous = $aux;
		}
		return $sum;
	}

	echo SumOfFibonacciEven(4e6);
?>