lbl_806991C4:
/* 806991C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806991C8  7C 08 02 A6 */	mflr r0
/* 806991CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806991D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806991D4  7C 7F 1B 78 */	mr r31, r3
/* 806991D8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806991DC  3C 80 80 6A */	lis r4, d_a_e_cr__stringBase0@ha /* 0x80699D40@ha */
/* 806991E0  38 84 9D 40 */	addi r4, r4, d_a_e_cr__stringBase0@l /* 0x80699D40@l */
/* 806991E4  4B 99 3E 25 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806991E8  88 1F 0A 5C */	lbz r0, 0xa5c(r31)
/* 806991EC  28 00 00 00 */	cmplwi r0, 0
/* 806991F0  41 82 00 10 */	beq lbl_80699200
/* 806991F4  38 00 00 00 */	li r0, 0
/* 806991F8  3C 60 80 6A */	lis r3, data_80699E88@ha /* 0x80699E88@ha */
/* 806991FC  98 03 9E 88 */	stb r0, data_80699E88@l(r3)  /* 0x80699E88@l */
lbl_80699200:
/* 80699200  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80699204  28 00 00 00 */	cmplwi r0, 0
/* 80699208  41 82 00 0C */	beq lbl_80699214
/* 8069920C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80699210  4B 97 81 01 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80699214:
/* 80699214  38 60 00 01 */	li r3, 1
/* 80699218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069921C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80699220  7C 08 03 A6 */	mtlr r0
/* 80699224  38 21 00 10 */	addi r1, r1, 0x10
/* 80699228  4E 80 00 20 */	blr 
