lbl_80519578:
/* 80519578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051957C  7C 08 02 A6 */	mflr r0
/* 80519580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80519584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80519588  7C 7F 1B 78 */	mr r31, r3
/* 8051958C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80519590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80519594  38 80 00 2E */	li r4, 0x2e
/* 80519598  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8051959C  7C 05 07 74 */	extsb r5, r0
/* 805195A0  4B B1 BD C0 */	b isSwitch__10dSv_info_cCFii
/* 805195A4  2C 03 00 00 */	cmpwi r3, 0
/* 805195A8  41 82 00 A8 */	beq lbl_80519650
/* 805195AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805195B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805195B4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805195B8  28 00 00 00 */	cmplwi r0, 0
/* 805195BC  40 82 00 94 */	bne lbl_80519650
/* 805195C0  38 00 00 00 */	li r0, 0
/* 805195C4  3C 60 80 52 */	lis r3, data_805197E0@ha
/* 805195C8  98 03 97 E0 */	stb r0, data_805197E0@l(r3)
/* 805195CC  3C 60 80 52 */	lis r3, s_rd_sub__FPvPv@ha
/* 805195D0  38 63 95 20 */	addi r3, r3, s_rd_sub__FPvPv@l
/* 805195D4  7F E4 FB 78 */	mr r4, r31
/* 805195D8  4B B0 7D 60 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805195DC  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 805195E0  2C 00 00 00 */	cmpwi r0, 0
/* 805195E4  40 82 00 3C */	bne lbl_80519620
/* 805195E8  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 805195EC  2C 00 00 00 */	cmpwi r0, 0
/* 805195F0  40 82 00 4C */	bne lbl_8051963C
/* 805195F4  38 00 00 01 */	li r0, 1
/* 805195F8  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 805195FC  3C 60 80 52 */	lis r3, data_805197E0@ha
/* 80519600  88 03 97 E0 */	lbz r0, data_805197E0@l(r3)
/* 80519604  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80519608  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8051960C  98 03 00 BB */	stb r0, 0xbb(r3)
/* 80519610  38 60 00 08 */	li r3, 8
/* 80519614  38 80 00 00 */	li r4, 0
/* 80519618  4B B1 5F 14 */	b dComIfG_TimerStart__Fis
/* 8051961C  48 00 00 20 */	b lbl_8051963C
lbl_80519620:
/* 80519620  3C 60 80 52 */	lis r3, data_805197E0@ha
/* 80519624  88 03 97 E0 */	lbz r0, data_805197E0@l(r3)
/* 80519628  28 00 00 00 */	cmplwi r0, 0
/* 8051962C  40 82 00 10 */	bne lbl_8051963C
/* 80519630  7F E3 FB 78 */	mr r3, r31
/* 80519634  4B B0 06 48 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80519638  48 00 00 18 */	b lbl_80519650
lbl_8051963C:
/* 8051963C  3C 60 80 52 */	lis r3, data_805197E0@ha
/* 80519640  88 03 97 E0 */	lbz r0, data_805197E0@l(r3)
/* 80519644  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80519648  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8051964C  98 03 00 BC */	stb r0, 0xbc(r3)
lbl_80519650:
/* 80519650  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80519654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80519658  7C 08 03 A6 */	mtlr r0
/* 8051965C  38 21 00 10 */	addi r1, r1, 0x10
/* 80519660  4E 80 00 20 */	blr 
