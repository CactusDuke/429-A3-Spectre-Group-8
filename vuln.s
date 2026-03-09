00000000000101e4 <victim_function>:
   101e4: 1101          addi    sp, sp, -0x20
   101e6: ec06          sd      ra, 0x18(sp)
   101e8: e822          sd      s0, 0x10(sp)
   101ea: 1000          addi    s0, sp, 0x20
   101ec: fea43423      sd      a0, -0x18(s0)
   101f0: 8e01a783      lw      a5, -0x720(gp)          #loads array1_size
   101f4: 1782          slli    a5, a5, 0x20
   101f6: 9381          srli    a5, a5, 0x20
   101f8: fe843703      ld      a4, -0x18(s0)
   101fc: 02f77d63      bgeu    a4, a5, 0x10236 <victim_function+0x52>
   10200: 000277b7      lui     a5, 0x27
   10204: 46078713      addi    a4, a5, 0x460
   10208: fe843783      ld      a5, -0x18(s0)
   1020c: 97ba          add     a5, a5, a4
   1020e: 0007c783      lbu     a5, 0x0(a5)             #loads array1[x]
   10212: 2781          sext.w  a5, a5
   10214: 0097979b      slliw   a5, a5, 0x9
   10218: 2781          sext.w  a5, a5
   1021a: 00028737      lui     a4, 0x28
   1021e: 25070713      addi    a4, a4, 0x250
   10222: 97ba          add     a5, a5, a4
   10224: 0007c703      lbu     a4, 0x0(a5)             #loads array2[array1[x] * 512]
   10228: 9101c783      lbu     a5, -0x6f0(gp)
   1022c: 8ff9          and     a5, a5, a4
   1022e: 0ff7f713      andi    a4, a5, 0xff
   10232: 90e18823      sb      a4, -0x6f0(gp)
   10236: 0001          nop
   10238: 60e2          ld      ra, 0x18(sp)
   1023a: 6442          ld      s0, 0x10(sp)
   1023c: 6105          addi    sp, sp, 0x20
   1023e: 8082          ret
