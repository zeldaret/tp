lbl_802CF030:
/* 802CF030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CF034  7C 08 02 A6 */	mflr r0
/* 802CF038  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CF03C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF040  48 09 31 9D */	bl _savegpr_29
/* 802CF044  7C 7D 1B 78 */	mr r29, r3
/* 802CF048  7C 9E 23 78 */	mr r30, r4
/* 802CF04C  7C BF 2B 78 */	mr r31, r5
/* 802CF050  4B FF F0 E9 */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 802CF054  3C 60 80 3D */	lis r3, __vt__10JKRExpHeap@ha
/* 802CF058  38 03 BF D0 */	addi r0, r3, __vt__10JKRExpHeap@l
/* 802CF05C  90 1D 00 00 */	stw r0, 0(r29)
/* 802CF060  38 00 00 00 */	li r0, 0
/* 802CF064  98 1D 00 6C */	stb r0, 0x6c(r29)
/* 802CF068  38 00 00 FF */	li r0, 0xff
/* 802CF06C  98 1D 00 6D */	stb r0, 0x6d(r29)
/* 802CF070  93 DD 00 78 */	stw r30, 0x78(r29)
/* 802CF074  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 802CF078  90 1D 00 7C */	stw r0, 0x7c(r29)
/* 802CF07C  80 7D 00 78 */	lwz r3, 0x78(r29)
/* 802CF080  38 80 00 00 */	li r4, 0
/* 802CF084  38 A0 00 00 */	li r5, 0
/* 802CF088  38 DF FF F0 */	addi r6, r31, -16
/* 802CF08C  38 E0 00 00 */	li r7, 0
/* 802CF090  39 00 00 00 */	li r8, 0
/* 802CF094  48 00 17 7D */	bl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
/* 802CF098  38 00 00 00 */	li r0, 0
/* 802CF09C  90 1D 00 80 */	stw r0, 0x80(r29)
/* 802CF0A0  90 1D 00 84 */	stw r0, 0x84(r29)
/* 802CF0A4  7F A3 EB 78 */	mr r3, r29
/* 802CF0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 802CF0AC  48 09 31 7D */	bl _restgpr_29
/* 802CF0B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CF0B4  7C 08 03 A6 */	mtlr r0
/* 802CF0B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802CF0BC  4E 80 00 20 */	blr 
