create_clock -period 10.000 -name virtual_clock -waveform {0.000 5.000}
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[0]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[0]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[0]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[0]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[1]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[1]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[2]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[2]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[3]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[3]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[4]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[4]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[5]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[5]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[6]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[6]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[7]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[7]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[8]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[8]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[9]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[9]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[10]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[10]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[11]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[11]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[12]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[12]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[13]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[13]}]
set_output_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {c[14]}]
set_output_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {c[14]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[1]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[1]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[2]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[2]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[3]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[3]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[4]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[4]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[5]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[5]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[6]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[6]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {a[7]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {a[7]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[0]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[0]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[1]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[1]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[2]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[2]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[3]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[3]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[4]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[4]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[5]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[5]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[6]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[6]}]
set_input_delay -clock [get_clocks virtual_clock] -min -add_delay 0.010 [get_ports {b[7]}]
set_input_delay -clock [get_clocks virtual_clock] -max -add_delay 0.010 [get_ports {b[7]}]
