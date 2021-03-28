lbl_8010C830:
/* 8010C830  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010C834  7C 08 02 A6 */	mflr r0
/* 8010C838  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010C83C  39 61 00 40 */	addi r11, r1, 0x40
/* 8010C840  48 25 59 99 */	bl _savegpr_28
/* 8010C844  7C 7C 1B 78 */	mr r28, r3
/* 8010C848  7C 9D 23 78 */	mr r29, r4
/* 8010C84C  7C BE 2B 78 */	mr r30, r5
/* 8010C850  7C DF 33 78 */	mr r31, r6
/* 8010C854  38 80 00 C7 */	li r4, 0xc7
/* 8010C858  4B FB 57 15 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010C85C  2C 1D 00 00 */	cmpwi r29, 0
/* 8010C860  41 82 00 EC */	beq lbl_8010C94C
/* 8010C864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010C868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010C86C  A8 9C 30 1C */	lha r4, 0x301c(r28)
/* 8010C870  A8 BC 30 1E */	lha r5, 0x301e(r28)
/* 8010C874  38 C0 00 00 */	li r6, 0
/* 8010C878  4B EF F9 91 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8010C87C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010C880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010C884  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 8010C888  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 8010C88C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8010C890  48 23 A4 DD */	bl PSMTXMultVec
/* 8010C894  38 61 00 14 */	addi r3, r1, 0x14
/* 8010C898  38 81 00 20 */	addi r4, r1, 0x20
/* 8010C89C  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 8010C8A0  48 15 A2 E5 */	bl __ml__4cXyzCFf
/* 8010C8A4  38 61 00 08 */	addi r3, r1, 8
/* 8010C8A8  38 9C 37 EC */	addi r4, r28, 0x37ec
/* 8010C8AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010C8B0  48 15 A2 35 */	bl __pl__4cXyzCFRC3Vec
/* 8010C8B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8010C8B8  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8010C8BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8010C8C0  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8010C8C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8010C8C8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8010C8CC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8010C8D0  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 8010C8D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8010C8D8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 8010C8DC  A8 1C 30 1E */	lha r0, 0x301e(r28)
/* 8010C8E0  B0 1C 30 22 */	sth r0, 0x3022(r28)
/* 8010C8E4  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 8010C8E8  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8010C8EC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8010C8F0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8010C8F4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8010C8F8  D0 1C 38 04 */	stfs f0, 0x3804(r28)
/* 8010C8FC  D0 3C 38 08 */	stfs f1, 0x3808(r28)
/* 8010C900  D0 5C 38 0C */	stfs f2, 0x380c(r28)
/* 8010C904  A8 1C 30 20 */	lha r0, 0x3020(r28)
/* 8010C908  2C 00 00 00 */	cmpwi r0, 0
/* 8010C90C  40 82 00 14 */	bne lbl_8010C920
/* 8010C910  38 00 00 01 */	li r0, 1
/* 8010C914  B0 1C 30 20 */	sth r0, 0x3020(r28)
/* 8010C918  38 80 01 2C */	li r4, 0x12c
/* 8010C91C  48 00 00 10 */	b lbl_8010C92C
lbl_8010C920:
/* 8010C920  38 00 00 00 */	li r0, 0
/* 8010C924  B0 1C 30 20 */	sth r0, 0x3020(r28)
/* 8010C928  38 80 01 2D */	li r4, 0x12d
lbl_8010C92C:
/* 8010C92C  38 00 00 00 */	li r0, 0
/* 8010C930  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 8010C934  7F 83 E3 78 */	mr r3, r28
/* 8010C938  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha
/* 8010C93C  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l
/* 8010C940  38 A5 00 14 */	addi r5, r5, 0x14
/* 8010C944  4B FA 07 B1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010C948  48 00 00 14 */	b lbl_8010C95C
lbl_8010C94C:
/* 8010C94C  7F 83 E3 78 */	mr r3, r28
/* 8010C950  4B FF E9 8D */	bl setHookshotRoofWaitAnime__9daAlink_cFv
/* 8010C954  38 00 00 01 */	li r0, 1
/* 8010C958  B0 1C 30 0C */	sth r0, 0x300c(r28)
lbl_8010C95C:
/* 8010C95C  7F 83 E3 78 */	mr r3, r28
/* 8010C960  4B FF BD 7D */	bl resetHookshotMode__9daAlink_cFv
/* 8010C964  38 00 00 01 */	li r0, 1
/* 8010C968  B0 1C 30 24 */	sth r0, 0x3024(r28)
/* 8010C96C  7F 83 E3 78 */	mr r3, r28
/* 8010C970  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010C974  C0 5C 05 34 */	lfs f2, 0x534(r28)
/* 8010C978  38 80 00 00 */	li r4, 0
/* 8010C97C  4B FA ED F5 */	bl setSpecialGravity__9daAlink_cFffi
/* 8010C980  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010C984  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 8010C988  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 8010C98C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8010C990  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8010C994  7F 83 E3 78 */	mr r3, r28
/* 8010C998  7F C4 F3 78 */	mr r4, r30
/* 8010C99C  4B FF EC A9 */	bl initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c
/* 8010C9A0  2C 1D 00 00 */	cmpwi r29, 0
/* 8010C9A4  41 82 00 0C */	beq lbl_8010C9B0
/* 8010C9A8  7F 83 E3 78 */	mr r3, r28
/* 8010C9AC  4B FF CE E5 */	bl setHookshotHangMoveBGCollect__9daAlink_cFv
lbl_8010C9B0:
/* 8010C9B0  C0 02 96 00 */	lfs f0, lit_30895(r2)
/* 8010C9B4  D0 1C 2B 98 */	stfs f0, 0x2b98(r28)
/* 8010C9B8  B3 FC 30 12 */	sth r31, 0x3012(r28)
/* 8010C9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010C9C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010C9C4  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010C9C8  64 00 00 01 */	oris r0, r0, 1
/* 8010C9CC  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010C9D0  38 00 00 FF */	li r0, 0xff
/* 8010C9D4  98 1C 08 28 */	stb r0, 0x828(r28)
/* 8010C9D8  38 60 00 01 */	li r3, 1
/* 8010C9DC  39 61 00 40 */	addi r11, r1, 0x40
/* 8010C9E0  48 25 58 45 */	bl _restgpr_28
/* 8010C9E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010C9E8  7C 08 03 A6 */	mtlr r0
/* 8010C9EC  38 21 00 40 */	addi r1, r1, 0x40
/* 8010C9F0  4E 80 00 20 */	blr 
