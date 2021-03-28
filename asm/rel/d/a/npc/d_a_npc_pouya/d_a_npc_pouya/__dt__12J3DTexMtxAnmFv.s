lbl_80AAE6E0:
/* 80AAE6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAE6E4  7C 08 02 A6 */	mflr r0
/* 80AAE6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAE6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAE6F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAE6F4  41 82 00 10 */	beq lbl_80AAE704
/* 80AAE6F8  7C 80 07 35 */	extsh. r0, r4
/* 80AAE6FC  40 81 00 08 */	ble lbl_80AAE704
/* 80AAE700  4B 82 06 3C */	b __dl__FPv
lbl_80AAE704:
/* 80AAE704  7F E3 FB 78 */	mr r3, r31
/* 80AAE708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAE70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAE710  7C 08 03 A6 */	mtlr r0
/* 80AAE714  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAE718  4E 80 00 20 */	blr 
