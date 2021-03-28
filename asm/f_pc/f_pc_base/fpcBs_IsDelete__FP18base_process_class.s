lbl_80020760:
/* 80020760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020764  7C 08 02 A6 */	mflr r0
/* 80020768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002076C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80020770  93 C1 00 08 */	stw r30, 8(r1)
/* 80020774  7C 7F 1B 78 */	mr r31, r3
/* 80020778  48 00 0F 7D */	bl fpcLy_CurrentLayer__Fv
/* 8002077C  7C 7E 1B 78 */	mr r30, r3
/* 80020780  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 80020784  48 00 0F 69 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80020788  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 8002078C  7F E4 FB 78 */	mr r4, r31
/* 80020790  48 00 1C F5 */	bl fpcMtd_IsDelete__FP20process_method_classPv
/* 80020794  7C 7F 1B 78 */	mr r31, r3
/* 80020798  7F C3 F3 78 */	mr r3, r30
/* 8002079C  48 00 0F 51 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800207A0  7F E3 FB 78 */	mr r3, r31
/* 800207A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800207A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800207AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800207B0  7C 08 03 A6 */	mtlr r0
/* 800207B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800207B8  4E 80 00 20 */	blr 
