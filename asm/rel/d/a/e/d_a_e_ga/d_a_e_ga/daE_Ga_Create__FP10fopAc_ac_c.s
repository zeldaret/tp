lbl_804FB874:
/* 804FB874  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804FB878  7C 08 02 A6 */	mflr r0
/* 804FB87C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FB880  39 61 00 30 */	addi r11, r1, 0x30
/* 804FB884  4B E6 69 4C */	b _savegpr_26
/* 804FB888  7C 7E 1B 78 */	mr r30, r3
/* 804FB88C  3C 80 80 50 */	lis r4, lit_3646@ha
/* 804FB890  3B E4 BB 90 */	addi r31, r4, lit_3646@l
/* 804FB894  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804FB898  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804FB89C  40 82 00 40 */	bne lbl_804FB8DC
/* 804FB8A0  7F C0 F3 79 */	or. r0, r30, r30
/* 804FB8A4  41 82 00 2C */	beq lbl_804FB8D0
/* 804FB8A8  7C 1A 03 78 */	mr r26, r0
/* 804FB8AC  4B B1 D2 B8 */	b __ct__10fopAc_ac_cFv
/* 804FB8B0  38 7A 05 74 */	addi r3, r26, 0x574
/* 804FB8B4  3C 80 80 50 */	lis r4, __ct__4ga_sFv@ha
/* 804FB8B8  38 84 BA F4 */	addi r4, r4, __ct__4ga_sFv@l
/* 804FB8BC  3C A0 80 50 */	lis r5, __dt__4ga_sFv@ha
/* 804FB8C0  38 A5 BA B8 */	addi r5, r5, __dt__4ga_sFv@l
/* 804FB8C4  38 C0 00 48 */	li r6, 0x48
/* 804FB8C8  38 E0 01 00 */	li r7, 0x100
/* 804FB8CC  4B E6 64 94 */	b __construct_array
lbl_804FB8D0:
/* 804FB8D0  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804FB8D4  60 00 00 08 */	ori r0, r0, 8
/* 804FB8D8  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804FB8DC:
/* 804FB8DC  38 7E 05 68 */	addi r3, r30, 0x568
/* 804FB8E0  3C 80 80 50 */	lis r4, stringBase0@ha
/* 804FB8E4  38 84 BB D4 */	addi r4, r4, stringBase0@l
/* 804FB8E8  38 84 00 05 */	addi r4, r4, 5
/* 804FB8EC  4B B3 15 D0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804FB8F0  7C 7D 1B 78 */	mr r29, r3
/* 804FB8F4  2C 1D 00 04 */	cmpwi r29, 4
/* 804FB8F8  40 82 01 A4 */	bne lbl_804FBA9C
/* 804FB8FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804FB900  98 1E 05 70 */	stb r0, 0x570(r30)
/* 804FB904  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804FB908  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 804FB90C  98 1E 05 71 */	stb r0, 0x571(r30)
/* 804FB910  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 804FB914  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 804FB918  98 1E 05 72 */	stb r0, 0x572(r30)
/* 804FB91C  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 804FB920  28 00 00 FF */	cmplwi r0, 0xff
/* 804FB924  40 82 00 0C */	bne lbl_804FB930
/* 804FB928  38 00 00 00 */	li r0, 0
/* 804FB92C  98 1E 05 71 */	stb r0, 0x571(r30)
lbl_804FB930:
/* 804FB930  88 1E 05 72 */	lbz r0, 0x572(r30)
/* 804FB934  28 00 00 FF */	cmplwi r0, 0xff
/* 804FB938  40 82 00 0C */	bne lbl_804FB944
/* 804FB93C  38 00 00 02 */	li r0, 2
/* 804FB940  98 1E 05 71 */	stb r0, 0x571(r30)
lbl_804FB944:
/* 804FB944  88 7E 05 70 */	lbz r3, 0x570(r30)
/* 804FB948  38 03 00 01 */	addi r0, r3, 1
/* 804FB94C  90 1E 4D 74 */	stw r0, 0x4d74(r30)
/* 804FB950  80 1E 4D 74 */	lwz r0, 0x4d74(r30)
/* 804FB954  2C 00 01 00 */	cmpwi r0, 0x100
/* 804FB958  40 81 00 0C */	ble lbl_804FB964
/* 804FB95C  38 00 01 00 */	li r0, 0x100
/* 804FB960  90 1E 4D 74 */	stw r0, 0x4d74(r30)
lbl_804FB964:
/* 804FB964  7F C3 F3 78 */	mr r3, r30
/* 804FB968  3C 80 80 50 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 804FB96C  38 84 B7 C4 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 804FB970  38 A0 10 00 */	li r5, 0x1000
/* 804FB974  4B B1 EB 3C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804FB978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804FB97C  40 82 00 0C */	bne lbl_804FB988
/* 804FB980  38 60 00 05 */	li r3, 5
/* 804FB984  48 00 01 1C */	b lbl_804FBAA0
lbl_804FB988:
/* 804FB988  3C 60 80 50 */	lis r3, data_804FBC48@ha
/* 804FB98C  8C 03 BC 48 */	lbzu r0, data_804FBC48@l(r3)
/* 804FB990  28 00 00 00 */	cmplwi r0, 0
/* 804FB994  40 82 00 20 */	bne lbl_804FB9B4
/* 804FB998  38 00 00 01 */	li r0, 1
/* 804FB99C  98 1E 4D 78 */	stb r0, 0x4d78(r30)
/* 804FB9A0  98 03 00 00 */	stb r0, 0(r3)
/* 804FB9A4  38 00 FF FF */	li r0, -1
/* 804FB9A8  3C 60 80 50 */	lis r3, l_HIO@ha
/* 804FB9AC  38 63 BC 58 */	addi r3, r3, l_HIO@l
/* 804FB9B0  98 03 00 04 */	stb r0, 4(r3)
lbl_804FB9B4:
/* 804FB9B4  3B 40 00 00 */	li r26, 0
/* 804FB9B8  3B 80 00 00 */	li r28, 0
/* 804FB9BC  48 00 00 80 */	b lbl_804FBA3C
lbl_804FB9C0:
/* 804FB9C0  38 00 00 01 */	li r0, 1
/* 804FB9C4  7F 7E E2 14 */	add r27, r30, r28
/* 804FB9C8  98 1B 05 B4 */	stb r0, 0x5b4(r27)
/* 804FB9CC  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804FB9D0  D0 1B 05 78 */	stfs f0, 0x578(r27)
/* 804FB9D4  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804FB9D8  D0 1B 05 7C */	stfs f0, 0x57c(r27)
/* 804FB9DC  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804FB9E0  D0 1B 05 80 */	stfs f0, 0x580(r27)
/* 804FB9E4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 804FB9E8  4B D6 BF 6C */	b cM_rndF__Ff
/* 804FB9EC  FC 00 08 1E */	fctiwz f0, f1
/* 804FB9F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 804FB9F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804FB9F8  B0 1B 05 B8 */	sth r0, 0x5b8(r27)
/* 804FB9FC  88 1E 05 71 */	lbz r0, 0x571(r30)
/* 804FBA00  28 00 00 00 */	cmplwi r0, 0
/* 804FBA04  40 82 00 1C */	bne lbl_804FBA20
/* 804FBA08  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804FBA0C  4B D6 BF 48 */	b cM_rndF__Ff
/* 804FBA10  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804FBA14  EC 00 08 2A */	fadds f0, f0, f1
/* 804FBA18  D0 1B 05 AC */	stfs f0, 0x5ac(r27)
/* 804FBA1C  48 00 00 18 */	b lbl_804FBA34
lbl_804FBA20:
/* 804FBA20  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804FBA24  4B D6 BF 30 */	b cM_rndF__Ff
/* 804FBA28  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804FBA2C  EC 00 08 2A */	fadds f0, f0, f1
/* 804FBA30  D0 1B 05 AC */	stfs f0, 0x5ac(r27)
lbl_804FBA34:
/* 804FBA34  3B 5A 00 01 */	addi r26, r26, 1
/* 804FBA38  3B 9C 00 48 */	addi r28, r28, 0x48
lbl_804FBA3C:
/* 804FBA3C  80 1E 4D 74 */	lwz r0, 0x4d74(r30)
/* 804FBA40  7C 1A 00 00 */	cmpw r26, r0
/* 804FBA44  41 80 FF 7C */	blt lbl_804FB9C0
/* 804FBA48  7F C3 F3 78 */	mr r3, r30
/* 804FBA4C  4B FF FC AD */	bl daE_Ga_Execute__FP10e_ga_class
/* 804FBA50  3C 60 80 50 */	lis r3, stringBase0@ha
/* 804FBA54  38 63 BB D4 */	addi r3, r3, stringBase0@l
/* 804FBA58  38 80 00 03 */	li r4, 3
/* 804FBA5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804FBA60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804FBA64  3C A5 00 02 */	addis r5, r5, 2
/* 804FBA68  38 C0 00 80 */	li r6, 0x80
/* 804FBA6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804FBA70  4B B4 08 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804FBA74  7C 64 1B 78 */	mr r4, r3
/* 804FBA78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804FBA7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804FBA80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804FBA84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804FBA88  7C 05 07 74 */	extsb r5, r0
/* 804FBA8C  38 C0 00 00 */	li r6, 0
/* 804FBA90  4B B3 10 60 */	b addSimpleModel__14dComIfG_play_cFP12J3DModelDataiUc
/* 804FBA94  38 00 00 01 */	li r0, 1
/* 804FBA98  98 1E 4D 79 */	stb r0, 0x4d79(r30)
lbl_804FBA9C:
/* 804FBA9C  7F A3 EB 78 */	mr r3, r29
lbl_804FBAA0:
/* 804FBAA0  39 61 00 30 */	addi r11, r1, 0x30
/* 804FBAA4  4B E6 67 78 */	b _restgpr_26
/* 804FBAA8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804FBAAC  7C 08 03 A6 */	mtlr r0
/* 804FBAB0  38 21 00 30 */	addi r1, r1, 0x30
/* 804FBAB4  4E 80 00 20 */	blr 
