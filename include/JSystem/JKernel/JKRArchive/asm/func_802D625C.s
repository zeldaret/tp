/* getFileAttribute__10JKRArchiveCFUl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode::getFileAttribute( const(unsigned long)) */
/* JKRArchive_NS_getFileAttribute */
/* 802D625C 002D319C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6260 002D31A0  7C 08 02 A6 */	mflr r0
/* 802D6264 002D31A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6268 002D31A8  48 00 04 1D */	bl findIdxResource__10JKRArchiveCFUl
/* 802D626C 002D31AC  28 03 00 00 */	cmplwi r3, 0
/* 802D6270 002D31B0  41 82 00 10 */	beq lbl_802D6280
/* 802D6274 002D31B4  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6278 002D31B8  54 03 46 3E */	srwi r3, r0, 0x18
/* 802D627C 002D31BC  48 00 00 08 */	b lbl_802D6284
lbl_802D6280:
/* 802D6280 002D31C0  38 60 00 00 */	li r3, 0
lbl_802D6284:
/* 802D6284 002D31C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6288 002D31C8  7C 08 03 A6 */	mtlr r0
/* 802D628C 002D31CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6290 002D31D0  4E 80 00 20 */	blr
