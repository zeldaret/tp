lbl_80BF4354:
/* 80BF4354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF4358  7C 08 02 A6 */	mflr r0
/* 80BF435C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF4360  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF4364  4B 76 DE 79 */	bl _savegpr_29
/* 80BF4368  7C BD 2B 78 */	mr r29, r5
/* 80BF436C  7C 80 07 35 */	extsh. r0, r4
/* 80BF4370  41 82 00 68 */	beq lbl_80BF43D8
/* 80BF4374  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 80BF4378  7F DF E8 50 */	subf r30, r31, r29
/* 80BF437C  7F C3 F3 78 */	mr r3, r30
/* 80BF4380  4B 77 0D 51 */	bl abs
/* 80BF4384  2C 03 00 04 */	cmpwi r3, 4
/* 80BF4388  40 81 00 44 */	ble lbl_80BF43CC
/* 80BF438C  7F C0 16 70 */	srawi r0, r30, 2
/* 80BF4390  7C 00 01 94 */	addze r0, r0
/* 80BF4394  2C 00 08 00 */	cmpwi r0, 0x800
/* 80BF4398  40 81 00 0C */	ble lbl_80BF43A4
/* 80BF439C  38 1F 08 00 */	addi r0, r31, 0x800
/* 80BF43A0  48 00 00 30 */	b lbl_80BF43D0
lbl_80BF43A4:
/* 80BF43A4  7F C0 16 70 */	srawi r0, r30, 2
/* 80BF43A8  7C 00 01 94 */	addze r0, r0
/* 80BF43AC  2C 00 F8 00 */	cmpwi r0, -2048
/* 80BF43B0  40 80 00 0C */	bge lbl_80BF43BC
/* 80BF43B4  38 1F F8 00 */	addi r0, r31, -2048
/* 80BF43B8  48 00 00 18 */	b lbl_80BF43D0
lbl_80BF43BC:
/* 80BF43BC  7F C0 16 70 */	srawi r0, r30, 2
/* 80BF43C0  7C 00 01 94 */	addze r0, r0
/* 80BF43C4  7C 1F 02 14 */	add r0, r31, r0
/* 80BF43C8  48 00 00 08 */	b lbl_80BF43D0
lbl_80BF43CC:
/* 80BF43CC  7F A0 EB 78 */	mr r0, r29
lbl_80BF43D0:
/* 80BF43D0  7C 03 07 34 */	extsh r3, r0
/* 80BF43D4  48 00 00 08 */	b lbl_80BF43DC
lbl_80BF43D8:
/* 80BF43D8  38 60 00 00 */	li r3, 0
lbl_80BF43DC:
/* 80BF43DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BF43E0  4B 76 DE 49 */	bl _restgpr_29
/* 80BF43E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF43E8  7C 08 03 A6 */	mtlr r0
/* 80BF43EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF43F0  4E 80 00 20 */	blr 
