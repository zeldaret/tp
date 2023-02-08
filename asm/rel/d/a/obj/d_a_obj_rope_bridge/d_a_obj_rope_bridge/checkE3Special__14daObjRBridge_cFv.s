lbl_80595F84:
/* 80595F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595F88  7C 08 02 A6 */	mflr r0
/* 80595F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595F90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80595F94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80595F98  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80595F9C  3C 80 80 59 */	lis r4, d_a_obj_rope_bridge__stringBase0@ha /* 0x80597E40@ha */
/* 80595FA0  38 84 7E 40 */	addi r4, r4, d_a_obj_rope_bridge__stringBase0@l /* 0x80597E40@l */
/* 80595FA4  38 84 00 1D */	addi r4, r4, 0x1d
/* 80595FA8  4B DD 29 ED */	bl strcmp
/* 80595FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80595FB0  40 82 00 1C */	bne lbl_80595FCC
/* 80595FB4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80595FB8  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80595FBC  2C 00 00 07 */	cmpwi r0, 7
/* 80595FC0  40 82 00 0C */	bne lbl_80595FCC
/* 80595FC4  38 60 00 01 */	li r3, 1
/* 80595FC8  48 00 00 08 */	b lbl_80595FD0
lbl_80595FCC:
/* 80595FCC  38 60 00 00 */	li r3, 0
lbl_80595FD0:
/* 80595FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595FD4  7C 08 03 A6 */	mtlr r0
/* 80595FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80595FDC  4E 80 00 20 */	blr 
