/* isSameName__10JKRArchiveCFRQ210JKRArchive8CArcNameUlUs __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::isSameName( const(__ct__10JKRArchiveFlQ210JKRArchive10EMountMode::CArcName &, unsigned long, unsigned short)) */
/* JKRArchive_NS_isSameName */
/* 802D6394 002D32D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6398 002D32D8  7C 08 02 A6 */	mflr r0
/* 802D639C 002D32DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D63A0 002D32E0  A0 E4 00 00 */	lhz r7, 0(r4)
/* 802D63A4 002D32E4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 802D63A8 002D32E8  7C 07 00 40 */	cmplw r7, r0
/* 802D63AC 002D32EC  41 82 00 0C */	beq lbl_802D63B8
/* 802D63B0 002D32F0  38 60 00 00 */	li r3, 0
/* 802D63B4 002D32F4  48 00 00 1C */	b lbl_802D63D0
lbl_802D63B8:
/* 802D63B8 002D32F8  80 03 00 54 */	lwz r0, 0x54(r3)
/* 802D63BC 002D32FC  7C 60 2A 14 */	add r3, r0, r5
/* 802D63C0 002D3300  38 84 00 04 */	addi r4, r4, 4
/* 802D63C4 002D3304  48 09 25 D1 */	bl strcmp
/* 802D63C8 002D3308  7C 60 00 34 */	cntlzw r0, r3
/* 802D63CC 002D330C  54 03 D9 7E */	srwi r3, r0, 5
lbl_802D63D0:
/* 802D63D0 002D3310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D63D4 002D3314  7C 08 03 A6 */	mtlr r0
/* 802D63D8 002D3318  38 21 00 10 */	addi r1, r1, 0x10
/* 802D63DC 002D331C  4E 80 00 20 */	blr
