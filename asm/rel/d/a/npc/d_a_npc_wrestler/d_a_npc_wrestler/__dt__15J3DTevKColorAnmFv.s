lbl_80B2FBF4:
/* 80B2FBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2FBF8  7C 08 02 A6 */	mflr r0
/* 80B2FBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2FC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2FC04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2FC08  41 82 00 10 */	beq lbl_80B2FC18
/* 80B2FC0C  7C 80 07 35 */	extsh. r0, r4
/* 80B2FC10  40 81 00 08 */	ble lbl_80B2FC18
/* 80B2FC14  4B 79 F1 28 */	b __dl__FPv
lbl_80B2FC18:
/* 80B2FC18  7F E3 FB 78 */	mr r3, r31
/* 80B2FC1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2FC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2FC24  7C 08 03 A6 */	mtlr r0
/* 80B2FC28  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2FC2C  4E 80 00 20 */	blr 
