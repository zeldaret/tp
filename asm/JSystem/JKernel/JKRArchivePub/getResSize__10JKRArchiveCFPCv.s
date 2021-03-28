lbl_802D60D8:
/* 802D60D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D60DC  7C 08 02 A6 */	mflr r0
/* 802D60E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D60E4  48 00 06 51 */	bl findPtrResource__10JKRArchiveCFPCv
/* 802D60E8  28 03 00 00 */	cmplwi r3, 0
/* 802D60EC  40 82 00 0C */	bne lbl_802D60F8
/* 802D60F0  38 60 FF FF */	li r3, -1
/* 802D60F4  48 00 00 08 */	b lbl_802D60FC
lbl_802D60F8:
/* 802D60F8  80 63 00 0C */	lwz r3, 0xc(r3)
lbl_802D60FC:
/* 802D60FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6100  7C 08 03 A6 */	mtlr r0
/* 802D6104  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6108  4E 80 00 20 */	blr 
