lbl_80022E14:
/* 80022E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022E18  7C 08 02 A6 */	mflr r0
/* 80022E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80022E24  48 33 F3 B5 */	bl _savegpr_28
/* 80022E28  7C 7C 1B 78 */	mr r28, r3
/* 80022E2C  7C 9D 23 78 */	mr r29, r4
/* 80022E30  7C BE 2B 78 */	mr r30, r5
/* 80022E34  7C DF 33 78 */	mr r31, r6
/* 80022E38  7F A3 EB 78 */	mr r3, r29
/* 80022E3C  4B FF FD A9 */	bl fpcNdRq_IsPossibleTarget__FP18process_node_class
/* 80022E40  2C 03 00 01 */	cmpwi r3, 1
/* 80022E44  40 82 00 50 */	bne lbl_80022E94
/* 80022E48  7F A3 EB 78 */	mr r3, r29
/* 80022E4C  4B FF FE 05 */	bl fpcNdRq_IsIng__FP18process_node_class
/* 80022E50  2C 03 00 00 */	cmpwi r3, 0
/* 80022E54  40 82 00 40 */	bne lbl_80022E94
/* 80022E58  7F 83 E3 78 */	mr r3, r28
/* 80022E5C  4B FF FE 41 */	bl fpcNdRq_Create__FUl
/* 80022E60  28 03 00 00 */	cmplwi r3, 0
/* 80022E64  41 82 00 34 */	beq lbl_80022E98
/* 80022E68  3C 80 80 3A */	lis r4, methods_2376@ha /* 0x803A3AA8@ha */
/* 80022E6C  38 04 3A A8 */	addi r0, r4, methods_2376@l /* 0x803A3AA8@l */
/* 80022E70  90 03 00 38 */	stw r0, 0x38(r3)
/* 80022E74  93 A3 00 48 */	stw r29, 0x48(r3)
/* 80022E78  80 1D 00 04 */	lwz r0, 4(r29)
/* 80022E7C  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80022E80  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 80022E84  90 03 00 50 */	stw r0, 0x50(r3)
/* 80022E88  B3 C3 00 58 */	sth r30, 0x58(r3)
/* 80022E8C  93 E3 00 5C */	stw r31, 0x5c(r3)
/* 80022E90  48 00 00 08 */	b lbl_80022E98
lbl_80022E94:
/* 80022E94  38 60 00 00 */	li r3, 0
lbl_80022E98:
/* 80022E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80022E9C  48 33 F3 89 */	bl _restgpr_28
/* 80022EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022EA4  7C 08 03 A6 */	mtlr r0
/* 80022EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80022EAC  4E 80 00 20 */	blr 
