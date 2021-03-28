lbl_800C0028:
/* 800C0028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C002C  7C 08 02 A6 */	mflr r0
/* 800C0030  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C0034  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C0038  93 C1 00 08 */	stw r30, 8(r1)
/* 800C003C  83 E5 00 04 */	lwz r31, 4(r5)
/* 800C0040  38 A0 04 00 */	li r5, 0x400
/* 800C0044  4B FF FE C1 */	bl loadAram__9daAlink_cFUsUl
/* 800C0048  7C 7E 1B 78 */	mr r30, r3
/* 800C004C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C0050  D0 03 00 08 */	stfs f0, 8(r3)
/* 800C0054  7F E4 FB 78 */	mr r4, r31
/* 800C0058  48 26 B0 45 */	bl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
/* 800C005C  38 7F 00 58 */	addi r3, r31, 0x58
/* 800C0060  7F C4 F3 78 */	mr r4, r30
/* 800C0064  48 26 FB 65 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 800C0068  7F C3 F3 78 */	mr r3, r30
/* 800C006C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C0070  83 C1 00 08 */	lwz r30, 8(r1)
/* 800C0074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C0078  7C 08 03 A6 */	mtlr r0
/* 800C007C  38 21 00 10 */	addi r1, r1, 0x10
/* 800C0080  4E 80 00 20 */	blr 
