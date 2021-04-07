lbl_80459E04:
/* 80459E04  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80459E08  7C 08 02 A6 */	mflr r0
/* 80459E0C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80459E10  39 61 00 70 */	addi r11, r1, 0x70
/* 80459E14  4B F0 83 C1 */	bl _savegpr_27
/* 80459E18  7C 7F 1B 78 */	mr r31, r3
/* 80459E1C  54 80 18 38 */	slwi r0, r4, 3
/* 80459E20  7C 9F 02 14 */	add r4, r31, r0
/* 80459E24  80 84 05 A8 */	lwz r4, 0x5a8(r4)
/* 80459E28  28 04 00 00 */	cmplwi r4, 0
/* 80459E2C  41 82 00 B0 */	beq lbl_80459EDC
/* 80459E30  83 A4 00 04 */	lwz r29, 4(r4)
/* 80459E34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80459E38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80459E3C  4B EE C6 49 */	bl PSMTXIdentity
/* 80459E40  3B 60 00 00 */	li r27, 0
/* 80459E44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80459E48  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80459E4C  48 00 00 34 */	b lbl_80459E80
lbl_80459E50:
/* 80459E50  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80459E54  57 60 13 BA */	rlwinm r0, r27, 2, 0xe, 0x1d
/* 80459E58  7C 63 00 2E */	lwzx r3, r3, r0
/* 80459E5C  7C 7C 1B 78 */	mr r28, r3
/* 80459E60  38 63 00 18 */	addi r3, r3, 0x18
/* 80459E64  38 81 00 20 */	addi r4, r1, 0x20
/* 80459E68  4B EB 7A FD */	bl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
/* 80459E6C  7F C3 F3 78 */	mr r3, r30
/* 80459E70  38 81 00 20 */	addi r4, r1, 0x20
/* 80459E74  7F C5 F3 78 */	mr r5, r30
/* 80459E78  4B EE C6 6D */	bl PSMTXConcat
/* 80459E7C  3B 7B 00 01 */	addi r27, r27, 1
lbl_80459E80:
/* 80459E80  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80459E84  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80459E88  7C 03 00 40 */	cmplw r3, r0
/* 80459E8C  41 80 FF C4 */	blt lbl_80459E50
/* 80459E90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80459E94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80459E98  38 9C 00 3C */	addi r4, r28, 0x3c
/* 80459E9C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80459EA0  4B EE CE CD */	bl PSMTXMultVec
/* 80459EA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80459EA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80459EAC  38 9C 00 48 */	addi r4, r28, 0x48
/* 80459EB0  38 A1 00 08 */	addi r5, r1, 8
/* 80459EB4  4B EE CE B9 */	bl PSMTXMultVec
/* 80459EB8  7F E3 FB 78 */	mr r3, r31
/* 80459EBC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80459EC0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80459EC4  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80459EC8  C0 81 00 08 */	lfs f4, 8(r1)
/* 80459ECC  C0 A1 00 0C */	lfs f5, 0xc(r1)
/* 80459ED0  C0 C1 00 10 */	lfs f6, 0x10(r1)
/* 80459ED4  4B BC 06 75 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80459ED8  48 00 00 24 */	b lbl_80459EFC
lbl_80459EDC:
/* 80459EDC  3C 80 80 46 */	lis r4, lit_3873@ha /* 0x8045CA00@ha */
/* 80459EE0  C0 24 CA 00 */	lfs f1, lit_3873@l(r4)  /* 0x8045CA00@l */
/* 80459EE4  FC 40 08 90 */	fmr f2, f1
/* 80459EE8  FC 60 08 90 */	fmr f3, f1
/* 80459EEC  FC 80 08 90 */	fmr f4, f1
/* 80459EF0  FC A0 08 90 */	fmr f5, f1
/* 80459EF4  FC C0 08 90 */	fmr f6, f1
/* 80459EF8  4B BC 06 51 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_80459EFC:
/* 80459EFC  39 61 00 70 */	addi r11, r1, 0x70
/* 80459F00  4B F0 83 21 */	bl _restgpr_27
/* 80459F04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80459F08  7C 08 03 A6 */	mtlr r0
/* 80459F0C  38 21 00 70 */	addi r1, r1, 0x70
/* 80459F10  4E 80 00 20 */	blr 
