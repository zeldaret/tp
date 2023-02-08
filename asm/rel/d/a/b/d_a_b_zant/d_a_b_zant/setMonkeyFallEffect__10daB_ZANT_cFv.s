lbl_806403D4:
/* 806403D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806403D8  7C 08 02 A6 */	mflr r0
/* 806403DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806403E0  39 61 00 40 */	addi r11, r1, 0x40
/* 806403E4  4B D2 1D ED */	bl _savegpr_26
/* 806403E8  7C 7A 1B 78 */	mr r26, r3
/* 806403EC  3B 60 00 00 */	li r27, 0
/* 806403F0  3B E0 00 00 */	li r31, 0
/* 806403F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806403F8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806403FC  3C 60 80 65 */	lis r3, l_landing_effect_id_5284@ha /* 0x8064F044@ha */
/* 80640400  3B A3 F0 44 */	addi r29, r3, l_landing_effect_id_5284@l /* 0x8064F044@l */
/* 80640404  3C 60 80 65 */	lis r3, lit_4169@ha /* 0x8064EB28@ha */
/* 80640408  3B C3 EB 28 */	addi r30, r3, lit_4169@l /* 0x8064EB28@l */
lbl_8064040C:
/* 8064040C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80640410  38 80 00 00 */	li r4, 0
/* 80640414  90 81 00 08 */	stw r4, 8(r1)
/* 80640418  38 00 FF FF */	li r0, -1
/* 8064041C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640420  90 81 00 10 */	stw r4, 0x10(r1)
/* 80640424  90 81 00 14 */	stw r4, 0x14(r1)
/* 80640428  90 81 00 18 */	stw r4, 0x18(r1)
/* 8064042C  38 80 00 00 */	li r4, 0
/* 80640430  7C BD FA 2E */	lhzx r5, r29, r31
/* 80640434  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 80640438  38 FA 01 0C */	addi r7, r26, 0x10c
/* 8064043C  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 80640440  39 20 00 00 */	li r9, 0
/* 80640444  39 40 00 FF */	li r10, 0xff
/* 80640448  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8064044C  4B A0 C6 45 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80640450  3B 7B 00 01 */	addi r27, r27, 1
/* 80640454  2C 1B 00 03 */	cmpwi r27, 3
/* 80640458  3B FF 00 02 */	addi r31, r31, 2
/* 8064045C  41 80 FF B0 */	blt lbl_8064040C
/* 80640460  39 61 00 40 */	addi r11, r1, 0x40
/* 80640464  4B D2 1D B9 */	bl _restgpr_26
/* 80640468  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8064046C  7C 08 03 A6 */	mtlr r0
/* 80640470  38 21 00 40 */	addi r1, r1, 0x40
/* 80640474  4E 80 00 20 */	blr 
