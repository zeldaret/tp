lbl_802DB5E8:
/* 802DB5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB5EC  7C 08 02 A6 */	mflr r0
/* 802DB5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB5F4  3C 60 80 43 */	lis r3, sDvdAramAsyncList__16JKRDvdAramRipper@ha /* 0x804343B4@ha */
/* 802DB5F8  38 63 43 B4 */	addi r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l /* 0x804343B4@l */
/* 802DB5FC  48 00 09 19 */	bl initiate__10JSUPtrListFv
/* 802DB600  3C 60 80 43 */	lis r3, sDvdAramAsyncList__16JKRDvdAramRipper@ha /* 0x804343B4@ha */
/* 802DB604  38 63 43 B4 */	addi r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l /* 0x804343B4@l */
/* 802DB608  3C 80 80 2E */	lis r4, func_802DB62C@ha /* 0x802DB62C@ha */
/* 802DB60C  38 84 B6 2C */	addi r4, r4, func_802DB62C@l /* 0x802DB62C@l */
/* 802DB610  3C A0 80 43 */	lis r5, lit_301@ha /* 0x804343A8@ha */
/* 802DB614  38 A5 43 A8 */	addi r5, r5, lit_301@l /* 0x804343A8@l */
/* 802DB618  48 08 66 0D */	bl __register_global_object
/* 802DB61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB620  7C 08 03 A6 */	mtlr r0
/* 802DB624  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB628  4E 80 00 20 */	blr 
