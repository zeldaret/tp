lbl_806C59F4:
/* 806C59F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806C59F8  7C 08 02 A6 */	mflr r0
/* 806C59FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 806C5A00  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806C5A04  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806C5A08  39 61 00 70 */	addi r11, r1, 0x70
/* 806C5A0C  4B C9 C7 B5 */	bl _savegpr_22
/* 806C5A10  7C 7F 1B 78 */	mr r31, r3
/* 806C5A14  3C 60 80 6C */	lis r3, lit_3906@ha /* 0x806C74E8@ha */
/* 806C5A18  3B C3 74 E8 */	addi r30, r3, lit_3906@l /* 0x806C74E8@l */
/* 806C5A1C  A8 7F 06 98 */	lha r3, 0x698(r31)
/* 806C5A20  38 03 00 01 */	addi r0, r3, 1
/* 806C5A24  B0 1F 06 98 */	sth r0, 0x698(r31)
/* 806C5A28  38 60 00 00 */	li r3, 0
/* 806C5A2C  38 00 00 05 */	li r0, 5
/* 806C5A30  7C 09 03 A6 */	mtctr r0
lbl_806C5A34:
/* 806C5A34  38 A3 06 C4 */	addi r5, r3, 0x6c4
/* 806C5A38  7C 9F 2A AE */	lhax r4, r31, r5
/* 806C5A3C  2C 04 00 00 */	cmpwi r4, 0
/* 806C5A40  41 82 00 0C */	beq lbl_806C5A4C
/* 806C5A44  38 04 FF FF */	addi r0, r4, -1
/* 806C5A48  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_806C5A4C:
/* 806C5A4C  38 63 00 02 */	addi r3, r3, 2
/* 806C5A50  42 00 FF E4 */	bdnz lbl_806C5A34
/* 806C5A54  A8 7F 06 CE */	lha r3, 0x6ce(r31)
/* 806C5A58  2C 03 00 00 */	cmpwi r3, 0
/* 806C5A5C  41 82 00 0C */	beq lbl_806C5A68
/* 806C5A60  38 03 FF FF */	addi r0, r3, -1
/* 806C5A64  B0 1F 06 CE */	sth r0, 0x6ce(r31)
lbl_806C5A68:
/* 806C5A68  A8 7F 06 D0 */	lha r3, 0x6d0(r31)
/* 806C5A6C  2C 03 00 00 */	cmpwi r3, 0
/* 806C5A70  41 82 00 0C */	beq lbl_806C5A7C
/* 806C5A74  38 03 FF FF */	addi r0, r3, -1
/* 806C5A78  B0 1F 06 D0 */	sth r0, 0x6d0(r31)
lbl_806C5A7C:
/* 806C5A7C  7F E3 FB 78 */	mr r3, r31
/* 806C5A80  4B FF E4 8D */	bl action__FP10e_gb_class
/* 806C5A84  88 1F 06 68 */	lbz r0, 0x668(r31)
/* 806C5A88  7C 00 07 75 */	extsb. r0, r0
/* 806C5A8C  40 82 00 2C */	bne lbl_806C5AB8
/* 806C5A90  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806C5A94  7C 03 07 74 */	extsb r3, r0
/* 806C5A98  4B 96 75 D5 */	bl dComIfGp_getReverb__Fi
/* 806C5A9C  7C 65 1B 78 */	mr r5, r3
/* 806C5AA0  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C5AA4  38 80 00 00 */	li r4, 0
/* 806C5AA8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C5AAC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 806C5AB0  7D 89 03 A6 */	mtctr r12
/* 806C5AB4  4E 80 04 21 */	bctrl 
lbl_806C5AB8:
/* 806C5AB8  7F E3 FB 78 */	mr r3, r31
/* 806C5ABC  4B FF F2 09 */	bl action2__FP10e_gb_class
/* 806C5AC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5AC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5AC8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 806C5ACC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 806C5AD0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 806C5AD4  4B C8 0E 15 */	bl PSMTXTrans
/* 806C5AD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5ADC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5AE0  A8 9F 09 50 */	lha r4, 0x950(r31)
/* 806C5AE4  4B 94 69 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C5AE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5AEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5AF0  A8 9F 09 52 */	lha r4, 0x952(r31)
/* 806C5AF4  4B 94 68 A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 806C5AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5B00  A8 1F 09 50 */	lha r0, 0x950(r31)
/* 806C5B04  7C 00 00 D0 */	neg r0, r0
/* 806C5B08  7C 04 07 34 */	extsh r4, r0
/* 806C5B0C  4B 94 69 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C5B10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5B14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5B18  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806C5B1C  4B 94 69 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C5B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5B28  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 806C5B2C  4B 94 68 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 806C5B30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5B34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5B38  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 806C5B3C  4B 94 69 91 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806C5B40  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C7938@ha */
/* 806C5B44  3B A3 79 38 */	addi r29, r3, l_HIO@l /* 0x806C7938@l */
/* 806C5B48  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806C5B4C  FC 40 08 90 */	fmr f2, f1
/* 806C5B50  FC 60 08 90 */	fmr f3, f1
/* 806C5B54  4B 94 72 E5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806C5B58  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C5B5C  83 83 00 04 */	lwz r28, 4(r3)
/* 806C5B60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5B64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5B68  38 9C 00 24 */	addi r4, r28, 0x24
/* 806C5B6C  4B C8 09 45 */	bl PSMTXCopy
/* 806C5B70  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806C5B74  7C 03 07 74 */	extsb r3, r0
/* 806C5B78  4B 96 74 F5 */	bl dComIfGp_getReverb__Fi
/* 806C5B7C  7C 65 07 74 */	extsb r5, r3
/* 806C5B80  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C5B84  38 80 00 00 */	li r4, 0
/* 806C5B88  38 C0 00 00 */	li r6, 0
/* 806C5B8C  4B 94 AA 3D */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 806C5B90  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C5B94  4B 94 AB 19 */	bl modelCalc__14mDoExt_McaMorfFv
/* 806C5B98  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806C5B9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C5BA0  38 63 00 90 */	addi r3, r3, 0x90
/* 806C5BA4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806C5BA8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806C5BAC  80 84 00 00 */	lwz r4, 0(r4)
/* 806C5BB0  4B C8 09 01 */	bl PSMTXCopy
/* 806C5BB4  88 1F 09 68 */	lbz r0, 0x968(r31)
/* 806C5BB8  7C 00 07 75 */	extsb. r0, r0
/* 806C5BBC  41 82 02 34 */	beq lbl_806C5DF0
/* 806C5BC0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 806C5BC4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C5BC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C5BCC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C5BD0  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 806C5BD4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C5BD8  38 61 00 38 */	addi r3, r1, 0x38
/* 806C5BDC  38 9F 05 38 */	addi r4, r31, 0x538
/* 806C5BE0  4B BA B3 0D */	bl MtxPosition__FP4cXyzP4cXyz
/* 806C5BE4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806C5BE8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806C5BEC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806C5BF0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806C5BF4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806C5BF8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806C5BFC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806C5C00  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806C5C04  EC 01 00 2A */	fadds f0, f1, f0
/* 806C5C08  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806C5C0C  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 806C5C10  2C 00 00 10 */	cmpwi r0, 0x10
/* 806C5C14  40 82 00 E4 */	bne lbl_806C5CF8
/* 806C5C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C5C1C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C5C20  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806C5C24  38 00 00 FF */	li r0, 0xff
/* 806C5C28  90 01 00 08 */	stw r0, 8(r1)
/* 806C5C2C  38 80 00 00 */	li r4, 0
/* 806C5C30  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C5C34  38 00 FF FF */	li r0, -1
/* 806C5C38  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C5C3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C5C40  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C5C44  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806C5C48  80 9F 0E 6C */	lwz r4, 0xe6c(r31)
/* 806C5C4C  38 A0 00 00 */	li r5, 0
/* 806C5C50  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082E7@ha */
/* 806C5C54  38 C6 82 E7 */	addi r6, r6, 0x82E7 /* 0x000082E7@l */
/* 806C5C58  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806C5C5C  39 00 00 00 */	li r8, 0
/* 806C5C60  39 20 00 00 */	li r9, 0
/* 806C5C64  39 40 00 00 */	li r10, 0
/* 806C5C68  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5C6C  4B 98 78 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C5C70  90 7F 0E 6C */	stw r3, 0xe6c(r31)
/* 806C5C74  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806C5C78  38 63 02 10 */	addi r3, r3, 0x210
/* 806C5C7C  80 9F 0E 6C */	lwz r4, 0xe6c(r31)
/* 806C5C80  4B 98 5C 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806C5C84  7C 77 1B 79 */	or. r23, r3, r3
/* 806C5C88  41 82 00 30 */	beq lbl_806C5CB8
/* 806C5C8C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806C5C90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C5C94  38 63 00 90 */	addi r3, r3, 0x90
/* 806C5C98  38 97 00 68 */	addi r4, r23, 0x68
/* 806C5C9C  38 B7 00 98 */	addi r5, r23, 0x98
/* 806C5CA0  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806C5CA4  4B BB AB 65 */	bl func_80280808
/* 806C5CA8  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806C5CAC  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806C5CB0  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806C5CB4  D0 37 00 B4 */	stfs f1, 0xb4(r23)
lbl_806C5CB8:
/* 806C5CB8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C5CBC  38 63 00 0C */	addi r3, r3, 0xc
/* 806C5CC0  C0 3E 01 B4 */	lfs f1, 0x1b4(r30)
/* 806C5CC4  4B C6 27 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806C5CC8  2C 03 00 00 */	cmpwi r3, 0
/* 806C5CCC  41 82 00 2C */	beq lbl_806C5CF8
/* 806C5CD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070151@ha */
/* 806C5CD4  38 03 01 51 */	addi r0, r3, 0x0151 /* 0x00070151@l */
/* 806C5CD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806C5CDC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C5CE0  38 81 00 28 */	addi r4, r1, 0x28
/* 806C5CE4  38 A0 FF FF */	li r5, -1
/* 806C5CE8  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C5CEC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C5CF0  7D 89 03 A6 */	mtctr r12
/* 806C5CF4  4E 80 04 21 */	bctrl 
lbl_806C5CF8:
/* 806C5CF8  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 806C5CFC  2C 00 00 0B */	cmpwi r0, 0xb
/* 806C5D00  40 82 00 A4 */	bne lbl_806C5DA4
/* 806C5D04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C5D08  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C5D0C  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806C5D10  38 00 00 FF */	li r0, 0xff
/* 806C5D14  90 01 00 08 */	stw r0, 8(r1)
/* 806C5D18  38 80 00 00 */	li r4, 0
/* 806C5D1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C5D20  38 00 FF FF */	li r0, -1
/* 806C5D24  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C5D28  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C5D2C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C5D30  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806C5D34  80 9F 0E 70 */	lwz r4, 0xe70(r31)
/* 806C5D38  38 A0 00 00 */	li r5, 0
/* 806C5D3C  3C C0 00 01 */	lis r6, 0x0001 /* 0x000082E6@ha */
/* 806C5D40  38 C6 82 E6 */	addi r6, r6, 0x82E6 /* 0x000082E6@l */
/* 806C5D44  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 806C5D48  39 00 00 00 */	li r8, 0
/* 806C5D4C  39 20 00 00 */	li r9, 0
/* 806C5D50  39 40 00 00 */	li r10, 0
/* 806C5D54  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5D58  4B 98 77 75 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C5D5C  90 7F 0E 70 */	stw r3, 0xe70(r31)
/* 806C5D60  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 806C5D64  38 63 02 10 */	addi r3, r3, 0x210
/* 806C5D68  80 9F 0E 70 */	lwz r4, 0xe70(r31)
/* 806C5D6C  4B 98 5B AD */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 806C5D70  7C 77 1B 79 */	or. r23, r3, r3
/* 806C5D74  41 82 00 30 */	beq lbl_806C5DA4
/* 806C5D78  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806C5D7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C5D80  38 63 00 90 */	addi r3, r3, 0x90
/* 806C5D84  38 97 00 68 */	addi r4, r23, 0x68
/* 806C5D88  38 B7 00 98 */	addi r5, r23, 0x98
/* 806C5D8C  38 D7 00 A4 */	addi r6, r23, 0xa4
/* 806C5D90  4B BB AA 79 */	bl func_80280808
/* 806C5D94  C0 37 00 9C */	lfs f1, 0x9c(r23)
/* 806C5D98  C0 17 00 98 */	lfs f0, 0x98(r23)
/* 806C5D9C  D0 17 00 B0 */	stfs f0, 0xb0(r23)
/* 806C5DA0  D0 37 00 B4 */	stfs f1, 0xb4(r23)
lbl_806C5DA4:
/* 806C5DA4  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 806C5DA8  2C 00 00 11 */	cmpwi r0, 0x11
/* 806C5DAC  40 82 00 44 */	bne lbl_806C5DF0
/* 806C5DB0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806C5DB4  38 63 00 0C */	addi r3, r3, 0xc
/* 806C5DB8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5DBC  4B C6 26 71 */	bl checkPass__12J3DFrameCtrlFf
/* 806C5DC0  2C 03 00 00 */	cmpwi r3, 0
/* 806C5DC4  41 82 00 2C */	beq lbl_806C5DF0
/* 806C5DC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070152@ha */
/* 806C5DCC  38 03 01 52 */	addi r0, r3, 0x0152 /* 0x00070152@l */
/* 806C5DD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C5DD4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C5DD8  38 81 00 24 */	addi r4, r1, 0x24
/* 806C5DDC  38 A0 FF FF */	li r5, -1
/* 806C5DE0  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 806C5DE4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C5DE8  7D 89 03 A6 */	mtctr r12
/* 806C5DEC  4E 80 04 21 */	bctrl 
lbl_806C5DF0:
/* 806C5DF0  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806C5DF4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C5DF8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C5DFC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C5E00  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C5E04  38 61 00 38 */	addi r3, r1, 0x38
/* 806C5E08  38 81 00 2C */	addi r4, r1, 0x2c
/* 806C5E0C  4B BA B0 E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806C5E10  A8 1F 06 CE */	lha r0, 0x6ce(r31)
/* 806C5E14  2C 00 00 00 */	cmpwi r0, 0
/* 806C5E18  41 82 00 14 */	beq lbl_806C5E2C
/* 806C5E1C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 806C5E20  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 806C5E24  EC 01 00 2A */	fadds f0, f1, f0
/* 806C5E28  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_806C5E2C:
/* 806C5E2C  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 806C5E30  38 81 00 2C */	addi r4, r1, 0x2c
/* 806C5E34  4B BA 98 15 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806C5E38  C0 3F 06 BC */	lfs f1, 0x6bc(r31)
/* 806C5E3C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 806C5E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C5E44  40 81 00 28 */	ble lbl_806C5E6C
/* 806C5E48  4B A9 9A 81 */	bl checkBoomerangChargeTime__9daPy_py_cFv
/* 806C5E4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C5E50  41 82 00 1C */	beq lbl_806C5E6C
/* 806C5E54  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 806C5E58  C0 3E 01 BC */	lfs f1, 0x1bc(r30)
/* 806C5E5C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806C5E60  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C5E64  4B BA 98 A5 */	bl SetR__8cM3dGSphFf
/* 806C5E68  48 00 00 18 */	b lbl_806C5E80
lbl_806C5E6C:
/* 806C5E6C  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 806C5E70  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806C5E74  C0 1D 00 08 */	lfs f0, 8(r29)
/* 806C5E78  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C5E7C  4B BA 98 8D */	bl SetR__8cM3dGSphFf
lbl_806C5E80:
/* 806C5E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C5E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C5E88  3B 83 23 3C */	addi r28, r3, 0x233c
/* 806C5E8C  7F 83 E3 78 */	mr r3, r28
/* 806C5E90  38 9F 09 AC */	addi r4, r31, 0x9ac
/* 806C5E94  4B B9 ED 15 */	bl Set__4cCcSFP8cCcD_Obj
/* 806C5E98  88 1F 0C 20 */	lbz r0, 0xc20(r31)
/* 806C5E9C  7C 00 07 75 */	extsb. r0, r0
/* 806C5EA0  41 82 00 1C */	beq lbl_806C5EBC
/* 806C5EA4  80 1F 09 AC */	lwz r0, 0x9ac(r31)
/* 806C5EA8  60 00 00 01 */	ori r0, r0, 1
/* 806C5EAC  90 1F 09 AC */	stw r0, 0x9ac(r31)
/* 806C5EB0  38 00 00 00 */	li r0, 0
/* 806C5EB4  98 1F 0C 20 */	stb r0, 0xc20(r31)
/* 806C5EB8  48 00 00 10 */	b lbl_806C5EC8
lbl_806C5EBC:
/* 806C5EBC  80 1F 09 AC */	lwz r0, 0x9ac(r31)
/* 806C5EC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806C5EC4  90 1F 09 AC */	stw r0, 0x9ac(r31)
lbl_806C5EC8:
/* 806C5EC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5ECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5ED0  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 806C5ED4  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 806C5ED8  C0 7F 04 B0 */	lfs f3, 0x4b0(r31)
/* 806C5EDC  4B C8 0A 0D */	bl PSMTXTrans
/* 806C5EE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5EE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5EE8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 806C5EEC  4B 94 65 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C5EF0  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806C7938@ha */
/* 806C5EF4  3A E3 79 38 */	addi r23, r3, l_HIO@l /* 0x806C7938@l */
/* 806C5EF8  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 806C5EFC  FC 40 08 90 */	fmr f2, f1
/* 806C5F00  FC 60 08 90 */	fmr f3, f1
/* 806C5F04  4B 94 6F 35 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806C5F08  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C5F0C  83 03 00 04 */	lwz r24, 4(r3)
/* 806C5F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C5F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C5F18  38 98 00 24 */	addi r4, r24, 0x24
/* 806C5F1C  4B C8 05 95 */	bl PSMTXCopy
/* 806C5F20  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C5F24  38 80 00 00 */	li r4, 0
/* 806C5F28  38 A0 00 00 */	li r5, 0
/* 806C5F2C  38 C0 00 00 */	li r6, 0
/* 806C5F30  4B 94 A6 99 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 806C5F34  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 806C5F38  4B 94 74 F1 */	bl play__14mDoExt_baseAnmFv
/* 806C5F3C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C5F40  4B 94 A7 6D */	bl modelCalc__14mDoExt_McaMorfFv
/* 806C5F44  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806C5F48  2C 00 00 19 */	cmpwi r0, 0x19
/* 806C5F4C  41 82 00 0C */	beq lbl_806C5F58
/* 806C5F50  2C 00 00 1A */	cmpwi r0, 0x1a
/* 806C5F54  40 82 00 5C */	bne lbl_806C5FB0
lbl_806C5F58:
/* 806C5F58  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 806C5F5C  38 63 00 0C */	addi r3, r3, 0xc
/* 806C5F60  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5F64  4B C6 24 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 806C5F68  2C 03 00 00 */	cmpwi r3, 0
/* 806C5F6C  41 82 00 44 */	beq lbl_806C5FB0
/* 806C5F70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070155@ha */
/* 806C5F74  38 03 01 55 */	addi r0, r3, 0x0155 /* 0x00070155@l */
/* 806C5F78  90 01 00 20 */	stw r0, 0x20(r1)
/* 806C5F7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 806C5F80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 806C5F84  80 63 00 00 */	lwz r3, 0(r3)
/* 806C5F88  38 81 00 20 */	addi r4, r1, 0x20
/* 806C5F8C  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 806C5F90  38 C0 00 00 */	li r6, 0
/* 806C5F94  38 E0 00 00 */	li r7, 0
/* 806C5F98  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C5F9C  FC 40 08 90 */	fmr f2, f1
/* 806C5FA0  C0 7E 00 30 */	lfs f3, 0x30(r30)
/* 806C5FA4  FC 80 18 90 */	fmr f4, f3
/* 806C5FA8  39 00 00 00 */	li r8, 0
/* 806C5FAC  4B BE 59 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806C5FB0:
/* 806C5FB0  88 1F 09 68 */	lbz r0, 0x968(r31)
/* 806C5FB4  7C 00 07 75 */	extsb. r0, r0
/* 806C5FB8  40 82 00 54 */	bne lbl_806C600C
/* 806C5FBC  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 806C5FC0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806C5FC4  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806C5FC8  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806C5FCC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 806C5FD0  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806C5FD4  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 806C5FD8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 806C5FDC  EC 01 00 2A */	fadds f0, f1, f0
/* 806C5FE0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806C5FE4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806C5FE8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 806C5FEC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 806C5FF0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 806C5FF4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806C5FF8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 806C5FFC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 806C6000  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806C6004  EC 01 00 2A */	fadds f0, f1, f0
/* 806C6008  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_806C600C:
/* 806C600C  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 806C6010  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806C6014  4B BA 91 C9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 806C6018  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 806C601C  C0 3E 01 C0 */	lfs f1, 0x1c0(r30)
/* 806C6020  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 806C6024  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C6028  4B BA 91 D9 */	bl SetR__8cM3dGCylFf
/* 806C602C  38 7F 0C 08 */	addi r3, r31, 0xc08
/* 806C6030  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806C6034  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 806C6038  EC 21 00 32 */	fmuls f1, f1, f0
/* 806C603C  4B BA 91 BD */	bl SetH__8cM3dGCylFf
/* 806C6040  7F 83 E3 78 */	mr r3, r28
/* 806C6044  38 9F 0A E4 */	addi r4, r31, 0xae4
/* 806C6048  4B B9 EB 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 806C604C  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806C6050  28 00 00 00 */	cmplwi r0, 0
/* 806C6054  41 82 01 B8 */	beq lbl_806C620C
/* 806C6058  88 1F 06 70 */	lbz r0, 0x670(r31)
/* 806C605C  7C 00 07 74 */	extsb r0, r0
/* 806C6060  2C 00 00 01 */	cmpwi r0, 1
/* 806C6064  40 82 00 50 */	bne lbl_806C60B4
/* 806C6068  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 806C606C  C0 1F 06 80 */	lfs f0, 0x680(r31)
/* 806C6070  EC 01 00 2A */	fadds f0, f1, f0
/* 806C6074  D0 1F 06 78 */	stfs f0, 0x678(r31)
/* 806C6078  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 806C607C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 806C6080  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C6084  D0 1F 06 80 */	stfs f0, 0x680(r31)
/* 806C6088  A8 7F 06 86 */	lha r3, 0x686(r31)
/* 806C608C  38 03 F4 00 */	addi r0, r3, -3072
/* 806C6090  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 806C6094  C0 3F 06 78 */	lfs f1, 0x678(r31)
/* 806C6098  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 806C609C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C60A0  40 80 00 58 */	bge lbl_806C60F8
/* 806C60A4  38 00 00 00 */	li r0, 0
/* 806C60A8  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 806C60AC  90 1F 06 6C */	stw r0, 0x66c(r31)
/* 806C60B0  48 00 00 48 */	b lbl_806C60F8
lbl_806C60B4:
/* 806C60B4  2C 00 00 02 */	cmpwi r0, 2
/* 806C60B8  40 82 00 40 */	bne lbl_806C60F8
/* 806C60BC  80 78 00 84 */	lwz r3, 0x84(r24)
/* 806C60C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806C60C4  38 63 00 F0 */	addi r3, r3, 0xf0
/* 806C60C8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806C60CC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806C60D0  80 84 00 00 */	lwz r4, 0(r4)
/* 806C60D4  4B C8 03 DD */	bl PSMTXCopy
/* 806C60D8  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806C60DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C60E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C60E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C60E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C60EC  38 61 00 38 */	addi r3, r1, 0x38
/* 806C60F0  38 9F 06 74 */	addi r4, r31, 0x674
/* 806C60F4  4B BA AD F9 */	bl MtxPosition__FP4cXyzP4cXyz
lbl_806C60F8:
/* 806C60F8  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806C60FC  28 00 00 00 */	cmplwi r0, 0
/* 806C6100  41 82 01 0C */	beq lbl_806C620C
/* 806C6104  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C6108  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C610C  C0 3F 06 74 */	lfs f1, 0x674(r31)
/* 806C6110  C0 5F 06 78 */	lfs f2, 0x678(r31)
/* 806C6114  C0 7F 06 7C */	lfs f3, 0x67c(r31)
/* 806C6118  4B C8 07 D1 */	bl PSMTXTrans
/* 806C611C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C6120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C6124  A8 9F 06 84 */	lha r4, 0x684(r31)
/* 806C6128  4B 94 63 0D */	bl mDoMtx_YrotM__FPA4_fs
/* 806C612C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C6130  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C6134  A8 9F 06 86 */	lha r4, 0x686(r31)
/* 806C6138  4B 94 62 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 806C613C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C6140  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C6144  38 80 40 00 */	li r4, 0x4000
/* 806C6148  4B 94 62 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 806C614C  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 806C6150  FC 40 08 90 */	fmr f2, f1
/* 806C6154  FC 60 08 90 */	fmr f3, f1
/* 806C6158  4B 94 6C E1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806C615C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C6160  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C6164  80 9F 06 6C */	lwz r4, 0x66c(r31)
/* 806C6168  38 84 00 24 */	addi r4, r4, 0x24
/* 806C616C  4B C8 03 45 */	bl PSMTXCopy
/* 806C6170  C0 1F 06 74 */	lfs f0, 0x674(r31)
/* 806C6174  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806C6178  C0 1F 06 78 */	lfs f0, 0x678(r31)
/* 806C617C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806C6180  C0 1F 06 7C */	lfs f0, 0x67c(r31)
/* 806C6184  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806C6188  3A C0 00 00 */	li r22, 0
/* 806C618C  3A E0 00 00 */	li r23, 0
/* 806C6190  3B 00 00 00 */	li r24, 0
/* 806C6194  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C6198  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C619C  3C 60 80 6C */	lis r3, key_eno@ha /* 0x806C77C4@ha */
/* 806C61A0  3B 23 77 C4 */	addi r25, r3, key_eno@l /* 0x806C77C4@l */
lbl_806C61A4:
/* 806C61A4  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 806C61A8  38 00 00 FF */	li r0, 0xff
/* 806C61AC  90 01 00 08 */	stw r0, 8(r1)
/* 806C61B0  38 80 00 00 */	li r4, 0
/* 806C61B4  90 81 00 0C */	stw r4, 0xc(r1)
/* 806C61B8  38 00 FF FF */	li r0, -1
/* 806C61BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806C61C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806C61C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806C61C8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806C61CC  3B 78 0E 64 */	addi r27, r24, 0xe64
/* 806C61D0  7C 9F D8 2E */	lwzx r4, r31, r27
/* 806C61D4  38 A0 00 00 */	li r5, 0
/* 806C61D8  7C D9 BA 2E */	lhzx r6, r25, r23
/* 806C61DC  38 E1 00 2C */	addi r7, r1, 0x2c
/* 806C61E0  39 00 00 00 */	li r8, 0
/* 806C61E4  39 20 00 00 */	li r9, 0
/* 806C61E8  39 40 00 00 */	li r10, 0
/* 806C61EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C61F0  4B 98 72 DD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806C61F4  7C 7F D9 2E */	stwx r3, r31, r27
/* 806C61F8  3A D6 00 01 */	addi r22, r22, 1
/* 806C61FC  2C 16 00 02 */	cmpwi r22, 2
/* 806C6200  3A F7 00 02 */	addi r23, r23, 2
/* 806C6204  3B 18 00 04 */	addi r24, r24, 4
/* 806C6208  41 80 FF 9C */	blt lbl_806C61A4
lbl_806C620C:
/* 806C620C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 806C6210  C0 1F 09 64 */	lfs f0, 0x964(r31)
/* 806C6214  EF E1 00 32 */	fmuls f31, f1, f0
/* 806C6218  38 60 00 00 */	li r3, 0
/* 806C621C  38 80 00 00 */	li r4, 0
/* 806C6220  38 00 00 03 */	li r0, 3
/* 806C6224  7C 09 03 A6 */	mtctr r0
lbl_806C6228:
/* 806C6228  38 04 09 2C */	addi r0, r4, 0x92c
/* 806C622C  7C DF 02 AE */	lhax r6, r31, r0
/* 806C6230  7C C5 07 35 */	extsh. r5, r6
/* 806C6234  40 82 00 44 */	bne lbl_806C6278
/* 806C6238  88 1F 09 38 */	lbz r0, 0x938(r31)
/* 806C623C  2C 00 00 02 */	cmpwi r0, 2
/* 806C6240  40 82 00 F8 */	bne lbl_806C6338
/* 806C6244  38 00 00 00 */	li r0, 0
/* 806C6248  98 1F 09 38 */	stb r0, 0x938(r31)
/* 806C624C  38 00 00 02 */	li r0, 2
/* 806C6250  7C 9F 22 14 */	add r4, r31, r4
/* 806C6254  B0 04 09 2C */	sth r0, 0x92c(r4)
/* 806C6258  38 00 00 11 */	li r0, 0x11
/* 806C625C  7C 7F 1A 14 */	add r3, r31, r3
/* 806C6260  98 03 09 32 */	stb r0, 0x932(r3)
/* 806C6264  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 806C6268  D0 1F 09 28 */	stfs f0, 0x928(r31)
/* 806C626C  38 00 0F A0 */	li r0, 0xfa0
/* 806C6270  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 806C6274  48 00 00 D0 */	b lbl_806C6344
lbl_806C6278:
/* 806C6278  2C 06 00 01 */	cmpwi r6, 1
/* 806C627C  40 82 00 58 */	bne lbl_806C62D4
/* 806C6280  7C FF 1A 14 */	add r7, r31, r3
/* 806C6284  88 A7 09 35 */	lbz r5, 0x935(r7)
/* 806C6288  7C A5 07 75 */	extsb. r5, r5
/* 806C628C  40 82 00 94 */	bne lbl_806C6320
/* 806C6290  38 C0 00 01 */	li r6, 1
/* 806C6294  98 C7 09 35 */	stb r6, 0x935(r7)
/* 806C6298  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C629C  7C A5 07 74 */	extsb r5, r5
/* 806C62A0  54 A5 08 3C */	slwi r5, r5, 1
/* 806C62A4  38 A5 09 00 */	addi r5, r5, 0x900
/* 806C62A8  7C DF 2B 2E */	sthx r6, r31, r5
/* 806C62AC  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C62B0  38 A5 00 01 */	addi r5, r5, 1
/* 806C62B4  98 A7 09 32 */	stb r5, 0x932(r7)
/* 806C62B8  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C62BC  7C A5 07 74 */	extsb r5, r5
/* 806C62C0  2C 05 00 12 */	cmpwi r5, 0x12
/* 806C62C4  41 80 00 5C */	blt lbl_806C6320
/* 806C62C8  38 A0 00 00 */	li r5, 0
/* 806C62CC  7C BF 03 2E */	sthx r5, r31, r0
/* 806C62D0  48 00 00 50 */	b lbl_806C6320
lbl_806C62D4:
/* 806C62D4  7C FF 1A 14 */	add r7, r31, r3
/* 806C62D8  88 A7 09 35 */	lbz r5, 0x935(r7)
/* 806C62DC  7C A5 07 75 */	extsb. r5, r5
/* 806C62E0  40 82 00 40 */	bne lbl_806C6320
/* 806C62E4  38 C0 00 01 */	li r6, 1
/* 806C62E8  98 C7 09 35 */	stb r6, 0x935(r7)
/* 806C62EC  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C62F0  7C A5 07 74 */	extsb r5, r5
/* 806C62F4  54 A5 08 3C */	slwi r5, r5, 1
/* 806C62F8  38 A5 09 00 */	addi r5, r5, 0x900
/* 806C62FC  7C DF 2B 2E */	sthx r6, r31, r5
/* 806C6300  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C6304  38 A5 FF FF */	addi r5, r5, -1
/* 806C6308  98 A7 09 32 */	stb r5, 0x932(r7)
/* 806C630C  88 A7 09 32 */	lbz r5, 0x932(r7)
/* 806C6310  7C A5 07 75 */	extsb. r5, r5
/* 806C6314  40 80 00 0C */	bge lbl_806C6320
/* 806C6318  38 A0 00 00 */	li r5, 0
/* 806C631C  7C BF 03 2E */	sthx r5, r31, r0
lbl_806C6320:
/* 806C6320  38 C3 09 35 */	addi r6, r3, 0x935
/* 806C6324  7C BF 30 AE */	lbzx r5, r31, r6
/* 806C6328  7C A0 07 75 */	extsb. r0, r5
/* 806C632C  41 82 00 0C */	beq lbl_806C6338
/* 806C6330  38 05 FF FF */	addi r0, r5, -1
/* 806C6334  7C 1F 31 AE */	stbx r0, r31, r6
lbl_806C6338:
/* 806C6338  38 63 00 01 */	addi r3, r3, 1
/* 806C633C  38 84 00 02 */	addi r4, r4, 2
/* 806C6340  42 00 FE E8 */	bdnz lbl_806C6228
lbl_806C6344:
/* 806C6344  3B 60 00 00 */	li r27, 0
/* 806C6348  3B 40 00 00 */	li r26, 0
/* 806C634C  3B 20 00 00 */	li r25, 0
/* 806C6350  3B 00 00 00 */	li r24, 0
/* 806C6354  3A E0 00 00 */	li r23, 0
lbl_806C6358:
/* 806C6358  7F 9F BA 14 */	add r28, r31, r23
/* 806C635C  80 1C 08 28 */	lwz r0, 0x828(r28)
/* 806C6360  28 00 00 00 */	cmplwi r0, 0
/* 806C6364  41 82 00 F4 */	beq lbl_806C6458
/* 806C6368  38 98 09 00 */	addi r4, r24, 0x900
/* 806C636C  7C 7F 22 AE */	lhax r3, r31, r4
/* 806C6370  2C 03 00 00 */	cmpwi r3, 0
/* 806C6374  41 82 00 4C */	beq lbl_806C63C0
/* 806C6378  A8 1F 09 24 */	lha r0, 0x924(r31)
/* 806C637C  7C 03 02 14 */	add r0, r3, r0
/* 806C6380  7C 1F 23 2E */	sthx r0, r31, r4
/* 806C6384  7C 1F 22 AE */	lhax r0, r31, r4
/* 806C6388  2C 00 00 00 */	cmpwi r0, 0
/* 806C638C  40 80 00 0C */	bge lbl_806C6398
/* 806C6390  38 00 00 00 */	li r0, 0
/* 806C6394  7C 1F 23 2E */	sthx r0, r31, r4
lbl_806C6398:
/* 806C6398  7C 1F 22 AE */	lhax r0, r31, r4
/* 806C639C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C63A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806C63A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806C63A8  7C 43 04 2E */	lfsx f2, r3, r0
/* 806C63AC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806C63B0  C0 1F 09 28 */	lfs f0, 0x928(r31)
/* 806C63B4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806C63B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806C63BC  D0 1C 08 B8 */	stfs f0, 0x8b8(r28)
lbl_806C63C0:
/* 806C63C0  7C 7F CA 14 */	add r3, r31, r25
/* 806C63C4  C0 23 06 E4 */	lfs f1, 0x6e4(r3)
/* 806C63C8  C0 43 06 E8 */	lfs f2, 0x6e8(r3)
/* 806C63CC  C0 63 06 EC */	lfs f3, 0x6ec(r3)
/* 806C63D0  38 60 00 00 */	li r3, 0
/* 806C63D4  4B BA AA 89 */	bl MtxTrans__FfffUc
/* 806C63D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806C63DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806C63E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806C63E4  7E DF D2 14 */	add r22, r31, r26
/* 806C63E8  A8 96 07 BC */	lha r4, 0x7bc(r22)
/* 806C63EC  4B 94 5F B1 */	bl mDoMtx_XrotM__FPA4_fs
/* 806C63F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806C63F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806C63F8  80 63 00 00 */	lwz r3, 0(r3)
/* 806C63FC  A8 96 07 BE */	lha r4, 0x7be(r22)
/* 806C6400  3C 84 00 01 */	addis r4, r4, 1
/* 806C6404  38 04 80 00 */	addi r0, r4, -32768
/* 806C6408  7C 04 07 34 */	extsh r4, r0
/* 806C640C  4B 94 60 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 806C6410  C0 7D 00 08 */	lfs f3, 8(r29)
/* 806C6414  C0 1C 08 B8 */	lfs f0, 0x8b8(r28)
/* 806C6418  EC 23 00 32 */	fmuls f1, f3, f0
/* 806C641C  FC 40 08 90 */	fmr f2, f1
/* 806C6420  EC 63 F8 2A */	fadds f3, f3, f31
/* 806C6424  38 60 00 01 */	li r3, 1
/* 806C6428  4B BA AA 7D */	bl MtxScale__FfffUc
/* 806C642C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C6430  FC 40 08 90 */	fmr f2, f1
/* 806C6434  FC 60 08 90 */	fmr f3, f1
/* 806C6438  38 60 00 01 */	li r3, 1
/* 806C643C  4B BA AA 21 */	bl MtxTrans__FfffUc
/* 806C6440  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806C6444  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806C6448  80 63 00 00 */	lwz r3, 0(r3)
/* 806C644C  80 9C 08 28 */	lwz r4, 0x828(r28)
/* 806C6450  38 84 00 24 */	addi r4, r4, 0x24
/* 806C6454  4B C8 00 5D */	bl PSMTXCopy
lbl_806C6458:
/* 806C6458  3B 7B 00 01 */	addi r27, r27, 1
/* 806C645C  2C 1B 00 12 */	cmpwi r27, 0x12
/* 806C6460  3B 5A 00 06 */	addi r26, r26, 6
/* 806C6464  3B 39 00 0C */	addi r25, r25, 0xc
/* 806C6468  3B 18 00 02 */	addi r24, r24, 2
/* 806C646C  3A F7 00 04 */	addi r23, r23, 4
/* 806C6470  41 80 FE E8 */	blt lbl_806C6358
/* 806C6474  7F E3 FB 78 */	mr r3, r31
/* 806C6478  4B FF EA 95 */	bl demo_camera__FP10e_gb_class
/* 806C647C  38 60 00 01 */	li r3, 1
/* 806C6480  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806C6484  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806C6488  39 61 00 70 */	addi r11, r1, 0x70
/* 806C648C  4B C9 BD 81 */	bl _restgpr_22
/* 806C6490  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806C6494  7C 08 03 A6 */	mtlr r0
/* 806C6498  38 21 00 80 */	addi r1, r1, 0x80
/* 806C649C  4E 80 00 20 */	blr 
