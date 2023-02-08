lbl_8059C454:
/* 8059C454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C458  7C 08 02 A6 */	mflr r0
/* 8059C45C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C464  7C 7F 1B 78 */	mr r31, r3
/* 8059C468  3C 80 80 5A */	lis r4, lit_3719@ha /* 0x8059C6B0@ha */
/* 8059C46C  C0 24 C6 B0 */	lfs f1, lit_3719@l(r4)  /* 0x8059C6B0@l */
/* 8059C470  C0 03 05 F4 */	lfs f0, 0x5f4(r3)
/* 8059C474  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059C478  40 82 00 30 */	bne lbl_8059C4A8
/* 8059C47C  4B FF FC 25 */	bl modeWaitLowerInit__10daObjSw5_cFv
/* 8059C480  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059C484  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059C488  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8059C48C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8059C490  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8059C494  7C 05 07 74 */	extsb r5, r0
/* 8059C498  4B A9 8E 19 */	bl offSwitch__10dSv_info_cFii
/* 8059C49C  38 00 00 00 */	li r0, 0
/* 8059C4A0  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 8059C4A4  98 1F 05 B0 */	stb r0, 0x5b0(r31)
lbl_8059C4A8:
/* 8059C4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C4B0  7C 08 03 A6 */	mtlr r0
/* 8059C4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C4B8  4E 80 00 20 */	blr 
