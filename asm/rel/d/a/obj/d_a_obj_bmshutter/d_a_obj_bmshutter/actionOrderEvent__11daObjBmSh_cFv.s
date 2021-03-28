lbl_80BBA1A4:
/* 80BBA1A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA1A8  7C 08 02 A6 */	mflr r0
/* 80BBA1AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA1B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBA1B4  7C 7F 1B 78 */	mr r31, r3
/* 80BBA1B8  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BBA1BC  28 00 00 02 */	cmplwi r0, 2
/* 80BBA1C0  40 82 00 10 */	bne lbl_80BBA1D0
/* 80BBA1C4  38 00 00 02 */	li r0, 2
/* 80BBA1C8  98 1F 05 AF */	stb r0, 0x5af(r31)
/* 80BBA1CC  48 00 00 2C */	b lbl_80BBA1F8
lbl_80BBA1D0:
/* 80BBA1D0  A8 9F 05 AC */	lha r4, 0x5ac(r31)
/* 80BBA1D4  88 BF 05 AE */	lbz r5, 0x5ae(r31)
/* 80BBA1D8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80BBA1DC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80BBA1E0  38 E0 00 00 */	li r7, 0
/* 80BBA1E4  39 00 00 01 */	li r8, 1
/* 80BBA1E8  4B 46 14 94 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80BBA1EC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BBA1F0  60 00 00 02 */	ori r0, r0, 2
/* 80BBA1F4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BBA1F8:
/* 80BBA1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBA1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA200  7C 08 03 A6 */	mtlr r0
/* 80BBA204  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA208  4E 80 00 20 */	blr 
