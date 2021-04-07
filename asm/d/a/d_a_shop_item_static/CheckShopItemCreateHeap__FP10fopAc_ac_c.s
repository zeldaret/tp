lbl_80037C24:
/* 80037C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037C28  7C 08 02 A6 */	mflr r0
/* 80037C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037C30  88 03 09 64 */	lbz r0, 0x964(r3)
/* 80037C34  1C A0 00 30 */	mulli r5, r0, 0x30
/* 80037C38  3C 80 80 38 */	lis r4, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 80037C3C  38 84 92 E8 */	addi r4, r4, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 80037C40  7D 44 2A 14 */	add r10, r4, r5
/* 80037C44  A8 0A 00 10 */	lha r0, 0x10(r10)
/* 80037C48  90 01 00 08 */	stw r0, 8(r1)
/* 80037C4C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80037C50  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037C54  A8 CA 00 06 */	lha r6, 6(r10)
/* 80037C58  A8 EA 00 08 */	lha r7, 8(r10)
/* 80037C5C  A9 0A 00 0A */	lha r8, 0xa(r10)
/* 80037C60  A9 2A 00 0C */	lha r9, 0xc(r10)
/* 80037C64  A9 4A 00 0E */	lha r10, 0xe(r10)
/* 80037C68  48 10 CA F5 */	bl CreateItemHeap__12daItemBase_cFPCcsssssss
/* 80037C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037C70  7C 08 03 A6 */	mtlr r0
/* 80037C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80037C78  4E 80 00 20 */	blr 
