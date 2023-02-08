lbl_8010D174:
/* 8010D174  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8010D178  7C 08 02 A6 */	mflr r0
/* 8010D17C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8010D180  39 61 00 40 */	addi r11, r1, 0x40
/* 8010D184  48 25 50 55 */	bl _savegpr_28
/* 8010D188  7C 7D 1B 78 */	mr r29, r3
/* 8010D18C  7C 9E 23 78 */	mr r30, r4
/* 8010D190  7C BC 2B 78 */	mr r28, r5
/* 8010D194  7C DF 33 78 */	mr r31, r6
/* 8010D198  38 80 00 CA */	li r4, 0xca
/* 8010D19C  4B FB 4D D1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010D1A0  2C 1E 00 00 */	cmpwi r30, 0
/* 8010D1A4  41 82 01 5C */	beq lbl_8010D300
/* 8010D1A8  7F A3 EB 78 */	mr r3, r29
/* 8010D1AC  38 80 00 00 */	li r4, 0
/* 8010D1B0  38 A0 80 00 */	li r5, -32768
/* 8010D1B4  38 C0 00 00 */	li r6, 0
/* 8010D1B8  4B FA 09 C1 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 8010D1BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010D1C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010D1C4  A8 9D 30 1C */	lha r4, 0x301c(r29)
/* 8010D1C8  A8 BD 30 1E */	lha r5, 0x301e(r29)
/* 8010D1CC  38 C0 00 00 */	li r6, 0
/* 8010D1D0  4B EF F0 39 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8010D1D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8010D1D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8010D1DC  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha /* 0x80430D3C@ha */
/* 8010D1E0  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l /* 0x80430D3C@l */
/* 8010D1E4  38 A1 00 20 */	addi r5, r1, 0x20
/* 8010D1E8  48 23 9B 85 */	bl PSMTXMultVec
/* 8010D1EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8010D1F0  38 81 00 20 */	addi r4, r1, 0x20
/* 8010D1F4  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 8010D1F8  48 15 99 8D */	bl __ml__4cXyzCFf
/* 8010D1FC  38 61 00 08 */	addi r3, r1, 8
/* 8010D200  38 9D 37 EC */	addi r4, r29, 0x37ec
/* 8010D204  38 A1 00 14 */	addi r5, r1, 0x14
/* 8010D208  48 15 98 DD */	bl __pl__4cXyzCFRC3Vec
/* 8010D20C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8010D210  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8010D214  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8010D218  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8010D21C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8010D220  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8010D224  B3 9D 04 E6 */	sth r28, 0x4e6(r29)
/* 8010D228  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D22C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010D230  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8010D234  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8010D238  7C 04 04 2E */	lfsx f0, r4, r0
/* 8010D23C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8010D240  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 8010D244  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010D248  EC 01 00 2A */	fadds f0, f1, f0
/* 8010D24C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8010D250  38 A4 00 04 */	addi r5, r4, 4
/* 8010D254  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D258  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010D25C  7C 05 04 2E */	lfsx f0, r5, r0
/* 8010D260  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8010D264  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010D268  EC 01 00 2A */	fadds f0, f1, f0
/* 8010D26C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8010D270  3C 7C 00 01 */	addis r3, r28, 1
/* 8010D274  38 03 80 00 */	addi r0, r3, -32768
/* 8010D278  B0 1D 30 22 */	sth r0, 0x3022(r29)
/* 8010D27C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D280  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010D284  7C 05 04 2E */	lfsx f0, r5, r0
/* 8010D288  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8010D28C  C0 42 94 64 */	lfs f2, lit_14954(r2)
/* 8010D290  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010D294  EC 81 00 2A */	fadds f4, f1, f0
/* 8010D298  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8010D29C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8010D2A0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8010D2A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8010D2A8  EC 01 00 2A */	fadds f0, f1, f0
/* 8010D2AC  D0 1D 38 04 */	stfs f0, 0x3804(r29)
/* 8010D2B0  D0 7D 38 08 */	stfs f3, 0x3808(r29)
/* 8010D2B4  D0 9D 38 0C */	stfs f4, 0x380c(r29)
/* 8010D2B8  A8 1D 30 20 */	lha r0, 0x3020(r29)
/* 8010D2BC  2C 00 00 00 */	cmpwi r0, 0
/* 8010D2C0  40 82 00 14 */	bne lbl_8010D2D4
/* 8010D2C4  38 00 00 01 */	li r0, 1
/* 8010D2C8  B0 1D 30 20 */	sth r0, 0x3020(r29)
/* 8010D2CC  38 80 01 36 */	li r4, 0x136
/* 8010D2D0  48 00 00 10 */	b lbl_8010D2E0
lbl_8010D2D4:
/* 8010D2D4  38 00 00 00 */	li r0, 0
/* 8010D2D8  B0 1D 30 20 */	sth r0, 0x3020(r29)
/* 8010D2DC  38 80 01 37 */	li r4, 0x137
lbl_8010D2E0:
/* 8010D2E0  38 00 00 00 */	li r0, 0
/* 8010D2E4  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8010D2E8  7F A3 EB 78 */	mr r3, r29
/* 8010D2EC  3C A0 80 39 */	lis r5, m__22daAlinkHIO_hookshot_c0@ha /* 0x8038E9C0@ha */
/* 8010D2F0  38 A5 E9 C0 */	addi r5, r5, m__22daAlinkHIO_hookshot_c0@l /* 0x8038E9C0@l */
/* 8010D2F4  38 A5 00 28 */	addi r5, r5, 0x28
/* 8010D2F8  4B F9 FD FD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010D2FC  48 00 00 14 */	b lbl_8010D310
lbl_8010D300:
/* 8010D300  7F A3 EB 78 */	mr r3, r29
/* 8010D304  4B FF E0 59 */	bl setHookshotWallWaitAnime__9daAlink_cFv
/* 8010D308  38 00 00 01 */	li r0, 1
/* 8010D30C  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_8010D310:
/* 8010D310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D318  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010D31C  64 00 02 00 */	oris r0, r0, 0x200
/* 8010D320  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010D324  7F A3 EB 78 */	mr r3, r29
/* 8010D328  4B FF B3 B5 */	bl resetHookshotMode__9daAlink_cFv
/* 8010D32C  38 00 00 01 */	li r0, 1
/* 8010D330  B0 1D 30 24 */	sth r0, 0x3024(r29)
/* 8010D334  7F A3 EB 78 */	mr r3, r29
/* 8010D338  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010D33C  C0 5D 05 34 */	lfs f2, 0x534(r29)
/* 8010D340  38 80 00 00 */	li r4, 0
/* 8010D344  4B FA E4 2D */	bl setSpecialGravity__9daAlink_cFffi
/* 8010D348  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010D34C  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8010D350  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8010D354  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8010D358  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8010D35C  2C 1E 00 00 */	cmpwi r30, 0
/* 8010D360  41 82 00 0C */	beq lbl_8010D36C
/* 8010D364  7F A3 EB 78 */	mr r3, r29
/* 8010D368  4B FF C5 29 */	bl setHookshotHangMoveBGCollect__9daAlink_cFv
lbl_8010D36C:
/* 8010D36C  B3 FD 30 12 */	sth r31, 0x3012(r29)
/* 8010D370  38 60 00 01 */	li r3, 1
/* 8010D374  39 61 00 40 */	addi r11, r1, 0x40
/* 8010D378  48 25 4E AD */	bl _restgpr_28
/* 8010D37C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8010D380  7C 08 03 A6 */	mtlr r0
/* 8010D384  38 21 00 40 */	addi r1, r1, 0x40
/* 8010D388  4E 80 00 20 */	blr 
