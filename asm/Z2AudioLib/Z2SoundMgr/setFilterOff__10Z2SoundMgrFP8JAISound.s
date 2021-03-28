lbl_802AA33C:
/* 802AA33C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AA340  7C 08 02 A6 */	mflr r0
/* 802AA344  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AA348  39 61 00 30 */	addi r11, r1, 0x30
/* 802AA34C  48 0B 7E 7D */	bl _savegpr_24
/* 802AA350  28 04 00 00 */	cmplwi r4, 0
/* 802AA354  41 82 00 C4 */	beq lbl_802AA418
/* 802AA358  7C 83 23 78 */	mr r3, r4
/* 802AA35C  81 84 00 00 */	lwz r12, 0(r4)
/* 802AA360  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AA364  7D 89 03 A6 */	mtctr r12
/* 802AA368  4E 80 04 21 */	bctrl 
/* 802AA36C  7C 7C 1B 78 */	mr r28, r3
/* 802AA370  3B 20 00 00 */	li r25, 0
/* 802AA374  3B E0 00 00 */	li r31, 0
lbl_802AA378:
/* 802AA378  38 1F 01 30 */	addi r0, r31, 0x130
/* 802AA37C  7F 7C 00 2E */	lwzx r27, r28, r0
/* 802AA380  28 1B 00 00 */	cmplwi r27, 0
/* 802AA384  41 82 00 84 */	beq lbl_802AA408
/* 802AA388  88 1B 02 15 */	lbz r0, 0x215(r27)
/* 802AA38C  28 00 00 01 */	cmplwi r0, 1
/* 802AA390  40 82 00 78 */	bne lbl_802AA408
/* 802AA394  7F 63 DB 78 */	mr r3, r27
/* 802AA398  3C 80 80 3A */	lis r4, cResetFilterTable@ha
/* 802AA39C  38 84 B9 C0 */	addi r4, r4, cResetFilterTable@l
/* 802AA3A0  4B FE 84 FD */	bl setIIR__8JASTrackFPCs
/* 802AA3A4  7F 63 DB 78 */	mr r3, r27
/* 802AA3A8  3C 80 80 3A */	lis r4, cResetFilterTable@ha
/* 802AA3AC  38 84 B9 C0 */	addi r4, r4, cResetFilterTable@l
/* 802AA3B0  4B FE 84 AD */	bl setFIR__8JASTrackFPCs
/* 802AA3B4  3B 00 00 00 */	li r24, 0
/* 802AA3B8  3B C0 00 00 */	li r30, 0
/* 802AA3BC  3C 60 80 3A */	lis r3, cResetFilterTable@ha
/* 802AA3C0  3B A3 B9 C0 */	addi r29, r3, cResetFilterTable@l
lbl_802AA3C4:
/* 802AA3C4  38 1E 01 30 */	addi r0, r30, 0x130
/* 802AA3C8  7F 5B 00 2E */	lwzx r26, r27, r0
/* 802AA3CC  28 1A 00 00 */	cmplwi r26, 0
/* 802AA3D0  41 82 00 28 */	beq lbl_802AA3F8
/* 802AA3D4  88 1A 02 15 */	lbz r0, 0x215(r26)
/* 802AA3D8  28 00 00 01 */	cmplwi r0, 1
/* 802AA3DC  40 82 00 1C */	bne lbl_802AA3F8
/* 802AA3E0  7F 43 D3 78 */	mr r3, r26
/* 802AA3E4  7F A4 EB 78 */	mr r4, r29
/* 802AA3E8  4B FE 84 B5 */	bl setIIR__8JASTrackFPCs
/* 802AA3EC  7F 43 D3 78 */	mr r3, r26
/* 802AA3F0  7F A4 EB 78 */	mr r4, r29
/* 802AA3F4  4B FE 84 69 */	bl setFIR__8JASTrackFPCs
lbl_802AA3F8:
/* 802AA3F8  3B 18 00 01 */	addi r24, r24, 1
/* 802AA3FC  28 18 00 04 */	cmplwi r24, 4
/* 802AA400  3B DE 00 04 */	addi r30, r30, 4
/* 802AA404  41 80 FF C0 */	blt lbl_802AA3C4
lbl_802AA408:
/* 802AA408  3B 39 00 01 */	addi r25, r25, 1
/* 802AA40C  28 19 00 04 */	cmplwi r25, 4
/* 802AA410  3B FF 00 04 */	addi r31, r31, 4
/* 802AA414  41 80 FF 64 */	blt lbl_802AA378
lbl_802AA418:
/* 802AA418  39 61 00 30 */	addi r11, r1, 0x30
/* 802AA41C  48 0B 7D F9 */	bl _restgpr_24
/* 802AA420  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AA424  7C 08 03 A6 */	mtlr r0
/* 802AA428  38 21 00 30 */	addi r1, r1, 0x30
/* 802AA42C  4E 80 00 20 */	blr 
