lbl_8032BF50:
/* 8032BF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032BF54  7C 08 02 A6 */	mflr r0
/* 8032BF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032BF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032BF60  7C 7F 1B 79 */	or. r31, r3, r3
/* 8032BF64  41 82 00 40 */	beq lbl_8032BFA4
/* 8032BF68  3C 60 80 3D */	lis r3, __vt__17J3DAnmVtxColorKey@ha /* 0x803CEDAC@ha */
/* 8032BF6C  38 03 ED AC */	addi r0, r3, __vt__17J3DAnmVtxColorKey@l /* 0x803CEDAC@l */
/* 8032BF70  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BF74  41 82 00 20 */	beq lbl_8032BF94
/* 8032BF78  3C 60 80 3D */	lis r3, __vt__14J3DAnmVtxColor@ha /* 0x803CEDD4@ha */
/* 8032BF7C  38 03 ED D4 */	addi r0, r3, __vt__14J3DAnmVtxColor@l /* 0x803CEDD4@l */
/* 8032BF80  90 1F 00 00 */	stw r0, 0(r31)
/* 8032BF84  41 82 00 10 */	beq lbl_8032BF94
/* 8032BF88  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 8032BF8C  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 8032BF90  90 1F 00 00 */	stw r0, 0(r31)
lbl_8032BF94:
/* 8032BF94  7C 80 07 35 */	extsh. r0, r4
/* 8032BF98  40 81 00 0C */	ble lbl_8032BFA4
/* 8032BF9C  7F E3 FB 78 */	mr r3, r31
/* 8032BFA0  4B FA 2D 9D */	bl __dl__FPv
lbl_8032BFA4:
/* 8032BFA4  7F E3 FB 78 */	mr r3, r31
/* 8032BFA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8032BFAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032BFB0  7C 08 03 A6 */	mtlr r0
/* 8032BFB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8032BFB8  4E 80 00 20 */	blr 
