lbl_801C522C:
/* 801C522C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C5230  7C 08 02 A6 */	mflr r0
/* 801C5234  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C5238  39 61 00 20 */	addi r11, r1, 0x20
/* 801C523C  48 19 CF 9D */	bl _savegpr_28
/* 801C5240  7C 7C 1B 78 */	mr r28, r3
/* 801C5244  3B A0 00 00 */	li r29, 0
/* 801C5248  3B E0 00 00 */	li r31, 0
/* 801C524C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C5250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801C5254  3B C3 01 6C */	addi r30, r3, 0x16c
lbl_801C5258:
/* 801C5258  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 801C525C  57 A0 0D FC */	rlwinm r0, r29, 1, 0x17, 0x1e
/* 801C5260  7C BE 02 2E */	lhzx r5, r30, r0
/* 801C5264  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 801C5268  41 82 00 28 */	beq lbl_801C5290
/* 801C526C  38 03 00 20 */	addi r0, r3, 0x20
/* 801C5270  7C DE 00 AE */	lbzx r6, r30, r0
/* 801C5274  7F 83 E3 78 */	mr r3, r28
/* 801C5278  7F A4 EB 78 */	mr r4, r29
/* 801C527C  48 00 0D E1 */	bl setFishParam__15dMenu_Fishing_cFiUsUc
/* 801C5280  38 1F 00 4C */	addi r0, r31, 0x4c
/* 801C5284  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801C5288  48 09 03 41 */	bl show__13CPaneMgrAlphaFv
/* 801C528C  48 00 00 10 */	b lbl_801C529C
lbl_801C5290:
/* 801C5290  38 1F 00 4C */	addi r0, r31, 0x4c
/* 801C5294  7C 7C 00 2E */	lwzx r3, r28, r0
/* 801C5298  48 09 03 71 */	bl hide__13CPaneMgrAlphaFv
lbl_801C529C:
/* 801C529C  3B BD 00 01 */	addi r29, r29, 1
/* 801C52A0  2C 1D 00 06 */	cmpwi r29, 6
/* 801C52A4  3B FF 00 04 */	addi r31, r31, 4
/* 801C52A8  41 80 FF B0 */	blt lbl_801C5258
/* 801C52AC  7F 83 E3 78 */	mr r3, r28
/* 801C52B0  88 1C 01 FB */	lbz r0, 0x1fb(r28)
/* 801C52B4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C52B8  3C 80 80 3C */	lis r4, map_init_process@ha
/* 801C52BC  38 04 D0 50 */	addi r0, r4, map_init_process@l
/* 801C52C0  7D 80 2A 14 */	add r12, r0, r5
/* 801C52C4  48 19 CD C1 */	bl __ptmf_scall
/* 801C52C8  60 00 00 00 */	nop 
/* 801C52CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801C52D0  48 19 CF 55 */	bl _restgpr_28
/* 801C52D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C52D8  7C 08 03 A6 */	mtlr r0
/* 801C52DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801C52E0  4E 80 00 20 */	blr 
