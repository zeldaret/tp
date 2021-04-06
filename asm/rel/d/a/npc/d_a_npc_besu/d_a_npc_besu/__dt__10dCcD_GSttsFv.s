lbl_8053DE70:
/* 8053DE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DE74  7C 08 02 A6 */	mflr r0
/* 8053DE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DE80  7C 7F 1B 79 */	or. r31, r3, r3
/* 8053DE84  41 82 00 30 */	beq lbl_8053DEB4
/* 8053DE88  3C 60 80 54 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8053FD50@ha */
/* 8053DE8C  38 03 FD 50 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8053FD50@l */
/* 8053DE90  90 1F 00 00 */	stw r0, 0(r31)
/* 8053DE94  41 82 00 10 */	beq lbl_8053DEA4
/* 8053DE98  3C 60 80 54 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8053FD44@ha */
/* 8053DE9C  38 03 FD 44 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8053FD44@l */
/* 8053DEA0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8053DEA4:
/* 8053DEA4  7C 80 07 35 */	extsh. r0, r4
/* 8053DEA8  40 81 00 0C */	ble lbl_8053DEB4
/* 8053DEAC  7F E3 FB 78 */	mr r3, r31
/* 8053DEB0  4B D9 0E 8D */	bl __dl__FPv
lbl_8053DEB4:
/* 8053DEB4  7F E3 FB 78 */	mr r3, r31
/* 8053DEB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DEBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DEC0  7C 08 03 A6 */	mtlr r0
/* 8053DEC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DEC8  4E 80 00 20 */	blr 
