# = Define: bind::srv
#
# Create a SRV DNS record.
# See bind::record for more informations
#
define bind::srv (
  $zone,
  $target,
  $record_port,
  $host            = $name,
  $record_class    = 'IN',
  $record_priority = '0',
  $record_weight   = '0',
  $export_tag      = $zone,
  $absent          = false,
  $template        = 'bind/record.erb',
  $ttl             = ''
  ) {

  $real_priority = "$record_priority $record_weight $record_port"

  bind::record { $name:
    zone            => $zone,
    target          => $target,
    host            => $host,
    record_type     => 'SRV',
    record_priority => $real_priority,
    record_class    => $record_class,
    export_tag      => $export_tag,
    absent          => $absent,
    template        => $template,
    ttl             => $ttl,
  }
}
