lbl_8007ABC4:
/* 8007ABC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007ABC8  7C 08 02 A6 */	mflr r0
/* 8007ABCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007ABD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007ABD4  7C 7F 1B 78 */	mr r31, r3
/* 8007ABD8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8007ABDC  28 00 00 00 */	cmplwi r0, 0
/* 8007ABE0  41 82 00 1C */	beq lbl_8007ABFC
/* 8007ABE4  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8007ABE8  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8007ABEC  48 2C B8 C5 */	bl PSMTXCopy
/* 8007ABF0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8007ABF4  38 9F 00 4C */	addi r4, r31, 0x4c
/* 8007ABF8  48 2C B8 B9 */	bl PSMTXCopy
lbl_8007ABFC:
/* 8007ABFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007AC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007AC04  7C 08 03 A6 */	mtlr r0
/* 8007AC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8007AC0C  4E 80 00 20 */	blr 
