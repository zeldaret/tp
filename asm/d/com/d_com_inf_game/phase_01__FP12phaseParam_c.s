lbl_8002CEFC:
/* 8002CEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CF00  7C 08 02 A6 */	mflr r0
/* 8002CF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CF08  7C 68 1B 78 */	mr r8, r3
/* 8002CF0C  80 63 00 00 */	lwz r3, 0(r3)
/* 8002CF10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002CF14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002CF18  3C 84 00 02 */	addis r4, r4, 2
/* 8002CF1C  38 A0 00 80 */	li r5, 0x80
/* 8002CF20  3C C0 80 38 */	lis r6, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002CF24  38 C6 8F 38 */	addi r6, r6, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002CF28  38 C6 01 13 */	addi r6, r6, 0x113
/* 8002CF2C  38 E0 00 00 */	li r7, 0
/* 8002CF30  81 08 00 04 */	lwz r8, 4(r8)
/* 8002CF34  38 84 C2 F8 */	addi r4, r4, -15624
/* 8002CF38  48 00 F1 41 */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8002CF3C  2C 03 00 00 */	cmpwi r3, 0
/* 8002CF40  38 60 00 02 */	li r3, 2
/* 8002CF44  40 82 00 08 */	bne lbl_8002CF4C
/* 8002CF48  38 60 00 05 */	li r3, 5
lbl_8002CF4C:
/* 8002CF4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CF50  7C 08 03 A6 */	mtlr r0
/* 8002CF54  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CF58  4E 80 00 20 */	blr 
