lbl_8082E730:
/* 8082E730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082E734  7C 08 02 A6 */	mflr r0
/* 8082E738  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082E73C  39 61 00 30 */	addi r11, r1, 0x30
/* 8082E740  4B B3 3A 95 */	bl _savegpr_27
/* 8082E744  7C 7B 1B 78 */	mr r27, r3
/* 8082E748  3C 80 80 83 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8082F420@ha */
/* 8082E74C  3B A4 F4 20 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x8082F420@l */
/* 8082E750  3C 80 80 83 */	lis r4, lit_1109@ha /* 0x8082F6E8@ha */
/* 8082E754  3B C4 F6 E8 */	addi r30, r4, lit_1109@l /* 0x8082F6E8@l */
/* 8082E758  3C 80 80 83 */	lis r4, lit_3778@ha /* 0x8082F208@ha */
/* 8082E75C  3B E4 F2 08 */	addi r31, r4, lit_3778@l /* 0x8082F208@l */
/* 8082E760  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8082E764  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8082E768  40 82 00 1C */	bne lbl_8082E784
/* 8082E76C  28 1B 00 00 */	cmplwi r27, 0
/* 8082E770  41 82 00 08 */	beq lbl_8082E778
/* 8082E774  48 00 05 79 */	bl __ct__8daE_ZH_cFv
lbl_8082E778:
/* 8082E778  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 8082E77C  60 00 00 08 */	ori r0, r0, 8
/* 8082E780  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_8082E784:
/* 8082E784  38 7B 05 AC */	addi r3, r27, 0x5ac
/* 8082E788  3C 80 80 83 */	lis r4, d_a_e_zh__stringBase0@ha /* 0x8082F410@ha */
/* 8082E78C  38 84 F4 10 */	addi r4, r4, d_a_e_zh__stringBase0@l /* 0x8082F410@l */
/* 8082E790  4B 7F E7 2D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8082E794  7C 7C 1B 78 */	mr r28, r3
/* 8082E798  2C 1C 00 04 */	cmpwi r28, 4
/* 8082E79C  40 82 05 34 */	bne lbl_8082ECD0
/* 8082E7A0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8082E7A4  98 1B 07 AB */	stb r0, 0x7ab(r27)
/* 8082E7A8  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8082E7AC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8082E7B0  98 1B 07 A9 */	stb r0, 0x7a9(r27)
/* 8082E7B4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8082E7B8  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8082E7BC  98 1B 07 AA */	stb r0, 0x7aa(r27)
/* 8082E7C0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 8082E7C4  54 00 46 3E */	srwi r0, r0, 0x18
/* 8082E7C8  98 1B 07 AC */	stb r0, 0x7ac(r27)
/* 8082E7CC  88 9B 07 AA */	lbz r4, 0x7aa(r27)
/* 8082E7D0  28 04 00 FF */	cmplwi r4, 0xff
/* 8082E7D4  41 82 00 28 */	beq lbl_8082E7FC
/* 8082E7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082E7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082E7E0  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 8082E7E4  7C 05 07 74 */	extsb r5, r0
/* 8082E7E8  4B 80 6B 79 */	bl isSwitch__10dSv_info_cCFii
/* 8082E7EC  2C 03 00 00 */	cmpwi r3, 0
/* 8082E7F0  41 82 00 0C */	beq lbl_8082E7FC
/* 8082E7F4  38 60 00 05 */	li r3, 5
/* 8082E7F8  48 00 04 DC */	b lbl_8082ECD4
lbl_8082E7FC:
/* 8082E7FC  88 1B 07 AB */	lbz r0, 0x7ab(r27)
/* 8082E800  28 00 00 FF */	cmplwi r0, 0xff
/* 8082E804  40 82 00 0C */	bne lbl_8082E810
/* 8082E808  38 00 00 00 */	li r0, 0
/* 8082E80C  98 1B 07 AB */	stb r0, 0x7ab(r27)
lbl_8082E810:
/* 8082E810  88 1B 07 AB */	lbz r0, 0x7ab(r27)
/* 8082E814  28 00 00 02 */	cmplwi r0, 2
/* 8082E818  40 82 00 D0 */	bne lbl_8082E8E8
/* 8082E81C  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8082E820  54 00 00 3E */	slwi r0, r0, 0
/* 8082E824  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8082E828  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 8082E82C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082E830  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8082E834  38 00 00 00 */	li r0, 0
/* 8082E838  98 1B 05 46 */	stb r0, 0x546(r27)
/* 8082E83C  98 1B 04 96 */	stb r0, 0x496(r27)
/* 8082E840  7F 63 DB 78 */	mr r3, r27
/* 8082E844  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 8082E848  FC 40 08 90 */	fmr f2, f1
/* 8082E84C  FC 60 08 90 */	fmr f3, f1
/* 8082E850  4B 7E BC D9 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8082E854  7F 63 DB 78 */	mr r3, r27
/* 8082E858  C0 3F 01 38 */	lfs f1, 0x138(r31)
/* 8082E85C  FC 40 08 90 */	fmr f2, f1
/* 8082E860  FC 60 08 90 */	fmr f3, f1
/* 8082E864  4B 7E BC D5 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8082E868  88 1B 07 AC */	lbz r0, 0x7ac(r27)
/* 8082E86C  28 00 00 FF */	cmplwi r0, 0xff
/* 8082E870  41 82 00 0C */	beq lbl_8082E87C
/* 8082E874  28 00 00 00 */	cmplwi r0, 0
/* 8082E878  40 82 00 10 */	bne lbl_8082E888
lbl_8082E87C:
/* 8082E87C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082E880  D0 1B 07 78 */	stfs f0, 0x778(r27)
/* 8082E884  48 00 00 28 */	b lbl_8082E8AC
lbl_8082E888:
/* 8082E888  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8082E88C  C8 3F 02 00 */	lfd f1, 0x200(r31)
/* 8082E890  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082E894  3C 00 43 30 */	lis r0, 0x4330
/* 8082E898  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082E89C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8082E8A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8082E8A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8082E8A8  D0 1B 07 78 */	stfs f0, 0x778(r27)
lbl_8082E8AC:
/* 8082E8AC  3C 60 80 83 */	lis r3, s_BallSearch_Tag__FPvPv@ha /* 0x80829500@ha */
/* 8082E8B0  38 63 95 00 */	addi r3, r3, s_BallSearch_Tag__FPvPv@l /* 0x80829500@l */
/* 8082E8B4  7F 64 DB 78 */	mr r4, r27
/* 8082E8B8  4B 7F 2A 81 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8082E8BC  90 7B 06 64 */	stw r3, 0x664(r27)
/* 8082E8C0  80 1B 06 64 */	lwz r0, 0x664(r27)
/* 8082E8C4  28 00 00 00 */	cmplwi r0, 0
/* 8082E8C8  40 82 00 0C */	bne lbl_8082E8D4
/* 8082E8CC  38 60 00 05 */	li r3, 5
/* 8082E8D0  48 00 04 04 */	b lbl_8082ECD4
lbl_8082E8D4:
/* 8082E8D4  7F 63 DB 78 */	mr r3, r27
/* 8082E8D8  38 80 00 0C */	li r4, 0xc
/* 8082E8DC  38 A0 00 00 */	li r5, 0
/* 8082E8E0  4B FF AB 75 */	bl setActionMode__8daE_ZH_cFii
/* 8082E8E4  48 00 03 B4 */	b lbl_8082EC98
lbl_8082E8E8:
/* 8082E8E8  38 A0 17 C0 */	li r5, 0x17c0
/* 8082E8EC  28 00 00 01 */	cmplwi r0, 1
/* 8082E8F0  40 82 00 08 */	bne lbl_8082E8F8
/* 8082E8F4  38 A0 25 00 */	li r5, 0x2500
lbl_8082E8F8:
/* 8082E8F8  7F 63 DB 78 */	mr r3, r27
/* 8082E8FC  3C 80 80 83 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8082E710@ha */
/* 8082E900  38 84 E7 10 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8082E710@l */
/* 8082E904  4B 7E BB AD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8082E908  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082E90C  40 82 00 0C */	bne lbl_8082E918
/* 8082E910  38 60 00 05 */	li r3, 5
/* 8082E914  48 00 03 C0 */	b lbl_8082ECD4
lbl_8082E918:
/* 8082E918  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 8082E91C  28 00 00 00 */	cmplwi r0, 0
/* 8082E920  40 82 00 1C */	bne lbl_8082E93C
/* 8082E924  38 00 00 01 */	li r0, 1
/* 8082E928  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 8082E92C  98 1B 0E 04 */	stb r0, 0xe04(r27)
/* 8082E930  38 00 FF FF */	li r0, -1
/* 8082E934  38 7E 00 4C */	addi r3, r30, 0x4c
/* 8082E938  98 03 00 04 */	stb r0, 4(r3)
lbl_8082E93C:
/* 8082E93C  38 00 00 04 */	li r0, 4
/* 8082E940  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8082E944  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 8082E948  80 63 00 04 */	lwz r3, 4(r3)
/* 8082E94C  38 03 00 24 */	addi r0, r3, 0x24
/* 8082E950  90 1B 05 04 */	stw r0, 0x504(r27)
/* 8082E954  7F 63 DB 78 */	mr r3, r27
/* 8082E958  C0 3F 01 F0 */	lfs f1, 0x1f0(r31)
/* 8082E95C  FC 40 08 90 */	fmr f2, f1
/* 8082E960  FC 60 08 90 */	fmr f3, f1
/* 8082E964  4B 7E BB C5 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8082E968  7F 63 DB 78 */	mr r3, r27
/* 8082E96C  C0 3F 01 F4 */	lfs f1, 0x1f4(r31)
/* 8082E970  FC 40 08 90 */	fmr f2, f1
/* 8082E974  FC 60 08 90 */	fmr f3, f1
/* 8082E978  4B 7E BB C1 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8082E97C  38 00 00 00 */	li r0, 0
/* 8082E980  90 01 00 08 */	stw r0, 8(r1)
/* 8082E984  38 7B 07 F4 */	addi r3, r27, 0x7f4
/* 8082E988  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8082E98C  38 BB 04 BC */	addi r5, r27, 0x4bc
/* 8082E990  7F 66 DB 78 */	mr r6, r27
/* 8082E994  38 E0 00 01 */	li r7, 1
/* 8082E998  39 1B 07 B4 */	addi r8, r27, 0x7b4
/* 8082E99C  39 3B 04 F8 */	addi r9, r27, 0x4f8
/* 8082E9A0  39 40 00 00 */	li r10, 0
/* 8082E9A4  4B 84 78 A5 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8082E9A8  80 1B 08 20 */	lwz r0, 0x820(r27)
/* 8082E9AC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8082E9B0  90 1B 08 20 */	stw r0, 0x820(r27)
/* 8082E9B4  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8082E9B8  D0 3B 08 BC */	stfs f1, 0x8bc(r27)
/* 8082E9BC  38 7B 07 B4 */	addi r3, r27, 0x7b4
/* 8082E9C0  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 8082E9C4  4B 84 75 95 */	bl SetWall__12dBgS_AcchCirFff
/* 8082E9C8  38 7B 09 CC */	addi r3, r27, 0x9cc
/* 8082E9CC  38 80 00 FF */	li r4, 0xff
/* 8082E9D0  38 A0 00 00 */	li r5, 0
/* 8082E9D4  7F 66 DB 78 */	mr r6, r27
/* 8082E9D8  4B 85 4E 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8082E9DC  38 00 03 E8 */	li r0, 0x3e8
/* 8082E9E0  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 8082E9E4  B0 1B 05 60 */	sth r0, 0x560(r27)
/* 8082E9E8  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8082E9EC  D0 1B 07 74 */	stfs f0, 0x774(r27)
/* 8082E9F0  38 7B 0A 08 */	addi r3, r27, 0xa08
/* 8082E9F4  38 9D 00 20 */	addi r4, r29, 0x20
/* 8082E9F8  4B 85 60 3D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8082E9FC  38 1B 09 CC */	addi r0, r27, 0x9cc
/* 8082EA00  90 1B 0A 4C */	stw r0, 0xa4c(r27)
/* 8082EA04  38 7B 0B 40 */	addi r3, r27, 0xb40
/* 8082EA08  38 9D 00 60 */	addi r4, r29, 0x60
/* 8082EA0C  4B 85 5E A9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8082EA10  38 1B 09 CC */	addi r0, r27, 0x9cc
/* 8082EA14  90 1B 0B 84 */	stw r0, 0xb84(r27)
/* 8082EA18  38 7B 0C 7C */	addi r3, r27, 0xc7c
/* 8082EA1C  38 9D 00 A4 */	addi r4, r29, 0xa4
/* 8082EA20  4B 85 5E 95 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8082EA24  38 1B 09 CC */	addi r0, r27, 0x9cc
/* 8082EA28  90 1B 0C C0 */	stw r0, 0xcc0(r27)
/* 8082EA2C  38 7B 05 C0 */	addi r3, r27, 0x5c0
/* 8082EA30  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 8082EA34  38 BB 05 38 */	addi r5, r27, 0x538
/* 8082EA38  38 C0 00 03 */	li r6, 3
/* 8082EA3C  38 E0 00 01 */	li r7, 1
/* 8082EA40  4B A9 26 55 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8082EA44  38 1B 05 C0 */	addi r0, r27, 0x5c0
/* 8082EA48  90 1B 0D C0 */	stw r0, 0xdc0(r27)
/* 8082EA4C  38 00 00 01 */	li r0, 1
/* 8082EA50  98 1B 0D D6 */	stb r0, 0xdd6(r27)
/* 8082EA54  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082EA58  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 8082EA5C  38 60 00 00 */	li r3, 0
/* 8082EA60  38 00 00 03 */	li r0, 3
/* 8082EA64  7C 09 03 A6 */	mtctr r0
lbl_8082EA68:
/* 8082EA68  38 03 07 64 */	addi r0, r3, 0x764
/* 8082EA6C  7C 1B 05 2E */	stfsx f0, r27, r0
/* 8082EA70  38 63 00 04 */	addi r3, r3, 4
/* 8082EA74  42 00 FF F4 */	bdnz lbl_8082EA68
/* 8082EA78  38 00 00 00 */	li r0, 0
/* 8082EA7C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 8082EA80  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8082EA84  38 00 00 03 */	li r0, 3
/* 8082EA88  98 1B 05 46 */	stb r0, 0x546(r27)
/* 8082EA8C  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8082EA90  54 00 00 3E */	slwi r0, r0, 0
/* 8082EA94  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8082EA98  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 8082EA9C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082EAA0  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8082EAA4  38 80 00 00 */	li r4, 0
/* 8082EAA8  38 60 00 FF */	li r3, 0xff
/* 8082EAAC  38 00 00 08 */	li r0, 8
/* 8082EAB0  7C 09 03 A6 */	mtctr r0
lbl_8082EAB4:
/* 8082EAB4  38 04 07 58 */	addi r0, r4, 0x758
/* 8082EAB8  7C 7B 01 AE */	stbx r3, r27, r0
/* 8082EABC  38 84 00 01 */	addi r4, r4, 1
/* 8082EAC0  42 00 FF F4 */	bdnz lbl_8082EAB4
/* 8082EAC4  38 60 00 00 */	li r3, 0
/* 8082EAC8  38 00 00 03 */	li r0, 3
/* 8082EACC  7C 09 03 A6 */	mtctr r0
lbl_8082EAD0:
/* 8082EAD0  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8082EAD4  7C 9B 1A 14 */	add r4, r27, r3
/* 8082EAD8  D0 04 06 C8 */	stfs f0, 0x6c8(r4)
/* 8082EADC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8082EAE0  D0 04 06 CC */	stfs f0, 0x6cc(r4)
/* 8082EAE4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8082EAE8  D0 04 06 D0 */	stfs f0, 0x6d0(r4)
/* 8082EAEC  38 63 00 0C */	addi r3, r3, 0xc
/* 8082EAF0  42 00 FF E0 */	bdnz lbl_8082EAD0
/* 8082EAF4  80 1B 0A A4 */	lwz r0, 0xaa4(r27)
/* 8082EAF8  60 00 00 04 */	ori r0, r0, 4
/* 8082EAFC  90 1B 0A A4 */	stw r0, 0xaa4(r27)
/* 8082EB00  80 1B 0B DC */	lwz r0, 0xbdc(r27)
/* 8082EB04  60 00 00 04 */	ori r0, r0, 4
/* 8082EB08  90 1B 0B DC */	stw r0, 0xbdc(r27)
/* 8082EB0C  A0 1B 05 8E */	lhz r0, 0x58e(r27)
/* 8082EB10  60 00 02 00 */	ori r0, r0, 0x200
/* 8082EB14  B0 1B 05 8E */	sth r0, 0x58e(r27)
/* 8082EB18  88 1B 07 AB */	lbz r0, 0x7ab(r27)
/* 8082EB1C  28 00 00 00 */	cmplwi r0, 0
/* 8082EB20  40 82 01 4C */	bne lbl_8082EC6C
/* 8082EB24  3C 60 80 83 */	lis r3, s_BallSearch__FPvPv@ha /* 0x80829460@ha */
/* 8082EB28  38 63 94 60 */	addi r3, r3, s_BallSearch__FPvPv@l /* 0x80829460@l */
/* 8082EB2C  7F 64 DB 78 */	mr r4, r27
/* 8082EB30  4B 7F 28 09 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8082EB34  90 7B 06 64 */	stw r3, 0x664(r27)
/* 8082EB38  80 7B 06 64 */	lwz r3, 0x664(r27)
/* 8082EB3C  28 03 00 00 */	cmplwi r3, 0
/* 8082EB40  41 82 01 18 */	beq lbl_8082EC58
/* 8082EB44  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8082EB48  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8082EB4C  40 82 00 F8 */	bne lbl_8082EC44
/* 8082EB50  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8082EB54  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082EB58  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8082EB5C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082EB60  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8082EB64  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8082EB68  80 7B 06 64 */	lwz r3, 0x664(r27)
/* 8082EB6C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8082EB70  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082EB74  EC 01 00 2A */	fadds f0, f1, f0
/* 8082EB78  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082EB7C  80 7B 06 64 */	lwz r3, 0x664(r27)
/* 8082EB80  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8082EB84  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 8082EB88  EC 01 00 2A */	fadds f0, f1, f0
/* 8082EB8C  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 8082EB90  80 7B 06 64 */	lwz r3, 0x664(r27)
/* 8082EB94  38 80 00 00 */	li r4, 0
/* 8082EB98  4B 7E DF B1 */	bl fopAcM_setCarryNow__FP10fopAc_ac_ci
/* 8082EB9C  38 00 00 00 */	li r0, 0
/* 8082EBA0  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8082EBA4  7F 63 DB 78 */	mr r3, r27
/* 8082EBA8  38 80 00 0F */	li r4, 0xf
/* 8082EBAC  38 A0 00 00 */	li r5, 0
/* 8082EBB0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8082EBB4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8082EBB8  4B FF A7 F1 */	bl setBck__8daE_ZH_cFiUcff
/* 8082EBBC  38 00 00 00 */	li r0, 0
/* 8082EBC0  90 1B 07 8C */	stw r0, 0x78c(r27)
/* 8082EBC4  38 00 00 03 */	li r0, 3
/* 8082EBC8  98 1B 05 46 */	stb r0, 0x546(r27)
/* 8082EBCC  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8082EBD0  54 00 00 3E */	slwi r0, r0, 0
/* 8082EBD4  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8082EBD8  80 1B 05 5C */	lwz r0, 0x55c(r27)
/* 8082EBDC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8082EBE0  90 1B 05 5C */	stw r0, 0x55c(r27)
/* 8082EBE4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 8082EBE8  2C 00 00 33 */	cmpwi r0, 0x33
/* 8082EBEC  40 82 00 44 */	bne lbl_8082EC30
/* 8082EBF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8082EBF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8082EBF8  38 80 00 12 */	li r4, 0x12
/* 8082EBFC  88 1B 04 BA */	lbz r0, 0x4ba(r27)
/* 8082EC00  7C 05 07 74 */	extsb r5, r0
/* 8082EC04  4B 80 67 5D */	bl isSwitch__10dSv_info_cCFii
/* 8082EC08  2C 03 00 00 */	cmpwi r3, 0
/* 8082EC0C  40 82 00 24 */	bne lbl_8082EC30
/* 8082EC10  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 8082EC14  60 00 40 00 */	ori r0, r0, 0x4000
/* 8082EC18  90 1B 04 9C */	stw r0, 0x49c(r27)
/* 8082EC1C  7F 63 DB 78 */	mr r3, r27
/* 8082EC20  38 80 00 00 */	li r4, 0
/* 8082EC24  38 A0 00 00 */	li r5, 0
/* 8082EC28  4B FF A8 2D */	bl setActionMode__8daE_ZH_cFii
/* 8082EC2C  48 00 00 6C */	b lbl_8082EC98
lbl_8082EC30:
/* 8082EC30  7F 63 DB 78 */	mr r3, r27
/* 8082EC34  38 80 00 01 */	li r4, 1
/* 8082EC38  38 A0 00 01 */	li r5, 1
/* 8082EC3C  4B FF A8 19 */	bl setActionMode__8daE_ZH_cFii
/* 8082EC40  48 00 00 58 */	b lbl_8082EC98
lbl_8082EC44:
/* 8082EC44  7F 63 DB 78 */	mr r3, r27
/* 8082EC48  38 80 00 04 */	li r4, 4
/* 8082EC4C  38 A0 00 00 */	li r5, 0
/* 8082EC50  4B FF A8 05 */	bl setActionMode__8daE_ZH_cFii
/* 8082EC54  48 00 00 44 */	b lbl_8082EC98
lbl_8082EC58:
/* 8082EC58  7F 63 DB 78 */	mr r3, r27
/* 8082EC5C  38 80 00 0B */	li r4, 0xb
/* 8082EC60  38 A0 00 00 */	li r5, 0
/* 8082EC64  4B FF A7 F1 */	bl setActionMode__8daE_ZH_cFii
/* 8082EC68  48 00 00 30 */	b lbl_8082EC98
lbl_8082EC6C:
/* 8082EC6C  38 00 00 00 */	li r0, 0
/* 8082EC70  98 1B 05 46 */	stb r0, 0x546(r27)
/* 8082EC74  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8082EC78  D0 1B 07 64 */	stfs f0, 0x764(r27)
/* 8082EC7C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8082EC80  D0 1B 07 6C */	stfs f0, 0x76c(r27)
/* 8082EC84  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8082EC88  7F 63 DB 78 */	mr r3, r27
/* 8082EC8C  38 80 00 02 */	li r4, 2
/* 8082EC90  38 A0 00 00 */	li r5, 0
/* 8082EC94  4B FF A7 C1 */	bl setActionMode__8daE_ZH_cFii
lbl_8082EC98:
/* 8082EC98  7F 63 DB 78 */	mr r3, r27
/* 8082EC9C  4B FF F7 25 */	bl daE_ZH_Execute__FP8daE_ZH_c
/* 8082ECA0  88 1B 07 AB */	lbz r0, 0x7ab(r27)
/* 8082ECA4  28 00 00 00 */	cmplwi r0, 0
/* 8082ECA8  40 82 00 28 */	bne lbl_8082ECD0
/* 8082ECAC  80 7B 06 64 */	lwz r3, 0x664(r27)
/* 8082ECB0  28 03 00 00 */	cmplwi r3, 0
/* 8082ECB4  41 82 00 1C */	beq lbl_8082ECD0
/* 8082ECB8  C0 1B 06 68 */	lfs f0, 0x668(r27)
/* 8082ECBC  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 8082ECC0  C0 1B 06 6C */	lfs f0, 0x66c(r27)
/* 8082ECC4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 8082ECC8  C0 1B 06 70 */	lfs f0, 0x670(r27)
/* 8082ECCC  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_8082ECD0:
/* 8082ECD0  7F 83 E3 78 */	mr r3, r28
lbl_8082ECD4:
/* 8082ECD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8082ECD8  4B B3 35 49 */	bl _restgpr_27
/* 8082ECDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082ECE0  7C 08 03 A6 */	mtlr r0
/* 8082ECE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8082ECE8  4E 80 00 20 */	blr 
