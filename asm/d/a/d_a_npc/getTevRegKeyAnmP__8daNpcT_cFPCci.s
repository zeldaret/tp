lbl_80148148:
/* 80148148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014814C  7C 08 02 A6 */	mflr r0
/* 80148150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148154  7C 83 23 78 */	mr r3, r4
/* 80148158  7C A4 2B 78 */	mr r4, r5
/* 8014815C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80148160  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80148164  3C A5 00 02 */	addis r5, r5, 2
/* 80148168  38 C0 00 80 */	li r6, 0x80
/* 8014816C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80148170  4B EF 41 7D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80148174  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148178  7C 08 03 A6 */	mtlr r0
/* 8014817C  38 21 00 10 */	addi r1, r1, 0x10
/* 80148180  4E 80 00 20 */	blr 
