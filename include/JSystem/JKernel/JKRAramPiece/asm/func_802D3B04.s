/* __sinit_JKRAramPiece_cpp __sinit_JKRAramPiece_cpp */
/* missing reference */
/* 802D3B04 002D0A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3B08 002D0A48  7C 08 02 A6 */	mflr r0
/* 802D3B0C 002D0A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3B10 002D0A50  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D3B14 002D0A54  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3B18 002D0A58  48 00 83 FD */	bl initiate__10JSUPtrListFv
/* 802D3B1C 002D0A5C  3C 60 80 43 */	lis r3, lbl_80434324@ha
/* 802D3B20 002D0A60  38 63 43 24 */	addi r3, r3, lbl_80434324@l
/* 802D3B24 002D0A64  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X4_@ha
/* 802D3B28 002D0A68  38 84 2D F0 */	addi r4, r4, JSUList_NS_dtor_X4_@l
/* 802D3B2C 002D0A6C  3C A0 80 43 */	lis r5, lbl_80434318@ha
/* 802D3B30 002D0A70  38 A5 43 18 */	addi r5, r5, lbl_80434318@l
/* 802D3B34 002D0A74  48 08 E0 F1 */	bl func_80361C24
/* 802D3B38 002D0A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D3B3C 002D0A7C  7C 08 03 A6 */	mtlr r0
/* 802D3B40 002D0A80  38 21 00 10 */	addi r1, r1, 0x10
/* 802D3B44 002D0A84  4E 80 00 20 */	blr
