#### Basic principles

```php
<?php // opening tag (will not use them in examples below)
?>    // closing tag
var_dump($foo); // dava informaciq za promenlivata
phpinfo();      // dava informaciq za faila
```

#### Variables and casting

```php
$myAr = array('ivan', 'ivanov'); // masiv
$foo = 'number';   // variable
(int)$foo;         // kastvane kym drug tip - shte se poluchi 0
```

#### Conditional statements

```php
$t = date(“H”);if ($t < “10”) {
echo “Have a good morning!”;
}
elseif ($t < “20”) {
echo “Have a good day!”;
} else {
echo “Have a good night!”;
}
```

#### Loops

```php
for($i = 0; $i < 10; $i++) {
echo $i.'<br>'; // tova e konkatenirane na stringove
}
while($i<10) {
  echo $i.'<br>';
  $i++;
  break;
}
$myArray = array(1,3,4,5,6);
foreach ($myArray as $value) {    // pokazva samo stoinostite
  echo $val.'<br>';
}
foreach  ($myArray as $key=>$vaule) {  // pokazva kluchove i stoinosti
  echo $key.' --> '.$value.'<br>';
}
```


