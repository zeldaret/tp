lbl_802D6294:
/* 802D6294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6298  7C 08 02 A6 */	mflr r0
/* 802D629C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D62A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D62A4  48 08 BF 39 */	bl _savegpr_29
/* 802D62A8  7C 7D 1B 78 */	mr r29, r3
/* 802D62AC  7C 9E 23 78 */	mr r30, r4
/* 802D62B0  7C BF 2B 78 */	mr r31, r5
/* 802D62B4  4B FF DE 3D */	bl __ct__13JKRFileLoaderFv
/* 802D62B8  3C 60 80 3D */	lis r3, __vt__10JKRArchive@ha /* 0x803CC288@ha */
/* 802D62BC  38 03 C2 88 */	addi r0, r3, __vt__10JKRArchive@l /* 0x803CC288@l */
/* 802D62C0  90 1D 00 00 */	stw r0, 0(r29)
/* 802D62C4  38 00 00 00 */	li r0, 0
/* 802D62C8  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D62CC  9B FD 00 3C */	stb r31, 0x3c(r29)
/* 802D62D0  38 00 00 01 */	li r0, 1
/* 802D62D4  90 1D 00 34 */	stw r0, 0x34(r29)
/* 802D62D8  90 1D 00 58 */	stw r0, 0x58(r29)
/* 802D62DC  7F A3 EB 78 */	mr r3, r29
/* 802D62E0  4B FF 85 5D */	bl findFromRoot__7JKRHeapFPv
/* 802D62E4  90 7D 00 38 */	stw r3, 0x38(r29)
/* 802D62E8  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 802D62EC  28 00 00 00 */	cmplwi r0, 0
/* 802D62F0  40 82 00 0C */	bne lbl_802D62FC
/* 802D62F4  80 0D 8D F4 */	lwz r0, sCurrentHeap__7JKRHeap(r13)
/* 802D62F8  90 1D 00 38 */	stw r0, 0x38(r29)
lbl_802D62FC:
/* 802D62FC  93 DD 00 40 */	stw r30, 0x40(r29)
/* 802D6300  80 0D 8E 98 */	lwz r0, sCurrentVolume__13JKRFileLoader(r13)
/* 802D6304  28 00 00 00 */	cmplwi r0, 0
/* 802D6308  40 82 00 10 */	bne lbl_802D6318
/* 802D630C  93 AD 8E 98 */	stw r29, sCurrentVolume__13JKRFileLoader(r13)
/* 802D6310  38 00 00 00 */	li r0, 0
/* 802D6314  90 0D 8E A0 */	stw r0, sCurrentDirID__10JKRArchive(r13)
lbl_802D6318:
/* 802D6318  7F A3 EB 78 */	mr r3, r29
/* 802D631C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6320  48 08 BF 09 */	bl _restgpr_29
/* 802D6324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6328  7C 08 03 A6 */	mtlr r0
/* 802D632C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6330  4E 80 00 20 */	blr 
