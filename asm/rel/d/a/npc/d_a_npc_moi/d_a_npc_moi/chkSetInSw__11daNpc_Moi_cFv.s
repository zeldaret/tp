lbl_80A76954:
/* 80A76954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A76958  7C 08 02 A6 */	mflr r0
/* 80A7695C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A76960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A76964  7C 7F 1B 78 */	mr r31, r3
/* 80A76968  88 03 15 C4 */	lbz r0, 0x15c4(r3)
/* 80A7696C  28 00 00 02 */	cmplwi r0, 2
/* 80A76970  40 82 00 40 */	bne lbl_80A769B0
/* 80A76974  3C 80 80 A8 */	lis r4, l_motionAnmData@ha /* 0x80A7B458@ha */
/* 80A76978  38 A4 B4 58 */	addi r5, r4, l_motionAnmData@l /* 0x80A7B458@l */
/* 80A7697C  80 05 02 E0 */	lwz r0, 0x2e0(r5)
/* 80A76980  54 00 10 3A */	slwi r0, r0, 2
/* 80A76984  3C 80 80 A8 */	lis r4, l_resNameList@ha /* 0x80A7B1DC@ha */
/* 80A76988  38 84 B1 DC */	addi r4, r4, l_resNameList@l /* 0x80A7B1DC@l */
/* 80A7698C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A76990  80 A5 02 D8 */	lwz r5, 0x2d8(r5)
/* 80A76994  4B 6D 16 C5 */	bl getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80A76998  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80A7699C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A769A0  7C 03 00 50 */	subf r0, r3, r0
/* 80A769A4  7C 00 00 34 */	cntlzw r0, r0
/* 80A769A8  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A769AC  48 00 00 08 */	b lbl_80A769B4
lbl_80A769B0:
/* 80A769B0  38 60 00 00 */	li r3, 0
lbl_80A769B4:
/* 80A769B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A769B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A769BC  7C 08 03 A6 */	mtlr r0
/* 80A769C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A769C4  4E 80 00 20 */	blr 
