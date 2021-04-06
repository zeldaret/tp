lbl_80056AA8:
/* 80056AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80056AAC  7C 08 02 A6 */	mflr r0
/* 80056AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80056AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80056AB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80056ABC  40 82 00 0C */	bne lbl_80056AC8
/* 80056AC0  38 60 00 00 */	li r3, 0
/* 80056AC4  48 00 00 20 */	b lbl_80056AE4
lbl_80056AC8:
/* 80056AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80056ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80056AD0  80 63 5F 94 */	lwz r3, 0x5f94(r3)
/* 80056AD4  7F E4 FB 78 */	mr r4, r31
/* 80056AD8  38 A0 00 00 */	li r5, 0
/* 80056ADC  48 2C E9 B1 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 80056AE0  7F E3 FB 78 */	mr r3, r31
lbl_80056AE4:
/* 80056AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056AEC  7C 08 03 A6 */	mtlr r0
/* 80056AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80056AF4  4E 80 00 20 */	blr 
