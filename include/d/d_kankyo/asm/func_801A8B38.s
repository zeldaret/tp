/* 801A8B38 001A5A78  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801A8B3C 001A5A7C  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801A8B40 001A5A80  A0 83 00 38 */ lhz r4, 0x38(r3)
/* 801A8B44 001A5A84  38 60 00 07 */ li r3, 7
/* 801A8B48 001A5A88  7C 04 1B D6 */ divw r0, r4, r3
/* 801A8B4C 001A5A8C  7C 00 19 D6 */ mullw r0, r0, r3
/* 801A8B50 001A5A90  7C 60 20 50 */ subf r3, r0, r4
/* 801A8B54 001A5A94  4E 80 00 20 */ blr
