lbl_80A227DC:
/* 80A227DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A227E0  7C 08 02 A6 */	mflr r0
/* 80A227E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A227E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A227EC  4B 93 F9 F1 */	bl _savegpr_29
/* 80A227F0  7C 7E 1B 78 */	mr r30, r3
/* 80A227F4  3C 60 80 A2 */	lis r3, m__20daNpcKasiKyu_Param_c@ha /* 0x80A258B8@ha */
/* 80A227F8  3B E3 58 B8 */	addi r31, r3, m__20daNpcKasiKyu_Param_c@l /* 0x80A258B8@l */
/* 80A227FC  A8 1E 14 3C */	lha r0, 0x143c(r30)
/* 80A22800  2C 00 00 01 */	cmpwi r0, 1
/* 80A22804  40 82 00 34 */	bne lbl_80A22838
/* 80A22808  38 60 00 00 */	li r3, 0
/* 80A2280C  7C 66 1B 78 */	mr r6, r3
/* 80A22810  7C 65 1B 78 */	mr r5, r3
/* 80A22814  7C 64 1B 78 */	mr r4, r3
/* 80A22818  38 00 00 03 */	li r0, 3
/* 80A2281C  7C 09 03 A6 */	mtctr r0
lbl_80A22820:
/* 80A22820  7C FE 1A 14 */	add r7, r30, r3
/* 80A22824  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80A22828  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80A2282C  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80A22830  38 63 00 06 */	addi r3, r3, 6
/* 80A22834  42 00 FF EC */	bdnz lbl_80A22820
lbl_80A22838:
/* 80A22838  7F C3 F3 78 */	mr r3, r30
/* 80A2283C  4B 72 FF 31 */	bl setMtx__8daNpcF_cFv
/* 80A22840  7F C3 F3 78 */	mr r3, r30
/* 80A22844  48 00 0B 0D */	bl lookat__14daNpcKasiKyu_cFv
/* 80A22848  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80A2284C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A22850  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A22854  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A22858  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A2285C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A22860  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A22864  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22868  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2286C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A22870  38 63 00 90 */	addi r3, r3, 0x90
/* 80A22874  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A22878  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2287C  4B 92 3C 35 */	bl PSMTXCopy
/* 80A22880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A22884  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A22888  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A2288C  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80A22890  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A22894  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80A22898  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A2289C  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80A228A0  7F A3 EB 78 */	mr r3, r29
/* 80A228A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A228A8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A228AC  4B 92 44 C1 */	bl PSMTXMultVec
/* 80A228B0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A228B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A228B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A228BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A228C0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A228C4  7C 85 23 78 */	mr r5, r4
/* 80A228C8  4B 92 44 A5 */	bl PSMTXMultVec
/* 80A228CC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A228D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A228D4  4B 84 E3 A1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80A228D8  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80A228DC  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80A228E0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A228E4  4B 84 E3 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A228E8  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80A228EC  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 80A228F0  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 80A228F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A228F8  EC 21 00 2A */	fadds f1, f1, f0
/* 80A228FC  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80A22900  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A22904  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80A22908  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80A2290C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A22910  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22914  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A22918  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2291C  38 63 00 30 */	addi r3, r3, 0x30
/* 80A22920  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A22924  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A22928  4B 92 3B 89 */	bl PSMTXCopy
/* 80A2292C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80A22930  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A22934  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80A22938  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2293C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80A22940  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A22944  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A22948  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A2294C  38 7E 13 EC */	addi r3, r30, 0x13ec
/* 80A22950  38 81 00 08 */	addi r4, r1, 8
/* 80A22954  4B 84 C8 89 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80A22958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A2295C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A22960  38 63 23 3C */	addi r3, r3, 0x233c
/* 80A22964  38 9E 12 C8 */	addi r4, r30, 0x12c8
/* 80A22968  4B 84 22 41 */	bl Set__4cCcSFP8cCcD_Obj
/* 80A2296C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A22970  4B 93 F8 B9 */	bl _restgpr_29
/* 80A22974  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A22978  7C 08 03 A6 */	mtlr r0
/* 80A2297C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A22980  4E 80 00 20 */	blr 
