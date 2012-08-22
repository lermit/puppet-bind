# = Define: bind::mx
#
# Create a MX DNS record.
# See bind::record for more informations
#
define bind::mx (
  $zone,
  $target,
  $host            = $name,
  $record_class    = 'IN',
  $record_priority = '0',
  $export_tag      = $zone,
  $absent          = false,
  $template        = 'bind/record.erb',
  $ttl             = ''
  ) {

  bind::record { "MX-$name":
    zone            => $zone,
    target          => $target,
    host            => $host,
    record_type     => 'MX',
    record_class    => $record_class,
    record_priority => $record_priority,
    export_tag      => $export_tag,
    absent          => $absent,
    template        => $template,
    ttl             => $ttl,
  }
}
