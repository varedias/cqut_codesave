# 七段显示器连接
set_property PACKAGE_PIN U14 [get_ports {seg0[0]}] # 数字0的a位
set_property PACKAGE_PIN V14 [get_ports {seg0[1]}] # 数字0的b位
set_property PACKAGE_PIN W14 [get_ports {seg0[2]}] # 数字0的c位
set_property PACKAGE_PIN Y14 [get_ports {seg0[3]}] # 数字0的d位
set_property PACKAGE_PIN AA14 [get_ports {seg0[4]}] # 数字0的e位
set_property PACKAGE_PIN AB14 [get_ports {seg0[5]}] # 数字0的f位
set_property PACKAGE_PIN AC14 [get_ports {seg0[6]}] # 数字0的g位

# 为其他显示器的引脚做类似设置，seg1, seg2，依次连接
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[0]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[1]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg1[2]}] 
...
set_property PACKAGE_PIN <pin_number> [get_ports {seg2[0]}] 
set_property PACKAGE_PIN <pin_number> [get_ports {seg2[6]}] 

# 时钟和复位输入
set_property PACKAGE_PIN <pin_number> [get_ports {clk}] 
set_property PACKAGE_PIN <pin_number> [get_ports {rst}]
