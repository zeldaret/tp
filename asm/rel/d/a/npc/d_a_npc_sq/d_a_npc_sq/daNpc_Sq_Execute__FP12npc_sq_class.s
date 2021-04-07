lbl_80AF6B74:
/* 80AF6B74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF6B78  7C 08 02 A6 */	mflr r0
/* 80AF6B7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF6B80  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF6B84  4B 86 B6 55 */	bl _savegpr_28
/* 80AF6B88  7C 7E 1B 78 */	mr r30, r3
/* 80AF6B8C  3C 60 80 AF */	lis r3, lit_3768@ha /* 0x80AF7408@ha */
/* 80AF6B90  3B E3 74 08 */	addi r31, r3, lit_3768@l /* 0x80AF7408@l */
/* 80AF6B94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF6B98  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AF6B9C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF6BA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF6BA4  A8 7E 06 26 */	lha r3, 0x626(r30)
/* 80AF6BA8  38 03 00 01 */	addi r0, r3, 1
/* 80AF6BAC  B0 1E 06 26 */	sth r0, 0x626(r30)
/* 80AF6BB0  38 60 00 00 */	li r3, 0
/* 80AF6BB4  38 00 00 04 */	li r0, 4
/* 80AF6BB8  7C 09 03 A6 */	mtctr r0
lbl_80AF6BBC:
/* 80AF6BBC  38 A3 06 30 */	addi r5, r3, 0x630
/* 80AF6BC0  7C 9E 2A AE */	lhax r4, r30, r5
/* 80AF6BC4  2C 04 00 00 */	cmpwi r4, 0
/* 80AF6BC8  41 82 00 0C */	beq lbl_80AF6BD4
/* 80AF6BCC  38 04 FF FF */	addi r0, r4, -1
/* 80AF6BD0  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80AF6BD4:
/* 80AF6BD4  38 63 00 02 */	addi r3, r3, 2
/* 80AF6BD8  42 00 FF E4 */	bdnz lbl_80AF6BBC
/* 80AF6BDC  7F C3 F3 78 */	mr r3, r30
/* 80AF6BE0  4B FF F7 E1 */	bl action__FP12npc_sq_class
/* 80AF6BE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6BE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6BEC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80AF6BF0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80AF6BF4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80AF6BF8  4B 84 FC F1 */	bl PSMTXTrans
/* 80AF6BFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6C00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6C04  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80AF6C08  4B 51 58 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80AF6C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6C14  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80AF6C18  4B 51 57 85 */	bl mDoMtx_XrotM__FPA4_fs
/* 80AF6C1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6C20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6C24  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80AF6C28  4B 51 58 A5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80AF6C2C  3C 60 80 AF */	lis r3, l_HIO@ha /* 0x80AF75D0@ha */
/* 80AF6C30  3B A3 75 D0 */	addi r29, r3, l_HIO@l /* 0x80AF75D0@l */
/* 80AF6C34  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80AF6C38  FC 40 08 90 */	fmr f2, f1
/* 80AF6C3C  FC 60 08 90 */	fmr f3, f1
/* 80AF6C40  4B 51 61 F9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80AF6C44  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80AF6C48  83 83 00 04 */	lwz r28, 4(r3)
/* 80AF6C4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6C50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6C54  38 9C 00 24 */	addi r4, r28, 0x24
/* 80AF6C58  4B 84 F8 59 */	bl PSMTXCopy
/* 80AF6C5C  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80AF6C60  38 9E 05 38 */	addi r4, r30, 0x538
/* 80AF6C64  38 A0 00 00 */	li r5, 0
/* 80AF6C68  38 C0 00 00 */	li r6, 0
/* 80AF6C6C  4B 51 99 5D */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 80AF6C70  88 1E 06 24 */	lbz r0, 0x624(r30)
/* 80AF6C74  7C 00 07 74 */	extsb r0, r0
/* 80AF6C78  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 80AF6C7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AF6C80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF6C84  3C 00 43 30 */	lis r0, 0x4330
/* 80AF6C88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF6C8C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80AF6C90  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AF6C94  80 7E 06 20 */	lwz r3, 0x620(r30)
/* 80AF6C98  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80AF6C9C  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80AF6CA0  4B 51 9A 0D */	bl modelCalc__14mDoExt_McaMorfFv
/* 80AF6CA4  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 80AF6CA8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AF6CAC  38 63 00 60 */	addi r3, r3, 0x60
/* 80AF6CB0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80AF6CB4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80AF6CB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80AF6CBC  4B 84 F7 F5 */	bl PSMTXCopy
/* 80AF6CC0  38 61 00 08 */	addi r3, r1, 8
/* 80AF6CC4  38 9E 05 38 */	addi r4, r30, 0x538
/* 80AF6CC8  4B 77 A2 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80AF6CCC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AF6CD0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AF6CD4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AF6CD8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AF6CDC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AF6CE0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AF6CE4  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 80AF6CE8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80AF6CEC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80AF6CF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80AF6CF4  EC 02 00 2A */	fadds f0, f2, f0
/* 80AF6CF8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AF6CFC  38 7E 09 B4 */	addi r3, r30, 0x9b4
/* 80AF6D00  38 9E 05 38 */	addi r4, r30, 0x538
/* 80AF6D04  4B 77 89 45 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80AF6D08  38 7E 09 B4 */	addi r3, r30, 0x9b4
/* 80AF6D0C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AF6D10  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80AF6D14  EC 21 00 32 */	fmuls f1, f1, f0
/* 80AF6D18  4B 77 89 F1 */	bl SetR__8cM3dGSphFf
/* 80AF6D1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6D20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6D24  38 63 23 3C */	addi r3, r3, 0x233c
/* 80AF6D28  38 9E 08 90 */	addi r4, r30, 0x890
/* 80AF6D2C  4B 76 DE 7D */	bl Set__4cCcSFP8cCcD_Obj
/* 80AF6D30  7F C3 F3 78 */	mr r3, r30
/* 80AF6D34  4B FF F8 C9 */	bl demo_camera__FP12npc_sq_class
/* 80AF6D38  38 60 00 01 */	li r3, 1
/* 80AF6D3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF6D40  4B 86 B4 E5 */	bl _restgpr_28
/* 80AF6D44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF6D48  7C 08 03 A6 */	mtlr r0
/* 80AF6D4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF6D50  4E 80 00 20 */	blr 
