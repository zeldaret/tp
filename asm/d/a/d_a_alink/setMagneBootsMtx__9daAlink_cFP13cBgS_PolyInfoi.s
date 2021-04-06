lbl_800E2808:
/* 800E2808  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 800E280C  7C 08 02 A6 */	mflr r0
/* 800E2810  90 01 00 94 */	stw r0, 0x94(r1)
/* 800E2814  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 800E2818  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 800E281C  39 61 00 80 */	addi r11, r1, 0x80
/* 800E2820  48 27 F9 B9 */	bl _savegpr_28
/* 800E2824  7C 7D 1B 78 */	mr r29, r3
/* 800E2828  7C 9E 23 78 */	mr r30, r4
/* 800E282C  7C BF 2B 78 */	mr r31, r5
/* 800E2830  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800E2834  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800E2838  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E283C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E2840  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E2844  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E2848  38 A1 00 58 */	addi r5, r1, 0x58
/* 800E284C  4B F9 1E F9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800E2850  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 800E2854  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800E2858  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E285C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800E2860  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 800E2864  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800E2868  38 61 00 1C */	addi r3, r1, 0x1c
/* 800E286C  48 26 48 CD */	bl PSVECSquareMag
/* 800E2870  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2878  40 81 00 58 */	ble lbl_800E28D0
/* 800E287C  FC 00 08 34 */	frsqrte f0, f1
/* 800E2880  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E2884  FC 44 00 32 */	fmul f2, f4, f0
/* 800E2888  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E288C  FC 00 00 32 */	fmul f0, f0, f0
/* 800E2890  FC 01 00 32 */	fmul f0, f1, f0
/* 800E2894  FC 03 00 28 */	fsub f0, f3, f0
/* 800E2898  FC 02 00 32 */	fmul f0, f2, f0
/* 800E289C  FC 44 00 32 */	fmul f2, f4, f0
/* 800E28A0  FC 00 00 32 */	fmul f0, f0, f0
/* 800E28A4  FC 01 00 32 */	fmul f0, f1, f0
/* 800E28A8  FC 03 00 28 */	fsub f0, f3, f0
/* 800E28AC  FC 02 00 32 */	fmul f0, f2, f0
/* 800E28B0  FC 44 00 32 */	fmul f2, f4, f0
/* 800E28B4  FC 00 00 32 */	fmul f0, f0, f0
/* 800E28B8  FC 01 00 32 */	fmul f0, f1, f0
/* 800E28BC  FC 03 00 28 */	fsub f0, f3, f0
/* 800E28C0  FC 02 00 32 */	fmul f0, f2, f0
/* 800E28C4  FC 21 00 32 */	fmul f1, f1, f0
/* 800E28C8  FC 20 08 18 */	frsp f1, f1
/* 800E28CC  48 00 00 88 */	b lbl_800E2954
lbl_800E28D0:
/* 800E28D0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E28D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E28D8  40 80 00 10 */	bge lbl_800E28E8
/* 800E28DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E28E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E28E4  48 00 00 70 */	b lbl_800E2954
lbl_800E28E8:
/* 800E28E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800E28EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800E28F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E28F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E28F8  7C 03 00 00 */	cmpw r3, r0
/* 800E28FC  41 82 00 14 */	beq lbl_800E2910
/* 800E2900  40 80 00 40 */	bge lbl_800E2940
/* 800E2904  2C 03 00 00 */	cmpwi r3, 0
/* 800E2908  41 82 00 20 */	beq lbl_800E2928
/* 800E290C  48 00 00 34 */	b lbl_800E2940
lbl_800E2910:
/* 800E2910  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E2914  41 82 00 0C */	beq lbl_800E2920
/* 800E2918  38 00 00 01 */	li r0, 1
/* 800E291C  48 00 00 28 */	b lbl_800E2944
lbl_800E2920:
/* 800E2920  38 00 00 02 */	li r0, 2
/* 800E2924  48 00 00 20 */	b lbl_800E2944
lbl_800E2928:
/* 800E2928  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E292C  41 82 00 0C */	beq lbl_800E2938
/* 800E2930  38 00 00 05 */	li r0, 5
/* 800E2934  48 00 00 10 */	b lbl_800E2944
lbl_800E2938:
/* 800E2938  38 00 00 03 */	li r0, 3
/* 800E293C  48 00 00 08 */	b lbl_800E2944
lbl_800E2940:
/* 800E2940  38 00 00 04 */	li r0, 4
lbl_800E2944:
/* 800E2944  2C 00 00 01 */	cmpwi r0, 1
/* 800E2948  40 82 00 0C */	bne lbl_800E2954
/* 800E294C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E2950  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E2954:
/* 800E2954  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 800E2958  48 18 4D 1D */	bl cM_atan2s__Fff
/* 800E295C  7C 7C 1B 78 */	mr r28, r3
/* 800E2960  7F 83 07 34 */	extsh r3, r28
/* 800E2964  48 28 27 6D */	bl abs
/* 800E2968  2C 03 01 F4 */	cmpwi r3, 0x1f4
/* 800E296C  40 80 00 0C */	bge lbl_800E2978
/* 800E2970  3B 80 00 00 */	li r28, 0
/* 800E2974  48 00 00 10 */	b lbl_800E2984
lbl_800E2978:
/* 800E2978  2C 03 7E 0B */	cmpwi r3, 0x7e0b
/* 800E297C  40 81 00 08 */	ble lbl_800E2984
/* 800E2980  3B 80 80 00 */	li r28, -32768
lbl_800E2984:
/* 800E2984  7F 80 07 35 */	extsh. r0, r28
/* 800E2988  41 82 00 20 */	beq lbl_800E29A8
/* 800E298C  7F 80 07 34 */	extsh r0, r28
/* 800E2990  2C 00 80 00 */	cmpwi r0, -32768
/* 800E2994  41 82 00 14 */	beq lbl_800E29A8
/* 800E2998  38 61 00 58 */	addi r3, r1, 0x58
/* 800E299C  48 18 47 8D */	bl atan2sX_Z__4cXyzCFv
/* 800E29A0  B0 7D 31 16 */	sth r3, 0x3116(r29)
/* 800E29A4  48 00 00 14 */	b lbl_800E29B8
lbl_800E29A8:
/* 800E29A8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E29AC  41 82 00 0C */	beq lbl_800E29B8
/* 800E29B0  38 00 00 00 */	li r0, 0
/* 800E29B4  B0 1D 31 16 */	sth r0, 0x3116(r29)
lbl_800E29B8:
/* 800E29B8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E29BC  41 82 00 34 */	beq lbl_800E29F0
/* 800E29C0  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800E29C4  28 00 00 CC */	cmplwi r0, 0xcc
/* 800E29C8  40 82 00 20 */	bne lbl_800E29E8
/* 800E29CC  38 7D 31 14 */	addi r3, r29, 0x3114
/* 800E29D0  7F 84 E3 78 */	mr r4, r28
/* 800E29D4  38 A0 00 05 */	li r5, 5
/* 800E29D8  38 C0 10 00 */	li r6, 0x1000
/* 800E29DC  38 E0 01 00 */	li r7, 0x100
/* 800E29E0  48 18 DB 61 */	bl cLib_addCalcAngleS__FPsssss
/* 800E29E4  48 00 03 68 */	b lbl_800E2D4C
lbl_800E29E8:
/* 800E29E8  B3 9D 31 14 */	sth r28, 0x3114(r29)
/* 800E29EC  48 00 03 60 */	b lbl_800E2D4C
lbl_800E29F0:
/* 800E29F0  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800E29F4  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800E29F8  38 63 00 68 */	addi r3, r3, 0x68
/* 800E29FC  4B FB B0 65 */	bl checkStageName__9daAlink_cFPCc
/* 800E2A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E2A04  41 82 00 34 */	beq lbl_800E2A38
/* 800E2A08  7F C3 F3 78 */	mr r3, r30
/* 800E2A0C  38 80 00 01 */	li r4, 1
/* 800E2A10  4B FB F7 D1 */	bl getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi
/* 800E2A14  7C 60 07 34 */	extsh r0, r3
/* 800E2A18  2C 00 00 C6 */	cmpwi r0, 0xc6
/* 800E2A1C  40 82 00 1C */	bne lbl_800E2A38
/* 800E2A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E2A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E2A28  38 80 00 93 */	li r4, 0x93
/* 800E2A2C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 800E2A30  7C 05 07 74 */	extsb r5, r0
/* 800E2A34  4B F5 27 CD */	bl onSwitch__10dSv_info_cFii
lbl_800E2A38:
/* 800E2A38  B3 9D 31 14 */	sth r28, 0x3114(r29)
/* 800E2A3C  38 7D 36 A8 */	addi r3, r29, 0x36a8
/* 800E2A40  38 81 00 58 */	addi r4, r1, 0x58
/* 800E2A44  48 26 47 51 */	bl PSVECDotProduct
/* 800E2A48  FF E0 08 90 */	fmr f31, f1
/* 800E2A4C  FC 00 FA 10 */	fabs f0, f31
/* 800E2A50  FC 20 00 18 */	frsp f1, f0
/* 800E2A54  C0 02 93 F4 */	lfs f0, lit_13699(r2)
/* 800E2A58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2A5C  41 81 02 F0 */	bgt lbl_800E2D4C
/* 800E2A60  38 61 00 34 */	addi r3, r1, 0x34
/* 800E2A64  38 9D 36 A8 */	addi r4, r29, 0x36a8
/* 800E2A68  38 A1 00 58 */	addi r5, r1, 0x58
/* 800E2A6C  48 18 42 51 */	bl outprod__4cXyzCFRC3Vec
/* 800E2A70  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800E2A74  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800E2A78  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800E2A7C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 800E2A80  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800E2A84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800E2A88  38 61 00 28 */	addi r3, r1, 0x28
/* 800E2A8C  38 81 00 4C */	addi r4, r1, 0x4c
/* 800E2A90  48 18 44 B9 */	bl normalizeZP__4cXyzFv
/* 800E2A94  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800E2A98  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 800E2A9C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800E2AA0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2AA8  40 81 00 0C */	ble lbl_800E2AB4
/* 800E2AAC  FC 00 08 34 */	frsqrte f0, f1
/* 800E2AB0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800E2AB4:
/* 800E2AB4  FC 40 F8 90 */	fmr f2, f31
/* 800E2AB8  48 18 4D 5D */	bl cM_atan2f__Fff
/* 800E2ABC  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 800E2AC0  EC 40 00 72 */	fmuls f2, f0, f1
/* 800E2AC4  C0 02 93 FC */	lfs f0, lit_13701(r2)
/* 800E2AC8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E2ACC  40 81 00 0C */	ble lbl_800E2AD8
/* 800E2AD0  FC 40 00 90 */	fmr f2, f0
/* 800E2AD4  48 00 00 20 */	b lbl_800E2AF4
lbl_800E2AD8:
/* 800E2AD8  C0 02 94 00 */	lfs f0, lit_13702(r2)
/* 800E2ADC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800E2AE0  40 80 00 14 */	bge lbl_800E2AF4
/* 800E2AE4  FC 40 00 90 */	fmr f2, f0
/* 800E2AE8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800E2AEC  40 81 00 08 */	ble lbl_800E2AF4
/* 800E2AF0  FC 40 08 90 */	fmr f2, f1
lbl_800E2AF4:
/* 800E2AF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2AF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2AFC  38 81 00 4C */	addi r4, r1, 0x4c
/* 800E2B00  FC 20 10 90 */	fmr f1, f2
/* 800E2B04  48 26 3D 75 */	bl PSMTXRotAxisRad
/* 800E2B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2B10  38 9D 2C 48 */	addi r4, r29, 0x2c48
/* 800E2B14  7C 65 1B 78 */	mr r5, r3
/* 800E2B18  48 26 39 CD */	bl PSMTXConcat
/* 800E2B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2B24  38 9D 2C 48 */	addi r4, r29, 0x2c48
/* 800E2B28  48 26 39 89 */	bl PSMTXCopy
/* 800E2B2C  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2B30  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800E2B34  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800E2B38  38 A1 00 40 */	addi r5, r1, 0x40
/* 800E2B3C  48 26 42 31 */	bl PSMTXMultVec
/* 800E2B40  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800E2B44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800E2B48  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2B4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E2B50  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800E2B54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800E2B58  38 61 00 10 */	addi r3, r1, 0x10
/* 800E2B5C  48 26 45 DD */	bl PSVECSquareMag
/* 800E2B60  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E2B64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2B68  40 81 00 58 */	ble lbl_800E2BC0
/* 800E2B6C  FC 00 08 34 */	frsqrte f0, f1
/* 800E2B70  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800E2B74  FC 44 00 32 */	fmul f2, f4, f0
/* 800E2B78  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800E2B7C  FC 00 00 32 */	fmul f0, f0, f0
/* 800E2B80  FC 01 00 32 */	fmul f0, f1, f0
/* 800E2B84  FC 03 00 28 */	fsub f0, f3, f0
/* 800E2B88  FC 02 00 32 */	fmul f0, f2, f0
/* 800E2B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 800E2B90  FC 00 00 32 */	fmul f0, f0, f0
/* 800E2B94  FC 01 00 32 */	fmul f0, f1, f0
/* 800E2B98  FC 03 00 28 */	fsub f0, f3, f0
/* 800E2B9C  FC 02 00 32 */	fmul f0, f2, f0
/* 800E2BA0  FC 44 00 32 */	fmul f2, f4, f0
/* 800E2BA4  FC 00 00 32 */	fmul f0, f0, f0
/* 800E2BA8  FC 01 00 32 */	fmul f0, f1, f0
/* 800E2BAC  FC 03 00 28 */	fsub f0, f3, f0
/* 800E2BB0  FC 02 00 32 */	fmul f0, f2, f0
/* 800E2BB4  FC 21 00 32 */	fmul f1, f1, f0
/* 800E2BB8  FC 20 08 18 */	frsp f1, f1
/* 800E2BBC  48 00 00 88 */	b lbl_800E2C44
lbl_800E2BC0:
/* 800E2BC0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800E2BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E2BC8  40 80 00 10 */	bge lbl_800E2BD8
/* 800E2BCC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E2BD0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800E2BD4  48 00 00 70 */	b lbl_800E2C44
lbl_800E2BD8:
/* 800E2BD8  D0 21 00 08 */	stfs f1, 8(r1)
/* 800E2BDC  80 81 00 08 */	lwz r4, 8(r1)
/* 800E2BE0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800E2BE4  3C 00 7F 80 */	lis r0, 0x7f80
/* 800E2BE8  7C 03 00 00 */	cmpw r3, r0
/* 800E2BEC  41 82 00 14 */	beq lbl_800E2C00
/* 800E2BF0  40 80 00 40 */	bge lbl_800E2C30
/* 800E2BF4  2C 03 00 00 */	cmpwi r3, 0
/* 800E2BF8  41 82 00 20 */	beq lbl_800E2C18
/* 800E2BFC  48 00 00 34 */	b lbl_800E2C30
lbl_800E2C00:
/* 800E2C00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E2C04  41 82 00 0C */	beq lbl_800E2C10
/* 800E2C08  38 00 00 01 */	li r0, 1
/* 800E2C0C  48 00 00 28 */	b lbl_800E2C34
lbl_800E2C10:
/* 800E2C10  38 00 00 02 */	li r0, 2
/* 800E2C14  48 00 00 20 */	b lbl_800E2C34
lbl_800E2C18:
/* 800E2C18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800E2C1C  41 82 00 0C */	beq lbl_800E2C28
/* 800E2C20  38 00 00 05 */	li r0, 5
/* 800E2C24  48 00 00 10 */	b lbl_800E2C34
lbl_800E2C28:
/* 800E2C28  38 00 00 03 */	li r0, 3
/* 800E2C2C  48 00 00 08 */	b lbl_800E2C34
lbl_800E2C30:
/* 800E2C30  38 00 00 04 */	li r0, 4
lbl_800E2C34:
/* 800E2C34  2C 00 00 01 */	cmpwi r0, 1
/* 800E2C38  40 82 00 0C */	bne lbl_800E2C44
/* 800E2C3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800E2C40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_800E2C44:
/* 800E2C44  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 800E2C48  48 18 4A 2D */	bl cM_atan2s__Fff
/* 800E2C4C  B0 7D 31 14 */	sth r3, 0x3114(r29)
/* 800E2C50  A8 7D 31 14 */	lha r3, 0x3114(r29)
/* 800E2C54  48 28 24 7D */	bl abs
/* 800E2C58  2C 03 01 F4 */	cmpwi r3, 0x1f4
/* 800E2C5C  40 80 00 10 */	bge lbl_800E2C6C
/* 800E2C60  38 00 00 00 */	li r0, 0
/* 800E2C64  B0 1D 31 14 */	sth r0, 0x3114(r29)
/* 800E2C68  48 00 00 14 */	b lbl_800E2C7C
lbl_800E2C6C:
/* 800E2C6C  2C 03 7E 0B */	cmpwi r3, 0x7e0b
/* 800E2C70  40 81 00 0C */	ble lbl_800E2C7C
/* 800E2C74  38 00 80 00 */	li r0, -32768
/* 800E2C78  B0 1D 31 14 */	sth r0, 0x3114(r29)
lbl_800E2C7C:
/* 800E2C7C  A8 7D 31 14 */	lha r3, 0x3114(r29)
/* 800E2C80  7C 60 07 35 */	extsh. r0, r3
/* 800E2C84  41 82 00 1C */	beq lbl_800E2CA0
/* 800E2C88  2C 03 80 00 */	cmpwi r3, -32768
/* 800E2C8C  41 82 00 14 */	beq lbl_800E2CA0
/* 800E2C90  38 61 00 40 */	addi r3, r1, 0x40
/* 800E2C94  48 18 44 95 */	bl atan2sX_Z__4cXyzCFv
/* 800E2C98  B0 7D 31 16 */	sth r3, 0x3116(r29)
/* 800E2C9C  48 00 00 0C */	b lbl_800E2CA8
lbl_800E2CA0:
/* 800E2CA0  38 00 00 00 */	li r0, 0
/* 800E2CA4  B0 1D 31 16 */	sth r0, 0x3116(r29)
lbl_800E2CA8:
/* 800E2CA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2CAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2CB0  A8 9D 31 16 */	lha r4, 0x3116(r29)
/* 800E2CB4  4B F2 97 29 */	bl mDoMtx_YrotS__FPA4_fs
/* 800E2CB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2CBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2CC0  A8 1D 31 14 */	lha r0, 0x3114(r29)
/* 800E2CC4  7C 00 00 D0 */	neg r0, r0
/* 800E2CC8  7C 04 07 34 */	extsh r4, r0
/* 800E2CCC  4B F2 96 D1 */	bl mDoMtx_XrotM__FPA4_fs
/* 800E2CD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2CD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2CD8  A8 1D 31 16 */	lha r0, 0x3116(r29)
/* 800E2CDC  7C 00 00 D0 */	neg r0, r0
/* 800E2CE0  7C 04 07 34 */	extsh r4, r0
/* 800E2CE4  4B F2 97 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 800E2CE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2CEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2CF0  38 9D 2C 48 */	addi r4, r29, 0x2c48
/* 800E2CF4  7C 65 1B 78 */	mr r5, r3
/* 800E2CF8  48 26 37 ED */	bl PSMTXConcat
/* 800E2CFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800E2D00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800E2D04  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 800E2D08  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 800E2D0C  38 A1 00 40 */	addi r5, r1, 0x40
/* 800E2D10  48 26 41 3D */	bl PSMTXMultVecSR
/* 800E2D14  38 61 00 40 */	addi r3, r1, 0x40
/* 800E2D18  48 18 44 11 */	bl atan2sX_Z__4cXyzCFv
/* 800E2D1C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800E2D20  7C 00 1A 14 */	add r0, r0, r3
/* 800E2D24  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 800E2D28  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 800E2D2C  7C 00 1A 14 */	add r0, r0, r3
/* 800E2D30  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800E2D34  A8 1D 2F E6 */	lha r0, 0x2fe6(r29)
/* 800E2D38  7C 00 1A 14 */	add r0, r0, r3
/* 800E2D3C  B0 1D 2F E6 */	sth r0, 0x2fe6(r29)
/* 800E2D40  A8 1D 31 0C */	lha r0, 0x310c(r29)
/* 800E2D44  7C 00 1A 14 */	add r0, r0, r3
/* 800E2D48  B0 1D 31 0C */	sth r0, 0x310c(r29)
lbl_800E2D4C:
/* 800E2D4C  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2D50  A8 9D 31 16 */	lha r4, 0x3116(r29)
/* 800E2D54  4B F2 96 89 */	bl mDoMtx_YrotS__FPA4_fs
/* 800E2D58  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2D5C  A8 9D 31 14 */	lha r4, 0x3114(r29)
/* 800E2D60  4B F2 96 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 800E2D64  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2D68  A8 1D 31 16 */	lha r0, 0x3116(r29)
/* 800E2D6C  7C 00 00 D0 */	neg r0, r0
/* 800E2D70  7C 04 07 34 */	extsh r4, r0
/* 800E2D74  4B F2 96 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 800E2D78  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2D7C  38 9D 2C 78 */	addi r4, r29, 0x2c78
/* 800E2D80  48 26 38 31 */	bl PSMTXInverse
/* 800E2D84  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800E2D88  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 800E2D8C  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 800E2D90  38 BD 36 A8 */	addi r5, r29, 0x36a8
/* 800E2D94  48 26 3F D9 */	bl PSMTXMultVec
/* 800E2D98  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800E2D9C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800E2DA0  90 01 00 68 */	stw r0, 0x68(r1)
/* 800E2DA4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 800E2DA8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 800E2DAC  39 61 00 80 */	addi r11, r1, 0x80
/* 800E2DB0  48 27 F4 75 */	bl _restgpr_28
/* 800E2DB4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 800E2DB8  7C 08 03 A6 */	mtlr r0
/* 800E2DBC  38 21 00 90 */	addi r1, r1, 0x90
/* 800E2DC0  4E 80 00 20 */	blr 
