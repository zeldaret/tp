/* getResSize__12JKRFileCacheCFPCv __ct__12JKRFileCacheFPCcPCc::getResSize( const(void const *)) */
/* missing reference */
/* 802D526C 002D21AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D5270 002D21B0  7C 08 02 A6 */	mflr r0
/* 802D5274 002D21B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D5278 002D21B8  48 00 01 41 */	bl findCacheBlock__12JKRFileCacheCFPCv
/* 802D527C 002D21BC  28 03 00 00 */	cmplwi r3, 0
/* 802D5280 002D21C0  40 82 00 0C */	bne lbl_802D528C
/* 802D5284 002D21C4  38 60 FF FF */	li r3, -1
/* 802D5288 002D21C8  48 00 00 08 */	b lbl_802D5290
lbl_802D528C:
/* 802D528C 002D21CC  80 63 00 18 */	lwz r3, 0x18(r3)
lbl_802D5290:
/* 802D5290 002D21D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D5294 002D21D4  7C 08 03 A6 */	mtlr r0
/* 802D5298 002D21D8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D529C 002D21DC  4E 80 00 20 */	blr
