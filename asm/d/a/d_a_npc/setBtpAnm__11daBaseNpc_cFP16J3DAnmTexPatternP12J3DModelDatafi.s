lbl_8014EF64:
/* 8014EF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014EF68  7C 08 02 A6 */	mflr r0
/* 8014EF6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014EF70  7C 80 23 78 */	mr r0, r4
/* 8014EF74  7C C7 33 78 */	mr r7, r6
/* 8014EF78  38 85 00 58 */	addi r4, r5, 0x58
/* 8014EF7C  7C 05 03 78 */	mr r5, r0
/* 8014EF80  38 C0 00 01 */	li r6, 1
/* 8014EF84  39 00 00 00 */	li r8, 0
/* 8014EF88  39 20 FF FF */	li r9, -1
/* 8014EF8C  38 63 08 08 */	addi r3, r3, 0x808
/* 8014EF90  4B EB E5 BD */	bl init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 8014EF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014EF98  7C 08 03 A6 */	mtlr r0
/* 8014EF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8014EFA0  4E 80 00 20 */	blr 
