lbl_805395F4:
/* 805395F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805395F8  7C 08 02 A6 */	mflr r0
/* 805395FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80539600  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80539604  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80539608  39 61 00 20 */	addi r11, r1, 0x20
/* 8053960C  4B E2 8B D0 */	b _savegpr_29
/* 80539610  7C 7D 1B 78 */	mr r29, r3
/* 80539614  7C BE 2B 78 */	mr r30, r5
/* 80539618  FF E0 08 90 */	fmr f31, f1
/* 8053961C  3C A0 80 54 */	lis r5, m__18daNpc_Besu_Param_c@ha
/* 80539620  3B E5 E7 54 */	addi r31, r5, m__18daNpc_Besu_Param_c@l
/* 80539624  38 C0 00 00 */	li r6, 0
/* 80539628  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 8053962C  28 00 00 00 */	cmplwi r0, 0
/* 80539630  41 82 00 70 */	beq lbl_805396A0
/* 80539634  54 80 18 38 */	slwi r0, r4, 3
/* 80539638  3C 80 80 54 */	lis r4, cupAnmData@ha
/* 8053963C  38 84 FA AC */	addi r4, r4, cupAnmData@l
/* 80539640  7C A4 00 2E */	lwzx r5, r4, r0
/* 80539644  2C 05 00 00 */	cmpwi r5, 0
/* 80539648  40 81 00 24 */	ble lbl_8053966C
/* 8053964C  7C 84 02 14 */	add r4, r4, r0
/* 80539650  80 04 00 04 */	lwz r0, 4(r4)
/* 80539654  54 00 10 3A */	slwi r0, r0, 2
/* 80539658  3C 80 80 54 */	lis r4, l_resNameList@ha
/* 8053965C  38 84 EC 14 */	addi r4, r4, l_resNameList@l
/* 80539660  7C 84 00 2E */	lwzx r4, r4, r0
/* 80539664  4B C0 EA 30 */	b getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80539668  7C 66 1B 78 */	mr r6, r3
lbl_8053966C:
/* 8053966C  28 06 00 00 */	cmplwi r6, 0
/* 80539670  41 82 00 30 */	beq lbl_805396A0
/* 80539674  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80539678  80 03 00 08 */	lwz r0, 8(r3)
/* 8053967C  7C 06 00 40 */	cmplw r6, r0
/* 80539680  41 82 00 20 */	beq lbl_805396A0
/* 80539684  7C C4 33 78 */	mr r4, r6
/* 80539688  7F C5 F3 78 */	mr r5, r30
/* 8053968C  FC 20 F8 90 */	fmr f1, f31
/* 80539690  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80539694  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80539698  C0 9F 01 18 */	lfs f4, 0x118(r31)
/* 8053969C  4B AD 77 D4 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_805396A0:
/* 805396A0  38 60 00 01 */	li r3, 1
/* 805396A4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805396A8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805396AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805396B0  4B E2 8B 78 */	b _restgpr_29
/* 805396B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805396B8  7C 08 03 A6 */	mtlr r0
/* 805396BC  38 21 00 30 */	addi r1, r1, 0x30
/* 805396C0  4E 80 00 20 */	blr 
