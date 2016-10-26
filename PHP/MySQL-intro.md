### MySQL standard functions
```php
$con = mysqli_connect('localhost', 'User', 'pass', 'dbname');
if(!$con) {
  echo 'no database';
}
mysqli_set_charset($con, 'utf8');                // dvata reda sa identichni
mysqli_query($connection, 'SET NAMES utf8');     // nujen e samo ediniq ot tqh
$sql1 = 'INSERT INTO users (user_name, pass, age, is_active) VALUES("Zach", "qwer", 34, 0)'; // zaqvka za zapis
$sql2 = 'DELETE FROM users WHERE user_name="Zach" AND password="qwer"'; // zaqvka za triene
$sql4 = 'UPDATE users SET user_name="Gosho" WHERE user_id=2';
mysqli_query($connection, $sql1); // izpylnenie na zaqvkata, pyrvata v sluchaq

$q = 'SELECT user_id, user_name as un, pass, age, is_active  // zaqvka za dostap do danni
         FROM users 
         WHERE age>=18 AND age<=24 AND is_active=0
         ORDER BY user_id 
         ASC LIMIT 0, 500';
if(!$q) {
    echo 'error in db';
}

if($q->num_rows>0) {

echo '<table>
while($row=$q->fetch_assoc()) {
    echo '<tr>
            <td class="uid">'.$row['user_id'].'</td>
            <td>'.$row['un'].'</td>
            <td>'.$row['pass'].'</td>
            <td>'.$row['age'].'</td>
            <td>'.$row['is_active'].'</td>
        </tr>';
}
echo '</table>';
} else {
    echo '<div> No Results </div>';
}
```

### Prepared statements
```PHP
// do this after charset function
$stmt = mysqli_prepare($con, 'SELECT * FROM users WHERE username=? AND pass=?');
mysqli_stmt_bind_param($stmt, 'ss', $_GET['name'], $_GET['pass']); //s-string, i-integer
mysqli_stmt_execute($stmt);
```
