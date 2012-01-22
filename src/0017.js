var map = {
    1 : 'one',
    2 : 'two',
    3 : 'three',
    4 : 'four',
    5 : 'five',
    6 : 'six',
    7 : 'seven',
    8 : 'eight',
    9 : 'nine',
    10 : 'ten',
    11 : 'eleven',
    12 : 'twelve',
    13 : 'thirteen',
    14 : 'fourteen',
    15 : 'fifteen',
    16 : 'sixteen',
    17 : 'seventeen',
    18 : 'eighteen',
    19 : 'nineteen',
    20 : 'twenty',
    30 : 'thirty',
    40 : 'forty',
    50 : 'fifty',
    60 : 'sixty',
    70 : 'seventy',
    80 : 'eighty',
    90 : 'ninety',
    100 : 'hundred',
    1000 : 'thousand'
  },
  solution, i;

function to_letters (n) {

  var letters;

  if (n <= 20) {
    return map[n] || '';
  } else
  if (n < 100) {
    letters = to_letters(n % 10);
    return map[Math.floor(n / 10) * 10] + letters;//(letters ? '-' + letters : '');
  } else
  if (n < 1000) {
    letters = to_letters(n % 100);
    return map[Math.floor(n / 100)] + '' + map[100] + (letters ? 'and' + letters : '');
  } else if (n < 10000) {
    letters = to_letters(n % 1000);
    return map[Math.floor(n / 1000)] + '' + map[1000] + (letters ? 'and' + letters : '');
  }

  return '';
};

solution = 0;
for (i = 1; i <= 1000; i++) {
  console.log(to_letters(i));
  solution += (to_letters(i)).length;
}

console.log(solution);

