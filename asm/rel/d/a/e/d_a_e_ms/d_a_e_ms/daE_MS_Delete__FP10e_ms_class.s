lbl_80728928:
/* 80728928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072892C  7C 08 02 A6 */	mflr r0
/* 80728930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80728934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80728938  7C 7F 1B 78 */	mr r31, r3
/* 8072893C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80728940  3C 80 80 73 */	lis r4, d_a_e_ms__stringBase0@ha /* 0x807295FC@ha */
/* 80728944  38 84 95 FC */	addi r4, r4, d_a_e_ms__stringBase0@l /* 0x807295FC@l */
/* 80728948  4B 90 46 C1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8072894C  88 1F 0B B8 */	lbz r0, 0xbb8(r31)
/* 80728950  28 00 00 00 */	cmplwi r0, 0
/* 80728954  41 82 00 10 */	beq lbl_80728964
/* 80728958  38 00 00 00 */	li r0, 0
/* 8072895C  3C 60 80 73 */	lis r3, struct_807297FC+0x1@ha /* 0x807297FD@ha */
/* 80728960  98 03 97 FD */	stb r0, struct_807297FC+0x1@l(r3)  /* 0x807297FD@l */
lbl_80728964:
/* 80728964  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80728968  28 00 00 00 */	cmplwi r0, 0
/* 8072896C  41 82 00 0C */	beq lbl_80728978
/* 80728970  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728974  4B 8E 89 9D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80728978:
/* 80728978  38 60 00 01 */	li r3, 1
/* 8072897C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80728980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80728984  7C 08 03 A6 */	mtlr r0
/* 80728988  38 21 00 10 */	addi r1, r1, 0x10
/* 8072898C  4E 80 00 20 */	blr 
