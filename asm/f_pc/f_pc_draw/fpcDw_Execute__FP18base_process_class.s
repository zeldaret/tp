lbl_80023954:
/* 80023954  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80023958  7C 08 02 A6 */	mflr r0
/* 8002395C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80023960  39 61 00 20 */	addi r11, r1, 0x20
/* 80023964  48 33 E8 79 */	bl _savegpr_29
/* 80023968  7C 7D 1B 78 */	mr r29, r3
/* 8002396C  38 80 00 02 */	li r4, 2
/* 80023970  4B FF FE D5 */	bl fpcPause_IsEnable__FPvUc
/* 80023974  2C 03 00 00 */	cmpwi r3, 0
/* 80023978  40 82 00 60 */	bne lbl_800239D8
/* 8002397C  4B FF DD 79 */	bl fpcLy_CurrentLayer__Fv
/* 80023980  7C 7F 1B 78 */	mr r31, r3
/* 80023984  80 6D 87 B0 */	lwz r3, g_fpcLf_type(r13)
/* 80023988  80 9D 00 B4 */	lwz r4, 0xb4(r29)
/* 8002398C  4B FF CC C1 */	bl fpcBs_Is_JustOfType__Fii
/* 80023990  2C 03 00 00 */	cmpwi r3, 0
/* 80023994  41 82 00 10 */	beq lbl_800239A4
/* 80023998  80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 8002399C  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 800239A0  48 00 00 0C */	b lbl_800239AC
lbl_800239A4:
/* 800239A4  80 7D 00 A8 */	lwz r3, 0xa8(r29)
/* 800239A8  83 C3 00 10 */	lwz r30, 0x10(r3)
lbl_800239AC:
/* 800239AC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 800239B0  4B FF DD 3D */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800239B4  7F A3 EB 78 */	mr r3, r29
/* 800239B8  7F CC F3 78 */	mr r12, r30
/* 800239BC  7D 89 03 A6 */	mtctr r12
/* 800239C0  4E 80 04 21 */	bctrl 
/* 800239C4  7C 7E 1B 78 */	mr r30, r3
/* 800239C8  7F E3 FB 78 */	mr r3, r31
/* 800239CC  4B FF DD 21 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800239D0  7F C3 F3 78 */	mr r3, r30
/* 800239D4  48 00 00 08 */	b lbl_800239DC
lbl_800239D8:
/* 800239D8  38 60 00 00 */	li r3, 0
lbl_800239DC:
/* 800239DC  39 61 00 20 */	addi r11, r1, 0x20
/* 800239E0  48 33 E8 49 */	bl _restgpr_29
/* 800239E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800239E8  7C 08 03 A6 */	mtlr r0
/* 800239EC  38 21 00 20 */	addi r1, r1, 0x20
/* 800239F0  4E 80 00 20 */	blr 
