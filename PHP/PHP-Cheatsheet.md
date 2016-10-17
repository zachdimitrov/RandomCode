#### Basic principles

```php
<?php // opening tag (will not use them in examples below)
?>    // closing tag
var_dump($foo); // dava informaciq za promenlivata
phpinfo();      // dava informaciq za faila
```

#### Variables and casting

```php
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
for($i=0;$i<10;$i++) {
echo $i.'<br>';
}
```
