lbl_807845D8:
/* 807845D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807845DC  7C 08 02 A6 */	mflr r0
/* 807845E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807845E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807845E8  7C 7F 1B 78 */	mr r31, r3
/* 807845EC  38 7F 06 20 */	addi r3, r31, 0x620
/* 807845F0  3C 80 80 78 */	lis r4, d_a_e_sb__stringBase0@ha /* 0x80784E64@ha */
/* 807845F4  38 84 4E 64 */	addi r4, r4, d_a_e_sb__stringBase0@l /* 0x80784E64@l */
/* 807845F8  4B 8A 8A 11 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807845FC  88 1F 0B BC */	lbz r0, 0xbbc(r31)
/* 80784600  28 00 00 00 */	cmplwi r0, 0
/* 80784604  41 82 00 10 */	beq lbl_80784614
/* 80784608  38 00 00 00 */	li r0, 0
/* 8078460C  3C 60 80 78 */	lis r3, struct_80784F74+0x1@ha /* 0x80784F75@ha */
/* 80784610  98 03 4F 75 */	stb r0, struct_80784F74+0x1@l(r3)  /* 0x80784F75@l */
lbl_80784614:
/* 80784614  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80784618  28 00 00 00 */	cmplwi r0, 0
/* 8078461C  41 82 00 0C */	beq lbl_80784628
/* 80784620  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80784624  4B 88 CC ED */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80784628:
/* 80784628  38 60 00 01 */	li r3, 1
/* 8078462C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80784630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80784634  7C 08 03 A6 */	mtlr r0
/* 80784638  38 21 00 10 */	addi r1, r1, 0x10
/* 8078463C  4E 80 00 20 */	blr 
