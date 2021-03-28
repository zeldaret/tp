lbl_80246DD8:
/* 80246DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80246DDC  7C 08 02 A6 */	mflr r0
/* 80246DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80246DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80246DE8  48 11 B3 E9 */	bl _savegpr_26
/* 80246DEC  7C 7A 1B 79 */	or. r26, r3, r3
/* 80246DF0  7C 9B 23 78 */	mr r27, r4
/* 80246DF4  41 82 00 D8 */	beq lbl_80246ECC
/* 80246DF8  3C 60 80 3C */	lis r3, __vt__15dMsgScrnStaff_c@ha
/* 80246DFC  38 03 13 70 */	addi r0, r3, __vt__15dMsgScrnStaff_c@l
/* 80246E00  90 1A 00 00 */	stw r0, 0(r26)
/* 80246E04  80 7A 00 04 */	lwz r3, 4(r26)
/* 80246E08  28 03 00 00 */	cmplwi r3, 0
/* 80246E0C  41 82 00 18 */	beq lbl_80246E24
/* 80246E10  38 80 00 01 */	li r4, 1
/* 80246E14  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E18  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E1C  7D 89 03 A6 */	mtctr r12
/* 80246E20  4E 80 04 21 */	bctrl 
lbl_80246E24:
/* 80246E24  38 00 00 00 */	li r0, 0
/* 80246E28  90 1A 00 04 */	stw r0, 4(r26)
/* 80246E2C  80 7A 00 08 */	lwz r3, 8(r26)
/* 80246E30  28 03 00 00 */	cmplwi r3, 0
/* 80246E34  41 82 00 18 */	beq lbl_80246E4C
/* 80246E38  38 80 00 01 */	li r4, 1
/* 80246E3C  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E40  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E44  7D 89 03 A6 */	mtctr r12
/* 80246E48  4E 80 04 21 */	bctrl 
lbl_80246E4C:
/* 80246E4C  3B C0 00 00 */	li r30, 0
/* 80246E50  93 DA 00 08 */	stw r30, 8(r26)
/* 80246E54  3B 80 00 00 */	li r28, 0
/* 80246E58  7F DF F3 78 */	mr r31, r30
lbl_80246E5C:
/* 80246E5C  3B BF 00 0C */	addi r29, r31, 0xc
/* 80246E60  7C 7A E8 2E */	lwzx r3, r26, r29
/* 80246E64  28 03 00 00 */	cmplwi r3, 0
/* 80246E68  41 82 00 18 */	beq lbl_80246E80
/* 80246E6C  38 80 00 01 */	li r4, 1
/* 80246E70  81 83 00 00 */	lwz r12, 0(r3)
/* 80246E74  81 8C 00 08 */	lwz r12, 8(r12)
/* 80246E78  7D 89 03 A6 */	mtctr r12
/* 80246E7C  4E 80 04 21 */	bctrl 
lbl_80246E80:
/* 80246E80  7F DA E9 2E */	stwx r30, r26, r29
/* 80246E84  3B 9C 00 01 */	addi r28, r28, 1
/* 80246E88  2C 1C 00 06 */	cmpwi r28, 6
/* 80246E8C  3B FF 00 04 */	addi r31, r31, 4
/* 80246E90  41 80 FF CC */	blt lbl_80246E5C
/* 80246E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80246E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80246E9C  80 63 5C 84 */	lwz r3, 0x5c84(r3)
/* 80246EA0  81 83 00 00 */	lwz r12, 0(r3)
/* 80246EA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80246EA8  7D 89 03 A6 */	mtctr r12
/* 80246EAC  4E 80 04 21 */	bctrl 
/* 80246EB0  7F 43 D3 78 */	mr r3, r26
/* 80246EB4  38 80 00 00 */	li r4, 0
/* 80246EB8  4B FF 52 6D */	bl __dt__14dMsgScrnBase_cFv
/* 80246EBC  7F 60 07 35 */	extsh. r0, r27
/* 80246EC0  40 81 00 0C */	ble lbl_80246ECC
/* 80246EC4  7F 43 D3 78 */	mr r3, r26
/* 80246EC8  48 08 7E 75 */	bl __dl__FPv
lbl_80246ECC:
/* 80246ECC  7F 43 D3 78 */	mr r3, r26
/* 80246ED0  39 61 00 20 */	addi r11, r1, 0x20
/* 80246ED4  48 11 B3 49 */	bl _restgpr_26
/* 80246ED8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80246EDC  7C 08 03 A6 */	mtlr r0
/* 80246EE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80246EE4  4E 80 00 20 */	blr 
