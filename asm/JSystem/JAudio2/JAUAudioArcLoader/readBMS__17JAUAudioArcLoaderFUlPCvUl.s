lbl_802A48A8:
/* 802A48A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A48AC  7C 08 02 A6 */	mflr r0
/* 802A48B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A48B4  90 81 00 08 */	stw r4, 8(r1)
/* 802A48B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A48BC  38 81 00 08 */	addi r4, r1, 8
/* 802A48C0  48 00 0E 09 */	bl newStaticSeqData__10JAUSectionF10JAISoundIDPCvUl
/* 802A48C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A48C8  7C 08 03 A6 */	mtlr r0
/* 802A48CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802A48D0  4E 80 00 20 */	blr 
