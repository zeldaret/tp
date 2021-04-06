lbl_80AE9624:
/* 80AE9624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE9628  7C 08 02 A6 */	mflr r0
/* 80AE962C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE9630  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE9634  4B 87 8B A9 */	bl _savegpr_29
/* 80AE9638  7C 7E 1B 78 */	mr r30, r3
/* 80AE963C  3C 60 80 AF */	lis r3, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE9640  3B E3 A3 B0 */	addi r31, r3, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE9644  A8 1E 0E 10 */	lha r0, 0xe10(r30)
/* 80AE9648  2C 00 00 01 */	cmpwi r0, 1
/* 80AE964C  40 82 00 34 */	bne lbl_80AE9680
/* 80AE9650  38 60 00 00 */	li r3, 0
/* 80AE9654  7C 66 1B 78 */	mr r6, r3
/* 80AE9658  7C 65 1B 78 */	mr r5, r3
/* 80AE965C  7C 64 1B 78 */	mr r4, r3
/* 80AE9660  38 00 00 03 */	li r0, 3
/* 80AE9664  7C 09 03 A6 */	mtctr r0
lbl_80AE9668:
/* 80AE9668  7C FE 1A 14 */	add r7, r30, r3
/* 80AE966C  B0 C7 09 1A */	sth r6, 0x91a(r7)
/* 80AE9670  B0 A7 09 1C */	sth r5, 0x91c(r7)
/* 80AE9674  B0 87 09 1E */	sth r4, 0x91e(r7)
/* 80AE9678  38 63 00 06 */	addi r3, r3, 6
/* 80AE967C  42 00 FF EC */	bdnz lbl_80AE9668
lbl_80AE9680:
/* 80AE9680  7F C3 F3 78 */	mr r3, r30
/* 80AE9684  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80AE9688  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AE968C  7D 89 03 A6 */	mtctr r12
/* 80AE9690  4E 80 04 21 */	bctrl 
/* 80AE9694  7F C3 F3 78 */	mr r3, r30
/* 80AE9698  48 00 01 89 */	bl lookat__11daNpcShoe_cFv
/* 80AE969C  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80AE96A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AE96A4  C0 1F 01 5C */	lfs f0, 0x15c(r31)
/* 80AE96A8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AE96AC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AE96B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AE96B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE96B8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE96BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE96C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE96C4  38 63 00 90 */	addi r3, r3, 0x90
/* 80AE96C8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE96CC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE96D0  4B 85 CD E1 */	bl PSMTXCopy
/* 80AE96D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE96D8  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE96DC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80AE96E0  D0 1E 08 E4 */	stfs f0, 0x8e4(r30)
/* 80AE96E4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80AE96E8  D0 1E 08 E8 */	stfs f0, 0x8e8(r30)
/* 80AE96EC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80AE96F0  D0 1E 08 EC */	stfs f0, 0x8ec(r30)
/* 80AE96F4  7F A3 EB 78 */	mr r3, r29
/* 80AE96F8  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE96FC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AE9700  4B 85 D6 6D */	bl PSMTXMultVec
/* 80AE9704  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AE9708  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AE970C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE9710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE9714  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE9718  7C 85 23 78 */	mr r5, r4
/* 80AE971C  4B 85 D6 51 */	bl PSMTXMultVec
/* 80AE9720  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AE9724  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE9728  4B 78 75 4D */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80AE972C  B0 7E 09 02 */	sth r3, 0x902(r30)
/* 80AE9730  38 7E 08 E4 */	addi r3, r30, 0x8e4
/* 80AE9734  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE9738  4B 78 74 CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80AE973C  B0 7E 09 04 */	sth r3, 0x904(r30)
/* 80AE9740  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE9744  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE9748  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE974C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE9750  38 63 00 90 */	addi r3, r3, 0x90
/* 80AE9754  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE9758  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE975C  4B 85 CD 55 */	bl PSMTXCopy
/* 80AE9760  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80AE9764  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AE9768  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80AE976C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AE9770  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80AE9774  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AE9778  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80AE977C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AE9780  EC 01 00 2A */	fadds f0, f1, f0
/* 80AE9784  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AE9788  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE978C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE9790  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE9794  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE9798  38 63 00 30 */	addi r3, r3, 0x30
/* 80AE979C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE97A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE97A4  4B 85 CD 0D */	bl PSMTXCopy
/* 80AE97A8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80AE97AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AE97B0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80AE97B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AE97B8  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80AE97BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AE97C0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AE97C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AE97C8  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80AE97CC  38 81 00 08 */	addi r4, r1, 8
/* 80AE97D0  4B 78 5A 0D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80AE97D4  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80AE97D8  38 9F 00 00 */	addi r4, r31, 0
/* 80AE97DC  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AE97E0  4B 78 5A 19 */	bl SetH__8cM3dGCylFf
/* 80AE97E4  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 80AE97E8  38 9F 00 00 */	addi r4, r31, 0
/* 80AE97EC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AE97F0  4B 78 5A 11 */	bl SetR__8cM3dGCylFf
/* 80AE97F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AE97F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AE97FC  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AE9800  38 9E 0C A0 */	addi r4, r30, 0xca0
/* 80AE9804  4B 77 B3 A5 */	bl Set__4cCcSFP8cCcD_Obj
/* 80AE9808  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE980C  4B 87 8A 1D */	bl _restgpr_29
/* 80AE9810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE9814  7C 08 03 A6 */	mtlr r0
/* 80AE9818  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE981C  4E 80 00 20 */	blr 
