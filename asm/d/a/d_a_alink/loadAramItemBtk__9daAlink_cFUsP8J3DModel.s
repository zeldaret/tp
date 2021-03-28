lbl_800BFFCC:
/* 800BFFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BFFD0  7C 08 02 A6 */	mflr r0
/* 800BFFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BFFD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BFFDC  93 C1 00 08 */	stw r30, 8(r1)
/* 800BFFE0  83 E5 00 04 */	lwz r31, 4(r5)
/* 800BFFE4  38 A0 04 00 */	li r5, 0x400
/* 800BFFE8  4B FF FF 1D */	bl loadAram__9daAlink_cFUsUl
/* 800BFFEC  7C 7E 1B 78 */	mr r30, r3
/* 800BFFF0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BFFF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 800BFFF8  7F E4 FB 78 */	mr r4, r31
/* 800BFFFC  48 26 B1 D9 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 800C0000  38 7F 00 58 */	addi r3, r31, 0x58
/* 800C0004  7F C4 F3 78 */	mr r4, r30
/* 800C0008  48 26 FC BD */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 800C000C  7F C3 F3 78 */	mr r3, r30
/* 800C0010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0014  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C0018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C001C  7C 08 03 A6 */	mtlr r0
/* 800C0020  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0024  4E 80 00 20 */	blr 
