lbl_8076CF1C:
/* 8076CF1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8076CF20  7C 08 02 A6 */	mflr r0
/* 8076CF24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076CF28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8076CF2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8076CF30  7C 7E 1B 78 */	mr r30, r3
/* 8076CF34  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8076CF38  3B E3 9D FC */	addi r31, r3, lit_4018@l
/* 8076CF3C  80 1E 0A 5C */	lwz r0, 0xa5c(r30)
/* 8076CF40  90 01 00 08 */	stw r0, 8(r1)
/* 8076CF44  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8076CF48  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8076CF4C  38 81 00 08 */	addi r4, r1, 8
/* 8076CF50  4B 8A C8 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8076CF54  28 03 00 00 */	cmplwi r3, 0
/* 8076CF58  41 82 00 1C */	beq lbl_8076CF74
/* 8076CF5C  38 00 00 00 */	li r0, 0
/* 8076CF60  98 03 06 B0 */	stb r0, 0x6b0(r3)
/* 8076CF64  98 1E 0A 8E */	stb r0, 0xa8e(r30)
/* 8076CF68  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8076CF6C  38 00 FF FF */	li r0, -1
/* 8076CF70  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_8076CF74:
/* 8076CF74  38 00 00 00 */	li r0, 0
/* 8076CF78  98 1E 0A 8C */	stb r0, 0xa8c(r30)
/* 8076CF7C  80 1E 06 94 */	lwz r0, 0x694(r30)
/* 8076CF80  28 00 00 00 */	cmplwi r0, 0
/* 8076CF84  41 82 00 50 */	beq lbl_8076CFD4
/* 8076CF88  80 7E 06 74 */	lwz r3, 0x674(r30)
/* 8076CF8C  38 80 00 0B */	li r4, 0xb
/* 8076CF90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8076CF94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8076CF98  3C A5 00 02 */	addis r5, r5, 2
/* 8076CF9C  38 C0 00 80 */	li r6, 0x80
/* 8076CFA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076CFA4  4B 8C F3 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076CFA8  7C 64 1B 78 */	mr r4, r3
/* 8076CFAC  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 8076CFB0  38 A0 00 00 */	li r5, 0
/* 8076CFB4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076CFB8  FC 40 08 90 */	fmr f2, f1
/* 8076CFBC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076CFC0  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076CFC4  4B 8A 3E AC */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076CFC8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8076CFCC  80 7E 06 94 */	lwz r3, 0x694(r30)
/* 8076CFD0  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8076CFD4:
/* 8076CFD4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8076CFD8  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8076CFDC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8076CFE0  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8076CFE4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8076CFE8  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8076CFEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8076CFF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8076CFF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076CFF8  7C 08 03 A6 */	mtlr r0
/* 8076CFFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8076D000  4E 80 00 20 */	blr 
