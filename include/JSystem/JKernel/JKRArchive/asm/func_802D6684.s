/* findIdxResource__10JKRArchiveCFUl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::findIdxResource( const(unsigned long)) */
/* JKRArchive_NS_findIdxResource */
/* 802D6684 002D35C4  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 802D6688 002D35C8  80 05 00 08 */	lwz r0, 8(r5)
/* 802D668C 002D35CC  7C 04 00 40 */	cmplw r4, r0
/* 802D6690 002D35D0  40 80 00 14 */	bge lbl_802D66A4
/* 802D6694 002D35D4  80 63 00 4C */	lwz r3, 0x4c(r3)
/* 802D6698 002D35D8  1C 04 00 14 */	mulli r0, r4, 0x14
/* 802D669C 002D35DC  7C 63 02 14 */	add r3, r3, r0
/* 802D66A0 002D35E0  4E 80 00 20 */	blr
lbl_802D66A4:
/* 802D66A4 002D35E4  38 60 00 00 */	li r3, 0
/* 802D66A8 002D35E8  4E 80 00 20 */	blr
