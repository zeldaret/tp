lbl_806F94D0:
/* 806F94D0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806F94D4  7C 08 02 A6 */	mflr r0
/* 806F94D8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806F94DC  39 61 00 70 */	addi r11, r1, 0x70
/* 806F94E0  4B C6 8C F9 */	bl _savegpr_28
/* 806F94E4  7C 7D 1B 78 */	mr r29, r3
/* 806F94E8  3C 60 80 70 */	lis r3, lit_3788@ha /* 0x806FA3A4@ha */
/* 806F94EC  3B C3 A3 A4 */	addi r30, r3, lit_3788@l /* 0x806FA3A4@l */
/* 806F94F0  A8 7D 06 74 */	lha r3, 0x674(r29)
/* 806F94F4  38 03 00 01 */	addi r0, r3, 1
/* 806F94F8  B0 1D 06 74 */	sth r0, 0x674(r29)
/* 806F94FC  38 60 00 00 */	li r3, 0
/* 806F9500  38 00 00 04 */	li r0, 4
/* 806F9504  7C 09 03 A6 */	mtctr r0
lbl_806F9508:
/* 806F9508  38 A3 06 94 */	addi r5, r3, 0x694
/* 806F950C  7C 9D 2A AE */	lhax r4, r29, r5
/* 806F9510  2C 04 00 00 */	cmpwi r4, 0
/* 806F9514  41 82 00 0C */	beq lbl_806F9520
/* 806F9518  38 04 FF FF */	addi r0, r4, -1
/* 806F951C  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_806F9520:
/* 806F9520  38 63 00 02 */	addi r3, r3, 2
/* 806F9524  42 00 FF E4 */	bdnz lbl_806F9508
/* 806F9528  A8 7D 06 9C */	lha r3, 0x69c(r29)
/* 806F952C  2C 03 00 00 */	cmpwi r3, 0
/* 806F9530  41 82 00 0C */	beq lbl_806F953C
/* 806F9534  38 03 FF FF */	addi r0, r3, -1
/* 806F9538  B0 1D 06 9C */	sth r0, 0x69c(r29)
lbl_806F953C:
/* 806F953C  7F A3 EB 78 */	mr r3, r29
/* 806F9540  4B FF FB B9 */	bl action__FP10e_kg_class
/* 806F9544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F9548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F954C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806F9550  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 806F9554  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 806F9558  4B C4 D3 91 */	bl PSMTXTrans
/* 806F955C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F9560  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F9564  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806F9568  4B 91 2E CD */	bl mDoMtx_YrotM__FPA4_fs
/* 806F956C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F9570  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F9574  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 806F9578  4B 91 2E 25 */	bl mDoMtx_XrotM__FPA4_fs
/* 806F957C  3C 60 80 70 */	lis r3, l_HIO@ha /* 0x806FA5F8@ha */
/* 806F9580  3B E3 A5 F8 */	addi r31, r3, l_HIO@l /* 0x806FA5F8@l */
/* 806F9584  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806F9588  FC 40 08 90 */	fmr f2, f1
/* 806F958C  FC 60 08 90 */	fmr f3, f1
/* 806F9590  4B 91 38 A9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806F9594  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F9598  83 83 00 04 */	lwz r28, 4(r3)
/* 806F959C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806F95A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806F95A4  38 9C 00 24 */	addi r4, r28, 0x24
/* 806F95A8  4B C4 CF 09 */	bl PSMTXCopy
/* 806F95AC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806F95B0  7C 03 07 74 */	extsb r3, r0
/* 806F95B4  4B 93 3A B9 */	bl dComIfGp_getReverb__Fi
/* 806F95B8  7C 65 1B 78 */	mr r5, r3
/* 806F95BC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F95C0  38 80 00 00 */	li r4, 0
/* 806F95C4  4B 91 7A ED */	bl play__16mDoExt_McaMorfSOFUlSc
/* 806F95C8  7F A3 EB 78 */	mr r3, r29
/* 806F95CC  4B FF FE 35 */	bl anm_se_set__FP10e_kg_class
/* 806F95D0  C0 1D 06 70 */	lfs f0, 0x670(r29)
/* 806F95D4  80 7D 06 60 */	lwz r3, 0x660(r29)
/* 806F95D8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806F95DC  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F95E0  4B 91 7C 0D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806F95E4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806F95E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F95EC  38 63 00 30 */	addi r3, r3, 0x30
/* 806F95F0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F95F4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F95F8  80 84 00 00 */	lwz r4, 0(r4)
/* 806F95FC  4B C4 CE B5 */	bl PSMTXCopy
/* 806F9600  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806F9604  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F9608  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F960C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F9610  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F9614  38 61 00 50 */	addi r3, r1, 0x50
/* 806F9618  38 9D 05 38 */	addi r4, r29, 0x538
/* 806F961C  4B B7 78 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F9620  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806F9624  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 806F9628  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806F962C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806F9630  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806F9634  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 806F9638  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 806F963C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 806F9640  EC 01 00 2A */	fadds f0, f1, f0
/* 806F9644  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 806F9648  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 806F964C  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 806F9650  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 806F9654  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 806F9658  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 806F965C  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 806F9660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F9664  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806F9668  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806F966C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806F9670  38 61 00 50 */	addi r3, r1, 0x50
/* 806F9674  38 81 00 44 */	addi r4, r1, 0x44
/* 806F9678  4B B7 78 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F967C  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 806F9680  2C 00 00 00 */	cmpwi r0, 0
/* 806F9684  41 82 00 14 */	beq lbl_806F9698
/* 806F9688  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806F968C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806F9690  EC 01 00 2A */	fadds f0, f1, f0
/* 806F9694  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_806F9698:
/* 806F9698  38 7D 0A 1C */	addi r3, r29, 0xa1c
/* 806F969C  38 81 00 44 */	addi r4, r1, 0x44
/* 806F96A0  4B B7 5F A9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806F96A4  38 7D 0A 1C */	addi r3, r29, 0xa1c
/* 806F96A8  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 806F96AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806F96B0  EC 21 00 32 */	fmuls f1, f1, f0
/* 806F96B4  4B B7 60 55 */	bl SetR__8cM3dGSphFf
/* 806F96B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F96BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F96C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 806F96C4  38 9D 08 F8 */	addi r4, r29, 0x8f8
/* 806F96C8  4B B6 B4 E1 */	bl Set__4cCcSFP8cCcD_Obj
/* 806F96CC  A8 7D 0A 54 */	lha r3, 0xa54(r29)
/* 806F96D0  2C 03 00 00 */	cmpwi r3, 0
/* 806F96D4  41 82 00 B8 */	beq lbl_806F978C
/* 806F96D8  38 03 FF FF */	addi r0, r3, -1
/* 806F96DC  B0 1D 0A 54 */	sth r0, 0xa54(r29)
/* 806F96E0  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806F96E4  80 63 00 04 */	lwz r3, 4(r3)
/* 806F96E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806F96EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F96F0  38 63 03 00 */	addi r3, r3, 0x300
/* 806F96F4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806F96F8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806F96FC  80 84 00 00 */	lwz r4, 0(r4)
/* 806F9700  4B C4 CD B1 */	bl PSMTXCopy
/* 806F9704  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806F9708  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806F970C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806F9710  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806F9714  38 61 00 38 */	addi r3, r1, 0x38
/* 806F9718  38 81 00 2C */	addi r4, r1, 0x2c
/* 806F971C  4B B7 77 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806F9720  C0 1F 00 08 */	lfs f0, 8(r31)
/* 806F9724  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F9728  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F972C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F9730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F9734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F9738  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806F973C  38 00 00 FF */	li r0, 0xff
/* 806F9740  90 01 00 08 */	stw r0, 8(r1)
/* 806F9744  38 80 00 00 */	li r4, 0
/* 806F9748  90 81 00 0C */	stw r4, 0xc(r1)
/* 806F974C  38 00 FF FF */	li r0, -1
/* 806F9750  90 01 00 10 */	stw r0, 0x10(r1)
/* 806F9754  90 81 00 14 */	stw r4, 0x14(r1)
/* 806F9758  90 81 00 18 */	stw r4, 0x18(r1)
/* 806F975C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806F9760  80 9D 0A 58 */	lwz r4, 0xa58(r29)
/* 806F9764  38 A0 00 00 */	li r5, 0
/* 806F9768  3C C0 00 01 */	lis r6, 0x0001 /* 0x000081C7@ha */
/* 806F976C  38 C6 81 C7 */	addi r6, r6, 0x81C7 /* 0x000081C7@l */
/* 806F9770  38 E1 00 2C */	addi r7, r1, 0x2c
/* 806F9774  39 00 00 00 */	li r8, 0
/* 806F9778  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 806F977C  39 41 00 20 */	addi r10, r1, 0x20
/* 806F9780  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806F9784  4B 95 3D 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806F9788  90 7D 0A 58 */	stw r3, 0xa58(r29)
lbl_806F978C:
/* 806F978C  38 60 00 01 */	li r3, 1
/* 806F9790  39 61 00 70 */	addi r11, r1, 0x70
/* 806F9794  4B C6 8A 91 */	bl _restgpr_28
/* 806F9798  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806F979C  7C 08 03 A6 */	mtlr r0
/* 806F97A0  38 21 00 70 */	addi r1, r1, 0x70
/* 806F97A4  4E 80 00 20 */	blr 
