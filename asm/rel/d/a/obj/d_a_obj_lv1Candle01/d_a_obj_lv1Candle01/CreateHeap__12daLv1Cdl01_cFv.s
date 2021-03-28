lbl_80C56DA8:
/* 80C56DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C56DAC  7C 08 02 A6 */	mflr r0
/* 80C56DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C56DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C56DB8  7C 7F 1B 78 */	mr r31, r3
/* 80C56DBC  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C56DC0  38 63 78 C0 */	addi r3, r3, stringBase0@l
/* 80C56DC4  38 80 00 04 */	li r4, 4
/* 80C56DC8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C56DCC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C56DD0  3C A5 00 02 */	addis r5, r5, 2
/* 80C56DD4  38 C0 00 80 */	li r6, 0x80
/* 80C56DD8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C56DDC  4B 3E 55 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C56DE0  3C 80 00 08 */	lis r4, 8
/* 80C56DE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C56DE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C56DEC  4B 3B DE 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C56DF0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80C56DF4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C56DF8  30 03 FF FF */	addic r0, r3, -1
/* 80C56DFC  7C 60 19 10 */	subfe r3, r0, r3
/* 80C56E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C56E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C56E08  7C 08 03 A6 */	mtlr r0
/* 80C56E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C56E10  4E 80 00 20 */	blr 
