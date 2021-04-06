lbl_80698F88:
/* 80698F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80698F8C  7C 08 02 A6 */	mflr r0
/* 80698F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80698F94  39 61 00 40 */	addi r11, r1, 0x40
/* 80698F98  4B CC 92 41 */	bl _savegpr_28
/* 80698F9C  7C 7D 1B 78 */	mr r29, r3
/* 80698FA0  3C 60 80 6A */	lis r3, lit_3788@ha /* 0x80699CB0@ha */
/* 80698FA4  3B C3 9C B0 */	addi r30, r3, lit_3788@l /* 0x80699CB0@l */
/* 80698FA8  A8 7D 06 64 */	lha r3, 0x664(r29)
/* 80698FAC  38 03 00 01 */	addi r0, r3, 1
/* 80698FB0  B0 1D 06 64 */	sth r0, 0x664(r29)
/* 80698FB4  38 60 00 00 */	li r3, 0
/* 80698FB8  38 00 00 04 */	li r0, 4
/* 80698FBC  7C 09 03 A6 */	mtctr r0
lbl_80698FC0:
/* 80698FC0  38 A3 06 84 */	addi r5, r3, 0x684
/* 80698FC4  7C 9D 2A AE */	lhax r4, r29, r5
/* 80698FC8  2C 04 00 00 */	cmpwi r4, 0
/* 80698FCC  41 82 00 0C */	beq lbl_80698FD8
/* 80698FD0  38 04 FF FF */	addi r0, r4, -1
/* 80698FD4  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_80698FD8:
/* 80698FD8  38 63 00 02 */	addi r3, r3, 2
/* 80698FDC  42 00 FF E4 */	bdnz lbl_80698FC0
/* 80698FE0  A8 7D 06 8C */	lha r3, 0x68c(r29)
/* 80698FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80698FE8  41 82 00 0C */	beq lbl_80698FF4
/* 80698FEC  38 03 FF FF */	addi r0, r3, -1
/* 80698FF0  B0 1D 06 8C */	sth r0, 0x68c(r29)
lbl_80698FF4:
/* 80698FF4  7F A3 EB 78 */	mr r3, r29
/* 80698FF8  4B FF FD 75 */	bl action__FP10e_cr_class
/* 80698FFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699000  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80699004  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80699008  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8069900C  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80699010  4B CA D8 D9 */	bl PSMTXTrans
/* 80699014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069901C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80699020  4B 97 34 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80699024  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699028  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069902C  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80699030  4B 97 33 6D */	bl mDoMtx_XrotM__FPA4_fs
/* 80699034  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x80699E98@ha */
/* 80699038  3B E3 9E 98 */	addi r31, r3, l_HIO@l /* 0x80699E98@l */
/* 8069903C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80699040  FC 40 08 90 */	fmr f2, f1
/* 80699044  FC 60 08 90 */	fmr f3, f1
/* 80699048  4B 97 3D F1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8069904C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80699050  83 83 00 04 */	lwz r28, 4(r3)
/* 80699054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069905C  38 9C 00 24 */	addi r4, r28, 0x24
/* 80699060  4B CA D4 51 */	bl PSMTXCopy
/* 80699064  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80699068  7C 03 07 74 */	extsb r3, r0
/* 8069906C  4B 99 40 01 */	bl dComIfGp_getReverb__Fi
/* 80699070  7C 65 1B 78 */	mr r5, r3
/* 80699074  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80699078  38 80 00 00 */	li r4, 0
/* 8069907C  4B 97 80 35 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80699080  80 1D 06 60 */	lwz r0, 0x660(r29)
/* 80699084  2C 00 00 09 */	cmpwi r0, 9
/* 80699088  40 82 00 60 */	bne lbl_806990E8
/* 8069908C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 80699090  38 63 00 0C */	addi r3, r3, 0xc
/* 80699094  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80699098  4B C8 F3 95 */	bl checkPass__12J3DFrameCtrlFf
/* 8069909C  2C 03 00 00 */	cmpwi r3, 0
/* 806990A0  40 82 00 1C */	bne lbl_806990BC
/* 806990A4  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806990A8  38 63 00 0C */	addi r3, r3, 0xc
/* 806990AC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806990B0  4B C8 F3 7D */	bl checkPass__12J3DFrameCtrlFf
/* 806990B4  2C 03 00 00 */	cmpwi r3, 0
/* 806990B8  41 82 00 30 */	beq lbl_806990E8
lbl_806990BC:
/* 806990BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070532@ha */
/* 806990C0  38 03 05 32 */	addi r0, r3, 0x0532 /* 0x00070532@l */
/* 806990C4  90 01 00 08 */	stw r0, 8(r1)
/* 806990C8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 806990CC  38 81 00 08 */	addi r4, r1, 8
/* 806990D0  38 A0 00 00 */	li r5, 0
/* 806990D4  38 C0 FF FF */	li r6, -1
/* 806990D8  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 806990DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806990E0  7D 89 03 A6 */	mtctr r12
/* 806990E4  4E 80 04 21 */	bctrl 
lbl_806990E8:
/* 806990E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 806990EC  4B 97 81 01 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806990F0  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806990F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806990F8  38 63 00 30 */	addi r3, r3, 0x30
/* 806990FC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80699100  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80699104  80 84 00 00 */	lwz r4, 0(r4)
/* 80699108  4B CA D3 A9 */	bl PSMTXCopy
/* 8069910C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80699110  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80699114  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80699118  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8069911C  38 61 00 18 */	addi r3, r1, 0x18
/* 80699120  38 9D 05 38 */	addi r4, r29, 0x538
/* 80699124  4B BD 7D C9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80699128  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8069912C  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80699130  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80699134  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80699138  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8069913C  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80699140  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80699144  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80699148  EC 01 00 2A */	fadds f0, f1, f0
/* 8069914C  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80699150  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80699154  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80699158  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069915C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80699160  38 61 00 18 */	addi r3, r1, 0x18
/* 80699164  38 81 00 0C */	addi r4, r1, 0xc
/* 80699168  4B BD 7D 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069916C  38 7D 0A 10 */	addi r3, r29, 0xa10
/* 80699170  38 81 00 0C */	addi r4, r1, 0xc
/* 80699174  4B BD 64 D5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80699178  38 7D 0A 10 */	addi r3, r29, 0xa10
/* 8069917C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80699180  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80699184  EC 21 00 32 */	fmuls f1, f1, f0
/* 80699188  4B BD 65 81 */	bl SetR__8cM3dGSphFf
/* 8069918C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80699190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80699194  38 63 23 3C */	addi r3, r3, 0x233c
/* 80699198  38 9D 08 EC */	addi r4, r29, 0x8ec
/* 8069919C  4B BC BA 0D */	bl Set__4cCcSFP8cCcD_Obj
/* 806991A0  38 60 00 01 */	li r3, 1
/* 806991A4  39 61 00 40 */	addi r11, r1, 0x40
/* 806991A8  4B CC 90 7D */	bl _restgpr_28
/* 806991AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806991B0  7C 08 03 A6 */	mtlr r0
/* 806991B4  38 21 00 40 */	addi r1, r1, 0x40
/* 806991B8  4E 80 00 20 */	blr 
