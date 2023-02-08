lbl_801B3640:
/* 801B3640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B3644  7C 08 02 A6 */	mflr r0
/* 801B3648  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B364C  39 61 00 20 */	addi r11, r1, 0x20
/* 801B3650  48 1A EB 89 */	bl _savegpr_28
/* 801B3654  7C 7C 1B 78 */	mr r28, r3
/* 801B3658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B365C  A0 83 61 C0 */	lhz r4, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 801B3660  38 60 00 05 */	li r3, 5
/* 801B3664  7C 04 1B D6 */	divw r0, r4, r3
/* 801B3668  7C 00 19 D6 */	mullw r0, r0, r3
/* 801B366C  7F C0 20 50 */	subf r30, r0, r4
/* 801B3670  3B A0 00 00 */	li r29, 0
/* 801B3674  3B E0 00 00 */	li r31, 0
lbl_801B3678:
/* 801B3678  7C 1D F0 00 */	cmpw r29, r30
/* 801B367C  40 80 00 38 */	bge lbl_801B36B4
/* 801B3680  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 801B3684  3C 80 80 39 */	lis r4, heart_tag@ha /* 0x80395078@ha */
/* 801B3688  38 04 50 78 */	addi r0, r4, heart_tag@l /* 0x80395078@l */
/* 801B368C  7C 80 FA 14 */	add r4, r0, r31
/* 801B3690  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3694  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3698  81 83 00 00 */	lwz r12, 0(r3)
/* 801B369C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B36A0  7D 89 03 A6 */	mtctr r12
/* 801B36A4  4E 80 04 21 */	bctrl 
/* 801B36A8  38 00 00 01 */	li r0, 1
/* 801B36AC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B36B0  48 00 00 34 */	b lbl_801B36E4
lbl_801B36B4:
/* 801B36B4  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 801B36B8  3C 80 80 39 */	lis r4, heart_tag@ha /* 0x80395078@ha */
/* 801B36BC  38 04 50 78 */	addi r0, r4, heart_tag@l /* 0x80395078@l */
/* 801B36C0  7C 80 FA 14 */	add r4, r0, r31
/* 801B36C4  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B36C8  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B36CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B36D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B36D4  7D 89 03 A6 */	mtctr r12
/* 801B36D8  4E 80 04 21 */	bctrl 
/* 801B36DC  38 00 00 00 */	li r0, 0
/* 801B36E0  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801B36E4:
/* 801B36E4  3B BD 00 01 */	addi r29, r29, 1
/* 801B36E8  2C 1D 00 04 */	cmpwi r29, 4
/* 801B36EC  3B FF 00 08 */	addi r31, r31, 8
/* 801B36F0  41 80 FF 88 */	blt lbl_801B3678
/* 801B36F4  39 61 00 20 */	addi r11, r1, 0x20
/* 801B36F8  48 1A EB 2D */	bl _restgpr_28
/* 801B36FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B3700  7C 08 03 A6 */	mtlr r0
/* 801B3704  38 21 00 20 */	addi r1, r1, 0x20
/* 801B3708  4E 80 00 20 */	blr 
