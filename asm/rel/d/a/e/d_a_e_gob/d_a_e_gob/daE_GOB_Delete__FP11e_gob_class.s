lbl_806DE4C0:
/* 806DE4C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DE4C4  7C 08 02 A6 */	mflr r0
/* 806DE4C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DE4CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DE4D0  7C 7F 1B 78 */	mr r31, r3
/* 806DE4D4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806DE4D8  3C 80 80 6E */	lis r4, d_a_e_gob__stringBase0@ha /* 0x806DF054@ha */
/* 806DE4DC  38 84 F0 54 */	addi r4, r4, d_a_e_gob__stringBase0@l /* 0x806DF054@l */
/* 806DE4E0  4B 94 EB 29 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806DE4E4  88 1F 0D E0 */	lbz r0, 0xde0(r31)
/* 806DE4E8  28 00 00 00 */	cmplwi r0, 0
/* 806DE4EC  41 82 00 10 */	beq lbl_806DE4FC
/* 806DE4F0  38 00 00 00 */	li r0, 0
/* 806DE4F4  3C 60 80 6E */	lis r3, struct_806DF2C4+0x1@ha /* 0x806DF2C5@ha */
/* 806DE4F8  98 03 F2 C5 */	stb r0, struct_806DF2C4+0x1@l(r3)  /* 0x806DF2C5@l */
lbl_806DE4FC:
/* 806DE4FC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806DE500  28 00 00 00 */	cmplwi r0, 0
/* 806DE504  41 82 00 0C */	beq lbl_806DE510
/* 806DE508  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806DE50C  4B 93 2E 05 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806DE510:
/* 806DE510  38 60 00 01 */	li r3, 1
/* 806DE514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DE518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DE51C  7C 08 03 A6 */	mtlr r0
/* 806DE520  38 21 00 10 */	addi r1, r1, 0x10
/* 806DE524  4E 80 00 20 */	blr 
