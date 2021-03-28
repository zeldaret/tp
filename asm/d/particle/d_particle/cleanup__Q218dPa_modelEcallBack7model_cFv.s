lbl_8004A88C:
/* 8004A88C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004A890  7C 08 02 A6 */	mflr r0
/* 8004A894  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004A898  80 83 00 04 */	lwz r4, 4(r3)
/* 8004A89C  28 04 00 00 */	cmplwi r4, 0
/* 8004A8A0  41 82 00 2C */	beq lbl_8004A8CC
/* 8004A8A4  88 03 03 92 */	lbz r0, 0x392(r3)
/* 8004A8A8  28 00 00 00 */	cmplwi r0, 0
/* 8004A8AC  40 82 00 14 */	bne lbl_8004A8C0
/* 8004A8B0  80 63 00 00 */	lwz r3, 0(r3)
/* 8004A8B4  38 63 00 58 */	addi r3, r3, 0x58
/* 8004A8B8  48 2E 4E 41 */	bl removeTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 8004A8BC  48 00 00 10 */	b lbl_8004A8CC
lbl_8004A8C0:
/* 8004A8C0  80 63 00 00 */	lwz r3, 0(r3)
/* 8004A8C4  38 63 00 58 */	addi r3, r3, 0x58
/* 8004A8C8  48 2E 4F B9 */	bl removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
lbl_8004A8CC:
/* 8004A8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004A8D0  7C 08 03 A6 */	mtlr r0
/* 8004A8D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004A8D8  4E 80 00 20 */	blr 
