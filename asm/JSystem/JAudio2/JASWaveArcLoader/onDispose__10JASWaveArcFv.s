lbl_8029A664:
/* 8029A664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029A668  7C 08 02 A6 */	mflr r0
/* 8029A66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029A670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029A674  7C 7F 1B 78 */	mr r31, r3
/* 8029A678  4B FF FC 75 */	bl eraseSetup__10JASWaveArcFv
/* 8029A67C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029A680  41 82 00 18 */	beq lbl_8029A698
/* 8029A684  7F E3 FB 78 */	mr r3, r31
/* 8029A688  81 9F 00 00 */	lwz r12, 0(r31)
/* 8029A68C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8029A690  7D 89 03 A6 */	mtctr r12
/* 8029A694  4E 80 04 21 */	bctrl 
lbl_8029A698:
/* 8029A698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029A69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029A6A0  7C 08 03 A6 */	mtlr r0
/* 8029A6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029A6A8  4E 80 00 20 */	blr 
