.include "macros.inc"

.section .text, "ax" # 80037c14


.global daShopItem_c_NS_getRotateP
daShopItem_c_NS_getRotateP:
/* 80037C14 00034B54  38 63 04 DC */	addi r3, r3, 0x4dc
/* 80037C18 00034B58  4E 80 00 20 */	blr 

.global daShopItem_c_NS_getPosP
daShopItem_c_NS_getPosP:
/* 80037C1C 00034B5C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80037C20 00034B60  4E 80 00 20 */	blr 
/* 80037C24 00034B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80037C28 00034B68  7C 08 02 A6 */	mflr r0
/* 80037C2C 00034B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80037C30 00034B70  88 03 09 64 */	lbz r0, 0x964(r3)
/* 80037C34 00034B74  1C A0 00 30 */	mulli r5, r0, 0x30
/* 80037C38 00034B78  3C 80 80 38 */	lis r4, lbl_803792E8@ha
/* 80037C3C 00034B7C  38 84 92 E8 */	addi r4, r4, lbl_803792E8@l
/* 80037C40 00034B80  7D 44 2A 14 */	add r10, r4, r5
/* 80037C44 00034B84  A8 0A 00 10 */	lha r0, 0x10(r10)
/* 80037C48 00034B88  90 01 00 08 */	stw r0, 8(r1)
/* 80037C4C 00034B8C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80037C50 00034B90  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037C54 00034B94  A8 CA 00 06 */	lha r6, 6(r10)
/* 80037C58 00034B98  A8 EA 00 08 */	lha r7, 8(r10)
/* 80037C5C 00034B9C  A9 0A 00 0A */	lha r8, 0xa(r10)
/* 80037C60 00034BA0  A9 2A 00 0C */	lha r9, 0xc(r10)
/* 80037C64 00034BA4  A9 4A 00 0E */	lha r10, 0xe(r10)
/* 80037C68 00034BA8  48 10 CA F5 */	bl daItemBase_c_NS_CreateItemHeap
/* 80037C6C 00034BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80037C70 00034BB0  7C 08 03 A6 */	mtlr r0
/* 80037C74 00034BB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80037C78 00034BB8  4E 80 00 20 */	blr 

