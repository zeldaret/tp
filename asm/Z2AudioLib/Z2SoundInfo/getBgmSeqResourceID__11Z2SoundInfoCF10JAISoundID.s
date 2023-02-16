lbl_802BB00C:
/* 802BB00C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BB010  7C 08 02 A6 */	mflr r0
/* 802BB014  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BB018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BB01C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BB020  7C 9E 23 78 */	mr r30, r4
/* 802BB024  80 04 00 00 */	lwz r0, 0(r4)
/* 802BB028  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BB02C  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB030  38 81 00 0C */	addi r4, r1, 0xc
/* 802BB034  4B FE C2 59 */	bl getData__13JAUSoundTableCF10JAISoundID
/* 802BB038  7C 7F 1B 78 */	mr r31, r3
/* 802BB03C  80 1E 00 00 */	lwz r0, 0(r30)
/* 802BB040  90 01 00 08 */	stw r0, 8(r1)
/* 802BB044  80 6D 85 D8 */	lwz r3, __OSReport_disable-0x40(r13)
/* 802BB048  38 81 00 08 */	addi r4, r1, 8
/* 802BB04C  4B FE C1 15 */	bl getTypeID__13JAUSoundTableCF10JAISoundID
/* 802BB050  28 1F 00 00 */	cmplwi r31, 0
/* 802BB054  41 82 00 1C */	beq lbl_802BB070
/* 802BB058  54 60 06 36 */	rlwinm r0, r3, 0, 0x18, 0x1b
/* 802BB05C  2C 00 00 60 */	cmpwi r0, 0x60
/* 802BB060  41 82 00 08 */	beq lbl_802BB068
/* 802BB064  48 00 00 0C */	b lbl_802BB070
lbl_802BB068:
/* 802BB068  A0 7F 00 02 */	lhz r3, 2(r31)
/* 802BB06C  48 00 00 0C */	b lbl_802BB078
lbl_802BB070:
/* 802BB070  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802BB074  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_802BB078:
/* 802BB078  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BB07C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BB080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BB084  7C 08 03 A6 */	mtlr r0
/* 802BB088  38 21 00 20 */	addi r1, r1, 0x20
/* 802BB08C  4E 80 00 20 */	blr 
