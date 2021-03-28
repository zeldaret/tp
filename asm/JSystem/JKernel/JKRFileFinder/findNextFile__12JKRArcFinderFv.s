lbl_802D46C4:
/* 802D46C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D46C8  7C 08 02 A6 */	mflr r0
/* 802D46CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D46D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D46D4  7C 7F 1B 78 */	mr r31, r3
/* 802D46D8  88 03 00 10 */	lbz r0, 0x10(r3)
/* 802D46DC  28 00 00 00 */	cmplwi r0, 0
/* 802D46E0  41 82 00 78 */	beq lbl_802D4758
/* 802D46E4  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 802D46E8  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 802D46EC  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 802D46F0  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 802D46F4  7C 05 00 10 */	subfc r0, r5, r0
/* 802D46F8  7C 04 19 14 */	adde r0, r4, r3
/* 802D46FC  98 1F 00 10 */	stb r0, 0x10(r31)
/* 802D4700  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802D4704  28 00 00 00 */	cmplwi r0, 0
/* 802D4708  41 82 00 50 */	beq lbl_802D4758
/* 802D470C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802D4710  38 81 00 08 */	addi r4, r1, 8
/* 802D4714  80 BF 00 20 */	lwz r5, 0x20(r31)
/* 802D4718  48 00 13 A9 */	bl getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
/* 802D471C  98 7F 00 10 */	stb r3, 0x10(r31)
/* 802D4720  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D4724  90 1F 00 00 */	stw r0, 0(r31)
/* 802D4728  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802D472C  90 1F 00 04 */	stw r0, 4(r31)
/* 802D4730  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 802D4734  B0 1F 00 08 */	sth r0, 8(r31)
/* 802D4738  88 01 00 08 */	lbz r0, 8(r1)
/* 802D473C  B0 1F 00 0A */	sth r0, 0xa(r31)
/* 802D4740  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 802D4744  54 00 FF FE */	rlwinm r0, r0, 0x1f, 0x1f, 0x1f
/* 802D4748  98 1F 00 11 */	stb r0, 0x11(r31)
/* 802D474C  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802D4750  38 03 00 01 */	addi r0, r3, 1
/* 802D4754  90 1F 00 20 */	stw r0, 0x20(r31)
lbl_802D4758:
/* 802D4758  88 7F 00 10 */	lbz r3, 0x10(r31)
/* 802D475C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D4760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D4764  7C 08 03 A6 */	mtlr r0
/* 802D4768  38 21 00 20 */	addi r1, r1, 0x20
/* 802D476C  4E 80 00 20 */	blr 
