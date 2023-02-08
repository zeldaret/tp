lbl_804CA780:
/* 804CA780  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804CA784  7C 08 02 A6 */	mflr r0
/* 804CA788  90 01 01 14 */	stw r0, 0x114(r1)
/* 804CA78C  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804CA790  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804CA794  39 61 01 00 */	addi r11, r1, 0x100
/* 804CA798  4B E9 7A 41 */	bl _savegpr_28
/* 804CA79C  7C 7D 1B 78 */	mr r29, r3
/* 804CA7A0  3C 60 80 4D */	lis r3, lit_3767@ha /* 0x804CC340@ha */
/* 804CA7A4  3B E3 C3 40 */	addi r31, r3, lit_3767@l /* 0x804CC340@l */
/* 804CA7A8  88 7D 0B 52 */	lbz r3, 0xb52(r29)
/* 804CA7AC  28 03 00 00 */	cmplwi r3, 0
/* 804CA7B0  41 82 00 24 */	beq lbl_804CA7D4
/* 804CA7B4  38 03 FF FF */	addi r0, r3, -1
/* 804CA7B8  98 1D 0B 52 */	stb r0, 0xb52(r29)
/* 804CA7BC  88 1D 0B 52 */	lbz r0, 0xb52(r29)
/* 804CA7C0  28 00 00 00 */	cmplwi r0, 0
/* 804CA7C4  40 82 00 10 */	bne lbl_804CA7D4
/* 804CA7C8  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804CA7CC  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 804CA7D0  90 1D 0B 4C */	stw r0, 0xb4c(r29)
lbl_804CA7D4:
/* 804CA7D4  7F A3 EB 78 */	mr r3, r29
/* 804CA7D8  4B FF DB 01 */	bl checkExplode__9daNbomb_cFv
/* 804CA7DC  2C 03 00 00 */	cmpwi r3, 0
/* 804CA7E0  41 82 00 0C */	beq lbl_804CA7EC
/* 804CA7E4  38 60 00 01 */	li r3, 1
/* 804CA7E8  48 00 06 E0 */	b lbl_804CAEC8
lbl_804CA7EC:
/* 804CA7EC  38 7D 0C 20 */	addi r3, r29, 0xc20
/* 804CA7F0  4B E7 C9 49 */	bl PSVECSquareMag
/* 804CA7F4  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804CA7F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA7FC  40 81 01 F0 */	ble lbl_804CA9EC
/* 804CA800  4B BD 30 85 */	bl getAlinkArcName__9daAlink_cFv
/* 804CA804  38 80 00 15 */	li r4, 0x15
/* 804CA808  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CA80C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CA810  3C A5 00 02 */	addis r5, r5, 2
/* 804CA814  38 C0 00 80 */	li r6, 0x80
/* 804CA818  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804CA81C  4B B7 1A D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804CA820  7C 64 1B 78 */	mr r4, r3
/* 804CA824  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 804CA828  38 A0 00 01 */	li r5, 1
/* 804CA82C  38 C0 FF FF */	li r6, -1
/* 804CA830  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804CA834  38 E0 00 00 */	li r7, 0
/* 804CA838  39 00 FF FF */	li r8, -1
/* 804CA83C  39 20 00 01 */	li r9, 1
/* 804CA840  4B B4 2F 9D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804CA844  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 804CA848  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 804CA84C  38 9D 0A 40 */	addi r4, r29, 0xa40
/* 804CA850  4B E7 BC 61 */	bl PSMTXCopy
/* 804CA854  38 61 00 B4 */	addi r3, r1, 0xb4
/* 804CA858  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 804CA85C  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 804CA860  4B D9 C3 25 */	bl __ml__4cXyzCFf
/* 804CA864  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804CA868  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804CA86C  7C 65 1B 78 */	mr r5, r3
/* 804CA870  4B E7 C8 21 */	bl PSVECAdd
/* 804CA874  38 7D 0B FC */	addi r3, r29, 0xbfc
/* 804CA878  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 804CA87C  7C 65 1B 78 */	mr r5, r3
/* 804CA880  4B E7 C8 11 */	bl PSVECAdd
/* 804CA884  38 7D 0B FC */	addi r3, r29, 0xbfc
/* 804CA888  7C 64 1B 78 */	mr r4, r3
/* 804CA88C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804CA890  4B E7 C8 49 */	bl PSVECScale
/* 804CA894  C0 1D 0C 00 */	lfs f0, 0xc00(r29)
/* 804CA898  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804CA89C  C0 3D 0C 04 */	lfs f1, 0xc04(r29)
/* 804CA8A0  C0 1D 0B FC */	lfs f0, 0xbfc(r29)
/* 804CA8A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804CA8A8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804CA8AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804CA8B0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804CA8B4  38 61 00 18 */	addi r3, r1, 0x18
/* 804CA8B8  4B E7 C8 81 */	bl PSVECSquareMag
/* 804CA8BC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804CA8C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA8C4  40 81 00 58 */	ble lbl_804CA91C
/* 804CA8C8  FC 00 08 34 */	frsqrte f0, f1
/* 804CA8CC  C8 9F 01 10 */	lfd f4, 0x110(r31)
/* 804CA8D0  FC 44 00 32 */	fmul f2, f4, f0
/* 804CA8D4  C8 7F 01 18 */	lfd f3, 0x118(r31)
/* 804CA8D8  FC 00 00 32 */	fmul f0, f0, f0
/* 804CA8DC  FC 01 00 32 */	fmul f0, f1, f0
/* 804CA8E0  FC 03 00 28 */	fsub f0, f3, f0
/* 804CA8E4  FC 02 00 32 */	fmul f0, f2, f0
/* 804CA8E8  FC 44 00 32 */	fmul f2, f4, f0
/* 804CA8EC  FC 00 00 32 */	fmul f0, f0, f0
/* 804CA8F0  FC 01 00 32 */	fmul f0, f1, f0
/* 804CA8F4  FC 03 00 28 */	fsub f0, f3, f0
/* 804CA8F8  FC 02 00 32 */	fmul f0, f2, f0
/* 804CA8FC  FC 44 00 32 */	fmul f2, f4, f0
/* 804CA900  FC 00 00 32 */	fmul f0, f0, f0
/* 804CA904  FC 01 00 32 */	fmul f0, f1, f0
/* 804CA908  FC 03 00 28 */	fsub f0, f3, f0
/* 804CA90C  FC 02 00 32 */	fmul f0, f2, f0
/* 804CA910  FC 21 00 32 */	fmul f1, f1, f0
/* 804CA914  FC 20 08 18 */	frsp f1, f1
/* 804CA918  48 00 00 88 */	b lbl_804CA9A0
lbl_804CA91C:
/* 804CA91C  C8 1F 01 20 */	lfd f0, 0x120(r31)
/* 804CA920  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CA924  40 80 00 10 */	bge lbl_804CA934
/* 804CA928  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CA92C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804CA930  48 00 00 70 */	b lbl_804CA9A0
lbl_804CA934:
/* 804CA934  D0 21 00 08 */	stfs f1, 8(r1)
/* 804CA938  80 81 00 08 */	lwz r4, 8(r1)
/* 804CA93C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CA940  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CA944  7C 03 00 00 */	cmpw r3, r0
/* 804CA948  41 82 00 14 */	beq lbl_804CA95C
/* 804CA94C  40 80 00 40 */	bge lbl_804CA98C
/* 804CA950  2C 03 00 00 */	cmpwi r3, 0
/* 804CA954  41 82 00 20 */	beq lbl_804CA974
/* 804CA958  48 00 00 34 */	b lbl_804CA98C
lbl_804CA95C:
/* 804CA95C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CA960  41 82 00 0C */	beq lbl_804CA96C
/* 804CA964  38 00 00 01 */	li r0, 1
/* 804CA968  48 00 00 28 */	b lbl_804CA990
lbl_804CA96C:
/* 804CA96C  38 00 00 02 */	li r0, 2
/* 804CA970  48 00 00 20 */	b lbl_804CA990
lbl_804CA974:
/* 804CA974  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CA978  41 82 00 0C */	beq lbl_804CA984
/* 804CA97C  38 00 00 05 */	li r0, 5
/* 804CA980  48 00 00 10 */	b lbl_804CA990
lbl_804CA984:
/* 804CA984  38 00 00 03 */	li r0, 3
/* 804CA988  48 00 00 08 */	b lbl_804CA990
lbl_804CA98C:
/* 804CA98C  38 00 00 04 */	li r0, 4
lbl_804CA990:
/* 804CA990  2C 00 00 01 */	cmpwi r0, 1
/* 804CA994  40 82 00 0C */	bne lbl_804CA9A0
/* 804CA998  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804CA99C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804CA9A0:
/* 804CA9A0  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 804CA9A4  38 7D 0B FC */	addi r3, r29, 0xbfc
/* 804CA9A8  4B D9 C7 81 */	bl atan2sX_Z__4cXyzCFv
/* 804CA9AC  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 804CA9B0  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 804CA9B4  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804CA9B8  90 1D 05 A4 */	stw r0, 0x5a4(r29)
/* 804CA9BC  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 804CA9C0  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804CA9C4  90 1D 05 A4 */	stw r0, 0x5a4(r29)
/* 804CA9C8  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 804CA9CC  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 804CA9D0  90 1D 05 A4 */	stw r0, 0x5a4(r29)
/* 804CA9D4  80 1D 05 A4 */	lwz r0, 0x5a4(r29)
/* 804CA9D8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804CA9DC  90 1D 05 A4 */	stw r0, 0x5a4(r29)
/* 804CA9E0  7F A3 EB 78 */	mr r3, r29
/* 804CA9E4  4B FF EF 4D */	bl procWaitInit__9daNbomb_cFv
/* 804CA9E8  48 00 04 E0 */	b lbl_804CAEC8
lbl_804CA9EC:
/* 804CA9EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CA9F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CA9F4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804CA9F8  7F C3 F3 78 */	mr r3, r30
/* 804CA9FC  38 9D 0B 10 */	addi r4, r29, 0xb10
/* 804CAA00  4B BA 9C 61 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 804CAA04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CAA08  41 82 00 40 */	beq lbl_804CAA48
/* 804CAA0C  7F C3 F3 78 */	mr r3, r30
/* 804CAA10  38 9D 0B 10 */	addi r4, r29, 0xb10
/* 804CAA14  4B BA A0 A9 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 804CAA18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CAA1C  41 82 00 2C */	beq lbl_804CAA48
/* 804CAA20  7F C3 F3 78 */	mr r3, r30
/* 804CAA24  38 9D 0B 10 */	addi r4, r29, 0xb10
/* 804CAA28  38 A0 00 01 */	li r5, 1
/* 804CAA2C  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 804CAA30  38 FD 04 E4 */	addi r7, r29, 0x4e4
/* 804CAA34  39 00 00 00 */	li r8, 0
/* 804CAA38  4B BA AE 49 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 804CAA3C  7F A3 EB 78 */	mr r3, r29
/* 804CAA40  38 80 00 01 */	li r4, 1
/* 804CAA44  4B FF E0 45 */	bl setHitPolygon__9daNbomb_cFi
lbl_804CAA48:
/* 804CAA48  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804CAA4C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CAA50  40 82 03 C8 */	bne lbl_804CAE18
/* 804CAA54  3C 60 80 4C */	lis r3, daNbomb_searchEnemy__FP10fopAc_ac_cPv@ha /* 0x804C70C0@ha */
/* 804CAA58  38 63 70 C0 */	addi r3, r3, daNbomb_searchEnemy__FP10fopAc_ac_cPv@l /* 0x804C70C0@l */
/* 804CAA5C  7F A4 EB 78 */	mr r4, r29
/* 804CAA60  4B B4 ED 99 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804CAA64  28 03 00 00 */	cmplwi r3, 0
/* 804CAA68  41 82 01 7C */	beq lbl_804CABE4
/* 804CAA6C  38 7D 0B FC */	addi r3, r29, 0xbfc
/* 804CAA70  38 9D 0C 14 */	addi r4, r29, 0xc14
/* 804CAA74  4B E7 C7 21 */	bl PSVECDotProduct
/* 804CAA78  FF E0 08 90 */	fmr f31, f1
/* 804CAA7C  FC 00 FA 10 */	fabs f0, f31
/* 804CAA80  FC 20 00 18 */	frsp f1, f0
/* 804CAA84  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804CAA88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CAA8C  41 81 01 58 */	bgt lbl_804CABE4
/* 804CAA90  38 61 00 A8 */	addi r3, r1, 0xa8
/* 804CAA94  38 9D 0B FC */	addi r4, r29, 0xbfc
/* 804CAA98  38 BD 0C 14 */	addi r5, r29, 0xc14
/* 804CAA9C  4B D9 C2 21 */	bl outprod__4cXyzCFRC3Vec
/* 804CAAA0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804CAAA4  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 804CAAA8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 804CAAAC  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 804CAAB0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 804CAAB4  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 804CAAB8  38 61 00 9C */	addi r3, r1, 0x9c
/* 804CAABC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804CAAC0  4B D9 C4 89 */	bl normalizeZP__4cXyzFv
/* 804CAAC4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804CAAC8  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 804CAACC  EC 21 00 28 */	fsubs f1, f1, f0
/* 804CAAD0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804CAAD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CAAD8  40 81 00 0C */	ble lbl_804CAAE4
/* 804CAADC  FC 00 08 34 */	frsqrte f0, f1
/* 804CAAE0  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804CAAE4:
/* 804CAAE4  FC 40 F8 90 */	fmr f2, f31
/* 804CAAE8  4B D9 CD 2D */	bl cM_atan2f__Fff
/* 804CAAEC  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 804CAAF0  EC 40 00 72 */	fmuls f2, f0, f1
/* 804CAAF4  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 804CAAF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804CAAFC  40 81 00 0C */	ble lbl_804CAB08
/* 804CAB00  FC 40 00 90 */	fmr f2, f0
/* 804CAB04  48 00 00 20 */	b lbl_804CAB24
lbl_804CAB08:
/* 804CAB08  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 804CAB0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804CAB10  40 80 00 14 */	bge lbl_804CAB24
/* 804CAB14  FC 40 00 90 */	fmr f2, f0
/* 804CAB18  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804CAB1C  40 81 00 08 */	ble lbl_804CAB24
/* 804CAB20  FC 40 08 90 */	fmr f2, f1
lbl_804CAB24:
/* 804CAB24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CAB28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CAB2C  38 81 00 E4 */	addi r4, r1, 0xe4
/* 804CAB30  FC 20 10 90 */	fmr f1, f2
/* 804CAB34  4B E7 BD 45 */	bl PSMTXRotAxisRad
/* 804CAB38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CAB3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CAB40  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 804CAB44  7C 85 23 78 */	mr r5, r4
/* 804CAB48  4B E7 C3 05 */	bl PSMTXMultVecSR
/* 804CAB4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CAB50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CAB54  38 9D 0C 08 */	addi r4, r29, 0xc08
/* 804CAB58  7C 85 23 78 */	mr r5, r4
/* 804CAB5C  4B E7 C2 F1 */	bl PSMTXMultVecSR
/* 804CAB60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CAB64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CAB68  38 9D 0B FC */	addi r4, r29, 0xbfc
/* 804CAB6C  7C 85 23 78 */	mr r5, r4
/* 804CAB70  4B E7 C2 DD */	bl PSMTXMultVecSR
/* 804CAB74  80 1D 04 DC */	lwz r0, 0x4dc(r29)
/* 804CAB78  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CAB7C  A0 1D 04 E0 */	lhz r0, 0x4e0(r29)
/* 804CAB80  B0 01 00 14 */	sth r0, 0x14(r1)
/* 804CAB84  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 804CAB88  4B B4 23 BD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804CAB8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804CAB90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804CAB94  38 9D 04 DC */	addi r4, r29, 0x4dc
/* 804CAB98  4B B4 20 69 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 804CAB9C  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 804CABA0  A8 61 00 10 */	lha r3, 0x10(r1)
/* 804CABA4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 804CABA8  7C 03 00 50 */	subf r0, r3, r0
/* 804CABAC  7C 04 02 14 */	add r0, r4, r0
/* 804CABB0  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 804CABB4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804CABB8  A8 61 00 12 */	lha r3, 0x12(r1)
/* 804CABBC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804CABC0  7C 03 00 50 */	subf r0, r3, r0
/* 804CABC4  7C 04 02 14 */	add r0, r4, r0
/* 804CABC8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 804CABCC  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 804CABD0  A8 61 00 14 */	lha r3, 0x14(r1)
/* 804CABD4  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 804CABD8  7C 03 00 50 */	subf r0, r3, r0
/* 804CABDC  7C 04 02 14 */	add r0, r4, r0
/* 804CABE0  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_804CABE4:
/* 804CABE4  38 61 00 90 */	addi r3, r1, 0x90
/* 804CABE8  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 804CABEC  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 804CABF0  4B D9 BF 95 */	bl __ml__4cXyzCFf
/* 804CABF4  38 61 00 84 */	addi r3, r1, 0x84
/* 804CABF8  38 9D 04 BC */	addi r4, r29, 0x4bc
/* 804CABFC  38 A1 00 90 */	addi r5, r1, 0x90
/* 804CAC00  4B D9 BE E5 */	bl __pl__4cXyzCFRC3Vec
/* 804CAC04  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804CAC08  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 804CAC0C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 804CAC10  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 804CAC14  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 804CAC18  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 804CAC1C  38 61 00 78 */	addi r3, r1, 0x78
/* 804CAC20  38 9D 0B FC */	addi r4, r29, 0xbfc
/* 804CAC24  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804CAC28  4B D9 BF 5D */	bl __ml__4cXyzCFf
/* 804CAC2C  38 61 00 6C */	addi r3, r1, 0x6c
/* 804CAC30  38 81 00 D8 */	addi r4, r1, 0xd8
/* 804CAC34  38 A1 00 78 */	addi r5, r1, 0x78
/* 804CAC38  4B D9 BE AD */	bl __pl__4cXyzCFRC3Vec
/* 804CAC3C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 804CAC40  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804CAC44  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 804CAC48  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804CAC4C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 804CAC50  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 804CAC54  38 7D 0A A0 */	addi r3, r29, 0xaa0
/* 804CAC58  38 81 00 D8 */	addi r4, r1, 0xd8
/* 804CAC5C  38 A1 00 CC */	addi r5, r1, 0xcc
/* 804CAC60  7F A6 EB 78 */	mr r6, r29
/* 804CAC64  4B BA D1 01 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804CAC68  7F A3 EB 78 */	mr r3, r29
/* 804CAC6C  4B FF DC BD */	bl insectLineCheck__9daNbomb_cFv
/* 804CAC70  7C 7C 1B 78 */	mr r28, r3
/* 804CAC74  2C 1C 00 01 */	cmpwi r28, 1
/* 804CAC78  40 82 00 14 */	bne lbl_804CAC8C
/* 804CAC7C  7F A3 EB 78 */	mr r3, r29
/* 804CAC80  38 80 00 00 */	li r4, 0
/* 804CAC84  4B FF DE 05 */	bl setHitPolygon__9daNbomb_cFi
/* 804CAC88  48 00 01 18 */	b lbl_804CADA0
lbl_804CAC8C:
/* 804CAC8C  2C 1C 00 00 */	cmpwi r28, 0
/* 804CAC90  40 82 01 10 */	bne lbl_804CADA0
/* 804CAC94  38 61 00 60 */	addi r3, r1, 0x60
/* 804CAC98  38 81 00 CC */	addi r4, r1, 0xcc
/* 804CAC9C  38 BD 0B F0 */	addi r5, r29, 0xbf0
/* 804CACA0  4B D9 BE 45 */	bl __pl__4cXyzCFRC3Vec
/* 804CACA4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804CACA8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 804CACAC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 804CACB0  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 804CACB4  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 804CACB8  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 804CACBC  38 61 00 54 */	addi r3, r1, 0x54
/* 804CACC0  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 804CACC4  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804CACC8  4B D9 BE BD */	bl __ml__4cXyzCFf
/* 804CACCC  38 61 00 48 */	addi r3, r1, 0x48
/* 804CACD0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 804CACD4  38 A1 00 54 */	addi r5, r1, 0x54
/* 804CACD8  4B D9 BE 5D */	bl __mi__4cXyzCFRC3Vec
/* 804CACDC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804CACE0  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 804CACE4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804CACE8  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 804CACEC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804CACF0  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 804CACF4  38 7D 0A A0 */	addi r3, r29, 0xaa0
/* 804CACF8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 804CACFC  38 A1 00 CC */	addi r5, r1, 0xcc
/* 804CAD00  7F A6 EB 78 */	mr r6, r29
/* 804CAD04  4B BA D0 61 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804CAD08  7F A3 EB 78 */	mr r3, r29
/* 804CAD0C  4B FF DC 1D */	bl insectLineCheck__9daNbomb_cFv
/* 804CAD10  7C 7C 1B 78 */	mr r28, r3
/* 804CAD14  2C 1C 00 01 */	cmpwi r28, 1
/* 804CAD18  40 82 00 14 */	bne lbl_804CAD2C
/* 804CAD1C  7F A3 EB 78 */	mr r3, r29
/* 804CAD20  38 80 00 00 */	li r4, 0
/* 804CAD24  4B FF DD 65 */	bl setHitPolygon__9daNbomb_cFi
/* 804CAD28  48 00 00 78 */	b lbl_804CADA0
lbl_804CAD2C:
/* 804CAD2C  2C 1C 00 00 */	cmpwi r28, 0
/* 804CAD30  40 82 00 70 */	bne lbl_804CADA0
/* 804CAD34  38 61 00 3C */	addi r3, r1, 0x3c
/* 804CAD38  38 9D 0B FC */	addi r4, r29, 0xbfc
/* 804CAD3C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804CAD40  4B D9 BE 45 */	bl __ml__4cXyzCFf
/* 804CAD44  38 61 00 30 */	addi r3, r1, 0x30
/* 804CAD48  38 81 00 CC */	addi r4, r1, 0xcc
/* 804CAD4C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 804CAD50  4B D9 BD E5 */	bl __mi__4cXyzCFRC3Vec
/* 804CAD54  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804CAD58  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 804CAD5C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804CAD60  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 804CAD64  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804CAD68  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 804CAD6C  38 7D 0A A0 */	addi r3, r29, 0xaa0
/* 804CAD70  38 81 00 CC */	addi r4, r1, 0xcc
/* 804CAD74  38 A1 00 D8 */	addi r5, r1, 0xd8
/* 804CAD78  7F A6 EB 78 */	mr r6, r29
/* 804CAD7C  4B BA CF E9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804CAD80  7F A3 EB 78 */	mr r3, r29
/* 804CAD84  4B FF DB A5 */	bl insectLineCheck__9daNbomb_cFv
/* 804CAD88  7C 7C 1B 78 */	mr r28, r3
/* 804CAD8C  2C 1C 00 01 */	cmpwi r28, 1
/* 804CAD90  40 82 00 10 */	bne lbl_804CADA0
/* 804CAD94  7F A3 EB 78 */	mr r3, r29
/* 804CAD98  38 80 00 00 */	li r4, 0
/* 804CAD9C  4B FF DC ED */	bl setHitPolygon__9daNbomb_cFi
lbl_804CADA0:
/* 804CADA0  2C 1C 00 01 */	cmpwi r28, 1
/* 804CADA4  41 82 00 80 */	beq lbl_804CAE24
/* 804CADA8  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804CADAC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804CADB0  41 82 00 18 */	beq lbl_804CADC8
/* 804CADB4  80 1D 0B 4C */	lwz r0, 0xb4c(r29)
/* 804CADB8  60 00 10 00 */	ori r0, r0, 0x1000
/* 804CADBC  90 1D 0B 4C */	stw r0, 0xb4c(r29)
/* 804CADC0  38 60 00 01 */	li r3, 1
/* 804CADC4  48 00 01 04 */	b lbl_804CAEC8
lbl_804CADC8:
/* 804CADC8  2C 1C 00 02 */	cmpwi r28, 2
/* 804CADCC  40 82 00 20 */	bne lbl_804CADEC
/* 804CADD0  C0 1D 0A D0 */	lfs f0, 0xad0(r29)
/* 804CADD4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804CADD8  C0 1D 0A D4 */	lfs f0, 0xad4(r29)
/* 804CADDC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804CADE0  C0 1D 0A D8 */	lfs f0, 0xad8(r29)
/* 804CADE4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804CADE8  48 00 00 24 */	b lbl_804CAE0C
lbl_804CADEC:
/* 804CADEC  38 61 00 24 */	addi r3, r1, 0x24
/* 804CADF0  38 9D 0B FC */	addi r4, r29, 0xbfc
/* 804CADF4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804CADF8  4B D9 BD 8D */	bl __ml__4cXyzCFf
/* 804CADFC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804CAE00  38 81 00 24 */	addi r4, r1, 0x24
/* 804CAE04  7C 65 1B 78 */	mr r5, r3
/* 804CAE08  4B E7 C2 89 */	bl PSVECAdd
lbl_804CAE0C:
/* 804CAE0C  7F A3 EB 78 */	mr r3, r29
/* 804CAE10  4B FF DE E9 */	bl procExplodeInit__9daNbomb_cFv
/* 804CAE14  48 00 00 B4 */	b lbl_804CAEC8
lbl_804CAE18:
/* 804CAE18  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804CAE1C  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 804CAE20  D0 03 00 0C */	stfs f0, 0xc(r3)
lbl_804CAE24:
/* 804CAE24  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804CAE28  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804CAE2C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804CAE30  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804CAE34  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804CAE38  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804CAE3C  38 7D 05 78 */	addi r3, r29, 0x578
/* 804CAE40  7F C4 F3 78 */	mr r4, r30
/* 804CAE44  4B BA BC 69 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804CAE48  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 804CAE4C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804CAE50  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 804CAE54  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804CAE58  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 804CAE5C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804CAE60  7F A3 EB 78 */	mr r3, r29
/* 804CAE64  4B FF D5 CD */	bl setRoomInfo__9daNbomb_cFv
/* 804CAE68  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 804CAE6C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804CAE70  4B E5 D5 BD */	bl checkPass__12J3DFrameCtrlFf
/* 804CAE74  2C 03 00 00 */	cmpwi r3, 0
/* 804CAE78  40 82 00 18 */	bne lbl_804CAE90
/* 804CAE7C  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 804CAE80  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 804CAE84  4B E5 D5 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 804CAE88  2C 03 00 00 */	cmpwi r3, 0
/* 804CAE8C  41 82 00 38 */	beq lbl_804CAEC4
lbl_804CAE90:
/* 804CAE90  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EB@ha */
/* 804CAE94  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000700EB@l */
/* 804CAE98  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CAE9C  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 804CAEA0  4B CE 06 21 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 804CAEA4  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 804CAEA8  38 7D 0B 20 */	addi r3, r29, 0xb20
/* 804CAEAC  38 81 00 0C */	addi r4, r1, 0xc
/* 804CAEB0  88 DD 0B 53 */	lbz r6, 0xb53(r29)
/* 804CAEB4  81 9D 0B 30 */	lwz r12, 0xb30(r29)
/* 804CAEB8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804CAEBC  7D 89 03 A6 */	mtctr r12
/* 804CAEC0  4E 80 04 21 */	bctrl 
lbl_804CAEC4:
/* 804CAEC4  38 60 00 01 */	li r3, 1
lbl_804CAEC8:
/* 804CAEC8  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 804CAECC  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 804CAED0  39 61 01 00 */	addi r11, r1, 0x100
/* 804CAED4  4B E9 73 51 */	bl _restgpr_28
/* 804CAED8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804CAEDC  7C 08 03 A6 */	mtlr r0
/* 804CAEE0  38 21 01 10 */	addi r1, r1, 0x110
/* 804CAEE4  4E 80 00 20 */	blr 
