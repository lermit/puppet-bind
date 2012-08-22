# = Define: bind::ptr
#
# Create a PTR DNS record.
# See bind::record for more informations
#
define bind::ptr (
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
    record_type  => 'PTR',
    record_class => $record_class,
    export_tag   => $export_tag,
    absent       => $absent,
    template     => $template,
    ttl          => $ttl,
  }
}
