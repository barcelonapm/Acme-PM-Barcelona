use strict;
use warnings;

use WWW::Mechanize;
use Acme::EyeDrops qw(sightly);

my $size = shift;

my $mech = WWW::Mechanize->new;
$mech->get("http://www.degraeve.com/gif2txt.php");
$mech->submit_form(
    fields => {
        url  => "http://www.hashref.com/texto.png",
        mode => "A",
        size => $size,
    }
);

my ($shape) = $mech->content =~ m:<pre>\n(.*?)\s+</span>:s;
$shape =~ s/ +$//mg;
$shape =~ s/\S/#/g;

print sightly {ShapeString => $shape, Compact => 1, SourceString => <<'JAPH'};
$_=q;Barcelona Perl Mongers;,$/=y,gaudi,,,;map$,+=(split//)*(-1)**$|++
,(split)[.11_09,1.714];$.=''!~m~erce~;$"=y,catalunya,,,$;=y,rambles,,,
$*=$/^$.;$:=$.+length,$@=$***$**$/**$*%$:,$%=$/*$"-$*;print+chr($_<0xA
?$.."$[$_":m:^$.:?$..$_:$_)for($**$**$/*$",$"*$@+$**$/,$**$,,$***$,,$/
*$,,$;,$***$/,$,*$/,$.<<$,,$%-$*,$"+$/,$***$,,(($,*$*)**$*)-$/,$***$/,
$@+$/,$:-($/**$*),$.,$:+$"+$*,$.<<$*,$,**$/-$:-$,,exp$:/$,,$",$.,$"*$*
,$***$,,log$.,$.,-$/+$"*$,,$/+$"*$;,$.,++$@,$***($/&=$/+Barcelona_pm))
JAPH
