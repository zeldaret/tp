lbl_806A08F8:
/* 806A08F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A08FC  7C 08 02 A6 */	mflr r0
/* 806A0900  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A0904  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A0908  7C 7F 1B 78 */	mr r31, r3
/* 806A090C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806A0910  3C 80 80 6A */	lis r4, stringBase0@ha
/* 806A0914  38 84 1A 6C */	addi r4, r4, stringBase0@l
/* 806A0918  4B 98 C6 F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806A091C  88 1F 12 6C */	lbz r0, 0x126c(r31)
/* 806A0920  28 00 00 00 */	cmplwi r0, 0
/* 806A0924  41 82 00 10 */	beq lbl_806A0934
/* 806A0928  38 00 00 00 */	li r0, 0
/* 806A092C  3C 60 80 6A */	lis r3, data_806A1D98@ha
/* 806A0930  98 03 1D 98 */	stb r0, data_806A1D98@l(r3)
lbl_806A0934:
/* 806A0934  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806A0938  28 00 00 00 */	cmplwi r0, 0
/* 806A093C  41 82 00 0C */	beq lbl_806A0948
/* 806A0940  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A0944  4B 97 09 CC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806A0948:
/* 806A0948  38 60 00 01 */	li r3, 1
/* 806A094C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A0950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A0954  7C 08 03 A6 */	mtlr r0
/* 806A0958  38 21 00 10 */	addi r1, r1, 0x10
/* 806A095C  4E 80 00 20 */	blr 
