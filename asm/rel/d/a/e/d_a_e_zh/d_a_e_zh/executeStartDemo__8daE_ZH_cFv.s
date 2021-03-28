lbl_8082A88C:
/* 8082A88C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8082A890  7C 08 02 A6 */	mflr r0
/* 8082A894  90 01 00 74 */	stw r0, 0x74(r1)
/* 8082A898  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8082A89C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8082A8A0  39 61 00 60 */	addi r11, r1, 0x60
/* 8082A8A4  4B B3 79 38 */	b _savegpr_29
/* 8082A8A8  7C 7D 1B 78 */	mr r29, r3
/* 8082A8AC  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082A8B0  3B E4 F2 08 */	addi r31, r4, lit_3778@l
/* 8082A8B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8082A8B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8082A8BC  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8082A8C0  7C 00 07 74 */	extsb r0, r0
/* 8082A8C4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8082A8C8  7C 84 02 14 */	add r4, r4, r0
/* 8082A8CC  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 8082A8D0  80 03 07 84 */	lwz r0, 0x784(r3)
/* 8082A8D4  2C 00 00 01 */	cmpwi r0, 1
/* 8082A8D8  41 82 00 94 */	beq lbl_8082A96C
/* 8082A8DC  40 80 00 10 */	bge lbl_8082A8EC
/* 8082A8E0  2C 00 00 00 */	cmpwi r0, 0
/* 8082A8E4  40 80 00 14 */	bge lbl_8082A8F8
/* 8082A8E8  48 00 02 2C */	b lbl_8082AB14
lbl_8082A8EC:
/* 8082A8EC  2C 00 00 03 */	cmpwi r0, 3
/* 8082A8F0  40 80 02 24 */	bge lbl_8082AB14
/* 8082A8F4  48 00 01 4C */	b lbl_8082AA40
lbl_8082A8F8:
/* 8082A8F8  4B FF EC 79 */	bl startDemoCheck__8daE_ZH_cFv
/* 8082A8FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082A900  41 82 02 14 */	beq lbl_8082AB14
/* 8082A904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082A908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082A90C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082A910  7F A4 EB 78 */	mr r4, r29
/* 8082A914  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 8082A918  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 8082A91C  38 C0 00 00 */	li r6, 0
/* 8082A920  4B 81 7F F4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 8082A924  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8082A928  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082A92C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8082A930  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082A934  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8082A938  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082A93C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8082A940  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082A944  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8082A948  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082A94C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8082A950  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082A954  38 00 00 3C */	li r0, 0x3c
/* 8082A958  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082A95C  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082A960  38 03 00 01 */	addi r0, r3, 1
/* 8082A964  90 1D 07 84 */	stw r0, 0x784(r29)
/* 8082A968  48 00 01 AC */	b lbl_8082AB14
lbl_8082A96C:
/* 8082A96C  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082A970  2C 00 00 00 */	cmpwi r0, 0
/* 8082A974  41 82 00 40 */	beq lbl_8082A9B4
/* 8082A978  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8082A97C  40 82 01 98 */	bne lbl_8082AB14
/* 8082A980  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8082A984  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082A988  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8082A98C  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082A990  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8082A994  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082A998  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8082A99C  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082A9A0  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8082A9A4  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082A9A8  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8082A9AC  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082A9B0  48 00 01 64 */	b lbl_8082AB14
lbl_8082A9B4:
/* 8082A9B4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8082A9B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082A9BC  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8082A9C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082A9C4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 8082A9C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082A9CC  38 7D 0D F8 */	addi r3, r29, 0xdf8
/* 8082A9D0  38 81 00 38 */	addi r4, r1, 0x38
/* 8082A9D4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082A9D8  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082A9DC  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 8082A9E0  4B A4 50 D8 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082A9E4  FF E0 08 90 */	fmr f31, f1
/* 8082A9E8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8082A9EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8082A9F0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8082A9F4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8082A9F8  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 8082A9FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082AA00  38 7D 0D EC */	addi r3, r29, 0xdec
/* 8082AA04  38 81 00 38 */	addi r4, r1, 0x38
/* 8082AA08  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082AA0C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082AA10  C0 7F 01 10 */	lfs f3, 0x110(r31)
/* 8082AA14  4B A4 50 A4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082AA18  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8082AA1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8082AA20  41 81 00 F4 */	bgt lbl_8082AB14
/* 8082AA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082AA28  41 81 00 EC */	bgt lbl_8082AB14
/* 8082AA2C  38 00 00 1E */	li r0, 0x1e
/* 8082AA30  90 1D 07 94 */	stw r0, 0x794(r29)
/* 8082AA34  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 8082AA38  38 03 00 01 */	addi r0, r3, 1
/* 8082AA3C  90 1D 07 84 */	stw r0, 0x784(r29)
lbl_8082AA40:
/* 8082AA40  80 1D 07 94 */	lwz r0, 0x794(r29)
/* 8082AA44  2C 00 00 00 */	cmpwi r0, 0
/* 8082AA48  40 82 00 CC */	bne lbl_8082AB14
/* 8082AA4C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8082AA50  D0 1D 0D F8 */	stfs f0, 0xdf8(r29)
/* 8082AA54  C0 1F 01 28 */	lfs f0, 0x128(r31)
/* 8082AA58  D0 1D 0D FC */	stfs f0, 0xdfc(r29)
/* 8082AA5C  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 8082AA60  D0 1D 0E 00 */	stfs f0, 0xe00(r29)
/* 8082AA64  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8082AA68  D0 1D 0D EC */	stfs f0, 0xdec(r29)
/* 8082AA6C  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 8082AA70  D0 1D 0D F0 */	stfs f0, 0xdf0(r29)
/* 8082AA74  C0 1F 01 34 */	lfs f0, 0x134(r31)
/* 8082AA78  D0 1D 0D F4 */	stfs f0, 0xdf4(r29)
/* 8082AA7C  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082AA80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082AA84  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082AA88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082AA8C  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082AA90  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082AA94  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082AA98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082AA9C  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082AAA0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082AAA4  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082AAA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8082AAAC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082AAB0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8082AAB4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8082AAB8  4B 95 61 60 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8082AABC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082AAC0  4B 93 69 EC */	b Start__9dCamera_cFv
/* 8082AAC4  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082AAC8  38 80 00 00 */	li r4, 0
/* 8082AACC  4B 93 85 40 */	b SetTrimSize__9dCamera_cFl
/* 8082AAD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082AAD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082AAD8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8082AADC  4B 81 79 8C */	b reset__14dEvt_control_cFv
/* 8082AAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082AAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082AAE8  38 80 00 12 */	li r4, 0x12
/* 8082AAEC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082AAF0  7C 05 07 74 */	extsb r5, r0
/* 8082AAF4  4B 80 A7 0C */	b onSwitch__10dSv_info_cFii
/* 8082AAF8  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 8082AAFC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8082AB00  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 8082AB04  7F A3 EB 78 */	mr r3, r29
/* 8082AB08  38 80 00 01 */	li r4, 1
/* 8082AB0C  38 A0 00 01 */	li r5, 1
/* 8082AB10  4B FF E9 45 */	bl setActionMode__8daE_ZH_cFii
lbl_8082AB14:
/* 8082AB14  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082AB18  2C 00 00 00 */	cmpwi r0, 0
/* 8082AB1C  41 82 00 54 */	beq lbl_8082AB70
/* 8082AB20  80 1D 07 80 */	lwz r0, 0x780(r29)
/* 8082AB24  2C 00 00 01 */	cmpwi r0, 1
/* 8082AB28  41 82 00 48 */	beq lbl_8082AB70
/* 8082AB2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8082AB30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082AB34  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 8082AB38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8082AB3C  41 82 00 34 */	beq lbl_8082AB70
/* 8082AB40  38 80 00 12 */	li r4, 0x12
/* 8082AB44  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8082AB48  7C 05 07 74 */	extsb r5, r0
/* 8082AB4C  4B 80 A6 B4 */	b onSwitch__10dSv_info_cFii
/* 8082AB50  38 60 00 02 */	li r3, 2
/* 8082AB54  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082AB58  38 80 00 00 */	li r4, 0
/* 8082AB5C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8082AB60  7C 05 07 74 */	extsb r5, r0
/* 8082AB64  38 C0 00 00 */	li r6, 0
/* 8082AB68  38 E0 FF FF */	li r7, -1
/* 8082AB6C  4B 7F C6 04 */	b dStage_changeScene__FifUlScsi
lbl_8082AB70:
/* 8082AB70  80 1D 07 84 */	lwz r0, 0x784(r29)
/* 8082AB74  2C 00 00 00 */	cmpwi r0, 0
/* 8082AB78  41 82 00 44 */	beq lbl_8082ABBC
/* 8082AB7C  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 8082AB80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8082AB84  C0 1D 0D FC */	lfs f0, 0xdfc(r29)
/* 8082AB88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8082AB8C  C0 1D 0E 00 */	lfs f0, 0xe00(r29)
/* 8082AB90  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8082AB94  C0 1D 0D EC */	lfs f0, 0xdec(r29)
/* 8082AB98  D0 01 00 08 */	stfs f0, 8(r1)
/* 8082AB9C  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 8082ABA0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8082ABA4  C0 1D 0D F4 */	lfs f0, 0xdf4(r29)
/* 8082ABA8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082ABAC  38 7E 02 48 */	addi r3, r30, 0x248
/* 8082ABB0  38 81 00 14 */	addi r4, r1, 0x14
/* 8082ABB4  38 A1 00 08 */	addi r5, r1, 8
/* 8082ABB8  4B 95 5E F0 */	b Set__9dCamera_cF4cXyz4cXyz
lbl_8082ABBC:
/* 8082ABBC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8082ABC0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8082ABC4  39 61 00 60 */	addi r11, r1, 0x60
/* 8082ABC8  4B B3 76 60 */	b _restgpr_29
/* 8082ABCC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8082ABD0  7C 08 03 A6 */	mtlr r0
/* 8082ABD4  38 21 00 70 */	addi r1, r1, 0x70
/* 8082ABD8  4E 80 00 20 */	blr 
