; Configuration file for Fly-E3 (firmware version 3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.1.10+4-LPC on Mon Jan 04 2021 14:51:09 GMT+0800

; General preferences
G90                                            ; send absolute coordinates...
M550 P"3018"                                   ; set printer name

M453                                           ; select CNC mode

; Tools
M950 R0 C"!e0heat" L12000                      ; Create spindle index 0, with PWM pin on heater 0 and
                                               ; 12000 RPM achieved at full PWM
M563 P1 S"Spindle 1" R0                        ; Create tool 1 with spindle 0 and call it "Spindle 1"
; M563 P0 D0 H1 F0                               ; define tool 0
G10 P1 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P1 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C

; Miscellaneous
M575 P1 S1 B115200                             ; enable support for PanelDue
; M81                                            ; flag ATX PSU for DWC function

; Network
M552 S1                                        ; enable network
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards using default driver timings
M569 P1 S0                                     ; physical drive 1 goes forwards using default driver timings
M569 P2 S0                                     ; physical drive 2 goes forwards using default driver timings

M584 X0 Y1 Z2                                  ; set drive mapping
M350 X16 Y16 Z16 I1                            ; configure microstepping with interpolation
M92 X1600.00 Y1600.00 Z1600.00                 ; set steps per mm
M566 X900.00 Y900.00 Z60.00                    ; set maximum instantaneous speed changes (mm/min)
M203 X1000.00 Y1000.00 Z800.00                 ; set maximum speeds (mm/min)
M201 X30.00 Y30.00 Z30.00                      ; set accelerations (mm/s^2)
M906 X800 Y800 Z800 I30                        ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                               ; set axis minima
M208 X300 Y180 Z45 S0                          ; set axis maxima

; Endstops
M574 X1 S1 P"xstop"                            ; configure active-high endstop for low end on X via pin xstop
M574 Y2 S1 P"ystop"                            ; configure active-high endstop for low end on Y via pin ystop
M574 Z2 S1 P"zstop"                            ; configure active-high endstop for low end on Z via pin zstop

; Z-Probe
; M558 P0 H5 F120 T6000                          ; disable Z probe but set dive height, probe speed and travel speed
; M557 X15:215 Y15:195 S20                       ; define mesh grid

; Heaters
; M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin bedtemp
; M950 H0 C"bed" T0                              ; create bed heater output on bed and map it to sensor 0
; M307 H0 B0 S1.00                               ; disable bang-bang mode for the bed heater and set PWM limit
; M140 H0                                        ; map heated bed to heater 0
; M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
; M143 H0 S120                                   ; set temperature limit for heater 0 to 120C
; M308 S1 P"e0temp" Y"thermistor" T100000 B4138  ; configure sensor 1 as thermistor on pin e0temp
; M950 H1 C"e0heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
; M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit
; M143 H1 S280                                   ; set temperature limit for heater 1 to 280C

; Fans
; M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
; M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off

; Custom settings are not defined
; 
G54