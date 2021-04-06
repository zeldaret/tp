lbl_8077FC90:
/* 8077FC90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077FC94  7C 08 02 A6 */	mflr r0
/* 8077FC98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077FC9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077FCA0  7C 7F 1B 78 */	mr r31, r3
/* 8077FCA4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8077FCA8  3C 80 80 78 */	lis r4, d_a_e_s1__stringBase0@ha /* 0x80780F74@ha */
/* 8077FCAC  38 84 0F 74 */	addi r4, r4, d_a_e_s1__stringBase0@l /* 0x80780F74@l */
/* 8077FCB0  4B 8A D3 59 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8077FCB4  88 1F 30 80 */	lbz r0, 0x3080(r31)
/* 8077FCB8  28 00 00 00 */	cmplwi r0, 0
/* 8077FCBC  41 82 00 10 */	beq lbl_8077FCCC
/* 8077FCC0  38 00 00 00 */	li r0, 0
/* 8077FCC4  3C 60 80 78 */	lis r3, struct_8078137C+0x2@ha /* 0x8078137E@ha */
/* 8077FCC8  98 03 13 7E */	stb r0, struct_8078137C+0x2@l(r3)  /* 0x8078137E@l */
lbl_8077FCCC:
/* 8077FCCC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8077FCD0  28 00 00 00 */	cmplwi r0, 0
/* 8077FCD4  41 82 00 0C */	beq lbl_8077FCE0
/* 8077FCD8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8077FCDC  4B 89 16 35 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8077FCE0:
/* 8077FCE0  38 60 00 01 */	li r3, 1
/* 8077FCE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077FCE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077FCEC  7C 08 03 A6 */	mtlr r0
/* 8077FCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8077FCF4  4E 80 00 20 */	blr 
