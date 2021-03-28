lbl_80A76888:
/* 80A76888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7688C  7C 08 02 A6 */	mflr r0
/* 80A76890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A76894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A76898  7C 7F 1B 78 */	mr r31, r3
/* 80A7689C  88 03 15 C4 */	lbz r0, 0x15c4(r3)
/* 80A768A0  28 00 00 02 */	cmplwi r0, 2
/* 80A768A4  40 82 00 40 */	bne lbl_80A768E4
/* 80A768A8  3C 80 80 A8 */	lis r4, l_motionAnmData@ha
/* 80A768AC  38 A4 B4 58 */	addi r5, r4, l_motionAnmData@l
/* 80A768B0  80 05 02 C4 */	lwz r0, 0x2c4(r5)
/* 80A768B4  54 00 10 3A */	slwi r0, r0, 2
/* 80A768B8  3C 80 80 A8 */	lis r4, l_resNameList@ha
/* 80A768BC  38 84 B1 DC */	addi r4, r4, l_resNameList@l
/* 80A768C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A768C4  80 A5 02 BC */	lwz r5, 0x2bc(r5)
/* 80A768C8  4B 6D 17 90 */	b getTrnsfrmAnmP__8daNpcT_cFPCci
/* 80A768CC  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80A768D0  80 04 00 08 */	lwz r0, 8(r4)
/* 80A768D4  7C 03 00 50 */	subf r0, r3, r0
/* 80A768D8  7C 00 00 34 */	cntlzw r0, r0
/* 80A768DC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80A768E0  48 00 00 08 */	b lbl_80A768E8
lbl_80A768E4:
/* 80A768E4  38 60 00 00 */	li r3, 0
lbl_80A768E8:
/* 80A768E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A768EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A768F0  7C 08 03 A6 */	mtlr r0
/* 80A768F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A768F8  4E 80 00 20 */	blr 
