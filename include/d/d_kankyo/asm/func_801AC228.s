/* 801AC228 001A9168  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801AC22C 001A916C  7C 08 02 A6 */ mflr r0
/* 801AC230 001A9170  90 01 00 14 */ stw r0, 0x14(r1)
/* 801AC234 001A9174  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801AC238 001A9178  3B E0 00 00 */ li r31, 0
/* 801AC23C 001A917C  38 00 00 00 */ li r0, 0
/* 801AC240 001A9180  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 801AC244 001A9184  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC248 001A9188  34 63 4E 20 */ addic. r3, r3, 0x4e20
/* 801AC24C 001A918C  41 82 00 1C */ beq lbl_801AC268
/* 801AC250 001A9190  81 83 00 00 */ lwz r12, 0(r3)
/* 801AC254 001A9194  81 8C 00 BC */ lwz r12, 0xbc(r12)
/* 801AC258 001A9198  7D 89 03 A6 */ mtctr r12
/* 801AC25C 001A919C  4E 80 04 21 */ bctrl
/* 801AC260 001A91A0  80 03 00 0C */ lwz r0, 0xc(r3)
/* 801AC264 001A91A4  54 00 87 7E */ rlwinm r0, r0, 0x10, 0x1d, 0x1f
lbl_801AC268:
/* 801AC268 001A91A8  28 00 00 00 */ cmplwi r0, 0
/* 801AC26C 001A91AC  40 82 00 08 */ bne lbl_801AC274
/* 801AC270 001A91B0  3B E0 00 01 */ li r31, 1
lbl_801AC274:
/* 801AC274 001A91B4  7F E3 FB 78 */ mr r3, r31
/* 801AC278 001A91B8  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801AC27C 001A91BC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801AC280 001A91C0  7C 08 03 A6 */ mtlr r0
/* 801AC284 001A91C4  38 21 00 10 */ addi r1, r1, 0x10
/* 801AC288 001A91C8  4E 80 00 20 */ blr
