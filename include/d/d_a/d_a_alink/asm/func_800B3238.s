/* 800B3238 000B0178  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800B323C 000B017C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800B3240 000B0180  98 83 5E 1C */ stb r4, 0x5e1c(r3)
/* 800B3244 000B0184  38 00 00 02 */ li r0, 2
/* 800B3248 000B0188  98 03 5E 42 */ stb r0, 0x5e42(r3)
/* 800B324C 000B018C  4E 80 00 20 */ blr
