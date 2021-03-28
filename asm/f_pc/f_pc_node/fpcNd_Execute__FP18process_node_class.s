lbl_80022580:
/* 80022580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022584  7C 08 02 A6 */	mflr r0
/* 80022588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002258C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022590  93 C1 00 08 */	stw r30, 8(r1)
/* 80022594  7C 7F 1B 78 */	mr r31, r3
/* 80022598  4B FF F1 5D */	bl fpcLy_CurrentLayer__Fv
/* 8002259C  7C 7E 1B 78 */	mr r30, r3
/* 800225A0  38 7F 00 BC */	addi r3, r31, 0xbc
/* 800225A4  4B FF F1 49 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800225A8  80 7F 00 B8 */	lwz r3, 0xb8(r31)
/* 800225AC  7F E4 FB 78 */	mr r4, r31
/* 800225B0  4B FF FE B1 */	bl fpcMtd_Execute__FP20process_method_classPv
/* 800225B4  7C 7F 1B 78 */	mr r31, r3
/* 800225B8  7F C3 F3 78 */	mr r3, r30
/* 800225BC  4B FF F1 31 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800225C0  7F E3 FB 78 */	mr r3, r31
/* 800225C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800225C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800225CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800225D0  7C 08 03 A6 */	mtlr r0
/* 800225D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800225D8  4E 80 00 20 */	blr 
