lbl_800225DC:
/* 800225DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800225E0  7C 08 02 A6 */	mflr r0
/* 800225E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800225E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800225EC  93 C1 00 08 */	stw r30, 8(r1)
/* 800225F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800225F4  41 82 00 4C */	beq lbl_80022640
/* 800225F8  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 800225FC  80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 80022600  4B FF E0 4D */	bl fpcBs_Is_JustOfType__Fii
/* 80022604  2C 03 00 00 */	cmpwi r3, 0
/* 80022608  41 82 00 38 */	beq lbl_80022640
/* 8002260C  3B FE 00 BC */	addi r31, r30, 0xbc
/* 80022610  7F E3 FB 78 */	mr r3, r31
/* 80022614  4B FF F0 8D */	bl fpcLy_IsCreatingMesg__FP11layer_class
/* 80022618  2C 03 00 00 */	cmpwi r3, 0
/* 8002261C  40 82 00 1C */	bne lbl_80022638
/* 80022620  7F E3 FB 78 */	mr r3, r31
/* 80022624  3C 80 80 02 */	lis r4, fpcNd_IsCreatingFromUnder__FPv@ha
/* 80022628  38 84 25 DC */	addi r4, r4, fpcNd_IsCreatingFromUnder__FPv@l
/* 8002262C  38 A0 00 00 */	li r5, 0
/* 80022630  4B FF F5 F9 */	bl fpcLyIt_Judge__FP11layer_classPFPvPv_PvPv
/* 80022634  48 00 00 10 */	b lbl_80022644
lbl_80022638:
/* 80022638  7F C3 F3 78 */	mr r3, r30
/* 8002263C  48 00 00 08 */	b lbl_80022644
lbl_80022640:
/* 80022640  38 60 00 00 */	li r3, 0
lbl_80022644:
/* 80022644  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022648  83 C1 00 08 */	lwz r30, 8(r1)
/* 8002264C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022650  7C 08 03 A6 */	mtlr r0
/* 80022654  38 21 00 10 */	addi r1, r1, 0x10
/* 80022658  4E 80 00 20 */	blr 
