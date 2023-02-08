lbl_800FC568:
/* 800FC568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC56C  7C 08 02 A6 */	mflr r0
/* 800FC570  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC574  80 A3 28 10 */	lwz r5, 0x2810(r3)
/* 800FC578  28 05 00 00 */	cmplwi r5, 0
/* 800FC57C  41 82 00 18 */	beq lbl_800FC594
/* 800FC580  A8 05 00 08 */	lha r0, 8(r5)
/* 800FC584  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 800FC588  40 82 00 0C */	bne lbl_800FC594
/* 800FC58C  38 63 28 0C */	addi r3, r3, 0x280c
/* 800FC590  48 06 27 29 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_800FC594:
/* 800FC594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC598  7C 08 03 A6 */	mtlr r0
/* 800FC59C  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC5A0  4E 80 00 20 */	blr 
