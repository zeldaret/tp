lbl_801356F0:
/* 801356F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801356F4  7C 08 02 A6 */	mflr r0
/* 801356F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 801356FC  39 61 00 50 */	addi r11, r1, 0x50
/* 80135700  48 22 CA DD */	bl _savegpr_29
/* 80135704  7C 7E 1B 78 */	mr r30, r3
/* 80135708  7C 9F 23 78 */	mr r31, r4
/* 8013570C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 80135710  28 00 01 06 */	cmplwi r0, 0x106
/* 80135714  41 82 02 B4 */	beq lbl_801359C8
/* 80135718  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8013571C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80135720  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80135724  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80135728  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8013572C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80135730  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 80135734  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80135738  41 82 00 54 */	beq lbl_8013578C
/* 8013573C  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80135740  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80135744  A8 1E 30 6E */	lha r0, 0x306e(r30)
/* 80135748  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013574C  7C 85 02 14 */	add r4, r5, r0
/* 80135750  C0 04 00 04 */	lfs f0, 4(r4)
/* 80135754  C0 3E 34 F4 */	lfs f1, 0x34f4(r30)
/* 80135758  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 8013575C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135760  EC 81 00 28 */	fsubs f4, f1, f0
/* 80135764  C0 7E 34 F0 */	lfs f3, 0x34f0(r30)
/* 80135768  7C 05 04 2E */	lfsx f0, r5, r0
/* 8013576C  C0 3E 34 EC */	lfs f1, 0x34ec(r30)
/* 80135770  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135774  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135778  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8013577C  D0 7E 04 D4 */	stfs f3, 0x4d4(r30)
/* 80135780  D0 9E 04 D8 */	stfs f4, 0x4d8(r30)
/* 80135784  A8 9E 30 6E */	lha r4, 0x306e(r30)
/* 80135788  4B FC 50 D5 */	bl checkHangStartSideWall__9daAlink_cFs
lbl_8013578C:
/* 8013578C  C0 5E 34 F4 */	lfs f2, 0x34f4(r30)
/* 80135790  C0 1E 34 EC */	lfs f0, 0x34ec(r30)
/* 80135794  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80135798  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013579C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801357A0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801357A4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 801357A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 801357AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801357B0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801357B4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801357B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801357BC  38 81 00 18 */	addi r4, r1, 0x18
/* 801357C0  48 21 1B DD */	bl PSVECSquareDistance
/* 801357C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801357C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801357CC  40 81 00 58 */	ble lbl_80135824
/* 801357D0  FC 00 08 34 */	frsqrte f0, f1
/* 801357D4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801357D8  FC 44 00 32 */	fmul f2, f4, f0
/* 801357DC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801357E0  FC 00 00 32 */	fmul f0, f0, f0
/* 801357E4  FC 01 00 32 */	fmul f0, f1, f0
/* 801357E8  FC 03 00 28 */	fsub f0, f3, f0
/* 801357EC  FC 02 00 32 */	fmul f0, f2, f0
/* 801357F0  FC 44 00 32 */	fmul f2, f4, f0
/* 801357F4  FC 00 00 32 */	fmul f0, f0, f0
/* 801357F8  FC 01 00 32 */	fmul f0, f1, f0
/* 801357FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80135800  FC 02 00 32 */	fmul f0, f2, f0
/* 80135804  FC 44 00 32 */	fmul f2, f4, f0
/* 80135808  FC 00 00 32 */	fmul f0, f0, f0
/* 8013580C  FC 01 00 32 */	fmul f0, f1, f0
/* 80135810  FC 03 00 28 */	fsub f0, f3, f0
/* 80135814  FC 02 00 32 */	fmul f0, f2, f0
/* 80135818  FC 21 00 32 */	fmul f1, f1, f0
/* 8013581C  FC 20 08 18 */	frsp f1, f1
/* 80135820  48 00 00 88 */	b lbl_801358A8
lbl_80135824:
/* 80135824  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80135828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013582C  40 80 00 10 */	bge lbl_8013583C
/* 80135830  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80135834  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80135838  48 00 00 70 */	b lbl_801358A8
lbl_8013583C:
/* 8013583C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80135840  80 81 00 08 */	lwz r4, 8(r1)
/* 80135844  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80135848  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013584C  7C 03 00 00 */	cmpw r3, r0
/* 80135850  41 82 00 14 */	beq lbl_80135864
/* 80135854  40 80 00 40 */	bge lbl_80135894
/* 80135858  2C 03 00 00 */	cmpwi r3, 0
/* 8013585C  41 82 00 20 */	beq lbl_8013587C
/* 80135860  48 00 00 34 */	b lbl_80135894
lbl_80135864:
/* 80135864  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80135868  41 82 00 0C */	beq lbl_80135874
/* 8013586C  38 00 00 01 */	li r0, 1
/* 80135870  48 00 00 28 */	b lbl_80135898
lbl_80135874:
/* 80135874  38 00 00 02 */	li r0, 2
/* 80135878  48 00 00 20 */	b lbl_80135898
lbl_8013587C:
/* 8013587C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80135880  41 82 00 0C */	beq lbl_8013588C
/* 80135884  38 00 00 05 */	li r0, 5
/* 80135888  48 00 00 10 */	b lbl_80135898
lbl_8013588C:
/* 8013588C  38 00 00 03 */	li r0, 3
/* 80135890  48 00 00 08 */	b lbl_80135898
lbl_80135894:
/* 80135894  38 00 00 04 */	li r0, 4
lbl_80135898:
/* 80135898  2C 00 00 01 */	cmpwi r0, 1
/* 8013589C  40 82 00 0C */	bne lbl_801358A8
/* 801358A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801358A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801358A8:
/* 801358A8  C0 02 95 50 */	lfs f0, lit_23595(r2)
/* 801358AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801358B0  40 81 00 24 */	ble lbl_801358D4
/* 801358B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801358B8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 801358BC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 801358C0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 801358C4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801358C8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 801358CC  38 60 00 00 */	li r3, 0
/* 801358D0  48 00 02 0C */	b lbl_80135ADC
lbl_801358D4:
/* 801358D4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 801358D8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801358DC  41 82 00 28 */	beq lbl_80135904
/* 801358E0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 801358E4  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 801358E8  C0 1E 34 F0 */	lfs f0, 0x34f0(r30)
/* 801358EC  EC 21 00 2A */	fadds f1, f1, f0
/* 801358F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 801358F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801358F8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 801358FC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80135900  48 00 00 54 */	b lbl_80135954
lbl_80135904:
/* 80135904  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80135908  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013590C  A8 1E 30 6E */	lha r0, 0x306e(r30)
/* 80135910  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80135914  7C 64 02 14 */	add r3, r4, r0
/* 80135918  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013591C  C0 3E 34 F4 */	lfs f1, 0x34f4(r30)
/* 80135920  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 80135924  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135928  EC 81 00 28 */	fsubs f4, f1, f0
/* 8013592C  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 80135930  C0 1E 34 F0 */	lfs f0, 0x34f0(r30)
/* 80135934  EC 61 00 2A */	fadds f3, f1, f0
/* 80135938  7C 04 04 2E */	lfsx f0, r4, r0
/* 8013593C  C0 3E 34 EC */	lfs f1, 0x34ec(r30)
/* 80135940  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135944  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135948  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8013594C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80135950  D0 81 00 38 */	stfs f4, 0x38(r1)
lbl_80135954:
/* 80135954  38 7E 1D 08 */	addi r3, r30, 0x1d08
/* 80135958  38 81 00 30 */	addi r4, r1, 0x30
/* 8013595C  48 13 23 CD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80135960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80135964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80135968  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8013596C  7F A3 EB 78 */	mr r3, r29
/* 80135970  38 9E 1D 08 */	addi r4, r30, 0x1d08
/* 80135974  4B F3 EB 2D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80135978  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8013597C  FC 20 08 18 */	frsp f1, f1
/* 80135980  C0 1E 34 F0 */	lfs f0, 0x34f0(r30)
/* 80135984  EC 01 00 28 */	fsubs f0, f1, f0
/* 80135988  FC 00 02 10 */	fabs f0, f0
/* 8013598C  FC 20 00 18 */	frsp f1, f0
/* 80135990  C0 0D 81 10 */	lfs f0, l_autoUpHeight(r13)
/* 80135994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80135998  40 81 00 0C */	ble lbl_801359A4
/* 8013599C  38 60 00 00 */	li r3, 0
/* 801359A0  48 00 01 3C */	b lbl_80135ADC
lbl_801359A4:
/* 801359A4  7F A3 EB 78 */	mr r3, r29
/* 801359A8  38 9E 1D 1C */	addi r4, r30, 0x1d1c
/* 801359AC  4B F3 F5 45 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 801359B0  7C 7D 1B 78 */	mr r29, r3
/* 801359B4  A8 7E 30 6E */	lha r3, 0x306e(r30)
/* 801359B8  3C 63 00 01 */	addis r3, r3, 1
/* 801359BC  38 03 80 00 */	addi r0, r3, -32768
/* 801359C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 801359C4  48 00 00 20 */	b lbl_801359E4
lbl_801359C8:
/* 801359C8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 801359CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801359D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 801359D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 801359D8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 801359DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 801359E0  83 BE 31 74 */	lwz r29, 0x3174(r30)
lbl_801359E4:
/* 801359E4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 801359E8  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 801359EC  41 82 00 10 */	beq lbl_801359FC
/* 801359F0  38 00 00 01 */	li r0, 1
/* 801359F4  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 801359F8  48 00 00 0C */	b lbl_80135A04
lbl_801359FC:
/* 801359FC  38 00 00 00 */	li r0, 0
/* 80135A00  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_80135A04:
/* 80135A04  7F C3 F3 78 */	mr r3, r30
/* 80135A08  38 80 01 05 */	li r4, 0x105
/* 80135A0C  4B F8 C5 61 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80135A10  2C 1F 00 08 */	cmpwi r31, 8
/* 80135A14  40 82 00 30 */	bne lbl_80135A44
/* 80135A18  2C 1D 00 06 */	cmpwi r29, 6
/* 80135A1C  41 82 00 28 */	beq lbl_80135A44
/* 80135A20  7F C3 F3 78 */	mr r3, r30
/* 80135A24  38 80 00 13 */	li r4, 0x13
/* 80135A28  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 80135A2C  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 80135A30  38 A5 00 14 */	addi r5, r5, 0x14
/* 80135A34  4B FF 3E 15 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80135A38  38 00 00 01 */	li r0, 1
/* 80135A3C  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 80135A40  48 00 00 24 */	b lbl_80135A64
lbl_80135A44:
/* 80135A44  7F C3 F3 78 */	mr r3, r30
/* 80135A48  38 80 00 14 */	li r4, 0x14
/* 80135A4C  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 80135A50  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 80135A54  38 A5 00 3C */	addi r5, r5, 0x3c
/* 80135A58  4B FF 3D F1 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80135A5C  38 00 00 00 */	li r0, 0
/* 80135A60  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_80135A64:
/* 80135A64  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80135A68  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80135A6C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80135A70  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80135A74  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80135A78  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80135A7C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80135A80  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80135A84  C0 02 97 9C */	lfs f0, lit_49395(r2)
/* 80135A88  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 80135A8C  C0 02 97 A0 */	lfs f0, lit_49396(r2)
/* 80135A90  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 80135A94  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80135A98  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 80135A9C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80135AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80135AA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80135AA8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80135AAC  60 00 02 00 */	ori r0, r0, 0x200
/* 80135AB0  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80135AB4  7F C3 F3 78 */	mr r3, r30
/* 80135AB8  4B FF F9 A1 */	bl setWolfHangGroundY__9daAlink_cFv
/* 80135ABC  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 80135AC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80135AC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80135AC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80135ACC  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 80135AD0  38 00 00 00 */	li r0, 0
/* 80135AD4  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 80135AD8  38 60 00 01 */	li r3, 1
lbl_80135ADC:
/* 80135ADC  39 61 00 50 */	addi r11, r1, 0x50
/* 80135AE0  48 22 C7 49 */	bl _restgpr_29
/* 80135AE4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80135AE8  7C 08 03 A6 */	mtlr r0
/* 80135AEC  38 21 00 50 */	addi r1, r1, 0x50
/* 80135AF0  4E 80 00 20 */	blr 
