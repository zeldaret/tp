lbl_80022F3C:
/* 80022F3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80022F40  7C 08 02 A6 */	mflr r0
/* 80022F44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022F48  39 61 00 20 */	addi r11, r1, 0x20
/* 80022F4C  48 33 F2 8D */	bl _savegpr_28
/* 80022F50  7C 7C 1B 78 */	mr r28, r3
/* 80022F54  7C 9D 23 78 */	mr r29, r4
/* 80022F58  7C BE 2B 78 */	mr r30, r5
/* 80022F5C  4B FF E7 99 */	bl fpcLy_CurrentLayer__Fv
/* 80022F60  7C 7F 1B 78 */	mr r31, r3
/* 80022F64  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80022F68  28 00 00 00 */	cmplwi r0, 0
/* 80022F6C  41 82 00 1C */	beq lbl_80022F88
/* 80022F70  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 80022F74  4B FF FC 71 */	bl fpcNdRq_IsPossibleTarget__FP18process_node_class
/* 80022F78  2C 03 00 00 */	cmpwi r3, 0
/* 80022F7C  40 82 00 0C */	bne lbl_80022F88
/* 80022F80  38 60 00 00 */	li r3, 0
/* 80022F84  48 00 00 4C */	b lbl_80022FD0
lbl_80022F88:
/* 80022F88  7F 83 E3 78 */	mr r3, r28
/* 80022F8C  4B FF FD 11 */	bl fpcNdRq_Create__FUl
/* 80022F90  28 03 00 00 */	cmplwi r3, 0
/* 80022F94  41 82 00 3C */	beq lbl_80022FD0
/* 80022F98  3C 80 80 3A */	lis r4, methods_2397@ha
/* 80022F9C  38 04 3A D0 */	addi r0, r4, methods_2397@l
/* 80022FA0  90 03 00 38 */	stw r0, 0x38(r3)
/* 80022FA4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80022FA8  28 00 00 00 */	cmplwi r0, 0
/* 80022FAC  41 82 00 18 */	beq lbl_80022FC4
/* 80022FB0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80022FB4  90 03 00 48 */	stw r0, 0x48(r3)
/* 80022FB8  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80022FBC  80 04 00 04 */	lwz r0, 4(r4)
/* 80022FC0  90 03 00 4C */	stw r0, 0x4c(r3)
lbl_80022FC4:
/* 80022FC4  93 E3 00 50 */	stw r31, 0x50(r3)
/* 80022FC8  B3 A3 00 58 */	sth r29, 0x58(r3)
/* 80022FCC  93 C3 00 5C */	stw r30, 0x5c(r3)
lbl_80022FD0:
/* 80022FD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80022FD4  48 33 F2 51 */	bl _restgpr_28
/* 80022FD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80022FDC  7C 08 03 A6 */	mtlr r0
/* 80022FE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80022FE4  4E 80 00 20 */	blr 
