lbl_8057A4F4:
/* 8057A4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057A4F8  7C 08 02 A6 */	mflr r0
/* 8057A4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057A500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057A504  7C 7F 1B 78 */	mr r31, r3
/* 8057A508  38 00 00 01 */	li r0, 1
/* 8057A50C  98 03 05 90 */	stb r0, 0x590(r3)
/* 8057A510  A8 83 05 92 */	lha r4, 0x592(r3)
/* 8057A514  88 A3 05 94 */	lbz r5, 0x594(r3)
/* 8057A518  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 8057A51C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 8057A520  38 E0 00 03 */	li r7, 3
/* 8057A524  39 00 00 01 */	li r8, 1
/* 8057A528  4B AA 11 54 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 8057A52C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8057A530  60 00 00 02 */	ori r0, r0, 2
/* 8057A534  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8057A538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057A53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057A540  7C 08 03 A6 */	mtlr r0
/* 8057A544  38 21 00 10 */	addi r1, r1, 0x10
/* 8057A548  4E 80 00 20 */	blr 
