lbl_80982D20:
/* 80982D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80982D24  7C 08 02 A6 */	mflr r0
/* 80982D28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80982D2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80982D30  7C 7F 1B 78 */	mr r31, r3
/* 80982D34  4B FF FE 2D */	bl searchGroup__11daNpcChat_cFv
/* 80982D38  2C 03 00 00 */	cmpwi r3, 0
/* 80982D3C  41 82 01 60 */	beq lbl_80982E9C
/* 80982D40  88 1F 0E 20 */	lbz r0, 0xe20(r31)
/* 80982D44  28 00 00 00 */	cmplwi r0, 0
/* 80982D48  40 82 01 34 */	bne lbl_80982E7C
/* 80982D4C  88 1F 09 F2 */	lbz r0, 0x9f2(r31)
/* 80982D50  28 00 00 00 */	cmplwi r0, 0
/* 80982D54  41 82 00 98 */	beq lbl_80982DEC
/* 80982D58  7F E3 FB 78 */	mr r3, r31
/* 80982D5C  4B FF FE B5 */	bl appearTimeCheck__11daNpcChat_cFv
/* 80982D60  2C 03 00 00 */	cmpwi r3, 0
/* 80982D64  41 82 01 18 */	beq lbl_80982E7C
/* 80982D68  38 C0 00 00 */	li r6, 0
/* 80982D6C  38 60 00 00 */	li r3, 0
/* 80982D70  88 BF 0E 21 */	lbz r5, 0xe21(r31)
/* 80982D74  7C A9 03 A6 */	mtctr r5
/* 80982D78  2C 05 00 00 */	cmpwi r5, 0
/* 80982D7C  40 81 00 24 */	ble lbl_80982DA0
lbl_80982D80:
/* 80982D80  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80982D84  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982D88  80 04 04 A0 */	lwz r0, 0x4a0(r4)
/* 80982D8C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80982D90  41 82 00 10 */	beq lbl_80982DA0
/* 80982D94  38 C6 00 01 */	addi r6, r6, 1
/* 80982D98  38 63 00 04 */	addi r3, r3, 4
/* 80982D9C  42 00 FF E4 */	bdnz lbl_80982D80
lbl_80982DA0:
/* 80982DA0  7C 06 28 00 */	cmpw r6, r5
/* 80982DA4  40 82 00 D8 */	bne lbl_80982E7C
/* 80982DA8  38 C0 00 00 */	li r6, 0
/* 80982DAC  38 60 00 00 */	li r3, 0
/* 80982DB0  38 A0 00 00 */	li r5, 0
/* 80982DB4  48 00 00 28 */	b lbl_80982DDC
lbl_80982DB8:
/* 80982DB8  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80982DBC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982DC0  98 A4 09 F2 */	stb r5, 0x9f2(r4)
/* 80982DC4  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982DC8  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 80982DCC  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80982DD0  90 04 04 9C */	stw r0, 0x49c(r4)
/* 80982DD4  38 C6 00 01 */	addi r6, r6, 1
/* 80982DD8  38 63 00 04 */	addi r3, r3, 4
lbl_80982DDC:
/* 80982DDC  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80982DE0  7C 06 00 00 */	cmpw r6, r0
/* 80982DE4  41 80 FF D4 */	blt lbl_80982DB8
/* 80982DE8  48 00 00 94 */	b lbl_80982E7C
lbl_80982DEC:
/* 80982DEC  7F E3 FB 78 */	mr r3, r31
/* 80982DF0  4B FF FE 21 */	bl appearTimeCheck__11daNpcChat_cFv
/* 80982DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80982DF8  40 82 00 84 */	bne lbl_80982E7C
/* 80982DFC  38 C0 00 00 */	li r6, 0
/* 80982E00  38 60 00 00 */	li r3, 0
/* 80982E04  88 BF 0E 21 */	lbz r5, 0xe21(r31)
/* 80982E08  7C A9 03 A6 */	mtctr r5
/* 80982E0C  2C 05 00 00 */	cmpwi r5, 0
/* 80982E10  40 81 00 24 */	ble lbl_80982E34
lbl_80982E14:
/* 80982E14  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80982E18  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982E1C  80 04 04 A0 */	lwz r0, 0x4a0(r4)
/* 80982E20  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80982E24  41 82 00 10 */	beq lbl_80982E34
/* 80982E28  38 C6 00 01 */	addi r6, r6, 1
/* 80982E2C  38 63 00 04 */	addi r3, r3, 4
/* 80982E30  42 00 FF E4 */	bdnz lbl_80982E14
lbl_80982E34:
/* 80982E34  7C 06 28 00 */	cmpw r6, r5
/* 80982E38  40 82 00 44 */	bne lbl_80982E7C
/* 80982E3C  38 C0 00 00 */	li r6, 0
/* 80982E40  38 60 00 00 */	li r3, 0
/* 80982E44  38 A0 00 01 */	li r5, 1
/* 80982E48  48 00 00 28 */	b lbl_80982E70
lbl_80982E4C:
/* 80982E4C  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80982E50  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982E54  98 A4 09 F2 */	stb r5, 0x9f2(r4)
/* 80982E58  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80982E5C  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 80982E60  64 00 08 00 */	oris r0, r0, 0x800
/* 80982E64  90 04 04 9C */	stw r0, 0x49c(r4)
/* 80982E68  38 C6 00 01 */	addi r6, r6, 1
/* 80982E6C  38 63 00 04 */	addi r3, r3, 4
lbl_80982E70:
/* 80982E70  88 1F 0E 21 */	lbz r0, 0xe21(r31)
/* 80982E74  7C 06 00 00 */	cmpw r6, r0
/* 80982E78  41 80 FF D4 */	blt lbl_80982E4C
lbl_80982E7C:
/* 80982E7C  88 1F 09 F2 */	lbz r0, 0x9f2(r31)
/* 80982E80  28 00 00 01 */	cmplwi r0, 1
/* 80982E84  41 82 00 10 */	beq lbl_80982E94
/* 80982E88  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80982E8C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80982E90  41 82 00 0C */	beq lbl_80982E9C
lbl_80982E94:
/* 80982E94  38 60 00 00 */	li r3, 0
/* 80982E98  48 00 00 08 */	b lbl_80982EA0
lbl_80982E9C:
/* 80982E9C  38 60 00 01 */	li r3, 1
lbl_80982EA0:
/* 80982EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80982EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982EA8  7C 08 03 A6 */	mtlr r0
/* 80982EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80982EB0  4E 80 00 20 */	blr 
