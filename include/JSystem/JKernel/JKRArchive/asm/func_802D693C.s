/* setExpandSize__10JKRArchiveFP12SDIFileEntryUl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::setExpandSize(__ct__10JKRArchiveFlQ210JKRArchive10EMountMode::SDIFileEntry *, unsigned long) */
/* missing reference */
/* 802D693C 002D387C  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 802D6940 002D3880  7C 80 20 50 */	subf r4, r0, r4
/* 802D6944 002D3884  38 00 00 14 */	li r0, 0x14
/* 802D6948 002D3888  7C C4 03 D6 */	divw r6, r4, r0
/* 802D694C 002D388C  80 83 00 50 */	lwz r4, 0x50(r3)
/* 802D6950 002D3890  28 04 00 00 */	cmplwi r4, 0
/* 802D6954 002D3894  4D 82 00 20 */	beqlr 
/* 802D6958 002D3898  80 63 00 44 */	lwz r3, 0x44(r3)
/* 802D695C 002D389C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6960 002D38A0  7C 06 00 40 */	cmplw r6, r0
/* 802D6964 002D38A4  41 80 00 08 */	blt lbl_802D696C
/* 802D6968 002D38A8  4E 80 00 20 */	blr 
lbl_802D696C:
/* 802D696C 002D38AC  54 C0 10 3A */	slwi r0, r6, 2
/* 802D6970 002D38B0  7C A4 01 2E */	stwx r5, r4, r0
/* 802D6974 002D38B4  4E 80 00 20 */	blr 

