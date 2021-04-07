lbl_806E44F0:
/* 806E44F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E44F4  7C 08 02 A6 */	mflr r0
/* 806E44F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E44FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E4500  7C 7F 1B 78 */	mr r31, r3
/* 806E4504  38 7F 06 24 */	addi r3, r31, 0x624
/* 806E4508  3C 80 80 6E */	lis r4, d_a_e_hm__stringBase0@ha /* 0x806E5A74@ha */
/* 806E450C  38 84 5A 74 */	addi r4, r4, d_a_e_hm__stringBase0@l /* 0x806E5A74@l */
/* 806E4510  4B 94 8A F9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806E4514  88 1F 0A 84 */	lbz r0, 0xa84(r31)
/* 806E4518  28 00 00 00 */	cmplwi r0, 0
/* 806E451C  41 82 00 10 */	beq lbl_806E452C
/* 806E4520  38 00 00 00 */	li r0, 0
/* 806E4524  3C 60 80 6E */	lis r3, struct_806E5C14+0x1@ha /* 0x806E5C15@ha */
/* 806E4528  98 03 5C 15 */	stb r0, struct_806E5C14+0x1@l(r3)  /* 0x806E5C15@l */
lbl_806E452C:
/* 806E452C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806E4530  28 00 00 00 */	cmplwi r0, 0
/* 806E4534  41 82 00 0C */	beq lbl_806E4540
/* 806E4538  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E453C  4B 92 CD D5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806E4540:
/* 806E4540  38 60 00 01 */	li r3, 1
/* 806E4544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E4548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E454C  7C 08 03 A6 */	mtlr r0
/* 806E4550  38 21 00 10 */	addi r1, r1, 0x10
/* 806E4554  4E 80 00 20 */	blr 
