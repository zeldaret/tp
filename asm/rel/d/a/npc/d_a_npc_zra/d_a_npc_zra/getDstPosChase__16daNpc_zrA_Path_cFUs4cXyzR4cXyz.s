lbl_80B78CFC:
/* 80B78CFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B78D00  7C 08 02 A6 */	mflr r0
/* 80B78D04  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B78D08  39 61 00 40 */	addi r11, r1, 0x40
/* 80B78D0C  4B 7E 94 C5 */	bl _savegpr_26
/* 80B78D10  7C 7B 1B 78 */	mr r27, r3
/* 80B78D14  7C 9C 23 78 */	mr r28, r4
/* 80B78D18  7C BD 2B 78 */	mr r29, r5
/* 80B78D1C  7C DE 33 78 */	mr r30, r6
/* 80B78D20  3B E0 00 00 */	li r31, 0
/* 80B78D24  48 00 00 C0 */	b lbl_80B78DE4
lbl_80B78D28:
/* 80B78D28  80 7B 00 04 */	lwz r3, 4(r27)
/* 80B78D2C  80 83 00 08 */	lwz r4, 8(r3)
/* 80B78D30  57 9A 04 3E */	clrlwi r26, r28, 0x10
/* 80B78D34  57 83 23 36 */	rlwinm r3, r28, 4, 0xc, 0x1b
/* 80B78D38  38 03 00 04 */	addi r0, r3, 4
/* 80B78D3C  7C 84 02 14 */	add r4, r4, r0
/* 80B78D40  80 64 00 00 */	lwz r3, 0(r4)
/* 80B78D44  80 04 00 04 */	lwz r0, 4(r4)
/* 80B78D48  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B78D4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B78D50  80 04 00 08 */	lwz r0, 8(r4)
/* 80B78D54  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B78D58  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B78D5C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80B78D60  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B78D64  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80B78D68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B78D6C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80B78D70  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80B78D74  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B78D78  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80B78D7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B78D80  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80B78D84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B78D88  7F 63 DB 78 */	mr r3, r27
/* 80B78D8C  7F 84 E3 78 */	mr r4, r28
/* 80B78D90  38 A1 00 08 */	addi r5, r1, 8
/* 80B78D94  4B FF FF 0D */	bl chkPassedChase__16daNpc_zrA_Path_cFUs4cXyz
/* 80B78D98  2C 03 00 00 */	cmpwi r3, 0
/* 80B78D9C  41 82 00 50 */	beq lbl_80B78DEC
/* 80B78DA0  88 1B 00 02 */	lbz r0, 2(r27)
/* 80B78DA4  28 00 00 00 */	cmplwi r0, 0
/* 80B78DA8  41 82 00 1C */	beq lbl_80B78DC4
/* 80B78DAC  7F 40 D3 79 */	or. r0, r26, r26
/* 80B78DB0  40 82 00 0C */	bne lbl_80B78DBC
/* 80B78DB4  3B E0 00 01 */	li r31, 1
/* 80B78DB8  48 00 00 2C */	b lbl_80B78DE4
lbl_80B78DBC:
/* 80B78DBC  3B 9C FF FF */	addi r28, r28, -1
/* 80B78DC0  48 00 00 24 */	b lbl_80B78DE4
lbl_80B78DC4:
/* 80B78DC4  80 7B 00 04 */	lwz r3, 4(r27)
/* 80B78DC8  A0 63 00 00 */	lhz r3, 0(r3)
/* 80B78DCC  38 03 FF FF */	addi r0, r3, -1
/* 80B78DD0  7C 1A 00 00 */	cmpw r26, r0
/* 80B78DD4  40 82 00 0C */	bne lbl_80B78DE0
/* 80B78DD8  3B E0 00 01 */	li r31, 1
/* 80B78DDC  48 00 00 08 */	b lbl_80B78DE4
lbl_80B78DE0:
/* 80B78DE0  3B 9C 00 01 */	addi r28, r28, 1
lbl_80B78DE4:
/* 80B78DE4  2C 1F 00 00 */	cmpwi r31, 0
/* 80B78DE8  41 82 FF 40 */	beq lbl_80B78D28
lbl_80B78DEC:
/* 80B78DEC  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80B78DF0  39 61 00 40 */	addi r11, r1, 0x40
/* 80B78DF4  4B 7E 94 29 */	bl _restgpr_26
/* 80B78DF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B78DFC  7C 08 03 A6 */	mtlr r0
/* 80B78E00  38 21 00 40 */	addi r1, r1, 0x40
/* 80B78E04  4E 80 00 20 */	blr 
