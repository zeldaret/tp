lbl_80B566E8:
/* 80B566E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B566EC  7C 08 02 A6 */	mflr r0
/* 80B566F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B566F4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B566F8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B566FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B56700  4B 80 BA DD */	bl _savegpr_29
/* 80B56704  7C 7D 1B 78 */	mr r29, r3
/* 80B56708  FF E0 08 90 */	fmr f31, f1
/* 80B5670C  3C A0 80 B6 */	lis r5, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B56710  3B E5 D7 94 */	addi r31, r5, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B56714  38 C0 00 00 */	li r6, 0
/* 80B56718  80 03 0E 44 */	lwz r0, 0xe44(r3)
/* 80B5671C  28 00 00 00 */	cmplwi r0, 0
/* 80B56720  41 82 00 70 */	beq lbl_80B56790
/* 80B56724  1F C4 00 0C */	mulli r30, r4, 0xc
/* 80B56728  3C 80 80 B6 */	lis r4, leafAnmData@ha /* 0x80B5EA18@ha */
/* 80B5672C  38 84 EA 18 */	addi r4, r4, leafAnmData@l /* 0x80B5EA18@l */
/* 80B56730  7C A4 F0 2E */	lwzx r5, r4, r30
/* 80B56734  2C 05 00 00 */	cmpwi r5, 0
/* 80B56738  40 81 00 24 */	ble lbl_80B5675C
/* 80B5673C  7C 84 F2 14 */	add r4, r4, r30
/* 80B56740  80 04 00 08 */	lwz r0, 8(r4)
/* 80B56744  54 00 10 3A */	slwi r0, r0, 2
/* 80B56748  3C 80 80 B6 */	lis r4, l_resNameList@ha /* 0x80B5DB88@ha */
/* 80B5674C  38 84 DB 88 */	addi r4, r4, l_resNameList@l /* 0x80B5DB88@l */
/* 80B56750  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B56754  4B 5F 19 41 */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 80B56758  7C 66 1B 78 */	mr r6, r3
lbl_80B5675C:
/* 80B5675C  28 06 00 00 */	cmplwi r6, 0
/* 80B56760  41 82 00 30 */	beq lbl_80B56790
/* 80B56764  80 7D 0E 44 */	lwz r3, 0xe44(r29)
/* 80B56768  7C C4 33 78 */	mr r4, r6
/* 80B5676C  3C A0 80 B6 */	lis r5, leafAnmData@ha /* 0x80B5EA18@ha */
/* 80B56770  38 05 EA 18 */	addi r0, r5, leafAnmData@l /* 0x80B5EA18@l */
/* 80B56774  7C A0 F2 14 */	add r5, r0, r30
/* 80B56778  80 A5 00 04 */	lwz r5, 4(r5)
/* 80B5677C  FC 20 F8 90 */	fmr f1, f31
/* 80B56780  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 80B56784  C0 7F 01 04 */	lfs f3, 0x104(r31)
/* 80B56788  C0 9F 01 3C */	lfs f4, 0x13c(r31)
/* 80B5678C  4B 4B A6 E5 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80B56790:
/* 80B56790  38 60 00 01 */	li r3, 1
/* 80B56794  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B56798  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B5679C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B567A0  4B 80 BA 89 */	bl _restgpr_29
/* 80B567A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B567A8  7C 08 03 A6 */	mtlr r0
/* 80B567AC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B567B0  4E 80 00 20 */	blr 
