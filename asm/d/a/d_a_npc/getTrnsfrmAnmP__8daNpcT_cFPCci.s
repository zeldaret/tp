lbl_80148058:
/* 80148058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014805C  7C 08 02 A6 */	mflr r0
/* 80148060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148064  7C 83 23 78 */	mr r3, r4
/* 80148068  7C A4 2B 78 */	mr r4, r5
/* 8014806C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80148070  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80148074  3C A5 00 02 */	addis r5, r5, 2
/* 80148078  38 C0 00 80 */	li r6, 0x80
/* 8014807C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80148080  4B EF 42 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80148084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80148088  7C 08 03 A6 */	mtlr r0
/* 8014808C  38 21 00 10 */	addi r1, r1, 0x10
/* 80148090  4E 80 00 20 */	blr 
