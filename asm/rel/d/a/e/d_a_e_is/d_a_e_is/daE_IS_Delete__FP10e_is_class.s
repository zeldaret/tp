lbl_806F720C:
/* 806F720C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F7210  7C 08 02 A6 */	mflr r0
/* 806F7214  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F7218  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F721C  7C 7F 1B 78 */	mr r31, r3
/* 806F7220  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806F7224  3C 80 80 6F */	lis r4, d_a_e_is__stringBase0@ha /* 0x806F7C14@ha */
/* 806F7228  38 84 7C 14 */	addi r4, r4, d_a_e_is__stringBase0@l /* 0x806F7C14@l */
/* 806F722C  4B 93 5D DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806F7230  88 1F 0C F4 */	lbz r0, 0xcf4(r31)
/* 806F7234  28 00 00 00 */	cmplwi r0, 0
/* 806F7238  41 82 00 10 */	beq lbl_806F7248
/* 806F723C  38 00 00 00 */	li r0, 0
/* 806F7240  3C 60 80 6F */	lis r3, data_806F7DD0@ha /* 0x806F7DD0@ha */
/* 806F7244  98 03 7D D0 */	stb r0, data_806F7DD0@l(r3)  /* 0x806F7DD0@l */
lbl_806F7248:
/* 806F7248  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806F724C  28 00 00 00 */	cmplwi r0, 0
/* 806F7250  41 82 00 0C */	beq lbl_806F725C
/* 806F7254  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806F7258  4B 91 A0 B9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806F725C:
/* 806F725C  38 60 00 01 */	li r3, 1
/* 806F7260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F7264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F7268  7C 08 03 A6 */	mtlr r0
/* 806F726C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F7270  4E 80 00 20 */	blr 
