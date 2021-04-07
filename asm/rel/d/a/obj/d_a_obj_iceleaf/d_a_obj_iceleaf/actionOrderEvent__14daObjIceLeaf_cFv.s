lbl_80C259C8:
/* 80C259C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C259CC  7C 08 02 A6 */	mflr r0
/* 80C259D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C259D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C259D8  7C 7F 1B 78 */	mr r31, r3
/* 80C259DC  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80C259E0  28 00 00 02 */	cmplwi r0, 2
/* 80C259E4  40 82 00 48 */	bne lbl_80C25A2C
/* 80C259E8  38 00 00 02 */	li r0, 2
/* 80C259EC  98 1F 09 29 */	stb r0, 0x929(r31)
/* 80C259F0  3C 80 80 C2 */	lis r4, lit_3806@ha /* 0x80C25D78@ha */
/* 80C259F4  C0 04 5D 78 */	lfs f0, lit_3806@l(r4)  /* 0x80C25D78@l */
/* 80C259F8  80 9F 09 04 */	lwz r4, 0x904(r31)
/* 80C259FC  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 80C25A00  38 00 00 01 */	li r0, 1
/* 80C25A04  98 1F 09 28 */	stb r0, 0x928(r31)
/* 80C25A08  48 00 00 C1 */	bl setFallSE__14daObjIceLeaf_cFv
/* 80C25A0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C25A10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C25A14  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C25A18  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C25A1C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C25A20  7C 05 07 74 */	extsb r5, r0
/* 80C25A24  4B 40 F7 DD */	bl onSwitch__10dSv_info_cFii
/* 80C25A28  48 00 00 2C */	b lbl_80C25A54
lbl_80C25A2C:
/* 80C25A2C  A8 9F 09 2C */	lha r4, 0x92c(r31)
/* 80C25A30  88 BF 09 2A */	lbz r5, 0x92a(r31)
/* 80C25A34  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80C25A38  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80C25A3C  38 E0 00 00 */	li r7, 0
/* 80C25A40  39 00 00 01 */	li r8, 1
/* 80C25A44  4B 3F 5C 39 */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80C25A48  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80C25A4C  60 00 00 02 */	ori r0, r0, 2
/* 80C25A50  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80C25A54:
/* 80C25A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C25A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C25A5C  7C 08 03 A6 */	mtlr r0
/* 80C25A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80C25A64  4E 80 00 20 */	blr 
