lbl_8032BC50:
/* 8032BC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BC54  7C 08 02 A6 */	mflr r0
/* 8032BC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BC60  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BC64  41 82 00 30 */	beq lbl_8032BC94
/* 8032BC68  3C 60 80 3D */	lis r3, __vt__14J3DAnmVtxColor@ha /* 0x803CEDD4@ha */
/* 8032BC6C  38 03 ED D4 */	addi r0, r3, __vt__14J3DAnmVtxColor@l /* 0x803CEDD4@l */
/* 8032BC70  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BC74  41 82 00 10 */	beq lbl_8032BC84
/* 8032BC78  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032BC7C  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032BC80  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BC84:
/* 8032BC84  7C 80 07 35 */	extsh. r0, r4
/* 8032BC88  40 81 00 0C */	ble lbl_8032BC94
/* 8032BC8C  7F E3 FB 78 */	mr r3, r31
/* 8032BC90  4B FA 30 AD */	bl __dl__FPv
lbl_8032BC94:
/* 8032BC94  7F E3 FB 78 */	mr r3, r31
/* 8032BC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BC9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BCA0  7C 08 03 A6 */	mtlr r0
/* 8032BCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BCA8  4E 80 00 20 */	blr 
