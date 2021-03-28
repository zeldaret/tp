lbl_80C6D0F4:
/* 80C6D0F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D0F8  7C 08 02 A6 */	mflr r0
/* 80C6D0FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6D104  7C 7F 1B 78 */	mr r31, r3
/* 80C6D108  88 83 07 26 */	lbz r4, 0x726(r3)
/* 80C6D10C  28 04 00 FF */	cmplwi r4, 0xff
/* 80C6D110  41 82 00 18 */	beq lbl_80C6D128
/* 80C6D114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6D11C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6D120  7C 05 07 74 */	extsb r5, r0
/* 80C6D124  4B 3C 80 DC */	b onSwitch__10dSv_info_cFii
lbl_80C6D128:
/* 80C6D128  38 00 00 01 */	li r0, 1
/* 80C6D12C  98 1F 07 24 */	stb r0, 0x724(r31)
/* 80C6D130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6D134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D138  7C 08 03 A6 */	mtlr r0
/* 80C6D13C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D140  4E 80 00 20 */	blr 
