lbl_80A01DA8:
/* 80A01DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A01DAC  7C 08 02 A6 */	mflr r0
/* 80A01DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A01DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A01DB8  4B 96 04 25 */	bl _savegpr_29
/* 80A01DBC  7C 7D 1B 78 */	mr r29, r3
/* 80A01DC0  83 C3 09 6C */	lwz r30, 0x96c(r3)
/* 80A01DC4  28 1E 00 00 */	cmplwi r30, 0
/* 80A01DC8  41 82 00 30 */	beq lbl_80A01DF8
/* 80A01DCC  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80A01DD0  80 84 00 04 */	lwz r4, 4(r4)
/* 80A01DD4  83 E4 00 04 */	lwz r31, 4(r4)
/* 80A01DD8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A01DDC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A01DE0  7D 89 03 A6 */	mtctr r12
/* 80A01DE4  4E 80 04 21 */	bctrl 
/* 80A01DE8  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80A01DEC  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80A01DF0  7C 64 00 2E */	lwzx r3, r4, r0
/* 80A01DF4  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80A01DF8:
/* 80A01DF8  7F A3 EB 78 */	mr r3, r29
/* 80A01DFC  38 80 00 00 */	li r4, 0
/* 80A01E00  38 A0 00 00 */	li r5, 0
/* 80A01E04  3C C0 80 A0 */	lis r6, m__17daNpc_Hoz_Param_c@ha /* 0x80A06650@ha */
/* 80A01E08  38 C6 66 50 */	addi r6, r6, m__17daNpc_Hoz_Param_c@l /* 0x80A06650@l */
/* 80A01E0C  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A01E10  38 C0 00 00 */	li r6, 0
/* 80A01E14  3C E0 80 A0 */	lis r7, lit_4536@ha /* 0x80A0671C@ha */
/* 80A01E18  C0 47 67 1C */	lfs f2, lit_4536@l(r7)  /* 0x80A0671C@l */
/* 80A01E1C  38 E0 00 00 */	li r7, 0
/* 80A01E20  39 00 00 00 */	li r8, 0
/* 80A01E24  39 20 00 00 */	li r9, 0
/* 80A01E28  4B 74 6A 45 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80A01E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A01E30  4B 96 03 F9 */	bl _restgpr_29
/* 80A01E34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A01E38  7C 08 03 A6 */	mtlr r0
/* 80A01E3C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A01E40  4E 80 00 20 */	blr 
