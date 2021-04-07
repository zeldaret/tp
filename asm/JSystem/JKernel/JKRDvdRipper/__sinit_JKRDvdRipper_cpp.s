lbl_802DA7DC:
/* 802DA7DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DA7E0  7C 08 02 A6 */	mflr r0
/* 802DA7E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DA7E8  3C 60 80 43 */	lis r3, sDvdAsyncList__12JKRDvdRipper@ha /* 0x80434384@ha */
/* 802DA7EC  38 63 43 84 */	addi r3, r3, sDvdAsyncList__12JKRDvdRipper@l /* 0x80434384@l */
/* 802DA7F0  48 00 17 25 */	bl initiate__10JSUPtrListFv
/* 802DA7F4  3C 60 80 43 */	lis r3, sDvdAsyncList__12JKRDvdRipper@ha /* 0x80434384@ha */
/* 802DA7F8  38 63 43 84 */	addi r3, r3, sDvdAsyncList__12JKRDvdRipper@l /* 0x80434384@l */
/* 802DA7FC  3C 80 80 2E */	lis r4, func_802DA820@ha /* 0x802DA820@ha */
/* 802DA800  38 84 A8 20 */	addi r4, r4, func_802DA820@l /* 0x802DA820@l */
/* 802DA804  3C A0 80 43 */	lis r5, lit_491@ha /* 0x80434378@ha */
/* 802DA808  38 A5 43 78 */	addi r5, r5, lit_491@l /* 0x80434378@l */
/* 802DA80C  48 08 74 19 */	bl __register_global_object
/* 802DA810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DA814  7C 08 03 A6 */	mtlr r0
/* 802DA818  38 21 00 10 */	addi r1, r1, 0x10
/* 802DA81C  4E 80 00 20 */	blr 
