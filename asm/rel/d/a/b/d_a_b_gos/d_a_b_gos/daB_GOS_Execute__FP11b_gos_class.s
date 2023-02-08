lbl_80604B7C:
/* 80604B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80604B80  7C 08 02 A6 */	mflr r0
/* 80604B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80604B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80604B8C  7C 7F 1B 78 */	mr r31, r3
/* 80604B90  A8 63 06 6C */	lha r3, 0x66c(r3)
/* 80604B94  38 03 00 01 */	addi r0, r3, 1
/* 80604B98  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 80604B9C  80 1F 04 A4 */	lwz r0, 0x4a4(r31)
/* 80604BA0  90 01 00 08 */	stw r0, 8(r1)
/* 80604BA4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80604BA8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80604BAC  38 81 00 08 */	addi r4, r1, 8
/* 80604BB0  4B A1 4C 49 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80604BB4  3C 80 80 60 */	lis r4, boss@ha /* 0x80605608@ha */
/* 80604BB8  90 64 56 08 */	stw r3, boss@l(r4)  /* 0x80605608@l */
/* 80604BBC  38 60 00 00 */	li r3, 0
/* 80604BC0  38 00 00 04 */	li r0, 4
/* 80604BC4  7C 09 03 A6 */	mtctr r0
lbl_80604BC8:
/* 80604BC8  38 A3 06 8C */	addi r5, r3, 0x68c
/* 80604BCC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80604BD0  2C 04 00 00 */	cmpwi r4, 0
/* 80604BD4  41 82 00 0C */	beq lbl_80604BE0
/* 80604BD8  38 04 FF FF */	addi r0, r4, -1
/* 80604BDC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80604BE0:
/* 80604BE0  38 63 00 02 */	addi r3, r3, 2
/* 80604BE4  42 00 FF E4 */	bdnz lbl_80604BC8
/* 80604BE8  A8 7F 06 94 */	lha r3, 0x694(r31)
/* 80604BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80604BF0  41 82 00 0C */	beq lbl_80604BFC
/* 80604BF4  38 03 FF FF */	addi r0, r3, -1
/* 80604BF8  B0 1F 06 94 */	sth r0, 0x694(r31)
lbl_80604BFC:
/* 80604BFC  7F E3 FB 78 */	mr r3, r31
/* 80604C00  4B FF FC E1 */	bl action__FP11b_gos_class
/* 80604C04  7F E3 FB 78 */	mr r3, r31
/* 80604C08  4B FF F8 15 */	bl damage_check__FP11b_gos_class
/* 80604C0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80604C10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80604C14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80604C18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80604C1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80604C20  4B D4 1C C9 */	bl PSMTXTrans
/* 80604C24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80604C28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80604C2C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80604C30  4B A0 78 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 80604C34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80604C38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80604C3C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80604C40  4B A0 77 5D */	bl mDoMtx_XrotM__FPA4_fs
/* 80604C44  3C 60 80 60 */	lis r3, l_HIO@ha /* 0x8060561C@ha */
/* 80604C48  38 63 56 1C */	addi r3, r3, l_HIO@l /* 0x8060561C@l */
/* 80604C4C  C0 23 00 08 */	lfs f1, 8(r3)
/* 80604C50  FC 40 08 90 */	fmr f2, f1
/* 80604C54  FC 60 08 90 */	fmr f3, f1
/* 80604C58  4B A0 81 E1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80604C5C  3C 60 80 60 */	lis r3, lit_3676@ha /* 0x806053D8@ha */
/* 80604C60  C0 23 53 D8 */	lfs f1, lit_3676@l(r3)  /* 0x806053D8@l */
/* 80604C64  C0 5F 06 98 */	lfs f2, 0x698(r31)
/* 80604C68  C0 7F 06 9C */	lfs f3, 0x69c(r31)
/* 80604C6C  4B A0 81 31 */	bl transM__14mDoMtx_stack_cFfff
/* 80604C70  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80604C74  80 83 00 04 */	lwz r4, 4(r3)
/* 80604C78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80604C7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80604C80  38 84 00 24 */	addi r4, r4, 0x24
/* 80604C84  4B D4 18 2D */	bl PSMTXCopy
/* 80604C88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80604C8C  7C 03 07 74 */	extsb r3, r0
/* 80604C90  4B A2 83 DD */	bl dComIfGp_getReverb__Fi
/* 80604C94  7C 65 1B 78 */	mr r5, r3
/* 80604C98  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80604C9C  38 80 00 00 */	li r4, 0
/* 80604CA0  4B A0 C4 11 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80604CA4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80604CA8  4B A0 C5 45 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80604CAC  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80604CB0  3C 80 80 60 */	lis r4, lit_3711@ha /* 0x806053E8@ha */
/* 80604CB4  C0 24 53 E8 */	lfs f1, lit_3711@l(r4)  /* 0x806053E8@l */
/* 80604CB8  4B C6 A5 49 */	bl SetR__8cM3dGCylFf
/* 80604CBC  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80604CC0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80604CC4  4B C6 A5 19 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80604CC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80604CCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80604CD0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80604CD4  38 9F 0B 68 */	addi r4, r31, 0xb68
/* 80604CD8  4B C5 FE D1 */	bl Set__4cCcSFP8cCcD_Obj
/* 80604CDC  38 60 00 01 */	li r3, 1
/* 80604CE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80604CE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80604CE8  7C 08 03 A6 */	mtlr r0
/* 80604CEC  38 21 00 20 */	addi r1, r1, 0x20
/* 80604CF0  4E 80 00 20 */	blr 
