lbl_8019A4F4:
/* 8019A4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019A4F8  7C 08 02 A6 */	mflr r0
/* 8019A4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019A500  80 03 0F 60 */	lwz r0, 0xf60(r3)
/* 8019A504  2C 00 00 00 */	cmpwi r0, 0
/* 8019A508  40 80 00 1C */	bge lbl_8019A524
/* 8019A50C  88 03 0F 73 */	lbz r0, 0xf73(r3)
/* 8019A510  54 00 10 3A */	slwi r0, r0, 2
/* 8019A514  7C 63 02 14 */	add r3, r3, r0
/* 8019A518  80 63 0E 4C */	lwz r3, 0xe4c(r3)
/* 8019A51C  4B E7 F7 9D */	bl fopAcM_delete__FUi
/* 8019A520  48 00 00 34 */	b lbl_8019A554
lbl_8019A524:
/* 8019A524  88 03 0F 73 */	lbz r0, 0xf73(r3)
/* 8019A528  54 00 10 3A */	slwi r0, r0, 2
/* 8019A52C  7C 63 02 14 */	add r3, r3, r0
/* 8019A530  80 03 0E 4C */	lwz r0, 0xe4c(r3)
/* 8019A534  90 01 00 08 */	stw r0, 8(r1)
/* 8019A538  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8019A53C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8019A540  38 81 00 08 */	addi r4, r1, 8
/* 8019A544  4B E7 F2 B5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8019A548  28 03 00 00 */	cmplwi r3, 0
/* 8019A54C  41 82 00 08 */	beq lbl_8019A554
/* 8019A550  4B E9 D5 15 */	bl hide__12daItemBase_cFv
lbl_8019A554:
/* 8019A554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019A558  7C 08 03 A6 */	mtlr r0
/* 8019A55C  38 21 00 10 */	addi r1, r1, 0x10
/* 8019A560  4E 80 00 20 */	blr 
