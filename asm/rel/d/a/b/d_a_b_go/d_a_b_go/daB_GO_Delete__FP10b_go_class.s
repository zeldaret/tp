lbl_806038F4:
/* 806038F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806038F8  7C 08 02 A6 */	mflr r0
/* 806038FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80603900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80603904  7C 7F 1B 78 */	mr r31, r3
/* 80603908  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8060390C  3C 80 80 60 */	lis r4, d_a_b_go__stringBase0@ha /* 0x8060408C@ha */
/* 80603910  38 84 40 8C */	addi r4, r4, d_a_b_go__stringBase0@l /* 0x8060408C@l */
/* 80603914  4B A2 96 F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80603918  88 1F 0D 34 */	lbz r0, 0xd34(r31)
/* 8060391C  28 00 00 00 */	cmplwi r0, 0
/* 80603920  41 82 00 10 */	beq lbl_80603930
/* 80603924  38 00 00 00 */	li r0, 0
/* 80603928  3C 60 80 60 */	lis r3, data_80604140@ha /* 0x80604140@ha */
/* 8060392C  98 03 41 40 */	stb r0, data_80604140@l(r3)  /* 0x80604140@l */
lbl_80603930:
/* 80603930  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80603934  28 00 00 00 */	cmplwi r0, 0
/* 80603938  41 82 00 0C */	beq lbl_80603944
/* 8060393C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80603940  4B A0 D9 D1 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80603944:
/* 80603944  38 60 00 01 */	li r3, 1
/* 80603948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060394C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603950  7C 08 03 A6 */	mtlr r0
/* 80603954  38 21 00 10 */	addi r1, r1, 0x10
/* 80603958  4E 80 00 20 */	blr 
