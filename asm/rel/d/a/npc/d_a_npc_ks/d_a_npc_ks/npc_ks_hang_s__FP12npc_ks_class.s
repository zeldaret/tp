lbl_80A4E800:
/* 80A4E800  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A4E804  7C 08 02 A6 */	mflr r0
/* 80A4E808  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A4E80C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A4E810  4B 91 39 C8 */	b _savegpr_28
/* 80A4E814  7C 7C 1B 78 */	mr r28, r3
/* 80A4E818  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A4E81C  3B E3 DE FC */	addi r31, r3, lit_4030@l
/* 80A4E820  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 80A4E824  90 01 00 08 */	stw r0, 8(r1)
/* 80A4E828  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80A4E82C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80A4E830  38 81 00 08 */	addi r4, r1, 8
/* 80A4E834  4B 5C AF C4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80A4E838  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A4E83C  40 82 00 3C */	bne lbl_80A4E878
/* 80A4E840  3C 60 80 A5 */	lis r3, s_sw_sub__FPvPv@ha
/* 80A4E844  38 63 BA 14 */	addi r3, r3, s_sw_sub__FPvPv@l
/* 80A4E848  7F 84 E3 78 */	mr r4, r28
/* 80A4E84C  4B 5D 2A EC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A4E850  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A4E854  41 82 05 AC */	beq lbl_80A4EE00
/* 80A4E858  41 82 00 0C */	beq lbl_80A4E864
/* 80A4E85C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80A4E860  48 00 00 08 */	b lbl_80A4E868
lbl_80A4E864:
/* 80A4E864  38 00 FF FF */	li r0, -1
lbl_80A4E868:
/* 80A4E868  90 1C 04 A4 */	stw r0, 0x4a4(r28)
/* 80A4E86C  93 DC 09 34 */	stw r30, 0x934(r28)
/* 80A4E870  48 00 00 08 */	b lbl_80A4E878
/* 80A4E874  48 00 05 8C */	b lbl_80A4EE00
lbl_80A4E878:
/* 80A4E878  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4E87C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4E880  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A4E884  C0 3E 09 00 */	lfs f1, 0x900(r30)
/* 80A4E888  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80A4E88C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A4E890  D0 1E 09 00 */	stfs f0, 0x900(r30)
/* 80A4E894  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80A4E898  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A4E89C  38 04 40 00 */	addi r0, r4, 0x4000
/* 80A4E8A0  7C 04 07 34 */	extsh r4, r0
/* 80A4E8A4  38 A0 00 02 */	li r5, 2
/* 80A4E8A8  38 C0 08 00 */	li r6, 0x800
/* 80A4E8AC  4B 82 1D 5C */	b cLib_addCalcAngleS2__FPssss
/* 80A4E8B0  A8 7C 05 EA */	lha r3, 0x5ea(r28)
/* 80A4E8B4  2C 03 00 02 */	cmpwi r3, 2
/* 80A4E8B8  41 82 02 C8 */	beq lbl_80A4EB80
/* 80A4E8BC  40 80 00 14 */	bge lbl_80A4E8D0
/* 80A4E8C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A4E8C4  41 82 00 18 */	beq lbl_80A4E8DC
/* 80A4E8C8  40 80 00 6C */	bge lbl_80A4E934
/* 80A4E8CC  48 00 04 80 */	b lbl_80A4ED4C
lbl_80A4E8D0:
/* 80A4E8D0  2C 03 00 05 */	cmpwi r3, 5
/* 80A4E8D4  41 82 04 4C */	beq lbl_80A4ED20
/* 80A4E8D8  48 00 04 74 */	b lbl_80A4ED4C
lbl_80A4E8DC:
/* 80A4E8DC  38 03 00 01 */	addi r0, r3, 1
/* 80A4E8E0  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A4E8E4  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4E8E8  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4E8EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A4E8F0  38 7C 08 60 */	addi r3, r28, 0x860
/* 80A4E8F4  38 81 00 18 */	addi r4, r1, 0x18
/* 80A4E8F8  38 A0 00 00 */	li r5, 0
/* 80A4E8FC  38 C0 FF FF */	li r6, -1
/* 80A4E900  81 9C 08 60 */	lwz r12, 0x860(r28)
/* 80A4E904  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4E908  7D 89 03 A6 */	mtctr r12
/* 80A4E90C  4E 80 04 21 */	bctrl 
/* 80A4E910  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A4E914  D0 1E 08 FC */	stfs f0, 0x8fc(r30)
/* 80A4E918  38 80 00 0A */	li r4, 0xa
/* 80A4E91C  80 1C 06 30 */	lwz r0, 0x630(r28)
/* 80A4E920  7C 7E 02 14 */	add r3, r30, r0
/* 80A4E924  98 83 0D 10 */	stb r4, 0xd10(r3)
/* 80A4E928  38 00 00 00 */	li r0, 0
/* 80A4E92C  98 1C 09 2C */	stb r0, 0x92c(r28)
/* 80A4E930  48 00 04 1C */	b lbl_80A4ED4C
lbl_80A4E934:
/* 80A4E934  80 1C 05 D0 */	lwz r0, 0x5d0(r28)
/* 80A4E938  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A4E93C  41 82 00 4C */	beq lbl_80A4E988
/* 80A4E940  C0 3C 05 C4 */	lfs f1, 0x5c4(r28)
/* 80A4E944  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A4E948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E94C  40 80 00 3C */	bge lbl_80A4E988
/* 80A4E950  7F 83 E3 78 */	mr r3, r28
/* 80A4E954  38 80 00 10 */	li r4, 0x10
/* 80A4E958  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4E95C  38 A0 00 02 */	li r5, 2
/* 80A4E960  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4E964  4B FF A8 41 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E968  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A4E96C  4B 81 8F E8 */	b cM_rndF__Ff
/* 80A4E970  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80A4E974  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4E978  FC 00 00 1E */	fctiwz f0, f0
/* 80A4E97C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4E980  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A4E984  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
lbl_80A4E988:
/* 80A4E988  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80A4E98C  2C 00 00 00 */	cmpwi r0, 0
/* 80A4E990  40 82 00 9C */	bne lbl_80A4EA2C
/* 80A4E994  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80A4E998  4B 81 8F BC */	b cM_rndF__Ff
/* 80A4E99C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80A4E9A0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A4E9A4  FC 00 00 1E */	fctiwz f0, f0
/* 80A4E9A8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4E9AC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A4E9B0  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
/* 80A4E9B4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4E9B8  4B 81 8F 9C */	b cM_rndF__Ff
/* 80A4E9BC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80A4E9C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E9C4  40 80 00 20 */	bge lbl_80A4E9E4
/* 80A4E9C8  7F 83 E3 78 */	mr r3, r28
/* 80A4E9CC  38 80 00 11 */	li r4, 0x11
/* 80A4E9D0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4E9D4  38 A0 00 02 */	li r5, 2
/* 80A4E9D8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4E9DC  4B FF A7 C9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4E9E0  48 00 00 4C */	b lbl_80A4EA2C
lbl_80A4E9E4:
/* 80A4E9E4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4E9E8  4B 81 8F 6C */	b cM_rndF__Ff
/* 80A4E9EC  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80A4E9F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4E9F4  40 80 00 20 */	bge lbl_80A4EA14
/* 80A4E9F8  7F 83 E3 78 */	mr r3, r28
/* 80A4E9FC  38 80 00 12 */	li r4, 0x12
/* 80A4EA00  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4EA04  38 A0 00 02 */	li r5, 2
/* 80A4EA08  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4EA0C  4B FF A7 99 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4EA10  48 00 00 1C */	b lbl_80A4EA2C
lbl_80A4EA14:
/* 80A4EA14  7F 83 E3 78 */	mr r3, r28
/* 80A4EA18  38 80 00 13 */	li r4, 0x13
/* 80A4EA1C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A4EA20  38 A0 00 02 */	li r5, 2
/* 80A4EA24  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4EA28  4B FF A7 7D */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4EA2C:
/* 80A4EA2C  A8 1C 09 4E */	lha r0, 0x94e(r28)
/* 80A4EA30  2C 00 00 00 */	cmpwi r0, 0
/* 80A4EA34  40 82 01 14 */	bne lbl_80A4EB48
/* 80A4EA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A4EA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A4EA40  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A4EA44  28 00 00 00 */	cmplwi r0, 0
/* 80A4EA48  40 82 01 00 */	bne lbl_80A4EB48
/* 80A4EA4C  C0 3C 05 C4 */	lfs f1, 0x5c4(r28)
/* 80A4EA50  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80A4EA54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4EA58  40 80 00 F0 */	bge lbl_80A4EB48
/* 80A4EA5C  38 00 00 01 */	li r0, 1
/* 80A4EA60  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4EA64  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4EA68  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4EA6C  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4EA70  98 1C 06 20 */	stb r0, 0x620(r28)
/* 80A4EA74  38 00 00 00 */	li r0, 0
/* 80A4EA78  B0 1C 06 10 */	sth r0, 0x610(r28)
/* 80A4EA7C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A4EA80  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A4EA84  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4EA88  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A4EA8C  4B 5B D9 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80A4EA90  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A4EA94  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A4EA98  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 80A4EA9C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A4EAA0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80A4EAA4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A4EAA8  38 61 00 28 */	addi r3, r1, 0x28
/* 80A4EAAC  3C 80 80 A6 */	lis r4, obj_pos@ha
/* 80A4EAB0  38 84 FE 94 */	addi r4, r4, obj_pos@l
/* 80A4EAB4  4B 82 24 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A4EAB8  3C 60 80 A6 */	lis r3, obj_pos@ha
/* 80A4EABC  38 63 FE 94 */	addi r3, r3, obj_pos@l
/* 80A4EAC0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A4EAC4  7C 65 1B 78 */	mr r5, r3
/* 80A4EAC8  4B 8F 85 C8 */	b PSVECAdd
/* 80A4EACC  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A4EAD0  3C 80 80 A6 */	lis r4, obj_pos@ha
/* 80A4EAD4  38 84 FE 94 */	addi r4, r4, obj_pos@l
/* 80A4EAD8  38 BC 06 14 */	addi r5, r28, 0x614
/* 80A4EADC  4B 81 80 58 */	b __mi__4cXyzCFRC3Vec
/* 80A4EAE0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A4EAE4  D0 1C 06 24 */	stfs f0, 0x624(r28)
/* 80A4EAE8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A4EAEC  D0 1C 06 28 */	stfs f0, 0x628(r28)
/* 80A4EAF0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A4EAF4  D0 1C 06 2C */	stfs f0, 0x62c(r28)
/* 80A4EAF8  38 7C 06 24 */	addi r3, r28, 0x624
/* 80A4EAFC  7C 64 1B 78 */	mr r4, r3
/* 80A4EB00  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80A4EB04  4B 8F 85 D4 */	b PSVECScale
/* 80A4EB08  38 00 00 02 */	li r0, 2
/* 80A4EB0C  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A4EB10  38 00 00 11 */	li r0, 0x11
/* 80A4EB14  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
/* 80A4EB18  38 00 00 19 */	li r0, 0x19
/* 80A4EB1C  B0 1C 05 F2 */	sth r0, 0x5f2(r28)
/* 80A4EB20  38 00 40 00 */	li r0, 0x4000
/* 80A4EB24  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 80A4EB28  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80A4EB2C  D0 1C 06 0C */	stfs f0, 0x60c(r28)
/* 80A4EB30  7F 83 E3 78 */	mr r3, r28
/* 80A4EB34  38 80 00 18 */	li r4, 0x18
/* 80A4EB38  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A4EB3C  38 A0 00 02 */	li r5, 2
/* 80A4EB40  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4EB44  4B FF A6 61 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A4EB48:
/* 80A4EB48  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 80A4EB4C  A8 1C 05 C8 */	lha r0, 0x5c8(r28)
/* 80A4EB50  7C 03 00 50 */	subf r0, r3, r0
/* 80A4EB54  7C 00 07 34 */	extsh r0, r0
/* 80A4EB58  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A4EB5C  40 80 00 1C */	bge lbl_80A4EB78
/* 80A4EB60  2C 00 C0 00 */	cmpwi r0, -16384
/* 80A4EB64  40 81 00 14 */	ble lbl_80A4EB78
/* 80A4EB68  3C 63 00 01 */	addis r3, r3, 1
/* 80A4EB6C  38 03 80 00 */	addi r0, r3, -32768
/* 80A4EB70  B0 1C 04 B6 */	sth r0, 0x4b6(r28)
/* 80A4EB74  48 00 01 D8 */	b lbl_80A4ED4C
lbl_80A4EB78:
/* 80A4EB78  B0 7C 04 B6 */	sth r3, 0x4b6(r28)
/* 80A4EB7C  48 00 01 D0 */	b lbl_80A4ED4C
lbl_80A4EB80:
/* 80A4EB80  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80A4EB84  2C 00 00 08 */	cmpwi r0, 8
/* 80A4EB88  40 81 00 14 */	ble lbl_80A4EB9C
/* 80A4EB8C  38 00 40 00 */	li r0, 0x4000
/* 80A4EB90  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 80A4EB94  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80A4EB98  D0 1C 06 0C */	stfs f0, 0x60c(r28)
lbl_80A4EB9C:
/* 80A4EB9C  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80A4EBA0  2C 00 00 08 */	cmpwi r0, 8
/* 80A4EBA4  40 82 00 88 */	bne lbl_80A4EC2C
/* 80A4EBA8  7F 83 E3 78 */	mr r3, r28
/* 80A4EBAC  38 80 00 30 */	li r4, 0x30
/* 80A4EBB0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80A4EBB4  38 A0 00 02 */	li r5, 2
/* 80A4EBB8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A4EBBC  4B FF A5 E9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4EBC0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050018@ha */
/* 80A4EBC4  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00050018@l */
/* 80A4EBC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A4EBCC  38 7C 08 60 */	addi r3, r28, 0x860
/* 80A4EBD0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A4EBD4  38 A0 FF FF */	li r5, -1
/* 80A4EBD8  81 9C 08 60 */	lwz r12, 0x860(r28)
/* 80A4EBDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4EBE0  7D 89 03 A6 */	mtctr r12
/* 80A4EBE4  4E 80 04 21 */	bctrl 
/* 80A4EBE8  3C 60 00 03 */	lis r3, 0x0003 /* 0x0003000E@ha */
/* 80A4EBEC  38 03 00 0E */	addi r0, r3, 0x000E /* 0x0003000E@l */
/* 80A4EBF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A4EBF4  38 7C 08 60 */	addi r3, r28, 0x860
/* 80A4EBF8  38 81 00 10 */	addi r4, r1, 0x10
/* 80A4EBFC  38 A0 00 00 */	li r5, 0
/* 80A4EC00  38 C0 FF FF */	li r6, -1
/* 80A4EC04  81 9C 08 60 */	lwz r12, 0x860(r28)
/* 80A4EC08  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A4EC0C  7D 89 03 A6 */	mtctr r12
/* 80A4EC10  4E 80 04 21 */	bctrl 
/* 80A4EC14  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A4EC18  D0 1E 08 FC */	stfs f0, 0x8fc(r30)
/* 80A4EC1C  38 80 00 0A */	li r4, 0xa
/* 80A4EC20  80 1C 06 30 */	lwz r0, 0x630(r28)
/* 80A4EC24  7C 7E 02 14 */	add r3, r30, r0
/* 80A4EC28  98 83 0D 10 */	stb r4, 0xd10(r3)
lbl_80A4EC2C:
/* 80A4EC2C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80A4EC30  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 80A4EC34  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80A4EC38  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A4EC3C  41 82 01 10 */	beq lbl_80A4ED4C
/* 80A4EC40  A8 1C 06 04 */	lha r0, 0x604(r28)
/* 80A4EC44  2C 00 00 00 */	cmpwi r0, 0
/* 80A4EC48  40 80 00 A0 */	bge lbl_80A4ECE8
/* 80A4EC4C  A8 1C 06 02 */	lha r0, 0x602(r28)
/* 80A4EC50  2C 00 00 00 */	cmpwi r0, 0
/* 80A4EC54  40 80 00 94 */	bge lbl_80A4ECE8
/* 80A4EC58  38 00 00 01 */	li r0, 1
/* 80A4EC5C  98 1C 09 2C */	stb r0, 0x92c(r28)
/* 80A4EC60  38 00 00 00 */	li r0, 0
/* 80A4EC64  98 1C 06 20 */	stb r0, 0x620(r28)
/* 80A4EC68  38 00 00 0F */	li r0, 0xf
/* 80A4EC6C  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
/* 80A4EC70  38 00 00 05 */	li r0, 5
/* 80A4EC74  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A4EC78  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050019@ha */
/* 80A4EC7C  38 03 00 19 */	addi r0, r3, 0x0019 /* 0x00050019@l */
/* 80A4EC80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A4EC84  38 7C 08 60 */	addi r3, r28, 0x860
/* 80A4EC88  38 81 00 0C */	addi r4, r1, 0xc
/* 80A4EC8C  38 A0 FF FF */	li r5, -1
/* 80A4EC90  81 9C 08 60 */	lwz r12, 0x860(r28)
/* 80A4EC94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A4EC98  7D 89 03 A6 */	mtctr r12
/* 80A4EC9C  4E 80 04 21 */	bctrl 
/* 80A4ECA0  38 00 00 18 */	li r0, 0x18
/* 80A4ECA4  90 1D 06 14 */	stw r0, 0x614(r29)
/* 80A4ECA8  38 00 00 00 */	li r0, 0
/* 80A4ECAC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 80A4ECB0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 80A4ECB4  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 80A4ECB8  7F 83 E3 78 */	mr r3, r28
/* 80A4ECBC  38 80 00 18 */	li r4, 0x18
/* 80A4ECC0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80A4ECC4  38 A0 00 02 */	li r5, 2
/* 80A4ECC8  FC 40 08 90 */	fmr f2, f1
/* 80A4ECCC  4B FF A4 D9 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A4ECD0  38 00 00 03 */	li r0, 3
/* 80A4ECD4  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4ECD8  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4ECDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4ECE0  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4ECE4  48 00 00 68 */	b lbl_80A4ED4C
lbl_80A4ECE8:
/* 80A4ECE8  38 00 00 64 */	li r0, 0x64
/* 80A4ECEC  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4ECF0  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4ECF4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4ECF8  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4ECFC  38 00 00 00 */	li r0, 0
/* 80A4ED00  98 1C 06 20 */	stb r0, 0x620(r28)
/* 80A4ED04  38 00 00 0F */	li r0, 0xf
/* 80A4ED08  B0 1C 05 F0 */	sth r0, 0x5f0(r28)
/* 80A4ED0C  38 00 00 05 */	li r0, 5
/* 80A4ED10  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A4ED14  38 00 00 14 */	li r0, 0x14
/* 80A4ED18  B0 1C 09 4E */	sth r0, 0x94e(r28)
/* 80A4ED1C  48 00 00 30 */	b lbl_80A4ED4C
lbl_80A4ED20:
/* 80A4ED20  A8 1C 05 F0 */	lha r0, 0x5f0(r28)
/* 80A4ED24  2C 00 00 01 */	cmpwi r0, 1
/* 80A4ED28  40 82 00 24 */	bne lbl_80A4ED4C
/* 80A4ED2C  38 00 00 64 */	li r0, 0x64
/* 80A4ED30  3C 60 80 A6 */	lis r3, leader@ha
/* 80A4ED34  38 63 FE A0 */	addi r3, r3, leader@l
/* 80A4ED38  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4ED3C  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A4ED40  38 00 00 00 */	li r0, 0
/* 80A4ED44  98 1C 06 20 */	stb r0, 0x620(r28)
/* 80A4ED48  B0 1C 05 EA */	sth r0, 0x5ea(r28)
lbl_80A4ED4C:
/* 80A4ED4C  80 1C 06 30 */	lwz r0, 0x630(r28)
/* 80A4ED50  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80A4ED54  38 63 09 20 */	addi r3, r3, 0x920
/* 80A4ED58  7C 7E 1A 14 */	add r3, r30, r3
/* 80A4ED5C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80A4ED60  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80A4ED64  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A4ED68  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80A4ED6C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80A4ED70  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80A4ED74  AB BC 06 02 */	lha r29, 0x602(r28)
/* 80A4ED78  A8 1C 05 FA */	lha r0, 0x5fa(r28)
/* 80A4ED7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80A4ED80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A4ED84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A4ED88  7C 23 04 2E */	lfsx f1, r3, r0
/* 80A4ED8C  38 7C 06 02 */	addi r3, r28, 0x602
/* 80A4ED90  C0 1C 06 0C */	lfs f0, 0x60c(r28)
/* 80A4ED94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A4ED98  FC 00 00 1E */	fctiwz f0, f0
/* 80A4ED9C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A4EDA0  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80A4EDA4  38 A0 00 04 */	li r5, 4
/* 80A4EDA8  38 C0 10 00 */	li r6, 0x1000
/* 80A4EDAC  4B 82 18 5C */	b cLib_addCalcAngleS2__FPssss
/* 80A4EDB0  A8 1C 06 02 */	lha r0, 0x602(r28)
/* 80A4EDB4  7C 1D 00 50 */	subf r0, r29, r0
/* 80A4EDB8  B0 1C 06 04 */	sth r0, 0x604(r28)
/* 80A4EDBC  A8 7C 05 FA */	lha r3, 0x5fa(r28)
/* 80A4EDC0  38 03 08 00 */	addi r0, r3, 0x800
/* 80A4EDC4  B0 1C 05 FA */	sth r0, 0x5fa(r28)
/* 80A4EDC8  A8 1C 06 02 */	lha r0, 0x602(r28)
/* 80A4EDCC  7C 00 16 70 */	srawi r0, r0, 2
/* 80A4EDD0  7C 00 01 94 */	addze r0, r0
/* 80A4EDD4  7C 00 00 D0 */	neg r0, r0
/* 80A4EDD8  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80A4EDDC  88 1C 06 20 */	lbz r0, 0x620(r28)
/* 80A4EDE0  2C 00 00 02 */	cmpwi r0, 2
/* 80A4EDE4  41 82 00 14 */	beq lbl_80A4EDF8
/* 80A4EDE8  38 7C 06 0C */	addi r3, r28, 0x60c
/* 80A4EDEC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80A4EDF0  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80A4EDF4  4B 82 0C 8C */	b cLib_addCalc0__FPfff
lbl_80A4EDF8:
/* 80A4EDF8  7F 83 E3 78 */	mr r3, r28
/* 80A4EDFC  4B FF F0 39 */	bl hang_end_check__FP12npc_ks_class
lbl_80A4EE00:
/* 80A4EE00  39 61 00 50 */	addi r11, r1, 0x50
/* 80A4EE04  4B 91 34 20 */	b _restgpr_28
/* 80A4EE08  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A4EE0C  7C 08 03 A6 */	mtlr r0
/* 80A4EE10  38 21 00 50 */	addi r1, r1, 0x50
/* 80A4EE14  4E 80 00 20 */	blr 
