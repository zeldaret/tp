lbl_801419B8:
/* 801419B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801419BC  7C 08 02 A6 */	mflr r0
/* 801419C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801419C4  7C 67 1B 78 */	mr r7, r3
/* 801419C8  7C 80 23 78 */	mr r0, r4
/* 801419CC  7C A6 2B 78 */	mr r6, r5
/* 801419D0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 801419D4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 801419D8  7C E4 3B 78 */	mr r4, r7
/* 801419DC  7C 05 03 78 */	mr r5, r0
/* 801419E0  48 0D A7 01 */	bl setFloatingMessage__13dMeter2Info_cFUssb
/* 801419E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801419E8  7C 08 03 A6 */	mtlr r0
/* 801419EC  38 21 00 10 */	addi r1, r1, 0x10
/* 801419F0  4E 80 00 20 */	blr 
