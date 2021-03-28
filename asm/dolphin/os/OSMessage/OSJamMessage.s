lbl_8033EB98:
/* 8033EB98  7C 08 02 A6 */	mflr r0
/* 8033EB9C  90 01 00 04 */	stw r0, 4(r1)
/* 8033EBA0  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8033EBA4  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8033EBA8  3B E3 00 00 */	addi r31, r3, 0
/* 8033EBAC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8033EBB0  3B C5 00 00 */	addi r30, r5, 0
/* 8033EBB4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8033EBB8  93 81 00 18 */	stw r28, 0x18(r1)
/* 8033EBBC  3B 84 00 00 */	addi r28, r4, 0
/* 8033EBC0  4B FF EB 35 */	bl OSDisableInterrupts
/* 8033EBC4  3B A3 00 00 */	addi r29, r3, 0
/* 8033EBC8  57 DE 07 FE */	clrlwi r30, r30, 0x1f
/* 8033EBCC  48 00 00 24 */	b lbl_8033EBF0
lbl_8033EBD0:
/* 8033EBD0  2C 1E 00 00 */	cmpwi r30, 0
/* 8033EBD4  40 82 00 14 */	bne lbl_8033EBE8
/* 8033EBD8  7F A3 EB 78 */	mr r3, r29
/* 8033EBDC  4B FF EB 41 */	bl OSRestoreInterrupts
/* 8033EBE0  38 60 00 00 */	li r3, 0
/* 8033EBE4  48 00 00 68 */	b lbl_8033EC4C
lbl_8033EBE8:
/* 8033EBE8  7F E3 FB 78 */	mr r3, r31
/* 8033EBEC  48 00 2F C1 */	bl OSSleepThread
lbl_8033EBF0:
/* 8033EBF0  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8033EBF4  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8033EBF8  7C 05 00 00 */	cmpw r5, r0
/* 8033EBFC  40 81 FF D4 */	ble lbl_8033EBD0
/* 8033EC00  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8033EC04  38 05 FF FF */	addi r0, r5, -1
/* 8033EC08  38 7F 00 08 */	addi r3, r31, 8
/* 8033EC0C  7C 84 02 14 */	add r4, r4, r0
/* 8033EC10  7C 04 2B D6 */	divw r0, r4, r5
/* 8033EC14  7C 00 29 D6 */	mullw r0, r0, r5
/* 8033EC18  7C 00 20 50 */	subf r0, r0, r4
/* 8033EC1C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8033EC20  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8033EC24  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8033EC28  54 00 10 3A */	slwi r0, r0, 2
/* 8033EC2C  7F 84 01 2E */	stwx r28, r4, r0
/* 8033EC30  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8033EC34  38 04 00 01 */	addi r0, r4, 1
/* 8033EC38  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8033EC3C  48 00 30 5D */	bl OSWakeupThread
/* 8033EC40  7F A3 EB 78 */	mr r3, r29
/* 8033EC44  4B FF EA D9 */	bl OSRestoreInterrupts
/* 8033EC48  38 60 00 01 */	li r3, 1
lbl_8033EC4C:
/* 8033EC4C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8033EC50  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8033EC54  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8033EC58  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8033EC5C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8033EC60  38 21 00 28 */	addi r1, r1, 0x28
/* 8033EC64  7C 08 03 A6 */	mtlr r0
/* 8033EC68  4E 80 00 20 */	blr 
