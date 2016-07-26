<?php
require 'vendor/autoload.php';
use Mailgun\Mailgun;
function send_email($apikey,$from,$to,$subject,$text)
{
$mg = new Mailgun("$apikey");
$domain = "example.com";

# Now, compose and send your message.
$mg->sendMessage($domain, array('from'    => $from, 
                                'to'      => $to, 
                                'subject' => $subject, 
                                'text'    => $text));
}
send_email("key-31617ec94af329f56cc172a3309cecfc","postmaster@sandbox339a6ddc87f245d7ba8d1c58abfe91e4.mailgun.org","shashwatshagun2581@gmail.com","hello","hello,world");

?>
