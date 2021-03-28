lbl_8062FB90:
/* 8062FB90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062FB94  7C 08 02 A6 */	mflr r0
/* 8062FB98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062FB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062FBA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062FBA4  41 82 00 10 */	beq lbl_8062FBB4
/* 8062FBA8  7C 80 07 35 */	extsh. r0, r4
/* 8062FBAC  40 81 00 08 */	ble lbl_8062FBB4
/* 8062FBB0  4B C9 F1 8C */	b __dl__FPv
lbl_8062FBB4:
/* 8062FBB4  7F E3 FB 78 */	mr r3, r31
/* 8062FBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062FBBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062FBC0  7C 08 03 A6 */	mtlr r0
/* 8062FBC4  38 21 00 10 */	addi r1, r1, 0x10
/* 8062FBC8  4E 80 00 20 */	blr 
