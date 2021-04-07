lbl_8003B8D0:
/* 8003B8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003B8D4  7C 08 02 A6 */	mflr r0
/* 8003B8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003B8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003B8E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B8E4  41 82 00 40 */	beq lbl_8003B924
/* 8003B8E8  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha /* 0x803A7C70@ha */
/* 8003B8EC  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l /* 0x803A7C70@l */
/* 8003B8F0  90 1F 00 00 */	stw r0, 0(r31)
/* 8003B8F4  41 82 00 20 */	beq lbl_8003B914
/* 8003B8F8  3C 60 80 3A */	lis r3, __vt__15J3DAnmTransform@ha /* 0x803A7C48@ha */
/* 8003B8FC  38 03 7C 48 */	addi r0, r3, __vt__15J3DAnmTransform@l /* 0x803A7C48@l */
/* 8003B900  90 1F 00 00 */	stw r0, 0(r31)
/* 8003B904  41 82 00 10 */	beq lbl_8003B914
/* 8003B908  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8003B90C  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8003B910  90 1F 00 00 */	stw r0, 0(r31)
lbl_8003B914:
/* 8003B914  7C 80 07 35 */	extsh. r0, r4
/* 8003B918  40 81 00 0C */	ble lbl_8003B924
/* 8003B91C  7F E3 FB 78 */	mr r3, r31
/* 8003B920  48 29 34 1D */	bl __dl__FPv
lbl_8003B924:
/* 8003B924  7F E3 FB 78 */	mr r3, r31
/* 8003B928  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003B92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003B930  7C 08 03 A6 */	mtlr r0
/* 8003B934  38 21 00 10 */	addi r1, r1, 0x10
/* 8003B938  4E 80 00 20 */	blr 
