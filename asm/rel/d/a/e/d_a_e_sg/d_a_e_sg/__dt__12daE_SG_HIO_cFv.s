lbl_8078DC84:
/* 8078DC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DC88  7C 08 02 A6 */	mflr r0
/* 8078DC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078DC94  7C 7F 1B 79 */	or. r31, r3, r3
/* 8078DC98  41 82 00 1C */	beq lbl_8078DCB4
/* 8078DC9C  3C A0 80 79 */	lis r5, __vt__12daE_SG_HIO_c@ha /* 0x8078E088@ha */
/* 8078DCA0  38 05 E0 88 */	addi r0, r5, __vt__12daE_SG_HIO_c@l /* 0x8078E088@l */
/* 8078DCA4  90 1F 00 00 */	stw r0, 0(r31)
/* 8078DCA8  7C 80 07 35 */	extsh. r0, r4
/* 8078DCAC  40 81 00 08 */	ble lbl_8078DCB4
/* 8078DCB0  4B B4 10 8D */	bl __dl__FPv
lbl_8078DCB4:
/* 8078DCB4  7F E3 FB 78 */	mr r3, r31
/* 8078DCB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078DCBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DCC0  7C 08 03 A6 */	mtlr r0
/* 8078DCC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DCC8  4E 80 00 20 */	blr 
