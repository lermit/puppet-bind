# = Define: bind::txt
#
# Create a A TXT record.
# See bind::record for more informations
#
define bind::txt (
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
    record_type  => 'TXT',
    record_class => $record_class,
    export_tag   => $export_tag,
    absent       => $absent,
    template     => $template,
    ttl          => $ttl,
  }
}
