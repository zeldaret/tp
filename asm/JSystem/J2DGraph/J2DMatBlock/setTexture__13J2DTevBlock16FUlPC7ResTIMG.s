lbl_802F0C8C:
/* 802F0C8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F0C90  7C 08 02 A6 */	mflr r0
/* 802F0C94  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F0C98  39 61 00 30 */	addi r11, r1, 0x30
/* 802F0C9C  48 07 15 31 */	bl _savegpr_25
/* 802F0CA0  7C 79 1B 78 */	mr r25, r3
/* 802F0CA4  7C 9A 23 78 */	mr r26, r4
/* 802F0CA8  7C BB 2B 78 */	mr r27, r5
/* 802F0CAC  28 1A 00 08 */	cmplwi r26, 8
/* 802F0CB0  41 80 00 0C */	blt lbl_802F0CBC
/* 802F0CB4  38 60 00 00 */	li r3, 0
/* 802F0CB8  48 00 02 48 */	b lbl_802F0F00
lbl_802F0CBC:
/* 802F0CBC  3B 80 00 00 */	li r28, 0
/* 802F0CC0  28 1B 00 00 */	cmplwi r27, 0
/* 802F0CC4  41 82 00 CC */	beq lbl_802F0D90
/* 802F0CC8  88 1B 00 08 */	lbz r0, 8(r27)
/* 802F0CCC  28 00 00 00 */	cmplwi r0, 0
/* 802F0CD0  41 82 00 C0 */	beq lbl_802F0D90
/* 802F0CD4  38 C0 00 00 */	li r6, 0
/* 802F0CD8  38 E0 00 00 */	li r7, 0
/* 802F0CDC  38 60 00 00 */	li r3, 0
/* 802F0CE0  38 00 00 08 */	li r0, 8
/* 802F0CE4  7C 09 03 A6 */	mtctr r0
lbl_802F0CE8:
/* 802F0CE8  7C 07 D0 40 */	cmplw r7, r26
/* 802F0CEC  41 82 00 60 */	beq lbl_802F0D4C
/* 802F0CF0  38 03 01 6C */	addi r0, r3, 0x16c
/* 802F0CF4  7C B9 00 2E */	lwzx r5, r25, r0
/* 802F0CF8  28 05 00 00 */	cmplwi r5, 0
/* 802F0CFC  41 82 00 50 */	beq lbl_802F0D4C
/* 802F0D00  80 85 00 20 */	lwz r4, 0x20(r5)
/* 802F0D04  28 04 00 00 */	cmplwi r4, 0
/* 802F0D08  41 82 00 44 */	beq lbl_802F0D4C
/* 802F0D0C  88 04 00 08 */	lbz r0, 8(r4)
/* 802F0D10  28 00 00 00 */	cmplwi r0, 0
/* 802F0D14  41 82 00 38 */	beq lbl_802F0D4C
/* 802F0D18  88 85 00 3A */	lbz r4, 0x3a(r5)
/* 802F0D1C  2C 04 00 10 */	cmpwi r4, 0x10
/* 802F0D20  38 00 00 00 */	li r0, 0
/* 802F0D24  41 80 00 08 */	blt lbl_802F0D2C
/* 802F0D28  38 00 00 10 */	li r0, 0x10
lbl_802F0D2C:
/* 802F0D2C  7C 00 20 50 */	subf r0, r0, r4
/* 802F0D30  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F0D34  28 04 00 08 */	cmplwi r4, 8
/* 802F0D38  40 80 00 14 */	bge lbl_802F0D4C
/* 802F0D3C  38 00 00 01 */	li r0, 1
/* 802F0D40  7C 00 20 30 */	slw r0, r0, r4
/* 802F0D44  7C C0 03 78 */	or r0, r6, r0
/* 802F0D48  54 06 06 3E */	clrlwi r6, r0, 0x18
lbl_802F0D4C:
/* 802F0D4C  38 E7 00 01 */	addi r7, r7, 1
/* 802F0D50  38 63 00 04 */	addi r3, r3, 4
/* 802F0D54  42 00 FF 94 */	bdnz lbl_802F0CE8
/* 802F0D58  38 A0 00 00 */	li r5, 0
/* 802F0D5C  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 802F0D60  38 60 00 01 */	li r3, 1
/* 802F0D64  48 00 00 20 */	b lbl_802F0D84
lbl_802F0D68:
/* 802F0D68  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802F0D6C  7C 60 00 30 */	slw r0, r3, r0
/* 802F0D70  7C 80 00 39 */	and. r0, r4, r0
/* 802F0D74  40 82 00 0C */	bne lbl_802F0D80
/* 802F0D78  7C BC 2B 78 */	mr r28, r5
/* 802F0D7C  48 00 00 14 */	b lbl_802F0D90
lbl_802F0D80:
/* 802F0D80  38 A5 00 01 */	addi r5, r5, 1
lbl_802F0D84:
/* 802F0D84  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802F0D88  28 00 00 04 */	cmplwi r0, 4
/* 802F0D8C  41 80 FF DC */	blt lbl_802F0D68
lbl_802F0D90:
/* 802F0D90  57 5D 10 3A */	slwi r29, r26, 2
/* 802F0D94  7F F9 EA 14 */	add r31, r25, r29
/* 802F0D98  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 802F0D9C  28 03 00 00 */	cmplwi r3, 0
/* 802F0DA0  40 82 00 84 */	bne lbl_802F0E24
/* 802F0DA4  28 1B 00 00 */	cmplwi r27, 0
/* 802F0DA8  41 82 00 64 */	beq lbl_802F0E0C
/* 802F0DAC  38 60 00 40 */	li r3, 0x40
/* 802F0DB0  4B FD DE 9D */	bl __nw__FUl
/* 802F0DB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802F0DB8  41 82 00 24 */	beq lbl_802F0DDC
/* 802F0DBC  38 00 00 00 */	li r0, 0
/* 802F0DC0  90 1E 00 28 */	stw r0, 0x28(r30)
/* 802F0DC4  7F 64 DB 78 */	mr r4, r27
/* 802F0DC8  7F 85 E3 78 */	mr r5, r28
/* 802F0DCC  4B FE D4 DD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802F0DD0  88 1E 00 3B */	lbz r0, 0x3b(r30)
/* 802F0DD4  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802F0DD8  98 1E 00 3B */	stb r0, 0x3b(r30)
lbl_802F0DDC:
/* 802F0DDC  93 DF 01 6C */	stw r30, 0x16c(r31)
/* 802F0DE0  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 802F0DE4  28 00 00 00 */	cmplwi r0, 0
/* 802F0DE8  40 82 00 0C */	bne lbl_802F0DF4
/* 802F0DEC  38 60 00 00 */	li r3, 0
/* 802F0DF0  48 00 01 10 */	b lbl_802F0F00
lbl_802F0DF4:
/* 802F0DF4  88 79 01 B0 */	lbz r3, 0x1b0(r25)
/* 802F0DF8  38 00 00 01 */	li r0, 1
/* 802F0DFC  7C 00 D0 30 */	slw r0, r0, r26
/* 802F0E00  7C 60 03 78 */	or r0, r3, r0
/* 802F0E04  98 19 01 B0 */	stb r0, 0x1b0(r25)
/* 802F0E08  48 00 00 CC */	b lbl_802F0ED4
lbl_802F0E0C:
/* 802F0E0C  88 79 01 B0 */	lbz r3, 0x1b0(r25)
/* 802F0E10  38 00 00 01 */	li r0, 1
/* 802F0E14  7C 00 D0 30 */	slw r0, r0, r26
/* 802F0E18  7C 60 00 78 */	andc r0, r3, r0
/* 802F0E1C  98 19 01 B0 */	stb r0, 0x1b0(r25)
/* 802F0E20  48 00 00 B4 */	b lbl_802F0ED4
lbl_802F0E24:
/* 802F0E24  88 99 01 B0 */	lbz r4, 0x1b0(r25)
/* 802F0E28  38 00 00 01 */	li r0, 1
/* 802F0E2C  7C 1E D0 30 */	slw r30, r0, r26
/* 802F0E30  7C 80 F0 39 */	and. r0, r4, r30
/* 802F0E34  41 82 00 3C */	beq lbl_802F0E70
/* 802F0E38  28 1B 00 00 */	cmplwi r27, 0
/* 802F0E3C  41 82 00 14 */	beq lbl_802F0E50
/* 802F0E40  7F 64 DB 78 */	mr r4, r27
/* 802F0E44  7F 85 E3 78 */	mr r5, r28
/* 802F0E48  4B FE D4 61 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802F0E4C  48 00 00 88 */	b lbl_802F0ED4
lbl_802F0E50:
/* 802F0E50  38 80 00 01 */	li r4, 1
/* 802F0E54  4B FE D3 E1 */	bl __dt__10JUTTextureFv
/* 802F0E58  38 00 00 00 */	li r0, 0
/* 802F0E5C  90 1F 01 6C */	stw r0, 0x16c(r31)
/* 802F0E60  88 19 01 B0 */	lbz r0, 0x1b0(r25)
/* 802F0E64  7C 00 F0 78 */	andc r0, r0, r30
/* 802F0E68  98 19 01 B0 */	stb r0, 0x1b0(r25)
/* 802F0E6C  48 00 00 68 */	b lbl_802F0ED4
lbl_802F0E70:
/* 802F0E70  38 00 00 00 */	li r0, 0
/* 802F0E74  90 1F 01 6C */	stw r0, 0x16c(r31)
/* 802F0E78  28 1B 00 00 */	cmplwi r27, 0
/* 802F0E7C  41 82 00 58 */	beq lbl_802F0ED4
/* 802F0E80  38 60 00 40 */	li r3, 0x40
/* 802F0E84  4B FD DD C9 */	bl __nw__FUl
/* 802F0E88  7C 7C 1B 79 */	or. r28, r3, r3
/* 802F0E8C  41 82 00 24 */	beq lbl_802F0EB0
/* 802F0E90  38 00 00 00 */	li r0, 0
/* 802F0E94  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802F0E98  7F 64 DB 78 */	mr r4, r27
/* 802F0E9C  38 A0 00 00 */	li r5, 0
/* 802F0EA0  4B FE D4 09 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802F0EA4  88 1C 00 3B */	lbz r0, 0x3b(r28)
/* 802F0EA8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802F0EAC  98 1C 00 3B */	stb r0, 0x3b(r28)
lbl_802F0EB0:
/* 802F0EB0  93 9F 01 6C */	stw r28, 0x16c(r31)
/* 802F0EB4  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 802F0EB8  28 00 00 00 */	cmplwi r0, 0
/* 802F0EBC  40 82 00 0C */	bne lbl_802F0EC8
/* 802F0EC0  38 60 00 00 */	li r3, 0
/* 802F0EC4  48 00 00 3C */	b lbl_802F0F00
lbl_802F0EC8:
/* 802F0EC8  88 19 01 B0 */	lbz r0, 0x1b0(r25)
/* 802F0ECC  7C 00 F3 78 */	or r0, r0, r30
/* 802F0ED0  98 19 01 B0 */	stb r0, 0x1b0(r25)
lbl_802F0ED4:
/* 802F0ED4  7F 79 EA 14 */	add r27, r25, r29
/* 802F0ED8  80 7B 01 8C */	lwz r3, 0x18c(r27)
/* 802F0EDC  4B FD DE 61 */	bl __dl__FPv
/* 802F0EE0  38 00 00 00 */	li r0, 0
/* 802F0EE4  90 1B 01 8C */	stw r0, 0x18c(r27)
/* 802F0EE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F0EEC  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F0EF0  57 40 08 3C */	slwi r0, r26, 1
/* 802F0EF4  7C 79 02 14 */	add r3, r25, r0
/* 802F0EF8  B0 83 00 04 */	sth r4, 4(r3)
/* 802F0EFC  38 60 00 01 */	li r3, 1
lbl_802F0F00:
/* 802F0F00  39 61 00 30 */	addi r11, r1, 0x30
/* 802F0F04  48 07 13 15 */	bl _restgpr_25
/* 802F0F08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F0F0C  7C 08 03 A6 */	mtlr r0
/* 802F0F10  38 21 00 30 */	addi r1, r1, 0x30
/* 802F0F14  4E 80 00 20 */	blr 
