lbl_8003CB00:
/* 8003CB00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003CB04  7C 08 02 A6 */	mflr r0
/* 8003CB08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003CB0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CB10  48 32 56 C5 */	bl _savegpr_27
/* 8003CB14  7C 7B 1B 78 */	mr r27, r3
/* 8003CB18  7C 9C 23 78 */	mr r28, r4
/* 8003CB1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8003CB20  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8003CB24  7D 89 03 A6 */	mtctr r12
/* 8003CB28  4E 80 04 21 */	bctrl 
/* 8003CB2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003CB30  41 82 00 74 */	beq lbl_8003CBA4
/* 8003CB34  83 DC 00 10 */	lwz r30, 0x10(r28)
/* 8003CB38  3B A0 00 00 */	li r29, 0
/* 8003CB3C  8B FC 00 04 */	lbz r31, 4(r28)
/* 8003CB40  48 00 00 24 */	b lbl_8003CB64
lbl_8003CB44:
/* 8003CB44  7F 63 DB 78 */	mr r3, r27
/* 8003CB48  7F C4 F3 78 */	mr r4, r30
/* 8003CB4C  81 9B 00 00 */	lwz r12, 0(r27)
/* 8003CB50  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8003CB54  7D 89 03 A6 */	mtctr r12
/* 8003CB58  4E 80 04 21 */	bctrl 
/* 8003CB5C  3B DE 00 08 */	addi r30, r30, 8
/* 8003CB60  3B BD 00 01 */	addi r29, r29, 1
lbl_8003CB64:
/* 8003CB64  7C 1D F8 00 */	cmpw r29, r31
/* 8003CB68  41 80 FF DC */	blt lbl_8003CB44
/* 8003CB6C  83 BC 00 08 */	lwz r29, 8(r28)
/* 8003CB70  3B C0 00 00 */	li r30, 0
/* 8003CB74  8B FC 00 02 */	lbz r31, 2(r28)
/* 8003CB78  48 00 00 24 */	b lbl_8003CB9C
lbl_8003CB7C:
/* 8003CB7C  7F 63 DB 78 */	mr r3, r27
/* 8003CB80  7F A4 EB 78 */	mr r4, r29
/* 8003CB84  81 9B 00 00 */	lwz r12, 0(r27)
/* 8003CB88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8003CB8C  7D 89 03 A6 */	mtctr r12
/* 8003CB90  4E 80 04 21 */	bctrl 
/* 8003CB94  3B BD 00 08 */	addi r29, r29, 8
/* 8003CB98  3B DE 00 01 */	addi r30, r30, 1
lbl_8003CB9C:
/* 8003CB9C  7C 1E F8 00 */	cmpw r30, r31
/* 8003CBA0  41 80 FF DC */	blt lbl_8003CB7C
lbl_8003CBA4:
/* 8003CBA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8003CBA8  48 32 56 79 */	bl _restgpr_27
/* 8003CBAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003CBB0  7C 08 03 A6 */	mtlr r0
/* 8003CBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8003CBB8  4E 80 00 20 */	blr 
