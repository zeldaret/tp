lbl_807D4110:
/* 807D4110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D4114  7C 08 02 A6 */	mflr r0
/* 807D4118  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D411C  80 03 05 E8 */	lwz r0, 0x5e8(r3)
/* 807D4120  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807D4124  41 82 00 20 */	beq lbl_807D4144
/* 807D4128  38 80 00 2A */	li r4, 0x2a
/* 807D412C  3C A0 80 7E */	lis r5, lit_4445@ha /* 0x807E29AC@ha */
/* 807D4130  C0 25 29 AC */	lfs f1, lit_4445@l(r5)  /* 0x807E29AC@l */
/* 807D4134  38 A0 00 02 */	li r5, 2
/* 807D4138  3C C0 80 7E */	lis r6, lit_4642@ha /* 0x807E29EC@ha */
/* 807D413C  C0 46 29 EC */	lfs f2, lit_4642@l(r6)  /* 0x807E29EC@l */
/* 807D4140  4B FF E4 09 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D4144:
/* 807D4144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D4148  7C 08 03 A6 */	mtlr r0
/* 807D414C  38 21 00 10 */	addi r1, r1, 0x10
/* 807D4150  4E 80 00 20 */	blr 
