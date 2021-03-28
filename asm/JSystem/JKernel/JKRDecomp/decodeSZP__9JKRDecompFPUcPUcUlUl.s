lbl_802DBA58:
/* 802DBA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DBA5C  7C 08 02 A6 */	mflr r0
/* 802DBA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DBA64  39 61 00 20 */	addi r11, r1, 0x20
/* 802DBA68  48 08 67 6D */	bl _savegpr_27
/* 802DBA6C  89 23 00 07 */	lbz r9, 7(r3)
/* 802DBA70  89 03 00 06 */	lbz r8, 6(r3)
/* 802DBA74  88 E3 00 04 */	lbz r7, 4(r3)
/* 802DBA78  88 03 00 05 */	lbz r0, 5(r3)
/* 802DBA7C  54 00 80 1E */	slwi r0, r0, 0x10
/* 802DBA80  50 E0 C0 0E */	rlwimi r0, r7, 0x18, 0, 7
/* 802DBA84  51 00 44 2E */	rlwimi r0, r8, 8, 0x10, 0x17
/* 802DBA88  7D 20 03 78 */	or r0, r9, r0
/* 802DBA8C  89 43 00 0B */	lbz r10, 0xb(r3)
/* 802DBA90  89 23 00 0A */	lbz r9, 0xa(r3)
/* 802DBA94  89 03 00 08 */	lbz r8, 8(r3)
/* 802DBA98  88 E3 00 09 */	lbz r7, 9(r3)
/* 802DBA9C  54 E7 80 1E */	slwi r7, r7, 0x10
/* 802DBAA0  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 802DBAA4  51 27 44 2E */	rlwimi r7, r9, 8, 0x10, 0x17
/* 802DBAA8  7D 49 3B 78 */	or r9, r10, r7
/* 802DBAAC  89 83 00 0F */	lbz r12, 0xf(r3)
/* 802DBAB0  89 43 00 0E */	lbz r10, 0xe(r3)
/* 802DBAB4  89 03 00 0C */	lbz r8, 0xc(r3)
/* 802DBAB8  88 E3 00 0D */	lbz r7, 0xd(r3)
/* 802DBABC  54 E7 80 1E */	slwi r7, r7, 0x10
/* 802DBAC0  51 07 C0 0E */	rlwimi r7, r8, 0x18, 0, 7
/* 802DBAC4  51 47 44 2E */	rlwimi r7, r10, 8, 0x10, 0x17
/* 802DBAC8  7D 8C 3B 78 */	or r12, r12, r7
/* 802DBACC  39 00 00 00 */	li r8, 0
/* 802DBAD0  39 40 00 00 */	li r10, 0
/* 802DBAD4  38 E0 00 10 */	li r7, 0x10
/* 802DBAD8  28 05 00 00 */	cmplwi r5, 0
/* 802DBADC  41 82 01 20 */	beq lbl_802DBBFC
/* 802DBAE0  7C 06 00 40 */	cmplw r6, r0
/* 802DBAE4  41 81 01 18 */	bgt lbl_802DBBFC
/* 802DBAE8  7C 9F 23 78 */	mr r31, r4
/* 802DBAEC  7D 83 62 14 */	add r12, r3, r12
lbl_802DBAF0:
/* 802DBAF0  28 0A 00 00 */	cmplwi r10, 0
/* 802DBAF4  40 82 00 30 */	bne lbl_802DBB24
/* 802DBAF8  7D 43 3A 14 */	add r10, r3, r7
/* 802DBAFC  8B CA 00 03 */	lbz r30, 3(r10)
/* 802DBB00  8B AA 00 02 */	lbz r29, 2(r10)
/* 802DBB04  89 6A 00 00 */	lbz r11, 0(r10)
/* 802DBB08  89 4A 00 01 */	lbz r10, 1(r10)
/* 802DBB0C  55 4A 80 1E */	slwi r10, r10, 0x10
/* 802DBB10  51 6A C0 0E */	rlwimi r10, r11, 0x18, 0, 7
/* 802DBB14  53 AA 44 2E */	rlwimi r10, r29, 8, 0x10, 0x17
/* 802DBB18  7F CB 53 78 */	or r11, r30, r10
/* 802DBB1C  39 40 00 20 */	li r10, 0x20
/* 802DBB20  38 E7 00 04 */	addi r7, r7, 4
lbl_802DBB24:
/* 802DBB24  55 7D 00 01 */	rlwinm. r29, r11, 0, 0, 0
/* 802DBB28  41 82 00 34 */	beq lbl_802DBB5C
/* 802DBB2C  28 06 00 00 */	cmplwi r6, 0
/* 802DBB30  40 82 00 18 */	bne lbl_802DBB48
/* 802DBB34  8B AC 00 00 */	lbz r29, 0(r12)
/* 802DBB38  9B BF 00 00 */	stb r29, 0(r31)
/* 802DBB3C  34 A5 FF FF */	addic. r5, r5, -1
/* 802DBB40  40 82 00 0C */	bne lbl_802DBB4C
/* 802DBB44  48 00 00 B8 */	b lbl_802DBBFC
lbl_802DBB48:
/* 802DBB48  38 C6 FF FF */	addi r6, r6, -1
lbl_802DBB4C:
/* 802DBB4C  39 08 00 01 */	addi r8, r8, 1
/* 802DBB50  3B FF 00 01 */	addi r31, r31, 1
/* 802DBB54  39 8C 00 01 */	addi r12, r12, 1
/* 802DBB58  48 00 00 94 */	b lbl_802DBBEC
lbl_802DBB5C:
/* 802DBB5C  7F A3 4A 14 */	add r29, r3, r9
/* 802DBB60  8B DD 00 00 */	lbz r30, 0(r29)
/* 802DBB64  8B 9D 00 01 */	lbz r28, 1(r29)
/* 802DBB68  53 DC 44 2E */	rlwimi r28, r30, 8, 0x10, 0x17
/* 802DBB6C  57 9D 05 3E */	clrlwi r29, r28, 0x14
/* 802DBB70  7F 7D 40 50 */	subf r27, r29, r8
/* 802DBB74  7F 9C 66 71 */	srawi. r28, r28, 0xc
/* 802DBB78  39 29 00 02 */	addi r9, r9, 2
/* 802DBB7C  40 82 00 14 */	bne lbl_802DBB90
/* 802DBB80  8B AC 00 00 */	lbz r29, 0(r12)
/* 802DBB84  3B 9D 00 12 */	addi r28, r29, 0x12
/* 802DBB88  39 8C 00 01 */	addi r12, r12, 1
/* 802DBB8C  48 00 00 08 */	b lbl_802DBB94
lbl_802DBB90:
/* 802DBB90  3B 9C 00 02 */	addi r28, r28, 2
lbl_802DBB94:
/* 802DBB94  7F A8 00 50 */	subf r29, r8, r0
/* 802DBB98  7C 1C E8 00 */	cmpw r28, r29
/* 802DBB9C  40 81 00 08 */	ble lbl_802DBBA4
/* 802DBBA0  7F BC EB 78 */	mr r28, r29
lbl_802DBBA4:
/* 802DBBA4  7F C4 42 14 */	add r30, r4, r8
/* 802DBBA8  7F 89 03 A6 */	mtctr r28
/* 802DBBAC  2C 1C 00 00 */	cmpwi r28, 0
/* 802DBBB0  40 81 00 3C */	ble lbl_802DBBEC
lbl_802DBBB4:
/* 802DBBB4  28 06 00 00 */	cmplwi r6, 0
/* 802DBBB8  40 82 00 1C */	bne lbl_802DBBD4
/* 802DBBBC  3B BB FF FF */	addi r29, r27, -1
/* 802DBBC0  7F A4 E8 AE */	lbzx r29, r4, r29
/* 802DBBC4  9B BE 00 00 */	stb r29, 0(r30)
/* 802DBBC8  34 A5 FF FF */	addic. r5, r5, -1
/* 802DBBCC  40 82 00 0C */	bne lbl_802DBBD8
/* 802DBBD0  48 00 00 2C */	b lbl_802DBBFC
lbl_802DBBD4:
/* 802DBBD4  38 C6 FF FF */	addi r6, r6, -1
lbl_802DBBD8:
/* 802DBBD8  39 08 00 01 */	addi r8, r8, 1
/* 802DBBDC  3B FF 00 01 */	addi r31, r31, 1
/* 802DBBE0  3B DE 00 01 */	addi r30, r30, 1
/* 802DBBE4  3B 7B 00 01 */	addi r27, r27, 1
/* 802DBBE8  42 00 FF CC */	bdnz lbl_802DBBB4
lbl_802DBBEC:
/* 802DBBEC  55 6B 08 3C */	slwi r11, r11, 1
/* 802DBBF0  7C 08 00 00 */	cmpw r8, r0
/* 802DBBF4  39 4A FF FF */	addi r10, r10, -1
/* 802DBBF8  41 80 FE F8 */	blt lbl_802DBAF0
lbl_802DBBFC:
/* 802DBBFC  39 61 00 20 */	addi r11, r1, 0x20
/* 802DBC00  48 08 66 21 */	bl _restgpr_27
/* 802DBC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DBC08  7C 08 03 A6 */	mtlr r0
/* 802DBC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 802DBC10  4E 80 00 20 */	blr 
