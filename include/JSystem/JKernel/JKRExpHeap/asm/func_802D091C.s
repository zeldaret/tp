/* getHeapBlock__Q210JKRExpHeap9CMemBlockFPv __ct__10JKRExpHeapFPvUlP7JKRHeapb::CMemBlock::getHeapBlock( (void *)) */
/* JKRExpHeap_NS_CMemBlock_NS_getHeapBlock */
/* 802D091C 002CD85C  28 03 00 00 */	cmplwi r3, 0
/* 802D0920 002CD860  41 82 00 10 */	beq lbl_802D0930
/* 802D0924 002CD864  A4 03 FF F0 */	lhzu r0, -0x10(r3)
/* 802D0928 002CD868  28 00 48 4D */	cmplwi r0, 0x484d
/* 802D092C 002CD86C  4D 82 00 20 */	beqlr
lbl_802D0930:
/* 802D0930 002CD870  38 60 00 00 */	li r3, 0
/* 802D0934 002CD874  4E 80 00 20 */	blr
