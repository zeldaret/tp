/* fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection::fetchResource(JKRArchive::SDIFileEntry *, unsigned long *) */
/* missing reference */
/* 802D6DDC 002D3D1C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802D6DE0 002D3D20  28 00 00 00 */	cmplwi r0, 0
/* 802D6DE4 002D3D24  40 82 00 14 */	bne lbl_802D6DF8
/* 802D6DE8 002D3D28  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802D6DEC 002D3D2C  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6DF0 002D3D30  7C 03 02 14 */	add r0, r3, r0
/* 802D6DF4 002D3D34  90 04 00 10 */	stw r0, 0x10(r4)
lbl_802D6DF8:
/* 802D6DF8 002D3D38  28 05 00 00 */	cmplwi r5, 0
/* 802D6DFC 002D3D3C  41 82 00 0C */	beq lbl_802D6E08
/* 802D6E00 002D3D40  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802D6E04 002D3D44  90 05 00 00 */	stw r0, 0(r5)
lbl_802D6E08:
/* 802D6E08 002D3D48  80 64 00 10 */	lwz r3, 0x10(r4)
/* 802D6E0C 002D3D4C  4E 80 00 20 */	blr
