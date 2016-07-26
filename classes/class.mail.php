<?php
function send_mail($email,$subject,$msg) {
 $api_key="45f38603a1accb9ea0b1877e9c6ea7ca ";/* Api Key got from https://mailgun.com/cp/my_account */
 $domain ="sandbox339a6ddc87f245d7ba8d1c58abfe91e4.mailgun.org";/* Domain Name you given to Mailgun */
 $ch = curl_init();
 curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BASIC);
 curl_setopt($ch, CURLOPT_USERPWD, 'api:'.$api_key);
 curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
 curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'POST');
 curl_setopt($ch, CURLOPT_URL, 'https://api.mailgun.net/v3/'.$domain.'/messages');
 curl_setopt($ch, CURLOPT_POSTFIELDS, array(
  'from' => 'Open <mail@youriste.com>',
  'to' => $email,
  'subject' => $subject,
  'html' => $msg
 ));
 $result = curl_exec($ch);
 curl_close($ch);
 return $result;
}
send_mail("shashwatshagun2581@gmail.com", "Hello Kerala", "Kerala is a nice place.");
?>