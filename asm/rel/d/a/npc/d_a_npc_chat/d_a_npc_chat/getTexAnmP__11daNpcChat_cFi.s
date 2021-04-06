lbl_80981374:
/* 80981374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80981378  7C 08 02 A6 */	mflr r0
/* 8098137C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80981380  88 03 09 F4 */	lbz r0, 0x9f4(r3)
/* 80981384  28 00 00 00 */	cmplwi r0, 0
/* 80981388  54 84 18 38 */	slwi r4, r4, 3
/* 8098138C  3C 60 80 98 */	lis r3, l_btpTbl@ha /* 0x80987BD4@ha */
/* 80981390  38 03 7B D4 */	addi r0, r3, l_btpTbl@l /* 0x80987BD4@l */
/* 80981394  7C 60 22 14 */	add r3, r0, r4
/* 80981398  41 82 00 10 */	beq lbl_809813A8
/* 8098139C  3C 60 80 98 */	lis r3, l_btpTWTbl@ha /* 0x80987CC4@ha */
/* 809813A0  38 03 7C C4 */	addi r0, r3, l_btpTWTbl@l /* 0x80987CC4@l */
/* 809813A4  7C 60 22 14 */	add r3, r0, r4
lbl_809813A8:
/* 809813A8  80 83 00 04 */	lwz r4, 4(r3)
/* 809813AC  2C 04 FF FF */	cmpwi r4, -1
/* 809813B0  41 82 00 24 */	beq lbl_809813D4
/* 809813B4  80 63 00 00 */	lwz r3, 0(r3)
/* 809813B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809813BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809813C0  3C A5 00 02 */	addis r5, r5, 2
/* 809813C4  38 C0 00 80 */	li r6, 0x80
/* 809813C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809813CC  4B 6B AF 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809813D0  48 00 00 08 */	b lbl_809813D8
lbl_809813D4:
/* 809813D4  38 60 00 00 */	li r3, 0
lbl_809813D8:
/* 809813D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809813DC  7C 08 03 A6 */	mtlr r0
/* 809813E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809813E4  4E 80 00 20 */	blr 
