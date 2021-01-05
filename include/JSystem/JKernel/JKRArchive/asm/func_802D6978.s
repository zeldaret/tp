/* getExpandSize__10JKRArchiveCFP12SDIFileEntry __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::getExpandSize( const(__ct__10JKRArchiveFlQ210JKRArchive10EMountMode::SDIFileEntry *)) */
/* missing reference */
/* 802D6978 002D38B8  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802D697C 002D38BC  7C 80 20 50 */	subf r4, r0, r4
/* 802D6980 002D38C0  38 00 00 14 */	li r0, 0x14
/* 802D6984 002D38C4  7C A4 03 D6 */	divw r5, r4, r0
/* 802D6988 002D38C8  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802D698C 002D38CC  28 04 00 00 */	cmplwi r4, 0
/* 802D6990 002D38D0  41 82 00 14 */	beq lbl_802D69A4
/* 802D6994 002D38D4  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D6998 002D38D8  80 03 00 08 */	lwz r0, 8(r3)
/* 802D699C 002D38DC  7C 05 00 40 */	cmplw r5, r0
/* 802D69A0 002D38E0  41 80 00 0C */	blt lbl_802D69AC
lbl_802D69A4:
/* 802D69A4 002D38E4  38 60 00 00 */	li r3, 0
/* 802D69A8 002D38E8  4E 80 00 20 */	blr
lbl_802D69AC:
/* 802D69AC 002D38EC  54 A0 10 3A */	slwi r0, r5, 2
/* 802D69B0 002D38F0  7C 64 00 2E */	lwzx r3, r4, r0
/* 802D69B4 002D38F4  4E 80 00 20 */	blr
