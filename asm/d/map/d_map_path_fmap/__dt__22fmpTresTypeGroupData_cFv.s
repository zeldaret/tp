lbl_8003EB70:
/* 8003EB70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003EB74  7C 08 02 A6 */	mflr r0
/* 8003EB78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003EB7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8003EB80  48 32 36 41 */	bl _savegpr_22
/* 8003EB84  7C 76 1B 79 */	or. r22, r3, r3
/* 8003EB88  7C 97 23 78 */	mr r23, r4
/* 8003EB8C  41 82 00 E8 */	beq lbl_8003EC74
/* 8003EB90  83 F6 00 04 */	lwz r31, 4(r22)
/* 8003EB94  28 1F 00 00 */	cmplwi r31, 0
/* 8003EB98  41 82 00 CC */	beq lbl_8003EC64
/* 8003EB9C  41 82 00 C8 */	beq lbl_8003EC64
/* 8003EBA0  83 DF 00 04 */	lwz r30, 4(r31)
/* 8003EBA4  28 1E 00 00 */	cmplwi r30, 0
/* 8003EBA8  41 82 00 B4 */	beq lbl_8003EC5C
/* 8003EBAC  41 82 00 B0 */	beq lbl_8003EC5C
/* 8003EBB0  83 BE 00 04 */	lwz r29, 4(r30)
/* 8003EBB4  28 1D 00 00 */	cmplwi r29, 0
/* 8003EBB8  41 82 00 9C */	beq lbl_8003EC54
/* 8003EBBC  41 82 00 98 */	beq lbl_8003EC54
/* 8003EBC0  83 9D 00 04 */	lwz r28, 4(r29)
/* 8003EBC4  28 1C 00 00 */	cmplwi r28, 0
/* 8003EBC8  41 82 00 84 */	beq lbl_8003EC4C
/* 8003EBCC  41 82 00 80 */	beq lbl_8003EC4C
/* 8003EBD0  83 7C 00 04 */	lwz r27, 4(r28)
/* 8003EBD4  28 1B 00 00 */	cmplwi r27, 0
/* 8003EBD8  41 82 00 6C */	beq lbl_8003EC44
/* 8003EBDC  41 82 00 68 */	beq lbl_8003EC44
/* 8003EBE0  83 5B 00 04 */	lwz r26, 4(r27)
/* 8003EBE4  28 1A 00 00 */	cmplwi r26, 0
/* 8003EBE8  41 82 00 54 */	beq lbl_8003EC3C
/* 8003EBEC  41 82 00 50 */	beq lbl_8003EC3C
/* 8003EBF0  83 3A 00 04 */	lwz r25, 4(r26)
/* 8003EBF4  28 19 00 00 */	cmplwi r25, 0
/* 8003EBF8  41 82 00 3C */	beq lbl_8003EC34
/* 8003EBFC  41 82 00 38 */	beq lbl_8003EC34
/* 8003EC00  83 19 00 04 */	lwz r24, 4(r25)
/* 8003EC04  28 18 00 00 */	cmplwi r24, 0
/* 8003EC08  41 82 00 24 */	beq lbl_8003EC2C
/* 8003EC0C  41 82 00 20 */	beq lbl_8003EC2C
/* 8003EC10  80 78 00 04 */	lwz r3, 4(r24)
/* 8003EC14  28 03 00 00 */	cmplwi r3, 0
/* 8003EC18  41 82 00 0C */	beq lbl_8003EC24
/* 8003EC1C  38 80 00 01 */	li r4, 1
/* 8003EC20  4B FF FF 51 */	bl __dt__22fmpTresTypeGroupData_cFv
lbl_8003EC24:
/* 8003EC24  7F 03 C3 78 */	mr r3, r24
/* 8003EC28  48 29 01 15 */	bl __dl__FPv
lbl_8003EC2C:
/* 8003EC2C  7F 23 CB 78 */	mr r3, r25
/* 8003EC30  48 29 01 0D */	bl __dl__FPv
lbl_8003EC34:
/* 8003EC34  7F 43 D3 78 */	mr r3, r26
/* 8003EC38  48 29 01 05 */	bl __dl__FPv
lbl_8003EC3C:
/* 8003EC3C  7F 63 DB 78 */	mr r3, r27
/* 8003EC40  48 29 00 FD */	bl __dl__FPv
lbl_8003EC44:
/* 8003EC44  7F 83 E3 78 */	mr r3, r28
/* 8003EC48  48 29 00 F5 */	bl __dl__FPv
lbl_8003EC4C:
/* 8003EC4C  7F A3 EB 78 */	mr r3, r29
/* 8003EC50  48 29 00 ED */	bl __dl__FPv
lbl_8003EC54:
/* 8003EC54  7F C3 F3 78 */	mr r3, r30
/* 8003EC58  48 29 00 E5 */	bl __dl__FPv
lbl_8003EC5C:
/* 8003EC5C  7F E3 FB 78 */	mr r3, r31
/* 8003EC60  48 29 00 DD */	bl __dl__FPv
lbl_8003EC64:
/* 8003EC64  7E E0 07 35 */	extsh. r0, r23
/* 8003EC68  40 81 00 0C */	ble lbl_8003EC74
/* 8003EC6C  7E C3 B3 78 */	mr r3, r22
/* 8003EC70  48 29 00 CD */	bl __dl__FPv
lbl_8003EC74:
/* 8003EC74  7E C3 B3 78 */	mr r3, r22
/* 8003EC78  39 61 00 30 */	addi r11, r1, 0x30
/* 8003EC7C  48 32 35 91 */	bl _restgpr_22
/* 8003EC80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003EC84  7C 08 03 A6 */	mtlr r0
/* 8003EC88  38 21 00 30 */	addi r1, r1, 0x30
/* 8003EC8C  4E 80 00 20 */	blr 
