lbl_805B28B0:
/* 805B28B0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 805B28B4  7C 08 02 A6 */	mflr r0
/* 805B28B8  90 01 00 64 */	stw r0, 0x64(r1)
/* 805B28BC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 805B28C0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 805B28C4  39 61 00 50 */	addi r11, r1, 0x50
/* 805B28C8  4B DA F9 04 */	b _savegpr_25
/* 805B28CC  7C 7E 1B 78 */	mr r30, r3
/* 805B28D0  3C 60 80 5B */	lis r3, lit_3764@ha
/* 805B28D4  3B E3 31 40 */	addi r31, r3, lit_3764@l
/* 805B28D8  38 60 00 58 */	li r3, 0x58
/* 805B28DC  4B D1 C3 70 */	b __nw__FUl
/* 805B28E0  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B28E4  41 82 00 90 */	beq lbl_805B2974
/* 805B28E8  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805B28EC  38 63 32 2C */	addi r3, r3, stringBase0@l
/* 805B28F0  38 80 00 0C */	li r4, 0xc
/* 805B28F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805B28F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805B28FC  3F 65 00 02 */	addis r27, r5, 2
/* 805B2900  3B 7B C2 F8 */	addi r27, r27, -15624
/* 805B2904  7F 65 DB 78 */	mr r5, r27
/* 805B2908  38 C0 00 80 */	li r6, 0x80
/* 805B290C  4B A8 99 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B2910  7C 7D 1B 78 */	mr r29, r3
/* 805B2914  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805B2918  38 63 32 2C */	addi r3, r3, stringBase0@l
/* 805B291C  38 80 00 15 */	li r4, 0x15
/* 805B2920  7F 65 DB 78 */	mr r5, r27
/* 805B2924  38 C0 00 80 */	li r6, 0x80
/* 805B2928  4B A8 99 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B292C  7C 64 1B 78 */	mr r4, r3
/* 805B2930  38 1E 05 BC */	addi r0, r30, 0x5bc
/* 805B2934  90 01 00 08 */	stw r0, 8(r1)
/* 805B2938  38 00 00 00 */	li r0, 0
/* 805B293C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B2940  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805B2944  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805B2948  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B294C  7F 83 E3 78 */	mr r3, r28
/* 805B2950  38 A0 00 00 */	li r5, 0
/* 805B2954  38 C0 00 00 */	li r6, 0
/* 805B2958  7F A7 EB 78 */	mr r7, r29
/* 805B295C  39 00 00 02 */	li r8, 2
/* 805B2960  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805B2964  39 20 00 00 */	li r9, 0
/* 805B2968  39 40 FF FF */	li r10, -1
/* 805B296C  4B A5 DE 64 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805B2970  7C 7C 1B 78 */	mr r28, r3
lbl_805B2974:
/* 805B2974  93 9E 05 B8 */	stw r28, 0x5b8(r30)
/* 805B2978  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805B297C  28 03 00 00 */	cmplwi r3, 0
/* 805B2980  41 82 00 10 */	beq lbl_805B2990
/* 805B2984  80 03 00 04 */	lwz r0, 4(r3)
/* 805B2988  28 00 00 00 */	cmplwi r0, 0
/* 805B298C  40 82 00 0C */	bne lbl_805B2998
lbl_805B2990:
/* 805B2990  38 60 00 00 */	li r3, 0
/* 805B2994  48 00 01 44 */	b lbl_805B2AD8
lbl_805B2998:
/* 805B2998  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805B299C  38 63 32 2C */	addi r3, r3, stringBase0@l
/* 805B29A0  38 80 00 11 */	li r4, 0x11
/* 805B29A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805B29A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805B29AC  3F 45 00 02 */	addis r26, r5, 2
/* 805B29B0  3B 5A C2 F8 */	addi r26, r26, -15624
/* 805B29B4  7F 45 D3 78 */	mr r5, r26
/* 805B29B8  38 C0 00 80 */	li r6, 0x80
/* 805B29BC  4B A8 99 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B29C0  7C 7B 1B 78 */	mr r27, r3
/* 805B29C4  3B 20 00 00 */	li r25, 0
/* 805B29C8  3B 80 00 00 */	li r28, 0
/* 805B29CC  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
/* 805B29D0  C3 FF 00 20 */	lfs f31, 0x20(r31)
lbl_805B29D4:
/* 805B29D4  7F 63 DB 78 */	mr r3, r27
/* 805B29D8  3C 80 00 08 */	lis r4, 8
/* 805B29DC  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 805B29E0  4B A6 22 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805B29E4  7C 9E E2 14 */	add r4, r30, r28
/* 805B29E8  90 64 08 00 */	stw r3, 0x800(r4)
/* 805B29EC  80 04 08 00 */	lwz r0, 0x800(r4)
/* 805B29F0  28 00 00 00 */	cmplwi r0, 0
/* 805B29F4  40 82 00 0C */	bne lbl_805B2A00
/* 805B29F8  38 60 00 00 */	li r3, 0
/* 805B29FC  48 00 00 DC */	b lbl_805B2AD8
lbl_805B2A00:
/* 805B2A00  D3 E4 08 8C */	stfs f31, 0x88c(r4)
/* 805B2A04  3B 39 00 01 */	addi r25, r25, 1
/* 805B2A08  2C 19 00 11 */	cmpwi r25, 0x11
/* 805B2A0C  3B 9C 00 04 */	addi r28, r28, 4
/* 805B2A10  41 80 FF C4 */	blt lbl_805B29D4
/* 805B2A14  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805B2A18  38 63 32 2C */	addi r3, r3, stringBase0@l
/* 805B2A1C  38 80 00 12 */	li r4, 0x12
/* 805B2A20  7F 45 D3 78 */	mr r5, r26
/* 805B2A24  38 C0 00 80 */	li r6, 0x80
/* 805B2A28  4B A8 98 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B2A2C  7C 7B 1B 78 */	mr r27, r3
/* 805B2A30  3B 20 00 00 */	li r25, 0
/* 805B2A34  3B A0 00 00 */	li r29, 0
/* 805B2A38  3B 80 00 00 */	li r28, 0
lbl_805B2A3C:
/* 805B2A3C  57 20 07 BE */	clrlwi r0, r25, 0x1e
/* 805B2A40  2C 00 00 02 */	cmpwi r0, 2
/* 805B2A44  40 82 00 7C */	bne lbl_805B2AC0
/* 805B2A48  7F 63 DB 78 */	mr r3, r27
/* 805B2A4C  3C 80 00 08 */	lis r4, 8
/* 805B2A50  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805B2A54  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805B2A58  4B A6 21 FC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805B2A5C  7F 5E E2 14 */	add r26, r30, r28
/* 805B2A60  90 7A 09 1C */	stw r3, 0x91c(r26)
/* 805B2A64  80 1A 09 1C */	lwz r0, 0x91c(r26)
/* 805B2A68  28 00 00 00 */	cmplwi r0, 0
/* 805B2A6C  40 82 00 0C */	bne lbl_805B2A78
/* 805B2A70  38 60 00 00 */	li r3, 0
/* 805B2A74  48 00 00 64 */	b lbl_805B2AD8
lbl_805B2A78:
/* 805B2A78  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 805B2A7C  4B CB 4F 10 */	b cM_rndFX__Ff
/* 805B2A80  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 805B2A84  EC 00 08 2A */	fadds f0, f0, f1
/* 805B2A88  D0 1A 09 60 */	stfs f0, 0x960(r26)
/* 805B2A8C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 805B2A90  4B CB 4E C4 */	b cM_rndF__Ff
/* 805B2A94  FC 00 08 1E */	fctiwz f0, f1
/* 805B2A98  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805B2A9C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B2AA0  7F 5E EA 14 */	add r26, r30, r29
/* 805B2AA4  B0 1A 09 AA */	sth r0, 0x9aa(r26)
/* 805B2AA8  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 805B2AAC  4B CB 4E A8 */	b cM_rndF__Ff
/* 805B2AB0  FC 00 08 1E */	fctiwz f0, f1
/* 805B2AB4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805B2AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B2ABC  B0 1A 09 AC */	sth r0, 0x9ac(r26)
lbl_805B2AC0:
/* 805B2AC0  3B 39 00 01 */	addi r25, r25, 1
/* 805B2AC4  2C 19 00 11 */	cmpwi r25, 0x11
/* 805B2AC8  3B BD 00 06 */	addi r29, r29, 6
/* 805B2ACC  3B 9C 00 04 */	addi r28, r28, 4
/* 805B2AD0  41 80 FF 6C */	blt lbl_805B2A3C
/* 805B2AD4  38 60 00 01 */	li r3, 1
lbl_805B2AD8:
/* 805B2AD8  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 805B2ADC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 805B2AE0  39 61 00 50 */	addi r11, r1, 0x50
/* 805B2AE4  4B DA F7 34 */	b _restgpr_25
/* 805B2AE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 805B2AEC  7C 08 03 A6 */	mtlr r0
/* 805B2AF0  38 21 00 60 */	addi r1, r1, 0x60
/* 805B2AF4  4E 80 00 20 */	blr 
