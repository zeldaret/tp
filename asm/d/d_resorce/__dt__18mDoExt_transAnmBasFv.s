lbl_8003C784:
/* 8003C784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003C788  7C 08 02 A6 */	mflr r0
/* 8003C78C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003C790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003C794  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003C798  41 82 00 50 */	beq lbl_8003C7E8
/* 8003C79C  3C 60 80 3A */	lis r3, __vt__18mDoExt_transAnmBas@ha /* 0x803A7C5C@ha */
/* 8003C7A0  38 03 7C 5C */	addi r0, r3, __vt__18mDoExt_transAnmBas@l /* 0x803A7C5C@l */
/* 8003C7A4  90 1F 00 00 */	stw r0, 0(r31)
/* 8003C7A8  41 82 00 30 */	beq lbl_8003C7D8
/* 8003C7AC  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha /* 0x803A7C70@ha */
/* 8003C7B0  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l /* 0x803A7C70@l */
/* 8003C7B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8003C7B8  41 82 00 20 */	beq lbl_8003C7D8
/* 8003C7BC  3C 60 80 3A */	lis r3, __vt__15J3DAnmTransform@ha /* 0x803A7C48@ha */
/* 8003C7C0  38 03 7C 48 */	addi r0, r3, __vt__15J3DAnmTransform@l /* 0x803A7C48@l */
/* 8003C7C4  90 1F 00 00 */	stw r0, 0(r31)
/* 8003C7C8  41 82 00 10 */	beq lbl_8003C7D8
/* 8003C7CC  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8003C7D0  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8003C7D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8003C7D8:
/* 8003C7D8  7C 80 07 35 */	extsh. r0, r4
/* 8003C7DC  40 81 00 0C */	ble lbl_8003C7E8
/* 8003C7E0  7F E3 FB 78 */	mr r3, r31
/* 8003C7E4  48 29 25 59 */	bl __dl__FPv
lbl_8003C7E8:
/* 8003C7E8  7F E3 FB 78 */	mr r3, r31
/* 8003C7EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003C7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003C7F4  7C 08 03 A6 */	mtlr r0
/* 8003C7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8003C7FC  4E 80 00 20 */	blr 
