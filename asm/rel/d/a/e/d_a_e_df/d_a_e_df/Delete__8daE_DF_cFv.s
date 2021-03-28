lbl_806A9550:
/* 806A9550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A9554  7C 08 02 A6 */	mflr r0
/* 806A9558  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A955C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A9560  7C 7F 1B 78 */	mr r31, r3
/* 806A9564  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806A9568  3C 80 80 6B */	lis r4, stringBase0@ha
/* 806A956C  38 84 9F FC */	addi r4, r4, stringBase0@l
/* 806A9570  4B 98 3A 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806A9574  88 1F 08 18 */	lbz r0, 0x818(r31)
/* 806A9578  28 00 00 00 */	cmplwi r0, 0
/* 806A957C  41 82 00 10 */	beq lbl_806A958C
/* 806A9580  38 00 00 00 */	li r0, 0
/* 806A9584  3C 60 80 6B */	lis r3, data_806AA0D0@ha
/* 806A9588  98 03 A0 D0 */	stb r0, data_806AA0D0@l(r3)
lbl_806A958C:
/* 806A958C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806A9590  28 00 00 00 */	cmplwi r0, 0
/* 806A9594  41 82 00 0C */	beq lbl_806A95A0
/* 806A9598  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 806A959C  4B 96 7D 74 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806A95A0:
/* 806A95A0  38 60 00 01 */	li r3, 1
/* 806A95A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A95A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A95AC  7C 08 03 A6 */	mtlr r0
/* 806A95B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806A95B4  4E 80 00 20 */	blr 
