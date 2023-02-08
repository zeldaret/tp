lbl_80BE5FF8:
/* 80BE5FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5FFC  7C 08 02 A6 */	mflr r0
/* 80BE6000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE6004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE6008  7C 7F 1B 78 */	mr r31, r3
/* 80BE600C  3C 60 80 BE */	lis r3, l_arcName@ha /* 0x80BE7438@ha */
/* 80BE6010  38 63 74 38 */	addi r3, r3, l_arcName@l /* 0x80BE7438@l */
/* 80BE6014  38 80 00 03 */	li r4, 3
/* 80BE6018  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE601C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE6020  3C A5 00 02 */	addis r5, r5, 2
/* 80BE6024  38 C0 00 80 */	li r6, 0x80
/* 80BE6028  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BE602C  4B 45 62 C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BE6030  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BE6034  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BE6038  30 03 FF FF */	addic r0, r3, -1
/* 80BE603C  7C 60 19 10 */	subfe r3, r0, r3
/* 80BE6040  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE6044  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE6048  7C 08 03 A6 */	mtlr r0
/* 80BE604C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE6050  4E 80 00 20 */	blr 
