lbl_80C1D788:
/* 80C1D788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1D78C  7C 08 02 A6 */	mflr r0
/* 80C1D790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1D794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1D798  7C 7F 1B 78 */	mr r31, r3
/* 80C1D79C  88 63 05 C4 */	lbz r3, 0x5c4(r3)
/* 80C1D7A0  28 03 00 00 */	cmplwi r3, 0
/* 80C1D7A4  41 82 00 10 */	beq lbl_80C1D7B4
/* 80C1D7A8  38 03 FF FF */	addi r0, r3, -1
/* 80C1D7AC  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80C1D7B0  48 00 00 44 */	b lbl_80C1D7F4
lbl_80C1D7B4:
/* 80C1D7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1D7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1D7BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C1D7C0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C1D7C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1D7C8  7C 05 07 74 */	extsb r5, r0
/* 80C1D7CC  4B 41 7B 95 */	bl isSwitch__10dSv_info_cCFii
/* 80C1D7D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C1D7D4  40 82 00 20 */	bne lbl_80C1D7F4
/* 80C1D7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1D7DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1D7E0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C1D7E4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C1D7E8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C1D7EC  7C 05 07 74 */	extsb r5, r0
/* 80C1D7F0  4B 41 7A 11 */	bl onSwitch__10dSv_info_cFii
lbl_80C1D7F4:
/* 80C1D7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1D7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1D7FC  7C 08 03 A6 */	mtlr r0
/* 80C1D800  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1D804  4E 80 00 20 */	blr 
