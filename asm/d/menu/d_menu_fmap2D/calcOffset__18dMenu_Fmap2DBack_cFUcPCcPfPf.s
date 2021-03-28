lbl_801D2CC8:
/* 801D2CC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801D2CCC  7C 08 02 A6 */	mflr r0
/* 801D2CD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801D2CD4  39 61 00 30 */	addi r11, r1, 0x30
/* 801D2CD8  48 18 F4 ED */	bl _savegpr_23
/* 801D2CDC  7C 77 1B 78 */	mr r23, r3
/* 801D2CE0  7C 98 23 78 */	mr r24, r4
/* 801D2CE4  7C B9 2B 78 */	mr r25, r5
/* 801D2CE8  7C DA 33 78 */	mr r26, r6
/* 801D2CEC  7C FB 3B 78 */	mr r27, r7
/* 801D2CF0  80 63 0D 88 */	lwz r3, 0xd88(r3)
/* 801D2CF4  28 03 00 00 */	cmplwi r3, 0
/* 801D2CF8  41 82 00 80 */	beq lbl_801D2D78
/* 801D2CFC  3B A3 00 04 */	addi r29, r3, 4
/* 801D2D00  3B 80 00 00 */	li r28, 0
/* 801D2D04  3B E0 00 00 */	li r31, 0
/* 801D2D08  57 03 06 3E */	clrlwi r3, r24, 0x18
/* 801D2D0C  3B C3 00 01 */	addi r30, r3, 1
/* 801D2D10  48 00 00 5C */	b lbl_801D2D6C
lbl_801D2D14:
/* 801D2D14  7C 9D FA 14 */	add r4, r29, r31
/* 801D2D18  88 04 00 09 */	lbz r0, 9(r4)
/* 801D2D1C  7C 1E 00 00 */	cmpw r30, r0
/* 801D2D20  40 82 00 44 */	bne lbl_801D2D64
/* 801D2D24  7F 23 CB 78 */	mr r3, r25
/* 801D2D28  48 19 5C 6D */	bl strcmp
/* 801D2D2C  2C 03 00 00 */	cmpwi r3, 0
/* 801D2D30  40 82 00 34 */	bne lbl_801D2D64
/* 801D2D34  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 801D2D38  7C 97 02 14 */	add r4, r23, r0
/* 801D2D3C  C0 24 10 04 */	lfs f1, 0x1004(r4)
/* 801D2D40  7C 7D FA 14 */	add r3, r29, r31
/* 801D2D44  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801D2D48  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2D4C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 801D2D50  C0 24 10 24 */	lfs f1, 0x1024(r4)
/* 801D2D54  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801D2D58  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2D5C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 801D2D60  48 00 00 30 */	b lbl_801D2D90
lbl_801D2D64:
/* 801D2D64  3B 9C 00 01 */	addi r28, r28, 1
/* 801D2D68  3B FF 00 14 */	addi r31, r31, 0x14
lbl_801D2D6C:
/* 801D2D6C  88 17 12 25 */	lbz r0, 0x1225(r23)
/* 801D2D70  7C 1C 00 00 */	cmpw r28, r0
/* 801D2D74  41 80 FF A0 */	blt lbl_801D2D14
lbl_801D2D78:
/* 801D2D78  57 00 15 BA */	rlwinm r0, r24, 2, 0x16, 0x1d
/* 801D2D7C  7C 77 02 14 */	add r3, r23, r0
/* 801D2D80  C0 03 10 04 */	lfs f0, 0x1004(r3)
/* 801D2D84  D0 1A 00 00 */	stfs f0, 0(r26)
/* 801D2D88  C0 03 10 24 */	lfs f0, 0x1024(r3)
/* 801D2D8C  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_801D2D90:
/* 801D2D90  39 61 00 30 */	addi r11, r1, 0x30
/* 801D2D94  48 18 F4 7D */	bl _restgpr_23
/* 801D2D98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801D2D9C  7C 08 03 A6 */	mtlr r0
/* 801D2DA0  38 21 00 30 */	addi r1, r1, 0x30
/* 801D2DA4  4E 80 00 20 */	blr 
