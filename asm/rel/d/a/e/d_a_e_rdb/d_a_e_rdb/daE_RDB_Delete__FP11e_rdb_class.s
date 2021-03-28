lbl_8076A420:
/* 8076A420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076A424  7C 08 02 A6 */	mflr r0
/* 8076A428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076A42C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076A430  7C 7F 1B 78 */	mr r31, r3
/* 8076A434  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8076A438  3C 80 80 77 */	lis r4, stringBase0@ha
/* 8076A43C  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 8076A440  4B 8C 2B C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8076A444  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 8076A448  28 00 00 00 */	cmplwi r0, 0
/* 8076A44C  41 82 00 10 */	beq lbl_8076A45C
/* 8076A450  38 00 00 00 */	li r0, 0
/* 8076A454  3C 60 80 77 */	lis r3, struct_8076BA04+0x1@ha
/* 8076A458  98 03 BA 05 */	stb r0, struct_8076BA04+0x1@l(r3)
lbl_8076A45C:
/* 8076A45C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8076A460  28 00 00 00 */	cmplwi r0, 0
/* 8076A464  41 82 00 0C */	beq lbl_8076A470
/* 8076A468  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8076A46C  4B 8A 6E A4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8076A470:
/* 8076A470  38 60 00 01 */	li r3, 1
/* 8076A474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076A478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076A47C  7C 08 03 A6 */	mtlr r0
/* 8076A480  38 21 00 10 */	addi r1, r1, 0x10
/* 8076A484  4E 80 00 20 */	blr 
