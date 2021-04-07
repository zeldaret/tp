lbl_806767D8:
/* 806767D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806767DC  7C 08 02 A6 */	mflr r0
/* 806767E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806767E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806767E8  7C 7F 1B 78 */	mr r31, r3
/* 806767EC  88 03 05 DF */	lbz r0, 0x5df(r3)
/* 806767F0  28 00 00 00 */	cmplwi r0, 0
/* 806767F4  40 82 00 10 */	bne lbl_80676804
/* 806767F8  4B 9C 39 D9 */	bl getSwbit__13door_param2_cFP10fopAc_ac_c
/* 806767FC  7C 60 1B 78 */	mr r0, r3
/* 80676800  48 00 00 0C */	b lbl_8067680C
lbl_80676804:
/* 80676804  4B 9C 39 D9 */	bl getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80676808  7C 60 1B 78 */	mr r0, r3
lbl_8067680C:
/* 8067680C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676814  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80676818  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8067681C  7C 05 07 74 */	extsb r5, r0
/* 80676820  4B 9B EB 41 */	bl isSwitch__10dSv_info_cCFii
/* 80676824  2C 03 00 00 */	cmpwi r3, 0
/* 80676828  41 82 00 0C */	beq lbl_80676834
/* 8067682C  38 60 00 01 */	li r3, 1
/* 80676830  48 00 00 08 */	b lbl_80676838
lbl_80676834:
/* 80676834  38 60 00 00 */	li r3, 0
lbl_80676838:
/* 80676838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067683C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80676840  7C 08 03 A6 */	mtlr r0
/* 80676844  38 21 00 10 */	addi r1, r1, 0x10
/* 80676848  4E 80 00 20 */	blr 
