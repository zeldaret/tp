lbl_806AC5BC:
/* 806AC5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AC5C0  7C 08 02 A6 */	mflr r0
/* 806AC5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AC5C8  39 61 00 20 */	addi r11, r1, 0x20
/* 806AC5CC  4B CB 5C 0D */	bl _savegpr_28
/* 806AC5D0  7C 7E 1B 78 */	mr r30, r3
/* 806AC5D4  3C 60 80 6B */	lis r3, lit_3764@ha /* 0x806AD538@ha */
/* 806AC5D8  3B E3 D5 38 */	addi r31, r3, lit_3764@l /* 0x806AD538@l */
/* 806AC5DC  88 1E 06 A2 */	lbz r0, 0x6a2(r30)
/* 806AC5E0  28 00 00 00 */	cmplwi r0, 0
/* 806AC5E4  40 82 00 30 */	bne lbl_806AC614
/* 806AC5E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC5EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC5F0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806AC5F4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806AC5F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806AC5FC  EC 42 00 2A */	fadds f2, f2, f0
/* 806AC600  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 806AC604  4B C9 A2 E5 */	bl PSMTXTrans
/* 806AC608  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806AC60C  4B 96 09 39 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806AC610  48 00 00 24 */	b lbl_806AC634
lbl_806AC614:
/* 806AC614  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC618  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC61C  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 806AC620  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806AC624  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806AC628  EC 42 00 2A */	fadds f2, f2, f0
/* 806AC62C  C0 7E 06 78 */	lfs f3, 0x678(r30)
/* 806AC630  4B C9 A2 B9 */	bl PSMTXTrans
lbl_806AC634:
/* 806AC634  3C 60 80 6B */	lis r3, l_HIO@ha /* 0x806AD808@ha */
/* 806AC638  3B A3 D8 08 */	addi r29, r3, l_HIO@l /* 0x806AD808@l */
/* 806AC63C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806AC640  FC 40 08 90 */	fmr f2, f1
/* 806AC644  FC 60 08 90 */	fmr f3, f1
/* 806AC648  4B 96 07 F1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806AC64C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AC650  83 83 00 04 */	lwz r28, 4(r3)
/* 806AC654  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC658  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC65C  38 9C 00 24 */	addi r4, r28, 0x24
/* 806AC660  4B C9 9E 51 */	bl PSMTXCopy
/* 806AC664  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806AC668  4B 96 4B 85 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806AC66C  88 1E 06 A2 */	lbz r0, 0x6a2(r30)
/* 806AC670  28 00 00 00 */	cmplwi r0, 0
/* 806AC674  40 82 00 50 */	bne lbl_806AC6C4
/* 806AC678  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 806AC67C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AC680  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 806AC684  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC688  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC68C  4B C9 9E 25 */	bl PSMTXCopy
/* 806AC690  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC694  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC698  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 806AC69C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 806AC6A0  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 806AC6A4  4B C9 A2 45 */	bl PSMTXTrans
/* 806AC6A8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806AC6AC  4B 96 08 99 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806AC6B0  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AC6B4  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 806AC6B8  FC 60 08 90 */	fmr f3, f1
/* 806AC6BC  4B 96 06 E1 */	bl transM__14mDoMtx_stack_cFfff
/* 806AC6C0  48 00 00 4C */	b lbl_806AC70C
lbl_806AC6C4:
/* 806AC6C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC6C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC6CC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 806AC6D0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 806AC6D4  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 806AC6D8  EC 42 00 2A */	fadds f2, f2, f0
/* 806AC6DC  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 806AC6E0  4B C9 A2 09 */	bl PSMTXTrans
/* 806AC6E4  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AC6E8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 806AC6EC  FC 60 08 90 */	fmr f3, f1
/* 806AC6F0  4B 96 06 AD */	bl transM__14mDoMtx_stack_cFfff
/* 806AC6F4  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806AC6F8  4B 96 08 4D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806AC6FC  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 806AC700  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 806AC704  FC 60 08 90 */	fmr f3, f1
/* 806AC708  4B 96 06 95 */	bl transM__14mDoMtx_stack_cFfff
lbl_806AC70C:
/* 806AC70C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 806AC710  FC 40 08 90 */	fmr f2, f1
/* 806AC714  FC 60 08 90 */	fmr f3, f1
/* 806AC718  4B 96 07 21 */	bl scaleM__14mDoMtx_stack_cFfff
/* 806AC71C  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806AC720  80 83 00 04 */	lwz r4, 4(r3)
/* 806AC724  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AC728  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AC72C  38 84 00 24 */	addi r4, r4, 0x24
/* 806AC730  4B C9 9D 81 */	bl PSMTXCopy
/* 806AC734  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806AC738  4B 96 4A B5 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 806AC73C  39 61 00 20 */	addi r11, r1, 0x20
/* 806AC740  4B CB 5A E5 */	bl _restgpr_28
/* 806AC744  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AC748  7C 08 03 A6 */	mtlr r0
/* 806AC74C  38 21 00 20 */	addi r1, r1, 0x20
/* 806AC750  4E 80 00 20 */	blr 
