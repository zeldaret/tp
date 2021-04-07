lbl_809463B8:
/* 809463B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809463BC  7C 08 02 A6 */	mflr r0
/* 809463C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809463C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809463C8  7C 7F 1B 78 */	mr r31, r3
/* 809463CC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809463D0  3C 80 80 95 */	lis r4, d_a_myna__stringBase0@ha /* 0x8094B24C@ha */
/* 809463D4  38 84 B2 4C */	addi r4, r4, d_a_myna__stringBase0@l /* 0x8094B24C@l */
/* 809463D8  38 84 01 00 */	addi r4, r4, 0x100
/* 809463DC  4B 6E 6C 2D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809463E0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 809463E4  28 00 00 00 */	cmplwi r0, 0
/* 809463E8  41 82 00 0C */	beq lbl_809463F4
/* 809463EC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 809463F0  4B 6C AF 21 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809463F4:
/* 809463F4  38 60 00 01 */	li r3, 1
/* 809463F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809463FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946400  7C 08 03 A6 */	mtlr r0
/* 80946404  38 21 00 10 */	addi r1, r1, 0x10
/* 80946408  4E 80 00 20 */	blr 
