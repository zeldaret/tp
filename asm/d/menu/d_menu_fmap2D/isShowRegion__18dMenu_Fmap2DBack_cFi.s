lbl_801D2508:
/* 801D2508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D250C  7C 08 02 A6 */	mflr r0
/* 801D2510  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D2518  7C 9F 23 78 */	mr r31, r4
/* 801D251C  2C 1F 00 07 */	cmpwi r31, 7
/* 801D2520  40 82 00 0C */	bne lbl_801D252C
/* 801D2524  38 60 00 01 */	li r3, 1
/* 801D2528  48 00 01 1C */	b lbl_801D2644
lbl_801D252C:
/* 801D252C  3C 80 80 43 */	lis r4, g_fmapHIO@ha
/* 801D2530  38 84 FC 60 */	addi r4, r4, g_fmapHIO@l
/* 801D2534  88 04 02 FC */	lbz r0, 0x2fc(r4)
/* 801D2538  28 00 00 00 */	cmplwi r0, 0
/* 801D253C  41 82 00 24 */	beq lbl_801D2560
/* 801D2540  88 63 12 2C */	lbz r3, 0x122c(r3)
/* 801D2544  38 00 00 01 */	li r0, 1
/* 801D2548  7C 00 F8 30 */	slw r0, r0, r31
/* 801D254C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801D2550  7C 60 00 39 */	and. r0, r3, r0
/* 801D2554  41 82 00 EC */	beq lbl_801D2640
/* 801D2558  38 60 00 01 */	li r3, 1
/* 801D255C  48 00 00 E8 */	b lbl_801D2644
lbl_801D2560:
/* 801D2560  7C 84 FA 14 */	add r4, r4, r31
/* 801D2564  88 04 03 0B */	lbz r0, 0x30b(r4)
/* 801D2568  28 00 00 00 */	cmplwi r0, 0
/* 801D256C  41 82 00 24 */	beq lbl_801D2590
/* 801D2570  88 83 12 2C */	lbz r4, 0x122c(r3)
/* 801D2574  38 00 00 01 */	li r0, 1
/* 801D2578  7C 00 F8 30 */	slw r0, r0, r31
/* 801D257C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801D2580  7C 80 00 39 */	and. r0, r4, r0
/* 801D2584  41 82 00 0C */	beq lbl_801D2590
/* 801D2588  38 60 00 01 */	li r3, 1
/* 801D258C  48 00 00 B8 */	b lbl_801D2644
lbl_801D2590:
/* 801D2590  2C 1F 00 06 */	cmpwi r31, 6
/* 801D2594  40 82 00 54 */	bne lbl_801D25E8
/* 801D2598  88 03 12 2C */	lbz r0, 0x122c(r3)
/* 801D259C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 801D25A0  41 82 00 28 */	beq lbl_801D25C8
/* 801D25A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D25A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D25AC  38 63 00 64 */	addi r3, r3, 0x64
/* 801D25B0  38 80 00 04 */	li r4, 4
/* 801D25B4  4B E6 08 C5 */	bl isRegionBit__33dSv_player_field_last_stay_info_cCFi
/* 801D25B8  2C 03 00 00 */	cmpwi r3, 0
/* 801D25BC  41 82 00 0C */	beq lbl_801D25C8
/* 801D25C0  38 60 00 01 */	li r3, 1
/* 801D25C4  48 00 00 80 */	b lbl_801D2644
lbl_801D25C8:
/* 801D25C8  4B E5 C8 99 */	bl dComIfGp_getNowLevel__Fv
/* 801D25CC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801D25D0  28 00 00 04 */	cmplwi r0, 4
/* 801D25D4  40 82 00 0C */	bne lbl_801D25E0
/* 801D25D8  38 60 00 01 */	li r3, 1
/* 801D25DC  48 00 00 68 */	b lbl_801D2644
lbl_801D25E0:
/* 801D25E0  38 60 00 00 */	li r3, 0
/* 801D25E4  48 00 00 60 */	b lbl_801D2644
lbl_801D25E8:
/* 801D25E8  88 63 12 2C */	lbz r3, 0x122c(r3)
/* 801D25EC  38 00 00 01 */	li r0, 1
/* 801D25F0  7C 00 F8 30 */	slw r0, r0, r31
/* 801D25F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801D25F8  7C 60 00 39 */	and. r0, r3, r0
/* 801D25FC  41 82 00 28 */	beq lbl_801D2624
/* 801D2600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801D2604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801D2608  38 63 00 64 */	addi r3, r3, 0x64
/* 801D260C  38 9F 00 01 */	addi r4, r31, 1
/* 801D2610  4B E6 08 69 */	bl isRegionBit__33dSv_player_field_last_stay_info_cCFi
/* 801D2614  2C 03 00 00 */	cmpwi r3, 0
/* 801D2618  41 82 00 0C */	beq lbl_801D2624
/* 801D261C  38 60 00 01 */	li r3, 1
/* 801D2620  48 00 00 24 */	b lbl_801D2644
lbl_801D2624:
/* 801D2624  4B E5 C8 3D */	bl dComIfGp_getNowLevel__Fv
/* 801D2628  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 801D262C  38 1F 00 01 */	addi r0, r31, 1
/* 801D2630  7C 00 18 00 */	cmpw r0, r3
/* 801D2634  40 82 00 0C */	bne lbl_801D2640
/* 801D2638  38 60 00 01 */	li r3, 1
/* 801D263C  48 00 00 08 */	b lbl_801D2644
lbl_801D2640:
/* 801D2640  38 60 00 00 */	li r3, 0
lbl_801D2644:
/* 801D2644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D264C  7C 08 03 A6 */	mtlr r0
/* 801D2650  38 21 00 10 */	addi r1, r1, 0x10
/* 801D2654  4E 80 00 20 */	blr 
