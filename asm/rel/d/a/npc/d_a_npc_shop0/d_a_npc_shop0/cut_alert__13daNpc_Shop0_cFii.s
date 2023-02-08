lbl_80AEB780:
/* 80AEB780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB784  7C 08 02 A6 */	mflr r0
/* 80AEB788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB78C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB790  7C 7F 1B 78 */	mr r31, r3
/* 80AEB794  2C 05 00 00 */	cmpwi r5, 0
/* 80AEB798  41 82 00 28 */	beq lbl_80AEB7C0
/* 80AEB79C  4B FF FA 2D */	bl getFlowNodeNum__13daNpc_Shop0_cFv
/* 80AEB7A0  7C 65 1B 78 */	mr r5, r3
/* 80AEB7A4  38 7F 05 94 */	addi r3, r31, 0x594
/* 80AEB7A8  7F E4 FB 78 */	mr r4, r31
/* 80AEB7AC  38 C0 00 00 */	li r6, 0
/* 80AEB7B0  38 E0 00 00 */	li r7, 0
/* 80AEB7B4  4B 75 E7 DD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80AEB7B8  38 60 00 00 */	li r3, 0
/* 80AEB7BC  48 00 00 20 */	b lbl_80AEB7DC
lbl_80AEB7C0:
/* 80AEB7C0  38 7F 05 94 */	addi r3, r31, 0x594
/* 80AEB7C4  7F E4 FB 78 */	mr r4, r31
/* 80AEB7C8  38 A0 00 00 */	li r5, 0
/* 80AEB7CC  38 C0 00 00 */	li r6, 0
/* 80AEB7D0  4B 75 EB 09 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AEB7D4  30 03 FF FF */	addic r0, r3, -1
/* 80AEB7D8  7C 60 19 10 */	subfe r3, r0, r3
lbl_80AEB7DC:
/* 80AEB7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB7E4  7C 08 03 A6 */	mtlr r0
/* 80AEB7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB7EC  4E 80 00 20 */	blr 
