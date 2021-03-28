lbl_80022514:
/* 80022514  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022518  7C 08 02 A6 */	mflr r0
/* 8002251C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022520  39 61 00 20 */	addi r11, r1, 0x20
/* 80022524  48 33 FC B9 */	bl _savegpr_29
/* 80022528  7C 7D 1B 78 */	mr r29, r3
/* 8002252C  3B E0 00 00 */	li r31, 0
/* 80022530  88 03 01 A8 */	lbz r0, 0x1a8(r3)
/* 80022534  7C 00 07 75 */	extsb. r0, r0
/* 80022538  40 82 00 2C */	bne lbl_80022564
/* 8002253C  4B FF F1 B9 */	bl fpcLy_CurrentLayer__Fv
/* 80022540  7C 7E 1B 78 */	mr r30, r3
/* 80022544  38 7D 00 BC */	addi r3, r29, 0xbc
/* 80022548  4B FF F1 A5 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 8002254C  80 7D 00 B8 */	lwz r3, 0xb8(r29)
/* 80022550  7F A4 EB 78 */	mr r4, r29
/* 80022554  4B FF FF 9D */	bl fpcNd_DrawMethod__FP21nodedraw_method_classPv
/* 80022558  7C 7F 1B 78 */	mr r31, r3
/* 8002255C  7F C3 F3 78 */	mr r3, r30
/* 80022560  4B FF F1 8D */	bl fpcLy_SetCurrentLayer__FP11layer_class
lbl_80022564:
/* 80022564  7F E3 FB 78 */	mr r3, r31
/* 80022568  39 61 00 20 */	addi r11, r1, 0x20
/* 8002256C  48 33 FC BD */	bl _restgpr_29
/* 80022570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022574  7C 08 03 A6 */	mtlr r0
/* 80022578  38 21 00 20 */	addi r1, r1, 0x20
/* 8002257C  4E 80 00 20 */	blr 
