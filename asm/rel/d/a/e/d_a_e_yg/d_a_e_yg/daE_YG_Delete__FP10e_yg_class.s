lbl_807FB910:
/* 807FB910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FB914  7C 08 02 A6 */	mflr r0
/* 807FB918  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FB91C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FB920  7C 7F 1B 78 */	mr r31, r3
/* 807FB924  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807FB928  3C 80 80 80 */	lis r4, d_a_e_yg__stringBase0@ha /* 0x807FCDF0@ha */
/* 807FB92C  38 84 CD F0 */	addi r4, r4, d_a_e_yg__stringBase0@l /* 0x807FCDF0@l */
/* 807FB930  4B 83 16 D9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807FB934  88 1F 18 9C */	lbz r0, 0x189c(r31)
/* 807FB938  28 00 00 00 */	cmplwi r0, 0
/* 807FB93C  41 82 00 10 */	beq lbl_807FB94C
/* 807FB940  38 00 00 00 */	li r0, 0
/* 807FB944  3C 60 80 80 */	lis r3, struct_807FD05C+0x1@ha /* 0x807FD05D@ha */
/* 807FB948  98 03 D0 5D */	stb r0, struct_807FD05C+0x1@l(r3)  /* 0x807FD05D@l */
lbl_807FB94C:
/* 807FB94C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807FB950  28 00 00 00 */	cmplwi r0, 0
/* 807FB954  41 82 00 0C */	beq lbl_807FB960
/* 807FB958  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FB95C  4B 81 59 B5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807FB960:
/* 807FB960  38 60 00 01 */	li r3, 1
/* 807FB964  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FB968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FB96C  7C 08 03 A6 */	mtlr r0
/* 807FB970  38 21 00 10 */	addi r1, r1, 0x10
/* 807FB974  4E 80 00 20 */	blr 
