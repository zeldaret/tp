lbl_80253984:
/* 80253984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80253988  7C 08 02 A6 */	mflr r0
/* 8025398C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80253990  39 61 00 20 */	addi r11, r1, 0x20
/* 80253994  48 10 E8 3D */	bl _savegpr_26
/* 80253998  7C 7A 1B 78 */	mr r26, r3
/* 8025399C  7C 9B 23 78 */	mr r27, r4
/* 802539A0  7C BD 2B 78 */	mr r29, r5
/* 802539A4  7C DC 33 78 */	mr r28, r6
/* 802539A8  7C FE 3B 78 */	mr r30, r7
/* 802539AC  7D 1F 43 78 */	mr r31, r8
/* 802539B0  48 00 1A 3D */	bl __ct__13CPaneMgrAlphaFv
/* 802539B4  3C 60 80 3C */	lis r3, __vt__8CPaneMgr@ha /* 0x803C2E04@ha */
/* 802539B8  38 03 2E 04 */	addi r0, r3, __vt__8CPaneMgr@l /* 0x803C2E04@l */
/* 802539BC  90 1A 00 00 */	stw r0, 0(r26)
/* 802539C0  38 00 FF FF */	li r0, -1
/* 802539C4  90 1A 00 58 */	stw r0, 0x58(r26)
/* 802539C8  90 1A 00 5C */	stw r0, 0x5c(r26)
/* 802539CC  7F 63 DB 78 */	mr r3, r27
/* 802539D0  7F 86 E3 78 */	mr r6, r28
/* 802539D4  7F A5 EB 78 */	mr r5, r29
/* 802539D8  81 9B 00 00 */	lwz r12, 0(r27)
/* 802539DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802539E0  7D 89 03 A6 */	mtctr r12
/* 802539E4  4E 80 04 21 */	bctrl 
/* 802539E8  7C 64 1B 78 */	mr r4, r3
/* 802539EC  9B DA 00 19 */	stb r30, 0x19(r26)
/* 802539F0  7F 43 D3 78 */	mr r3, r26
/* 802539F4  7F E5 FB 78 */	mr r5, r31
/* 802539F8  48 00 02 11 */	bl initiate__8CPaneMgrFP7J2DPaneP10JKRExpHeap
/* 802539FC  7F 43 D3 78 */	mr r3, r26
/* 80253A00  39 61 00 20 */	addi r11, r1, 0x20
/* 80253A04  48 10 E8 19 */	bl _restgpr_26
/* 80253A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80253A0C  7C 08 03 A6 */	mtlr r0
/* 80253A10  38 21 00 20 */	addi r1, r1, 0x20
/* 80253A14  4E 80 00 20 */	blr 
