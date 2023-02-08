lbl_802949E4:
/* 802949E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802949E8  7C 08 02 A6 */	mflr r0
/* 802949EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802949F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802949F4  7C 9F 23 78 */	mr r31, r4
/* 802949F8  7F E3 FB 78 */	mr r3, r31
/* 802949FC  4B FF F1 05 */	bl retIntr__10JASSeqCtrlFv
/* 80294A00  7F E3 FB 78 */	mr r3, r31
/* 80294A04  4B FF F1 75 */	bl checkIntr__10JASSeqCtrlFv
/* 80294A08  38 60 00 00 */	li r3, 0
/* 80294A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80294A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80294A14  7C 08 03 A6 */	mtlr r0
/* 80294A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80294A1C  4E 80 00 20 */	blr 
