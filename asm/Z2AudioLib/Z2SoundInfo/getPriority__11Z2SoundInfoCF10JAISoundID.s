lbl_802BB0E0:
/* 802BB0E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BB0E4  7C 08 02 A6 */	mflr r0
/* 802BB0E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BB0EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BB0F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BB0F4  7C 9E 23 78 */	mr r30, r4
/* 802BB0F8  80 04 00 00 */	lwz r0, 0(r4)
/* 802BB0FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB100  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB104  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB108  4B FE C1 85 */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BB10C  7C 7F 1B 78 */	mr r31, r3
/* 802BB110  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BB114  90 01 00 08 */	stw r0, 8(r1)
/* 802BB118  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB11C  38 81 00 08 */	addi r4, r1, 8
/* 802BB120  4B FE C0 41 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB124  28 1F 00 00 */	cmplwi r31, 0
/* 802BB128  41 82 00 14 */	beq lbl_802BB13C
/* 802BB12C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 802BB130  41 82 00 0C */	beq lbl_802BB13C
/* 802BB134  88 7F 00 00 */	lbz r3, 0(r31)
/* 802BB138  48 00 00 08 */	b lbl_802BB140
lbl_802BB13C:
/* 802BB13C  38 60 00 00 */	li r3, 0
lbl_802BB140:
/* 802BB140  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BB144  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BB148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BB14C  7C 08 03 A6 */	mtlr r0
/* 802BB150  38 21 00 20 */	addi r1, r1, 0x20
/* 802BB154  4E 80 00 20 */	blr 
