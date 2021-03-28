lbl_806DFA50:
/* 806DFA50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DFA54  7C 08 02 A6 */	mflr r0
/* 806DFA58  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DFA5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DFA60  7C 7F 1B 78 */	mr r31, r3
/* 806DFA64  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806DFA68  3C 80 80 6E */	lis r4, stringBase0@ha
/* 806DFA6C  38 84 FE 2C */	addi r4, r4, stringBase0@l
/* 806DFA70  4B 94 D5 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806DFA74  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 806DFA78  28 00 00 00 */	cmplwi r0, 0
/* 806DFA7C  41 82 00 10 */	beq lbl_806DFA8C
/* 806DFA80  38 00 00 00 */	li r0, 0
/* 806DFA84  3C 60 80 6E */	lis r3, data_806DFE98@ha
/* 806DFA88  98 03 FE 98 */	stb r0, data_806DFE98@l(r3)
lbl_806DFA8C:
/* 806DFA8C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806DFA90  28 00 00 00 */	cmplwi r0, 0
/* 806DFA94  41 82 00 0C */	beq lbl_806DFAA0
/* 806DFA98  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806DFA9C  4B 93 18 74 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806DFAA0:
/* 806DFAA0  38 60 00 01 */	li r3, 1
/* 806DFAA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DFAA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DFAAC  7C 08 03 A6 */	mtlr r0
/* 806DFAB0  38 21 00 10 */	addi r1, r1, 0x10
/* 806DFAB4  4E 80 00 20 */	blr 
