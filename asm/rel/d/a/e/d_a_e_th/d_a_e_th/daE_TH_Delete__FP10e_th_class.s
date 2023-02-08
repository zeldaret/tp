lbl_807B351C:
/* 807B351C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B3520  7C 08 02 A6 */	mflr r0
/* 807B3524  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B3528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B352C  7C 7F 1B 78 */	mr r31, r3
/* 807B3530  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807B3534  3C 80 80 7B */	lis r4, d_a_e_th__stringBase0@ha /* 0x807B4644@ha */
/* 807B3538  38 84 46 44 */	addi r4, r4, d_a_e_th__stringBase0@l /* 0x807B4644@l */
/* 807B353C  4B 87 9A CD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807B3540  88 1F 12 38 */	lbz r0, 0x1238(r31)
/* 807B3544  28 00 00 00 */	cmplwi r0, 0
/* 807B3548  41 82 00 10 */	beq lbl_807B3558
/* 807B354C  38 00 00 00 */	li r0, 0
/* 807B3550  3C 60 80 7B */	lis r3, data_807B4870@ha /* 0x807B4870@ha */
/* 807B3554  98 03 48 70 */	stb r0, data_807B4870@l(r3)  /* 0x807B4870@l */
lbl_807B3558:
/* 807B3558  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807B355C  28 00 00 00 */	cmplwi r0, 0
/* 807B3560  41 82 00 0C */	beq lbl_807B356C
/* 807B3564  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B3568  4B 85 DD A9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807B356C:
/* 807B356C  38 60 00 01 */	li r3, 1
/* 807B3570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B3574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B3578  7C 08 03 A6 */	mtlr r0
/* 807B357C  38 21 00 10 */	addi r1, r1, 0x10
/* 807B3580  4E 80 00 20 */	blr 
