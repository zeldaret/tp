lbl_800220C0:
/* 800220C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800220C4  7C 08 02 A6 */	mflr r0
/* 800220C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800220CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800220D0  7C 7F 1B 78 */	mr r31, r3
/* 800220D4  4B FF F6 09 */	bl fpcLy_RootLayer__Fv
/* 800220D8  7F E4 FB 78 */	mr r4, r31
/* 800220DC  38 A0 00 00 */	li r5, 0
/* 800220E0  4B FF FA A9 */	bl fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
/* 800220E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800220E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800220EC  7C 08 03 A6 */	mtlr r0
/* 800220F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800220F4  4E 80 00 20 */	blr 
