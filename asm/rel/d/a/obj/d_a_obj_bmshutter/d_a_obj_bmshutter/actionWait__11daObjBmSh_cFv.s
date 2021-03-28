lbl_80BBA13C:
/* 80BBA13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA140  7C 08 02 A6 */	mflr r0
/* 80BBA144  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBA14C  7C 7F 1B 78 */	mr r31, r3
/* 80BBA150  4B FF FD E5 */	bl checkSw__11daObjBmSh_cFv
/* 80BBA154  2C 03 00 00 */	cmpwi r3, 0
/* 80BBA158  41 82 00 38 */	beq lbl_80BBA190
/* 80BBA15C  38 00 00 01 */	li r0, 1
/* 80BBA160  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 80BBA164  7F E3 FB 78 */	mr r3, r31
/* 80BBA168  A8 9F 05 AC */	lha r4, 0x5ac(r31)
/* 80BBA16C  88 BF 05 AE */	lbz r5, 0x5ae(r31)
/* 80BBA170  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BBA174  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BBA178  38 E0 00 00 */	li r7, 0
/* 80BBA17C  39 00 00 01 */	li r8, 1
/* 80BBA180  4B 46 14 FC */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BBA184  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BBA188  60 00 00 02 */	ori r0, r0, 2
/* 80BBA18C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BBA190:
/* 80BBA190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBA194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA198  7C 08 03 A6 */	mtlr r0
/* 80BBA19C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA1A0  4E 80 00 20 */	blr 
