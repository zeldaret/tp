lbl_8061E4F0:
/* 8061E4F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061E4F4  7C 08 02 A6 */	mflr r0
/* 8061E4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061E4FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061E500  7C 7F 1B 78 */	mr r31, r3
/* 8061E504  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8061E508  3C 80 80 62 */	lis r4, d_a_b_oh2__stringBase0@ha /* 0x8061EA84@ha */
/* 8061E50C  38 84 EA 84 */	addi r4, r4, d_a_b_oh2__stringBase0@l /* 0x8061EA84@l */
/* 8061E510  4B A0 EA F9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8061E514  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8061E518  28 00 00 00 */	cmplwi r0, 0
/* 8061E51C  41 82 00 0C */	beq lbl_8061E528
/* 8061E520  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8061E524  4B 9F 2D ED */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8061E528:
/* 8061E528  38 60 00 01 */	li r3, 1
/* 8061E52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061E530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061E534  7C 08 03 A6 */	mtlr r0
/* 8061E538  38 21 00 10 */	addi r1, r1, 0x10
/* 8061E53C  4E 80 00 20 */	blr 
