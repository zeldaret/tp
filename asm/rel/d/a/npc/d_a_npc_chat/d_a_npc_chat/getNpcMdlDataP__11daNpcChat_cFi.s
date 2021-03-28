lbl_80981280:
/* 80981280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80981284  7C 08 02 A6 */	mflr r0
/* 80981288  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098128C  2C 04 00 00 */	cmpwi r4, 0
/* 80981290  41 80 00 0C */	blt lbl_8098129C
/* 80981294  2C 04 00 1E */	cmpwi r4, 0x1e
/* 80981298  41 80 00 0C */	blt lbl_809812A4
lbl_8098129C:
/* 8098129C  38 60 00 00 */	li r3, 0
/* 809812A0  48 00 00 4C */	b lbl_809812EC
lbl_809812A4:
/* 809812A4  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 809812A8  28 00 00 00 */	cmplwi r0, 0
/* 809812AC  54 84 18 38 */	slwi r4, r4, 3
/* 809812B0  3C 60 80 98 */	lis r3, l_bmdTbl@ha
/* 809812B4  38 03 79 F4 */	addi r0, r3, l_bmdTbl@l
/* 809812B8  7C A0 22 14 */	add r5, r0, r4
/* 809812BC  41 82 00 10 */	beq lbl_809812CC
/* 809812C0  3C 60 80 98 */	lis r3, l_bmdTWTbl@ha
/* 809812C4  38 03 7A E4 */	addi r0, r3, l_bmdTWTbl@l
/* 809812C8  7C A0 22 14 */	add r5, r0, r4
lbl_809812CC:
/* 809812CC  80 65 00 00 */	lwz r3, 0(r5)
/* 809812D0  80 85 00 04 */	lwz r4, 4(r5)
/* 809812D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809812D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809812DC  3C A5 00 02 */	addis r5, r5, 2
/* 809812E0  38 C0 00 80 */	li r6, 0x80
/* 809812E4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809812E8  4B 6B B0 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_809812EC:
/* 809812EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809812F0  7C 08 03 A6 */	mtlr r0
/* 809812F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809812F8  4E 80 00 20 */	blr 
