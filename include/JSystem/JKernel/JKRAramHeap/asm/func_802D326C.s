/* __sinit_JKRAramHeap_cpp __sinit_JKRAramHeap_cpp */
/* missing reference */
/* 802D326C 002D01AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D3270 002D01B0  7C 08 02 A6 */	mflr r0
/* 802D3274 002D01B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D3278 002D01B8  3C 60 80 43 */	lis r3, lbl_8043430C@ha
/* 802D327C 002D01BC  38 63 43 0C */	addi r3, r3, lbl_8043430C@l
/* 802D3280 002D01C0  48 00 8C 95 */	bl initiate__10JSUPtrListFv
/* 802D3284 002D01C4  3C 60 80 43 */	lis r3, lbl_8043430C@ha
/* 802D3288 002D01C8  38 63 43 0C */	addi r3, r3, lbl_8043430C@l
/* 802D328C 002D01CC  3C 80 80 2D */	lis r4, JSUList_NS_dtor_X5_@ha
/* 802D3290 002D01D0  38 84 32 B0 */	addi r4, r4, JSUList_NS_dtor_X5_@l
/* 802D3294 002D01D4  3C A0 80 43 */	lis r5, lbl_80434300@ha
/* 802D3298 002D01D8  38 A5 43 00 */	addi r5, r5, lbl_80434300@l
/* 802D329C 002D01DC  48 08 E9 89 */	bl func_80361C24
/* 802D32A0 002D01E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D32A4 002D01E4  7C 08 03 A6 */	mtlr r0
/* 802D32A8 002D01E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D32AC 002D01EC  4E 80 00 20 */	blr
