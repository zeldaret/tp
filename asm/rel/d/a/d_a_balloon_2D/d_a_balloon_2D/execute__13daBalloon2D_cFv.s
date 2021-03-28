lbl_80653EC0:
/* 80653EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653EC4  7C 08 02 A6 */	mflr r0
/* 80653EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80653ED0  7C 7F 1B 78 */	mr r31, r3
/* 80653ED4  48 00 05 6D */	bl setAllAlpha__13daBalloon2D_cFv
/* 80653ED8  7F E3 FB 78 */	mr r3, r31
/* 80653EDC  48 00 07 71 */	bl setComboAlpha__13daBalloon2D_cFv
/* 80653EE0  7F E3 FB 78 */	mr r3, r31
/* 80653EE4  38 80 00 00 */	li r4, 0
/* 80653EE8  48 00 0F A5 */	bl setHIO__13daBalloon2D_cFb
/* 80653EEC  38 60 00 01 */	li r3, 1
/* 80653EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80653EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653EF8  7C 08 03 A6 */	mtlr r0
/* 80653EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80653F00  4E 80 00 20 */	blr 
