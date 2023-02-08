lbl_80AAA8A4:
/* 80AAA8A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AAA8A8  7C 08 02 A6 */	mflr r0
/* 80AAA8AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AAA8B0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AAA8B4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AAA8B8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAA8BC  4B 8B 79 21 */	bl _savegpr_29
/* 80AAA8C0  7C 7D 1B 78 */	mr r29, r3
/* 80AAA8C4  7C BE 2B 78 */	mr r30, r5
/* 80AAA8C8  FF E0 08 90 */	fmr f31, f1
/* 80AAA8CC  3C A0 80 AB */	lis r5, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AAA8D0  3B E5 D1 EC */	addi r31, r5, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AAA8D4  38 C0 00 00 */	li r6, 0
/* 80AAA8D8  80 03 0E 40 */	lwz r0, 0xe40(r3)
/* 80AAA8DC  28 00 00 00 */	cmplwi r0, 0
/* 80AAA8E0  41 82 00 64 */	beq lbl_80AAA944
/* 80AAA8E4  54 80 18 38 */	slwi r0, r4, 3
/* 80AAA8E8  3C 80 80 AB */	lis r4, flagAnmData@ha /* 0x80AAD940@ha */
/* 80AAA8EC  38 84 D9 40 */	addi r4, r4, flagAnmData@l /* 0x80AAD940@l */
/* 80AAA8F0  7C A4 00 2E */	lwzx r5, r4, r0
/* 80AAA8F4  2C 05 00 00 */	cmpwi r5, 0
/* 80AAA8F8  40 81 00 24 */	ble lbl_80AAA91C
/* 80AAA8FC  7C 84 02 14 */	add r4, r4, r0
/* 80AAA900  80 04 00 04 */	lwz r0, 4(r4)
/* 80AAA904  54 00 10 3A */	slwi r0, r0, 2
/* 80AAA908  3C 80 80 AB */	lis r4, l_resNameList@ha /* 0x80AAD414@ha */
/* 80AAA90C  38 84 D4 14 */	addi r4, r4, l_resNameList@l /* 0x80AAD414@l */
/* 80AAA910  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AAA914  4B 69 D7 81 */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80AAA918  7C 66 1B 78 */	mr r6, r3
lbl_80AAA91C:
/* 80AAA91C  28 06 00 00 */	cmplwi r6, 0
/* 80AAA920  41 82 00 24 */	beq lbl_80AAA944
/* 80AAA924  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80AAA928  7C C4 33 78 */	mr r4, r6
/* 80AAA92C  7F C5 F3 78 */	mr r5, r30
/* 80AAA930  FC 20 F8 90 */	fmr f1, f31
/* 80AAA934  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80AAA938  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80AAA93C  C0 9F 00 D4 */	lfs f4, 0xd4(r31)
/* 80AAA940  4B 56 65 31 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80AAA944:
/* 80AAA944  38 60 00 01 */	li r3, 1
/* 80AAA948  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AAA94C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AAA950  39 61 00 20 */	addi r11, r1, 0x20
/* 80AAA954  4B 8B 78 D5 */	bl _restgpr_29
/* 80AAA958  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AAA95C  7C 08 03 A6 */	mtlr r0
/* 80AAA960  38 21 00 30 */	addi r1, r1, 0x30
/* 80AAA964  4E 80 00 20 */	blr 
