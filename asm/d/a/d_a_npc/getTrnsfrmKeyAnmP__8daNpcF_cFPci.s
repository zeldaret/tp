lbl_80152B2C:
/* 80152B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80152B30  7C 08 02 A6 */	mflr r0
/* 80152B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80152B38  7C 83 23 78 */	mr r3, r4
/* 80152B3C  7C A4 2B 78 */	mr r4, r5
/* 80152B40  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80152B44  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80152B48  3C A5 00 02 */	addis r5, r5, 2
/* 80152B4C  38 C0 00 80 */	li r6, 0x80
/* 80152B50  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80152B54  4B EE 97 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80152B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80152B5C  7C 08 03 A6 */	mtlr r0
/* 80152B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80152B64  4E 80 00 20 */	blr 
