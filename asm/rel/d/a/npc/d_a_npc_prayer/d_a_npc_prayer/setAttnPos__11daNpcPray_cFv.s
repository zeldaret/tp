lbl_80AB3964:
/* 80AB3964  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB3968  7C 08 02 A6 */	mflr r0
/* 80AB396C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB3970  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB3974  4B 8A E8 69 */	bl _savegpr_29
/* 80AB3978  7C 7E 1B 78 */	mr r30, r3
/* 80AB397C  3C 60 80 AB */	lis r3, m__17daNpcPray_Param_c@ha /* 0x80AB5808@ha */
/* 80AB3980  3B E3 58 08 */	addi r31, r3, m__17daNpcPray_Param_c@l /* 0x80AB5808@l */
/* 80AB3984  A8 1E 0E 08 */	lha r0, 0xe08(r30)
/* 80AB3988  2C 00 00 01 */	cmpwi r0, 1
/* 80AB398C  40 82 00 34 */	bne lbl_80AB39C0
/* 80AB3990  38 60 00 00 */	li r3, 0
/* 80AB3994  7C 66 1B 78 */	mr r6, r3
/* 80AB3998  7C 65 1B 78 */	mr r5, r3
/* 80AB399C  7C 64 1B 78 */	mr r4, r3
/* 80AB39A0  38 00 00 03 */	li r0, 3
/* 80AB39A4  7C 09 03 A6 */	mtctr r0
lbl_80AB39A8:
/* 80AB39A8  7C FE 1A 14 */	add r7, r30, r3
/* 80AB39AC  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80AB39B0  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80AB39B4  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80AB39B8  38 63 00 06 */	addi r3, r3, 6
/* 80AB39BC  42 00 FF EC */	bdnz lbl_80AB39A8
lbl_80AB39C0:
/* 80AB39C0  7F C3 F3 78 */	mr r3, r30
/* 80AB39C4  4B 69 ED A9 */	bl setMtx__8daNpcF_cFv
/* 80AB39C8  7F C3 F3 78 */	mr r3, r30
/* 80AB39CC  48 00 06 55 */	bl lookat__11daNpcPray_cFv
/* 80AB39D0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80AB39D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB39D8  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80AB39DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AB39E0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AB39E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB39E8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB39EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB39F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AB39F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AB39F8  38 63 00 90 */	addi r3, r3, 0x90
/* 80AB39FC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB3A00  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB3A04  4B 89 2A AD */	bl PSMTXCopy
/* 80AB3A08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB3A0C  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB3A10  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80AB3A14  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80AB3A18  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80AB3A1C  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80AB3A20  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80AB3A24  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80AB3A28  7F A3 EB 78 */	mr r3, r29
/* 80AB3A2C  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB3A30  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AB3A34  4B 89 33 39 */	bl PSMTXMultVec
/* 80AB3A38  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AB3A3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AB3A40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB3A44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB3A48  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB3A4C  7C 85 23 78 */	mr r5, r4
/* 80AB3A50  4B 89 33 1D */	bl PSMTXMultVec
/* 80AB3A54  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AB3A58  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB3A5C  4B 7B D2 19 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AB3A60  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80AB3A64  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AB3A68  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB3A6C  4B 7B D1 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AB3A70  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80AB3A74  C0 5E 08 EC */	lfs f2, 0x8ec(r30)
/* 80AB3A78  C0 3E 08 E8 */	lfs f1, 0x8e8(r30)
/* 80AB3A7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AB3A80  EC 21 00 2A */	fadds f1, f1, f0
/* 80AB3A84  C0 1E 08 E4 */	lfs f0, 0x8e4(r30)
/* 80AB3A88  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AB3A8C  D0 3E 05 54 */	stfs f1, 0x554(r30)
/* 80AB3A90  D0 5E 05 58 */	stfs f2, 0x558(r30)
/* 80AB3A94  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AB3A98  80 63 00 04 */	lwz r3, 4(r3)
/* 80AB3A9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AB3AA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AB3AA4  38 63 00 30 */	addi r3, r3, 0x30
/* 80AB3AA8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AB3AAC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AB3AB0  4B 89 2A 01 */	bl PSMTXCopy
/* 80AB3AB4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80AB3AB8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AB3ABC  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80AB3AC0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AB3AC4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80AB3AC8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AB3ACC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AB3AD0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AB3AD4  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80AB3AD8  38 81 00 08 */	addi r4, r1, 8
/* 80AB3ADC  4B 7B B7 01 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AB3AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB3AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB3AE8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AB3AEC  38 9E 0C A0 */	addi r4, r30, 0xca0
/* 80AB3AF0  4B 7B 10 B9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80AB3AF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AB3AF8  4B 8A E7 31 */	bl _restgpr_29
/* 80AB3AFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB3B00  7C 08 03 A6 */	mtlr r0
/* 80AB3B04  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB3B08  4E 80 00 20 */	blr 
