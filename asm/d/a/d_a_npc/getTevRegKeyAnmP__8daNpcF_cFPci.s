lbl_80152BE0:
/* 80152BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152BE4  7C 08 02 A6 */	mflr r0
/* 80152BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152BEC  7C 83 23 78 */	mr r3, r4
/* 80152BF0  7C A4 2B 78 */	mr r4, r5
/* 80152BF4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80152BF8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80152BFC  3C A5 00 02 */	addis r5, r5, 2
/* 80152C00  38 C0 00 80 */	li r6, 0x80
/* 80152C04  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80152C08  4B EE 96 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80152C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152C10  7C 08 03 A6 */	mtlr r0
/* 80152C14  38 21 00 10 */	addi r1, r1, 0x10
/* 80152C18  4E 80 00 20 */	blr 
