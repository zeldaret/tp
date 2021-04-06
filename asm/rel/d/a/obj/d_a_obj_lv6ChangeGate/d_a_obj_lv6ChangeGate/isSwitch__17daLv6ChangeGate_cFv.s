lbl_80C712A8:
/* 80C712A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C712AC  7C 08 02 A6 */	mflr r0
/* 80C712B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C712B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C712B8  7C 7F 1B 78 */	mr r31, r3
/* 80C712BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C712C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C712C4  88 9F 14 D5 */	lbz r4, 0x14d5(r31)
/* 80C712C8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C712CC  7C 05 07 74 */	extsb r5, r0
/* 80C712D0  4B 3C 40 91 */	bl isSwitch__10dSv_info_cCFii
/* 80C712D4  88 1F 14 D4 */	lbz r0, 0x14d4(r31)
/* 80C712D8  7C 00 1A 78 */	xor r0, r0, r3
/* 80C712DC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C712E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C712E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C712E8  7C 08 03 A6 */	mtlr r0
/* 80C712EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C712F0  4E 80 00 20 */	blr 
