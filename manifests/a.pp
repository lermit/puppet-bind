# = Define: bind::a
#
# Create a A DNS record.
# See bind::record for more informations
#
define bind::a (
  $zone,
  $target,
  $host         = $name,
  $record_class = 'IN',
  $export_tag   = $zone,
  $absent       = false,
  $template     = 'bind/record.erb',
  $ttl          = ''
  ) {

  bind::record { $name:
    zone         => $zone,
    target       => $target,
    host         => $host,
    record_type  => 'A',
    record_class => $record_class,
    export_tag   => $export_tag,
    absent       => $absent,
    template     => $template,
    ttl          => $ttl,
  }
}
