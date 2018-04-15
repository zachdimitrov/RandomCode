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
#### Functions

#### Date and Time

#### Work with Files
**simple method**
```php
$result = file('data.txt');
echo '<pre>'.print_r($result, true).'</pre>';  //pokazva sydyrjanieto na promenliva
```
**get contents of a file into a string**
```php
$filename = "/user/local/something.txt";
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);
```
**another example**
```php
$handle = fopen("http://www.abv.bg/", "rb");
$contents = '';
while (!feof($handle)) {
$contents = fread($handle, 8192);
}
fclose($handle);
$path = 'text.txt';
realpath($path);  // pokazva dali syshtestvuva tozi pyr i prehvyrlq pytq v realen
files = scandir($path);
```
**upload files**
```html
<form method="post" enctype="multipath/form-data">
  <input type="file" name="picture" />
</form>
<?php
echo '<pre>'.print_r($_FILES, true).'</pre>';
?>
```

