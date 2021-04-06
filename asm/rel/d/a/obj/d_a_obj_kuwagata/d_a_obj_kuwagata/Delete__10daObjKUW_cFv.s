lbl_80C4C78C:
/* 80C4C78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4C790  7C 08 02 A6 */	mflr r0
/* 80C4C794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4C798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4C79C  7C 7F 1B 78 */	mr r31, r3
/* 80C4C7A0  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80C4C7A4  3C 80 80 C5 */	lis r4, d_a_obj_kuwagata__stringBase0@ha /* 0x80C4D58C@ha */
/* 80C4C7A8  38 84 D5 8C */	addi r4, r4, d_a_obj_kuwagata__stringBase0@l /* 0x80C4D58C@l */
/* 80C4C7AC  4B 3E 08 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C4C7B0  88 1F 0A 64 */	lbz r0, 0xa64(r31)
/* 80C4C7B4  28 00 00 00 */	cmplwi r0, 0
/* 80C4C7B8  41 82 00 10 */	beq lbl_80C4C7C8
/* 80C4C7BC  38 00 00 00 */	li r0, 0
/* 80C4C7C0  3C 60 80 C5 */	lis r3, data_80C4D660@ha /* 0x80C4D660@ha */
/* 80C4C7C4  98 03 D6 60 */	stb r0, data_80C4D660@l(r3)  /* 0x80C4D660@l */
lbl_80C4C7C8:
/* 80C4C7C8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C4C7CC  28 00 00 00 */	cmplwi r0, 0
/* 80C4C7D0  41 82 00 0C */	beq lbl_80C4C7DC
/* 80C4C7D4  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4C7D8  4B 3C 4B 39 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C4C7DC:
/* 80C4C7DC  38 60 00 01 */	li r3, 1
/* 80C4C7E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4C7E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4C7E8  7C 08 03 A6 */	mtlr r0
/* 80C4C7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4C7F0  4E 80 00 20 */	blr 
