lbl_802A03E0:
/* 802A03E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A03E4  7C 08 02 A6 */	mflr r0
/* 802A03E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A03EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A03F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A03F4  7C 7E 1B 78 */	mr r30, r3
/* 802A03F8  7C 9F 23 78 */	mr r31, r4
/* 802A03FC  48 00 00 39 */	bl resetSeqDataMgr__8JAISeMgrFv
/* 802A0400  93 FE 00 0C */	stw r31, 0xc(r30)
/* 802A0404  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802A0408  7F C4 F3 78 */	mr r4, r30
/* 802A040C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A0410  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A0414  7D 89 03 A6 */	mtctr r12
/* 802A0418  4E 80 04 21 */	bctrl 
/* 802A041C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0420  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A0424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0428  7C 08 03 A6 */	mtlr r0
/* 802A042C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0430  4E 80 00 20 */	blr 
