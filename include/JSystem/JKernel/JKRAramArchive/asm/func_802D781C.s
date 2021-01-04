/* getAramAddress__14JKRAramArchiveFPCc __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection::getAramAddress(char const *) */
/* JKRAramArchive_NS_getAramAddress */
/* 802D781C 002D475C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7820 002D4760  7C 08 02 A6 */	mflr r0
/* 802D7824 002D4764  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D7828 002D4768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D782C 002D476C  7C 7F 1B 78 */	mr r31, r3
/* 802D7830 002D4770  38 A0 00 00 */	li r5, 0
/* 802D7834 002D4774  4B FF ED 71 */	bl findFsResource__10JKRArchiveCFPCcUl
/* 802D7838 002D4778  7C 64 1B 78 */	mr r4, r3
/* 802D783C 002D477C  7F E3 FB 78 */	mr r3, r31
/* 802D7840 002D4780  4B FF FF B9 */	bl getAramAddress_Entry__14JKRAramArchiveFP12SDIFileEntry
/* 802D7844 002D4784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7848 002D4788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D784C 002D478C  7C 08 03 A6 */	mtlr r0
/* 802D7850 002D4790  38 21 00 10 */	addi r1, r1, 0x10
/* 802D7854 002D4794  4E 80 00 20 */	blr
