lbl_8071B9CC:
/* 8071B9CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071B9D0  7C 08 02 A6 */	mflr r0
/* 8071B9D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071B9D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071B9DC  7C 7F 1B 78 */	mr r31, r3
/* 8071B9E0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8071B9E4  3C 80 80 72 */	lis r4, d_a_e_mk__stringBase0@ha /* 0x8071C7E8@ha */
/* 8071B9E8  38 84 C7 E8 */	addi r4, r4, d_a_e_mk__stringBase0@l /* 0x8071C7E8@l */
/* 8071B9EC  4B 91 16 1D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8071B9F0  88 1F 0C F5 */	lbz r0, 0xcf5(r31)
/* 8071B9F4  28 00 00 00 */	cmplwi r0, 0
/* 8071B9F8  41 82 00 10 */	beq lbl_8071BA08
/* 8071B9FC  38 00 00 00 */	li r0, 0
/* 8071BA00  3C 60 80 72 */	lis r3, struct_8071CB08+0x2@ha /* 0x8071CB0A@ha */
/* 8071BA04  98 03 CB 0A */	stb r0, struct_8071CB08+0x2@l(r3)  /* 0x8071CB0A@l */
lbl_8071BA08:
/* 8071BA08  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8071BA0C  28 00 00 00 */	cmplwi r0, 0
/* 8071BA10  41 82 00 0C */	beq lbl_8071BA1C
/* 8071BA14  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8071BA18  4B 8F 58 F9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8071BA1C:
/* 8071BA1C  38 60 00 01 */	li r3, 1
/* 8071BA20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071BA24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071BA28  7C 08 03 A6 */	mtlr r0
/* 8071BA2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8071BA30  4E 80 00 20 */	blr 
