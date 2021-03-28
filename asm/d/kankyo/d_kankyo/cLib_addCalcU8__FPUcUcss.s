lbl_801A2090:
/* 801A2090  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A2094  7C 08 02 A6 */	mflr r0
/* 801A2098  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A209C  39 61 00 20 */	addi r11, r1, 0x20
/* 801A20A0  48 1C 01 35 */	bl _savegpr_27
/* 801A20A4  7C 7B 1B 78 */	mr r27, r3
/* 801A20A8  7C BC 2B 78 */	mr r28, r5
/* 801A20AC  7C DD 33 78 */	mr r29, r6
/* 801A20B0  8B C3 00 00 */	lbz r30, 0(r3)
/* 801A20B4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801A20B8  7C 1E 00 50 */	subf r0, r30, r0
/* 801A20BC  7C 1F 07 34 */	extsh r31, r0
/* 801A20C0  7F E3 FB 78 */	mr r3, r31
/* 801A20C4  48 1C 30 0D */	bl abs
/* 801A20C8  7F 80 07 34 */	extsh r0, r28
/* 801A20CC  7C 03 00 00 */	cmpw r3, r0
/* 801A20D0  41 80 00 0C */	blt lbl_801A20DC
/* 801A20D4  7C 1F 03 D6 */	divw r0, r31, r0
/* 801A20D8  7C 1F 07 34 */	extsh r31, r0
lbl_801A20DC:
/* 801A20DC  7F E3 07 34 */	extsh r3, r31
/* 801A20E0  7F A0 07 34 */	extsh r0, r29
/* 801A20E4  7C 03 00 00 */	cmpw r3, r0
/* 801A20E8  40 81 00 0C */	ble lbl_801A20F4
/* 801A20EC  7F DE EA 14 */	add r30, r30, r29
/* 801A20F0  48 00 00 1C */	b lbl_801A210C
lbl_801A20F4:
/* 801A20F4  7C 00 00 D0 */	neg r0, r0
/* 801A20F8  7C 03 00 00 */	cmpw r3, r0
/* 801A20FC  40 80 00 0C */	bge lbl_801A2108
/* 801A2100  7F DD F0 50 */	subf r30, r29, r30
/* 801A2104  48 00 00 08 */	b lbl_801A210C
lbl_801A2108:
/* 801A2108  7F DE FA 14 */	add r30, r30, r31
lbl_801A210C:
/* 801A210C  9B DB 00 00 */	stb r30, 0(r27)
/* 801A2110  39 61 00 20 */	addi r11, r1, 0x20
/* 801A2114  48 1C 01 0D */	bl _restgpr_27
/* 801A2118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A211C  7C 08 03 A6 */	mtlr r0
/* 801A2120  38 21 00 20 */	addi r1, r1, 0x20
/* 801A2124  4E 80 00 20 */	blr 
