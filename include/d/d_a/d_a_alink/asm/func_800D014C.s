/* 800D014C 000CD08C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D0150 000CD090  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0154 000CD094  98 83 5E 33 */ stb r4, 0x5e33(r3)
/* 800D0158 000CD098  38 00 00 00 */ li r0, 0
/* 800D015C 000CD09C  98 03 5E 4E */ stb r0, 0x5e4e(r3)
/* 800D0160 000CD0A0  4E 80 00 20 */ blr
