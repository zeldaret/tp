lbl_8058EF6C:
/* 8058EF6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058EF70  7C 08 02 A6 */	mflr r0
/* 8058EF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058EF78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058EF7C  7C 7F 1B 78 */	mr r31, r3
/* 8058EF80  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8058EF84  4B D2 F0 75 */	bl deleteObject__14Z2SoundObjBaseFv
/* 8058EF88  38 7F 05 68 */	addi r3, r31, 0x568
/* 8058EF8C  88 1F 06 FD */	lbz r0, 0x6fd(r31)
/* 8058EF90  54 00 10 3A */	slwi r0, r0, 2
/* 8058EF94  3C 80 80 59 */	lis r4, l_resNameIdx@ha /* 0x8058F20C@ha */
/* 8058EF98  38 84 F2 0C */	addi r4, r4, l_resNameIdx@l /* 0x8058F20C@l */
/* 8058EF9C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8058EFA0  4B A9 E0 69 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8058EFA4  88 1F 07 0C */	lbz r0, 0x70c(r31)
/* 8058EFA8  28 00 00 00 */	cmplwi r0, 0
/* 8058EFAC  41 82 00 0C */	beq lbl_8058EFB8
/* 8058EFB0  38 7F 07 14 */	addi r3, r31, 0x714
/* 8058EFB4  4B C1 89 79 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_8058EFB8:
/* 8058EFB8  38 60 00 01 */	li r3, 1
/* 8058EFBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058EFC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058EFC4  7C 08 03 A6 */	mtlr r0
/* 8058EFC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8058EFCC  4E 80 00 20 */	blr 
