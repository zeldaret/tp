/* 8016C34C 0016928C  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8016C350 00169290  38 84 61 C0 */ addi r4, r4, g_dComIfG_gameInfo@l
/* 8016C354 00169294  54 60 20 36 */ slwi r0, r3, 4
/* 8016C358 00169298  7C 64 02 14 */ add r3, r4, r0
/* 8016C35C 0016929C  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 8016C360 001692A0  54 03 17 FE */ rlwinm r3, r0, 2, 0x1f, 0x1f
/* 8016C364 001692A4  4E 80 00 20 */ blr
