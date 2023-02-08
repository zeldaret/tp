lbl_80C8F810:
/* 80C8F810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8F814  7C 08 02 A6 */	mflr r0
/* 80C8F818  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8F81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8F820  7C 7F 1B 78 */	mr r31, r3
/* 80C8F824  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8F828  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8F82C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C8F830  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C8F834  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C8F838  7C 05 07 74 */	extsb r5, r0
/* 80C8F83C  4B 3A 5B 25 */	bl isSwitch__10dSv_info_cCFii
/* 80C8F840  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C8F844  41 82 00 14 */	beq lbl_80C8F858
/* 80C8F848  38 00 00 0F */	li r0, 0xf
/* 80C8F84C  B0 1F 05 DE */	sth r0, 0x5de(r31)
/* 80C8F850  7F E3 FB 78 */	mr r3, r31
/* 80C8F854  4B FF FC E5 */	bl init_modeWait__14daMagLiftRot_cFv
lbl_80C8F858:
/* 80C8F858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8F85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8F860  7C 08 03 A6 */	mtlr r0
/* 80C8F864  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8F868  4E 80 00 20 */	blr 
