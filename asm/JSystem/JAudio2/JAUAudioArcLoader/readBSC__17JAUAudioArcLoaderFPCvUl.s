lbl_802A4834:
/* 802A4834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4838  7C 08 02 A6 */	mflr r0
/* 802A483C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4840  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A4844  48 00 0C BD */	bl newSeSeqCollection__10JAUSectionFPCvUl
/* 802A4848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A484C  7C 08 03 A6 */	mtlr r0
/* 802A4850  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4854  4E 80 00 20 */	blr 
