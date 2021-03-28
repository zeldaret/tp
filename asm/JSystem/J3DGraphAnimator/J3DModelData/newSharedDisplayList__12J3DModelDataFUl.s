lbl_80325E14:
/* 80325E14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80325E18  7C 08 02 A6 */	mflr r0
/* 80325E1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80325E20  39 61 00 20 */	addi r11, r1, 0x20
/* 80325E24  48 03 C3 B1 */	bl _savegpr_27
/* 80325E28  7C 7B 1B 78 */	mr r27, r3
/* 80325E2C  A3 E3 00 5C */	lhz r31, 0x5c(r3)
/* 80325E30  3B 80 00 00 */	li r28, 0
/* 80325E34  54 9E 03 5A */	rlwinm r30, r4, 0, 0xd, 0xd
/* 80325E38  48 00 00 68 */	b lbl_80325EA0
lbl_80325E3C:
/* 80325E3C  28 1E 00 00 */	cmplwi r30, 0
/* 80325E40  41 82 00 30 */	beq lbl_80325E70
/* 80325E44  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325E48  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325E4C  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325E50  7F A3 EB 78 */	mr r3, r29
/* 80325E54  4B FF 04 3D */	bl countDLSize__11J3DMaterialFv
/* 80325E58  7C 64 1B 78 */	mr r4, r3
/* 80325E5C  7F A3 EB 78 */	mr r3, r29
/* 80325E60  4B FF 10 C5 */	bl newSingleSharedDisplayList__11J3DMaterialFUl
/* 80325E64  2C 03 00 00 */	cmpwi r3, 0
/* 80325E68  41 82 00 34 */	beq lbl_80325E9C
/* 80325E6C  48 00 00 44 */	b lbl_80325EB0
lbl_80325E70:
/* 80325E70  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325E74  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325E78  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325E7C  7F A3 EB 78 */	mr r3, r29
/* 80325E80  4B FF 04 11 */	bl countDLSize__11J3DMaterialFv
/* 80325E84  7C 64 1B 78 */	mr r4, r3
/* 80325E88  7F A3 EB 78 */	mr r3, r29
/* 80325E8C  4B FF 10 05 */	bl newSharedDisplayList__11J3DMaterialFUl
/* 80325E90  2C 03 00 00 */	cmpwi r3, 0
/* 80325E94  41 82 00 08 */	beq lbl_80325E9C
/* 80325E98  48 00 00 18 */	b lbl_80325EB0
lbl_80325E9C:
/* 80325E9C  3B 9C 00 01 */	addi r28, r28, 1
lbl_80325EA0:
/* 80325EA0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80325EA4  7C 00 F8 40 */	cmplw r0, r31
/* 80325EA8  41 80 FF 94 */	blt lbl_80325E3C
/* 80325EAC  38 60 00 00 */	li r3, 0
lbl_80325EB0:
/* 80325EB0  39 61 00 20 */	addi r11, r1, 0x20
/* 80325EB4  48 03 C3 6D */	bl _restgpr_27
/* 80325EB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80325EBC  7C 08 03 A6 */	mtlr r0
/* 80325EC0  38 21 00 20 */	addi r1, r1, 0x20
/* 80325EC4  4E 80 00 20 */	blr 
