lbl_80148094:
/* 80148094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80148098  7C 08 02 A6 */	mflr r0
/* 8014809C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801480A0  7C 83 23 78 */	mr r3, r4
/* 801480A4  7C A4 2B 78 */	mr r4, r5
/* 801480A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801480AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801480B0  3C A5 00 02 */	addis r5, r5, 2
/* 801480B4  38 C0 00 80 */	li r6, 0x80
/* 801480B8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801480BC  4B EF 42 31 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 801480C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801480C4  7C 08 03 A6 */	mtlr r0
/* 801480C8  38 21 00 10 */	addi r1, r1, 0x10
/* 801480CC  4E 80 00 20 */	blr 
