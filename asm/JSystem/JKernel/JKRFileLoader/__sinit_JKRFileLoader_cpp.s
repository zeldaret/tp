lbl_802D45A0:
/* 802D45A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D45A4  7C 08 02 A6 */	mflr r0
/* 802D45A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D45AC  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D45B0  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l /* 0x80434354@l */
/* 802D45B4  48 00 79 61 */	bl initiate__10JSUPtrListFv
/* 802D45B8  3C 60 80 43 */	lis r3, sVolumeList__13JKRFileLoader@ha /* 0x80434354@ha */
/* 802D45BC  38 63 43 54 */	addi r3, r3, sVolumeList__13JKRFileLoader@l /* 0x80434354@l */
/* 802D45C0  3C 80 80 2D */	lis r4, func_802D45E4@ha /* 0x802D45E4@ha */
/* 802D45C4  38 84 45 E4 */	addi r4, r4, func_802D45E4@l /* 0x802D45E4@l */
/* 802D45C8  3C A0 80 43 */	lis r5, lit_2182@ha /* 0x80434348@ha */
/* 802D45CC  38 A5 43 48 */	addi r5, r5, lit_2182@l /* 0x80434348@l */
/* 802D45D0  48 08 D6 55 */	bl __register_global_object
/* 802D45D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D45D8  7C 08 03 A6 */	mtlr r0
/* 802D45DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D45E0  4E 80 00 20 */	blr 
