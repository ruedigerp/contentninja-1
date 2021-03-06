package Modules::Codeblock;

sub new{
	my $class = shift;
	my ($self) = {};
	bless $self, $class;
	return $self;
}

sub run{
	my ($self,$text) = @_;
	# print "Plugin: Codeblock loaded.\n";
	$text =~ s/\{% codeblock.*?%\}(.*?)\{% endcodeblock %\}/<pre class="code"><code class="code">$1<\/code><\/pre>/gsm;
	return $text;
}

1;
