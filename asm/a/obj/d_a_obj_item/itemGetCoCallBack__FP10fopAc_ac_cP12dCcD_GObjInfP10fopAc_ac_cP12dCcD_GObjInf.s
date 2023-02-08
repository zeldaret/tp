lbl_8015B254:
/* 8015B254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015B258  7C 08 02 A6 */	mflr r0
/* 8015B25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015B260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015B264  93 C1 00 08 */	stw r30, 8(r1)
/* 8015B268  7C BE 2B 78 */	mr r30, r5
/* 8015B26C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8015B270  41 82 00 98 */	beq lbl_8015B308
/* 8015B274  48 00 21 59 */	bl checkPlayerGet__8daItem_cFv
/* 8015B278  2C 03 00 00 */	cmpwi r3, 0
/* 8015B27C  41 82 00 8C */	beq lbl_8015B308
/* 8015B280  28 1E 00 00 */	cmplwi r30, 0
/* 8015B284  41 82 00 84 */	beq lbl_8015B308
/* 8015B288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B28C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B290  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8015B294  A8 03 00 08 */	lha r0, 8(r3)
/* 8015B298  A8 7E 00 08 */	lha r3, 8(r30)
/* 8015B29C  7C 03 00 00 */	cmpw r3, r0
/* 8015B2A0  41 82 00 60 */	beq lbl_8015B300
/* 8015B2A4  2C 03 02 A9 */	cmpwi r3, 0x2a9
/* 8015B2A8  41 82 00 58 */	beq lbl_8015B300
/* 8015B2AC  2C 03 00 ED */	cmpwi r3, 0xed
/* 8015B2B0  40 82 00 20 */	bne lbl_8015B2D0
/* 8015B2B4  80 64 5D AC */	lwz r3, 0x5dac(r4)
/* 8015B2B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015B2BC  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8015B2C0  7D 89 03 A6 */	mtctr r12
/* 8015B2C4  4E 80 04 21 */	bctrl 
/* 8015B2C8  28 03 00 00 */	cmplwi r3, 0
/* 8015B2CC  40 82 00 34 */	bne lbl_8015B300
lbl_8015B2D0:
/* 8015B2D0  A8 1E 00 08 */	lha r0, 8(r30)
/* 8015B2D4  2C 00 00 EE */	cmpwi r0, 0xee
/* 8015B2D8  40 82 00 30 */	bne lbl_8015B308
/* 8015B2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015B2E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015B2E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8015B2E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8015B2EC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8015B2F0  7D 89 03 A6 */	mtctr r12
/* 8015B2F4  4E 80 04 21 */	bctrl 
/* 8015B2F8  28 03 00 00 */	cmplwi r3, 0
/* 8015B2FC  41 82 00 0C */	beq lbl_8015B308
lbl_8015B300:
/* 8015B300  7F E3 FB 78 */	mr r3, r31
/* 8015B304  48 00 1B E9 */	bl itemGetNextExecute__8daItem_cFv
lbl_8015B308:
/* 8015B308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015B30C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015B310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015B314  7C 08 03 A6 */	mtlr r0
/* 8015B318  38 21 00 10 */	addi r1, r1, 0x10
/* 8015B31C  4E 80 00 20 */	blr 
