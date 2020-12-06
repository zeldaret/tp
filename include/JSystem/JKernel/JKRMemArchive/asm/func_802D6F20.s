/* removeResource__13JKRMemArchiveFPv __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection::removeResource(void *) */
/* missing reference */
/* 802D6F20 002D3E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6F24 002D3E64  7C 08 02 A6 */	mflr r0
/* 802D6F28 002D3E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6F2C 002D3E6C  4B FF F8 09 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D6F30 002D3E70  28 03 00 00 */	cmplwi r3, 0
/* 802D6F34 002D3E74  40 82 00 0C */	bne lbl_802D6F40
/* 802D6F38 002D3E78  38 60 00 00 */	li r3, 0
/* 802D6F3C 002D3E7C  48 00 00 10 */	b lbl_802D6F4C
lbl_802D6F40:
/* 802D6F40 002D3E80  38 00 00 00 */	li r0, 0
/* 802D6F44 002D3E84  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D6F48 002D3E88  38 60 00 01 */	li r3, 1
lbl_802D6F4C:
/* 802D6F4C 002D3E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6F50 002D3E90  7C 08 03 A6 */	mtlr r0
/* 802D6F54 002D3E94  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6F58 002D3E98  4E 80 00 20 */	blr
