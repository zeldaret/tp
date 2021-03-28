lbl_80BF279C:
/* 80BF279C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF27A0  7C 08 02 A6 */	mflr r0
/* 80BF27A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF27A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF27AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BF27B0  7C 7F 1B 78 */	mr r31, r3
/* 80BF27B4  3C 60 80 BF */	lis r3, stringBase0@ha
/* 80BF27B8  38 63 2B A4 */	addi r3, r3, stringBase0@l
/* 80BF27BC  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BF27C0  54 00 10 3A */	slwi r0, r0, 2
/* 80BF27C4  3C 80 80 BF */	lis r4, bmdd@ha
/* 80BF27C8  38 84 2B AC */	addi r4, r4, bmdd@l
/* 80BF27CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF27D0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BF27D4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BF27D8  3F C5 00 02 */	addis r30, r5, 2
/* 80BF27DC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BF27E0  7F C5 F3 78 */	mr r5, r30
/* 80BF27E4  38 C0 00 80 */	li r6, 0x80
/* 80BF27E8  4B 44 9B 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF27EC  3C 80 00 08 */	lis r4, 8
/* 80BF27F0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BF27F4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BF27F8  4B 42 24 5C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BF27FC  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80BF2800  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80BF2804  28 00 00 00 */	cmplwi r0, 0
/* 80BF2808  40 82 00 0C */	bne lbl_80BF2814
/* 80BF280C  38 60 00 00 */	li r3, 0
/* 80BF2810  48 00 00 A8 */	b lbl_80BF28B8
lbl_80BF2814:
/* 80BF2814  38 60 00 C0 */	li r3, 0xc0
/* 80BF2818  4B 6D C4 34 */	b __nw__FUl
/* 80BF281C  7C 60 1B 79 */	or. r0, r3, r3
/* 80BF2820  41 82 00 0C */	beq lbl_80BF282C
/* 80BF2824  4B 48 91 4C */	b __ct__4dBgWFv
/* 80BF2828  7C 60 1B 78 */	mr r0, r3
lbl_80BF282C:
/* 80BF282C  90 1F 05 E8 */	stw r0, 0x5e8(r31)
/* 80BF2830  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80BF2834  28 00 00 00 */	cmplwi r0, 0
/* 80BF2838  40 82 00 0C */	bne lbl_80BF2844
/* 80BF283C  38 60 00 00 */	li r3, 0
/* 80BF2840  48 00 00 78 */	b lbl_80BF28B8
lbl_80BF2844:
/* 80BF2844  3C 60 80 BF */	lis r3, stringBase0@ha
/* 80BF2848  38 63 2B A4 */	addi r3, r3, stringBase0@l
/* 80BF284C  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 80BF2850  54 00 10 3A */	slwi r0, r0, 2
/* 80BF2854  3C 80 80 BF */	lis r4, dzbd@ha
/* 80BF2858  38 84 2B B4 */	addi r4, r4, dzbd@l
/* 80BF285C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BF2860  7F C5 F3 78 */	mr r5, r30
/* 80BF2864  38 C0 00 80 */	li r6, 0x80
/* 80BF2868  4B 44 9A 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BF286C  7C 64 1B 78 */	mr r4, r3
/* 80BF2870  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BF2874  38 A0 00 01 */	li r5, 1
/* 80BF2878  38 DF 05 B8 */	addi r6, r31, 0x5b8
/* 80BF287C  4B 48 76 BC */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BF2880  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80BF2884  28 00 00 01 */	cmplwi r0, 1
/* 80BF2888  40 82 00 0C */	bne lbl_80BF2894
/* 80BF288C  38 60 00 00 */	li r3, 0
/* 80BF2890  48 00 00 28 */	b lbl_80BF28B8
lbl_80BF2894:
/* 80BF2894  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BF2898  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BF289C  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BF28A0  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80BF28A4  3C 60 80 BF */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80BF28A8  38 03 20 70 */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80BF28AC  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80BF28B0  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80BF28B4  38 60 00 01 */	li r3, 1
lbl_80BF28B8:
/* 80BF28B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF28BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BF28C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF28C4  7C 08 03 A6 */	mtlr r0
/* 80BF28C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF28CC  4E 80 00 20 */	blr 
