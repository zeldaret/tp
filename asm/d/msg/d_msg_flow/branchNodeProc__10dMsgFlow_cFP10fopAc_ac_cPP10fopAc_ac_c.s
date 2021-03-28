lbl_8024AD54:
/* 8024AD54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024AD58  7C 08 02 A6 */	mflr r0
/* 8024AD5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024AD60  39 61 00 20 */	addi r11, r1, 0x20
/* 8024AD64  48 11 74 79 */	bl _savegpr_29
/* 8024AD68  7C 7D 1B 78 */	mr r29, r3
/* 8024AD6C  7C 86 23 78 */	mr r6, r4
/* 8024AD70  7C BE 2B 78 */	mr r30, r5
/* 8024AD74  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8024AD78  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8024AD7C  54 00 18 38 */	slwi r0, r0, 3
/* 8024AD80  7F E4 02 14 */	add r31, r4, r0
/* 8024AD84  7F E4 FB 78 */	mr r4, r31
/* 8024AD88  7C C5 33 78 */	mr r5, r6
/* 8024AD8C  38 C0 00 01 */	li r6, 1
/* 8024AD90  A0 1F 00 02 */	lhz r0, 2(r31)
/* 8024AD94  1D 00 00 0C */	mulli r8, r0, 0xc
/* 8024AD98  3C E0 80 3C */	lis r7, mQueryList__10dMsgFlow_c@ha
/* 8024AD9C  38 07 18 4C */	addi r0, r7, mQueryList__10dMsgFlow_c@l
/* 8024ADA0  7D 80 42 14 */	add r12, r0, r8
/* 8024ADA4  48 11 72 E1 */	bl __ptmf_scall
/* 8024ADA8  60 00 00 00 */	nop 
/* 8024ADAC  7C 65 1B 78 */	mr r5, r3
/* 8024ADB0  7F A3 EB 78 */	mr r3, r29
/* 8024ADB4  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 8024ADB8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 8024ADBC  7C 00 2A 14 */	add r0, r0, r5
/* 8024ADC0  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8024ADC4  7C 84 02 2E */	lhzx r4, r4, r0
/* 8024ADC8  7F C5 F3 78 */	mr r5, r30
/* 8024ADCC  4B FF FA 01 */	bl setNodeIndex__10dMsgFlow_cFUsPP10fopAc_ac_c
/* 8024ADD0  38 60 00 01 */	li r3, 1
/* 8024ADD4  39 61 00 20 */	addi r11, r1, 0x20
/* 8024ADD8  48 11 74 51 */	bl _restgpr_29
/* 8024ADDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8024ADE0  7C 08 03 A6 */	mtlr r0
/* 8024ADE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8024ADE8  4E 80 00 20 */	blr 
