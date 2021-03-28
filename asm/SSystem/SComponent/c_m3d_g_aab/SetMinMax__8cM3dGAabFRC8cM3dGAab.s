lbl_8026ED60:
/* 8026ED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026ED64  7C 08 02 A6 */	mflr r0
/* 8026ED68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026ED6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026ED70  93 C1 00 08 */	stw r30, 8(r1)
/* 8026ED74  7C 7E 1B 78 */	mr r30, r3
/* 8026ED78  7C 9F 23 78 */	mr r31, r4
/* 8026ED7C  4B FF FF A1 */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 8026ED80  7F C3 F3 78 */	mr r3, r30
/* 8026ED84  38 9F 00 0C */	addi r4, r31, 0xc
/* 8026ED88  4B FF FF 95 */	bl SetMinMax__8cM3dGAabFRC4cXyz
/* 8026ED8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026ED90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026ED94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026ED98  7C 08 03 A6 */	mtlr r0
/* 8026ED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8026EDA0  4E 80 00 20 */	blr 
