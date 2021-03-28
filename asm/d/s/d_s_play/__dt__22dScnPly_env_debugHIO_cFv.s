lbl_8025ABC4:
/* 8025ABC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025ABC8  7C 08 02 A6 */	mflr r0
/* 8025ABCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025ABD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025ABD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025ABD8  41 82 00 1C */	beq lbl_8025ABF4
/* 8025ABDC  3C A0 80 3C */	lis r5, __vt__22dScnPly_env_debugHIO_c@ha
/* 8025ABE0  38 05 32 24 */	addi r0, r5, __vt__22dScnPly_env_debugHIO_c@l
/* 8025ABE4  90 1F 00 00 */	stw r0, 0(r31)
/* 8025ABE8  7C 80 07 35 */	extsh. r0, r4
/* 8025ABEC  40 81 00 08 */	ble lbl_8025ABF4
/* 8025ABF0  48 07 41 4D */	bl __dl__FPv
lbl_8025ABF4:
/* 8025ABF4  7F E3 FB 78 */	mr r3, r31
/* 8025ABF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025ABFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025AC00  7C 08 03 A6 */	mtlr r0
/* 8025AC04  38 21 00 10 */	addi r1, r1, 0x10
/* 8025AC08  4E 80 00 20 */	blr 
