lbl_8030CE7C:
/* 8030CE7C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 8030CE80  7C 08 02 A6 */	mflr r0
/* 8030CE84  90 01 01 24 */	stw r0, 0x124(r1)
/* 8030CE88  39 61 01 20 */	addi r11, r1, 0x120
/* 8030CE8C  48 05 53 51 */	bl _savegpr_29
/* 8030CE90  7C 7D 1B 78 */	mr r29, r3
/* 8030CE94  7C 9E 23 78 */	mr r30, r4
/* 8030CE98  7F C3 F3 78 */	mr r3, r30
/* 8030CE9C  38 80 00 01 */	li r4, 1
/* 8030CEA0  81 9E 00 00 */	lwz r12, 0(r30)
/* 8030CEA4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8030CEA8  7D 89 03 A6 */	mtctr r12
/* 8030CEAC  4E 80 04 21 */	bctrl 
/* 8030CEB0  7F C3 F3 78 */	mr r3, r30
/* 8030CEB4  38 81 00 08 */	addi r4, r1, 8
/* 8030CEB8  38 A0 00 01 */	li r5, 1
/* 8030CEBC  4B FC F3 DD */	bl read__14JSUInputStreamFPvl
/* 8030CEC0  8B E1 00 08 */	lbz r31, 8(r1)
/* 8030CEC4  28 1F 00 00 */	cmplwi r31, 0
/* 8030CEC8  40 82 00 0C */	bne lbl_8030CED4
/* 8030CECC  38 60 00 00 */	li r3, 0
/* 8030CED0  48 00 00 28 */	b lbl_8030CEF8
lbl_8030CED4:
/* 8030CED4  7F C3 F3 78 */	mr r3, r30
/* 8030CED8  38 81 00 0C */	addi r4, r1, 0xc
/* 8030CEDC  7F E5 FB 78 */	mr r5, r31
/* 8030CEE0  4B FC F3 B9 */	bl read__14JSUInputStreamFPvl
/* 8030CEE4  38 00 00 00 */	li r0, 0
/* 8030CEE8  38 81 00 0C */	addi r4, r1, 0xc
/* 8030CEEC  7C 04 F9 AE */	stbx r0, r4, r31
/* 8030CEF0  7F A3 EB 78 */	mr r3, r29
/* 8030CEF4  4B FF FF 25 */	bl get__13J2DDataManageFPCc
lbl_8030CEF8:
/* 8030CEF8  39 61 01 20 */	addi r11, r1, 0x120
/* 8030CEFC  48 05 53 2D */	bl _restgpr_29
/* 8030CF00  80 01 01 24 */	lwz r0, 0x124(r1)
/* 8030CF04  7C 08 03 A6 */	mtlr r0
/* 8030CF08  38 21 01 20 */	addi r1, r1, 0x120
/* 8030CF0C  4E 80 00 20 */	blr 
