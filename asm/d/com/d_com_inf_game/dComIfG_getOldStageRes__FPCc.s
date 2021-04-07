lbl_8002F478:
/* 8002F478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F47C  7C 08 02 A6 */	mflr r0
/* 8002F480  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F484  7C 64 1B 78 */	mr r4, r3
/* 8002F488  3C 60 80 38 */	lis r3, d_com_d_com_inf_game__stringBase0@ha /* 0x80378F38@ha */
/* 8002F48C  38 63 8F 38 */	addi r3, r3, d_com_d_com_inf_game__stringBase0@l /* 0x80378F38@l */
/* 8002F490  38 63 01 67 */	addi r3, r3, 0x167
/* 8002F494  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8002F498  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002F49C  3C A5 00 02 */	addis r5, r5, 2
/* 8002F4A0  38 A5 D4 F8 */	addi r5, r5, -11016
/* 8002F4A4  38 C0 00 40 */	li r6, 0x40
/* 8002F4A8  48 00 CE D5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8002F4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F4B0  7C 08 03 A6 */	mtlr r0
/* 8002F4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F4B8  4E 80 00 20 */	blr 
