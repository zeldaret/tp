lbl_80022EB0:
/* 80022EB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80022EB4  7C 08 02 A6 */	mflr r0
/* 80022EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80022EBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80022EC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80022EC4  7C 7E 1B 78 */	mr r30, r3
/* 80022EC8  7C 9F 23 78 */	mr r31, r4
/* 80022ECC  7F E3 FB 78 */	mr r3, r31
/* 80022ED0  4B FF FD 15 */	bl fpcNdRq_IsPossibleTarget__FP18process_node_class
/* 80022ED4  2C 03 00 01 */	cmpwi r3, 1
/* 80022ED8  40 82 00 48 */	bne lbl_80022F20
/* 80022EDC  7F E3 FB 78 */	mr r3, r31
/* 80022EE0  4B FF FD 71 */	bl fpcNdRq_IsIng__FP18process_node_class
/* 80022EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80022EE8  40 82 00 38 */	bne lbl_80022F20
/* 80022EEC  7F C3 F3 78 */	mr r3, r30
/* 80022EF0  4B FF FD AD */	bl fpcNdRq_Create__FUl
/* 80022EF4  28 03 00 00 */	cmplwi r3, 0
/* 80022EF8  41 82 00 2C */	beq lbl_80022F24
/* 80022EFC  3C 80 80 3A */	lis r4, methods_2386@ha /* 0x803A3AC0@ha */
/* 80022F00  38 04 3A C0 */	addi r0, r4, methods_2386@l /* 0x803A3AC0@l */
/* 80022F04  90 03 00 38 */	stw r0, 0x38(r3)
/* 80022F08  93 E3 00 48 */	stw r31, 0x48(r3)
/* 80022F0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80022F10  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80022F14  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 80022F18  90 03 00 50 */	stw r0, 0x50(r3)
/* 80022F1C  48 00 00 08 */	b lbl_80022F24
lbl_80022F20:
/* 80022F20  38 60 00 00 */	li r3, 0
lbl_80022F24:
/* 80022F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80022F28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80022F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80022F30  7C 08 03 A6 */	mtlr r0
/* 80022F34  38 21 00 10 */	addi r1, r1, 0x10
/* 80022F38  4E 80 00 20 */	blr 
