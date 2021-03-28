lbl_807D40A8:
/* 807D40A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D40AC  7C 08 02 A6 */	mflr r0
/* 807D40B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D40B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D40B8  7C 7F 1B 78 */	mr r31, r3
/* 807D40BC  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D40C0  2C 00 00 01 */	cmpwi r0, 1
/* 807D40C4  41 82 00 38 */	beq lbl_807D40FC
/* 807D40C8  40 80 00 34 */	bge lbl_807D40FC
/* 807D40CC  2C 00 00 00 */	cmpwi r0, 0
/* 807D40D0  40 80 00 08 */	bge lbl_807D40D8
/* 807D40D4  48 00 00 28 */	b lbl_807D40FC
lbl_807D40D8:
/* 807D40D8  38 80 00 1F */	li r4, 0x1f
/* 807D40DC  3C A0 80 7E */	lis r5, lit_5242@ha
/* 807D40E0  C0 25 2A 64 */	lfs f1, lit_5242@l(r5)
/* 807D40E4  38 A0 00 00 */	li r5, 0
/* 807D40E8  3C C0 80 7E */	lis r6, lit_4642@ha
/* 807D40EC  C0 46 29 EC */	lfs f2, lit_4642@l(r6)
/* 807D40F0  4B FF E4 59 */	bl anm_init__FP10e_wb_classifUcf
/* 807D40F4  38 00 00 01 */	li r0, 1
/* 807D40F8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807D40FC:
/* 807D40FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D4100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D4104  7C 08 03 A6 */	mtlr r0
/* 807D4108  38 21 00 10 */	addi r1, r1, 0x10
/* 807D410C  4E 80 00 20 */	blr 
