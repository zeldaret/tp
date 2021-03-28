lbl_801F260C:
/* 801F260C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F2610  7C 08 02 A6 */	mflr r0
/* 801F2614  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F2618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F261C  7C 7F 1B 78 */	mr r31, r3
/* 801F2620  88 83 01 BD */	lbz r4, 0x1bd(r3)
/* 801F2624  28 04 00 00 */	cmplwi r4, 0
/* 801F2628  41 82 00 10 */	beq lbl_801F2638
/* 801F262C  38 04 FF FF */	addi r0, r4, -1
/* 801F2630  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F2634  48 00 00 50 */	b lbl_801F2684
lbl_801F2638:
/* 801F2638  80 1F 21 98 */	lwz r0, 0x2198(r31)
/* 801F263C  2C 00 00 02 */	cmpwi r0, 2
/* 801F2640  40 82 00 18 */	bne lbl_801F2658
/* 801F2644  38 80 03 C6 */	li r4, 0x3c6
/* 801F2648  48 00 2A 7D */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F264C  38 00 00 1C */	li r0, 0x1c
/* 801F2650  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F2654  48 00 00 30 */	b lbl_801F2684
lbl_801F2658:
/* 801F2658  2C 00 00 01 */	cmpwi r0, 1
/* 801F265C  40 82 00 28 */	bne lbl_801F2684
/* 801F2660  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 801F2664  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 801F2668  88 04 0F 19 */	lbz r0, 0xf19(r4)
/* 801F266C  60 00 00 01 */	ori r0, r0, 1
/* 801F2670  98 04 0F 19 */	stb r0, 0xf19(r4)
/* 801F2674  38 80 03 C7 */	li r4, 0x3c7
/* 801F2678  48 00 2A 4D */	bl errorTxtSet__12dMenu_save_cFUs
/* 801F267C  38 00 00 1C */	li r0, 0x1c
/* 801F2680  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F2684:
/* 801F2684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F2688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F268C  7C 08 03 A6 */	mtlr r0
/* 801F2690  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2694  4E 80 00 20 */	blr 
