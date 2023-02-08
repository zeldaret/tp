lbl_80964AD8:
/* 80964AD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80964ADC  7C 08 02 A6 */	mflr r0
/* 80964AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80964AE4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80964AE8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80964AEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80964AF0  4B 9F D6 ED */	bl _savegpr_29
/* 80964AF4  7C 7D 1B 78 */	mr r29, r3
/* 80964AF8  7C BE 2B 78 */	mr r30, r5
/* 80964AFC  FF E0 08 90 */	fmr f31, f1
/* 80964B00  3C A0 80 96 */	lis r5, m__18daNpc_Bans_Param_c@ha /* 0x80967E20@ha */
/* 80964B04  3B E5 7E 20 */	addi r31, r5, m__18daNpc_Bans_Param_c@l /* 0x80967E20@l */
/* 80964B08  38 C0 00 00 */	li r6, 0
/* 80964B0C  80 03 0F 7C */	lwz r0, 0xf7c(r3)
/* 80964B10  28 00 00 00 */	cmplwi r0, 0
/* 80964B14  41 82 00 64 */	beq lbl_80964B78
/* 80964B18  54 80 18 38 */	slwi r0, r4, 3
/* 80964B1C  3C 80 80 97 */	lis r4, scoopAnmData@ha /* 0x809685CC@ha */
/* 80964B20  38 84 85 CC */	addi r4, r4, scoopAnmData@l /* 0x809685CC@l */
/* 80964B24  7C A4 00 2E */	lwzx r5, r4, r0
/* 80964B28  2C 05 00 00 */	cmpwi r5, 0
/* 80964B2C  40 81 00 24 */	ble lbl_80964B50
/* 80964B30  7C 84 02 14 */	add r4, r4, r0
/* 80964B34  80 04 00 04 */	lwz r0, 4(r4)
/* 80964B38  54 00 10 3A */	slwi r0, r0, 2
/* 80964B3C  3C 80 80 97 */	lis r4, l_resNameList@ha /* 0x80968088@ha */
/* 80964B40  38 84 80 88 */	addi r4, r4, l_resNameList@l /* 0x80968088@l */
/* 80964B44  7C 84 00 2E */	lwzx r4, r4, r0
/* 80964B48  4B 7E 35 4D */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80964B4C  7C 66 1B 78 */	mr r6, r3
lbl_80964B50:
/* 80964B50  28 06 00 00 */	cmplwi r6, 0
/* 80964B54  41 82 00 24 */	beq lbl_80964B78
/* 80964B58  80 7D 0F 7C */	lwz r3, 0xf7c(r29)
/* 80964B5C  7C C4 33 78 */	mr r4, r6
/* 80964B60  7F C5 F3 78 */	mr r5, r30
/* 80964B64  FC 20 F8 90 */	fmr f1, f31
/* 80964B68  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80964B6C  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80964B70  C0 9F 00 E0 */	lfs f4, 0xe0(r31)
/* 80964B74  4B 6A C2 FD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80964B78:
/* 80964B78  38 60 00 01 */	li r3, 1
/* 80964B7C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80964B80  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80964B84  39 61 00 20 */	addi r11, r1, 0x20
/* 80964B88  4B 9F D6 A1 */	bl _restgpr_29
/* 80964B8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80964B90  7C 08 03 A6 */	mtlr r0
/* 80964B94  38 21 00 30 */	addi r1, r1, 0x30
/* 80964B98  4E 80 00 20 */	blr 
