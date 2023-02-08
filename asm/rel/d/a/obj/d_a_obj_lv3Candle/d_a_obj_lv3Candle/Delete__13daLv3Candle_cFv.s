lbl_80C583A0:
/* 80C583A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C583A4  7C 08 02 A6 */	mflr r0
/* 80C583A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C583AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C583B0  7C 7F 1B 78 */	mr r31, r3
/* 80C583B4  38 7F 07 34 */	addi r3, r31, 0x734
/* 80C583B8  4B 66 5C 41 */	bl deleteObject__14Z2SoundObjBaseFv
/* 80C583BC  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C583C0  88 1F 05 74 */	lbz r0, 0x574(r31)
/* 80C583C4  54 00 10 3A */	slwi r0, r0, 2
/* 80C583C8  3C 80 80 C6 */	lis r4, l_resNameIdx@ha /* 0x80C58630@ha */
/* 80C583CC  38 84 86 30 */	addi r4, r4, l_resNameIdx@l /* 0x80C58630@l */
/* 80C583D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C583D4  4B 3D 4C 35 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C583D8  88 1F 07 08 */	lbz r0, 0x708(r31)
/* 80C583DC  28 00 00 00 */	cmplwi r0, 0
/* 80C583E0  41 82 00 0C */	beq lbl_80C583EC
/* 80C583E4  38 7F 07 10 */	addi r3, r31, 0x710
/* 80C583E8  4B 54 F5 45 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C583EC:
/* 80C583EC  38 60 00 01 */	li r3, 1
/* 80C583F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C583F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C583F8  7C 08 03 A6 */	mtlr r0
/* 80C583FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58400  4E 80 00 20 */	blr 
