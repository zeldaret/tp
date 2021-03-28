lbl_8032AB00:
/* 8032AB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032AB04  7C 08 02 A6 */	mflr r0
/* 8032AB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032AB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032AB10  7C 7F 1B 78 */	mr r31, r3
/* 8032AB14  4B FF FD 15 */	bl __ct__11J3DAnmColorFv
/* 8032AB18  3C 60 80 3D */	lis r3, __vt__14J3DAnmColorKey@ha
/* 8032AB1C  38 03 ED 70 */	addi r0, r3, __vt__14J3DAnmColorKey@l
/* 8032AB20  90 1F 00 00 */	stw r0, 0(r31)
/* 8032AB24  38 00 00 00 */	li r0, 0
/* 8032AB28  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8032AB2C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8032AB30  90 1F 00 34 */	stw r0, 0x34(r31)
/* 8032AB34  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8032AB38  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8032AB3C  7F E3 FB 78 */	mr r3, r31
/* 8032AB40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032AB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032AB48  7C 08 03 A6 */	mtlr r0
/* 8032AB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032AB50  4E 80 00 20 */	blr 
