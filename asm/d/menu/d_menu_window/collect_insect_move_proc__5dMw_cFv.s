lbl_801FBBAC:
/* 801FBBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBBB0  7C 08 02 A6 */	mflr r0
/* 801FBBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBBB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBBBC  7C 7F 1B 78 */	mr r31, r3
/* 801FBBC0  80 63 01 34 */	lwz r3, 0x134(r3)
/* 801FBBC4  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBBC8  28 00 00 02 */	cmplwi r0, 2
/* 801FBBCC  40 82 00 08 */	bne lbl_801FBBD4
/* 801FBBD0  4B FD CA F9 */	bl _move__14dMenu_Insect_cFv
lbl_801FBBD4:
/* 801FBBD4  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 801FBBD8  88 03 00 F2 */	lbz r0, 0xf2(r3)
/* 801FBBDC  28 00 00 03 */	cmplwi r0, 3
/* 801FBBE0  40 82 00 0C */	bne lbl_801FBBEC
/* 801FBBE4  38 00 00 1E */	li r0, 0x1e
/* 801FBBE8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FBBEC:
/* 801FBBEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBBF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBBF4  7C 08 03 A6 */	mtlr r0
/* 801FBBF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBBFC  4E 80 00 20 */	blr 
