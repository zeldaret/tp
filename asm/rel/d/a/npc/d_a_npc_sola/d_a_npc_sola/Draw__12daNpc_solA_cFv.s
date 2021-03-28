lbl_80AED14C:
/* 80AED14C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AED150  7C 08 02 A6 */	mflr r0
/* 80AED154  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AED158  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED15C  4B 87 50 80 */	b _savegpr_29
/* 80AED160  7C 7D 1B 78 */	mr r29, r3
/* 80AED164  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80AED168  28 1E 00 00 */	cmplwi r30, 0
/* 80AED16C  41 82 00 30 */	beq lbl_80AED19C
/* 80AED170  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AED174  80 84 00 04 */	lwz r4, 4(r4)
/* 80AED178  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AED17C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AED180  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AED184  7D 89 03 A6 */	mtctr r12
/* 80AED188  4E 80 04 21 */	bctrl 
/* 80AED18C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AED190  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AED194  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AED198  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AED19C:
/* 80AED19C  7F A3 EB 78 */	mr r3, r29
/* 80AED1A0  38 80 00 00 */	li r4, 0
/* 80AED1A4  38 A0 00 00 */	li r5, 0
/* 80AED1A8  3C C0 80 AF */	lis r6, m__18daNpc_solA_Param_c@ha
/* 80AED1AC  38 C6 F1 00 */	addi r6, r6, m__18daNpc_solA_Param_c@l
/* 80AED1B0  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AED1B4  38 C0 00 00 */	li r6, 0
/* 80AED1B8  3C E0 80 AF */	lis r7, lit_4469@ha
/* 80AED1BC  C0 47 F1 AC */	lfs f2, lit_4469@l(r7)
/* 80AED1C0  38 E0 00 00 */	li r7, 0
/* 80AED1C4  39 00 00 00 */	li r8, 0
/* 80AED1C8  39 20 00 00 */	li r9, 0
/* 80AED1CC  4B 65 B6 A0 */	b draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AED1D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AED1D4  4B 87 50 54 */	b _restgpr_29
/* 80AED1D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED1DC  7C 08 03 A6 */	mtlr r0
/* 80AED1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED1E4  4E 80 00 20 */	blr 
