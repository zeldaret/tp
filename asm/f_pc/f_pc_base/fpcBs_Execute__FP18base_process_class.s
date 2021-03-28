lbl_800206C4:
/* 800206C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800206C8  7C 08 02 A6 */	mflr r0
/* 800206CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800206D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800206D4  93 C1 00 08 */	stw r30, 8(r1)
/* 800206D8  7C 7F 1B 78 */	mr r31, r3
/* 800206DC  48 00 10 19 */	bl fpcLy_CurrentLayer__Fv
/* 800206E0  7C 7E 1B 78 */	mr r30, r3
/* 800206E4  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800206E8  48 00 10 05 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800206EC  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 800206F0  7F E4 FB 78 */	mr r4, r31
/* 800206F4  48 00 1D 6D */	bl fpcMtd_Execute__FP20process_method_classPv
/* 800206F8  7C 7F 1B 78 */	mr r31, r3
/* 800206FC  7F C3 F3 78 */	mr r3, r30
/* 80020700  48 00 0F ED */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80020704  7F E3 FB 78 */	mr r3, r31
/* 80020708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002070C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80020710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020714  7C 08 03 A6 */	mtlr r0
/* 80020718  38 21 00 10 */	addi r1, r1, 0x10
/* 8002071C  4E 80 00 20 */	blr 
