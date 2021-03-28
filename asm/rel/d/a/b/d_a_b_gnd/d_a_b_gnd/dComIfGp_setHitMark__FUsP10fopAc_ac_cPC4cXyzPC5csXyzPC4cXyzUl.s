lbl_80602418:
/* 80602418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060241C  7C 08 02 A6 */	mflr r0
/* 80602420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80602424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80602428  7C 7F 1B 78 */	mr r31, r3
/* 8060242C  7C 8C 23 78 */	mr r12, r4
/* 80602430  7C AB 2B 78 */	mr r11, r5
/* 80602434  7C CA 33 78 */	mr r10, r6
/* 80602438  7C E0 3B 78 */	mr r0, r7
/* 8060243C  7D 09 43 78 */	mr r9, r8
/* 80602440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80602444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80602448  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8060244C  7F E4 FB 78 */	mr r4, r31
/* 80602450  7D 85 63 78 */	mr r5, r12
/* 80602454  7D 66 5B 78 */	mr r6, r11
/* 80602458  7D 47 53 78 */	mr r7, r10
/* 8060245C  7C 08 03 78 */	mr r8, r0
/* 80602460  4B A4 9D B8 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80602464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80602468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060246C  7C 08 03 A6 */	mtlr r0
/* 80602470  38 21 00 10 */	addi r1, r1, 0x10
/* 80602474  4E 80 00 20 */	blr 
