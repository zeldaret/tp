lbl_802D9D10:
/* 802D9D10  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802D9D14  7C 08 02 A6 */	mflr r0
/* 802D9D18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802D9D1C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802D9D20  48 08 84 91 */	bl _savegpr_18
/* 802D9D24  7C 76 1B 78 */	mr r22, r3
/* 802D9D28  7C 9C 23 78 */	mr r28, r4
/* 802D9D2C  7C B5 2B 78 */	mr r21, r5
/* 802D9D30  7C DF 33 78 */	mr r31, r6
/* 802D9D34  7C F4 3B 78 */	mr r20, r7
/* 802D9D38  7D 12 43 78 */	mr r18, r8
/* 802D9D3C  7D 3E 4B 78 */	mr r30, r9
/* 802D9D40  7D 53 53 78 */	mr r19, r10
/* 802D9D44  82 E1 00 C8 */	lwz r23, 0xc8(r1)
/* 802D9D48  3B 20 00 00 */	li r25, 0
/* 802D9D4C  3B 60 00 00 */	li r27, 0
/* 802D9D50  3B A0 00 00 */	li r29, 0
/* 802D9D54  81 83 00 00 */	lwz r12, 0(r3)
/* 802D9D58  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802D9D5C  7D 89 03 A6 */	mtctr r12
/* 802D9D60  4E 80 04 21 */	bctrl 
/* 802D9D64  38 03 00 1F */	addi r0, r3, 0x1f
/* 802D9D68  54 18 00 34 */	rlwinm r24, r0, 0, 0, 0x1a
/* 802D9D6C  2C 15 00 01 */	cmpwi r21, 1
/* 802D9D70  40 82 00 94 */	bne lbl_802D9E04
/* 802D9D74  38 01 00 67 */	addi r0, r1, 0x67
/* 802D9D78  54 1A 00 34 */	rlwinm r26, r0, 0, 0, 0x1a
lbl_802D9D7C:
/* 802D9D7C  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9D80  7F 44 D3 78 */	mr r4, r26
/* 802D9D84  38 A0 00 20 */	li r5, 0x20
/* 802D9D88  38 C0 00 00 */	li r6, 0
/* 802D9D8C  38 E0 00 02 */	li r7, 2
/* 802D9D90  48 06 F0 B5 */	bl DVDReadPrio
/* 802D9D94  2C 03 00 00 */	cmpwi r3, 0
/* 802D9D98  40 80 00 28 */	bge lbl_802D9DC0
/* 802D9D9C  2C 03 FF FD */	cmpwi r3, -3
/* 802D9DA0  41 82 00 10 */	beq lbl_802D9DB0
/* 802D9DA4  88 0D 83 48 */	lbz r0, data_804508C8(r13)
/* 802D9DA8  28 00 00 00 */	cmplwi r0, 0
/* 802D9DAC  40 82 00 0C */	bne lbl_802D9DB8
lbl_802D9DB0:
/* 802D9DB0  38 60 00 00 */	li r3, 0
/* 802D9DB4  48 00 04 18 */	b lbl_802DA1CC
lbl_802D9DB8:
/* 802D9DB8  48 07 2C 0D */	bl VIWaitForRetrace
/* 802D9DBC  4B FF FF C0 */	b lbl_802D9D7C
lbl_802D9DC0:
/* 802D9DC0  7F 43 D3 78 */	mr r3, r26
/* 802D9DC4  38 80 00 20 */	li r4, 0x20
/* 802D9DC8  48 06 17 B9 */	bl DCInvalidateRange
/* 802D9DCC  7F 43 D3 78 */	mr r3, r26
/* 802D9DD0  48 00 1F 29 */	bl checkCompressed__9JKRDecompFPUc
/* 802D9DD4  2C 03 00 03 */	cmpwi r3, 3
/* 802D9DD8  40 82 00 08 */	bne lbl_802D9DE0
/* 802D9DDC  38 60 00 00 */	li r3, 0
lbl_802D9DE0:
/* 802D9DE0  7C 7B 1B 78 */	mr r27, r3
/* 802D9DE4  88 BA 00 07 */	lbz r5, 7(r26)
/* 802D9DE8  88 9A 00 06 */	lbz r4, 6(r26)
/* 802D9DEC  88 7A 00 04 */	lbz r3, 4(r26)
/* 802D9DF0  88 1A 00 05 */	lbz r0, 5(r26)
/* 802D9DF4  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D9DF8  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D9DFC  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D9E00  7C BA 03 78 */	or r26, r5, r0
lbl_802D9E04:
/* 802D9E04  28 13 00 00 */	cmplwi r19, 0
/* 802D9E08  41 82 00 08 */	beq lbl_802D9E10
/* 802D9E0C  93 73 00 00 */	stw r27, 0(r19)
lbl_802D9E10:
/* 802D9E10  2C 15 00 01 */	cmpwi r21, 1
/* 802D9E14  40 82 00 9C */	bne lbl_802D9EB0
/* 802D9E18  2C 1B 00 00 */	cmpwi r27, 0
/* 802D9E1C  41 82 00 94 */	beq lbl_802D9EB0
/* 802D9E20  28 1F 00 00 */	cmplwi r31, 0
/* 802D9E24  41 82 00 10 */	beq lbl_802D9E34
/* 802D9E28  7C 1A F8 40 */	cmplw r26, r31
/* 802D9E2C  40 81 00 08 */	ble lbl_802D9E34
/* 802D9E30  7F FA FB 78 */	mr r26, r31
lbl_802D9E34:
/* 802D9E34  28 1C 00 00 */	cmplwi r28, 0
/* 802D9E38  40 82 00 28 */	bne lbl_802D9E60
/* 802D9E3C  7F 43 D3 78 */	mr r3, r26
/* 802D9E40  2C 12 00 01 */	cmpwi r18, 1
/* 802D9E44  38 80 FF E0 */	li r4, -32
/* 802D9E48  40 82 00 08 */	bne lbl_802D9E50
/* 802D9E4C  38 80 00 20 */	li r4, 0x20
lbl_802D9E50:
/* 802D9E50  7E 85 A3 78 */	mr r5, r20
/* 802D9E54  4B FF 46 21 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9E58  7C 7C 1B 78 */	mr r28, r3
/* 802D9E5C  3B 20 00 01 */	li r25, 1
lbl_802D9E60:
/* 802D9E60  28 1C 00 00 */	cmplwi r28, 0
/* 802D9E64  40 82 00 0C */	bne lbl_802D9E70
/* 802D9E68  38 60 00 00 */	li r3, 0
/* 802D9E6C  48 00 03 60 */	b lbl_802DA1CC
lbl_802D9E70:
/* 802D9E70  2C 1B 00 01 */	cmpwi r27, 1
/* 802D9E74  40 82 00 8C */	bne lbl_802D9F00
/* 802D9E78  7F 03 C3 78 */	mr r3, r24
/* 802D9E7C  38 80 00 20 */	li r4, 0x20
/* 802D9E80  7E 85 A3 78 */	mr r5, r20
/* 802D9E84  4B FF 45 F1 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9E88  7C 7D 1B 79 */	or. r29, r3, r3
/* 802D9E8C  40 82 00 74 */	bne lbl_802D9F00
/* 802D9E90  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802D9E94  28 00 00 01 */	cmplwi r0, 1
/* 802D9E98  40 82 00 68 */	bne lbl_802D9F00
/* 802D9E9C  7F 83 E3 78 */	mr r3, r28
/* 802D9EA0  38 80 00 00 */	li r4, 0
/* 802D9EA4  4B FF 46 5D */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D9EA8  38 60 00 00 */	li r3, 0
/* 802D9EAC  48 00 03 20 */	b lbl_802DA1CC
lbl_802D9EB0:
/* 802D9EB0  28 1C 00 00 */	cmplwi r28, 0
/* 802D9EB4  40 82 00 3C */	bne lbl_802D9EF0
/* 802D9EB8  7C 7E C0 50 */	subf r3, r30, r24
/* 802D9EBC  28 1F 00 00 */	cmplwi r31, 0
/* 802D9EC0  41 82 00 10 */	beq lbl_802D9ED0
/* 802D9EC4  7C 03 F8 40 */	cmplw r3, r31
/* 802D9EC8  40 81 00 08 */	ble lbl_802D9ED0
/* 802D9ECC  7F E3 FB 78 */	mr r3, r31
lbl_802D9ED0:
/* 802D9ED0  2C 12 00 01 */	cmpwi r18, 1
/* 802D9ED4  38 80 FF E0 */	li r4, -32
/* 802D9ED8  40 82 00 08 */	bne lbl_802D9EE0
/* 802D9EDC  38 80 00 20 */	li r4, 0x20
lbl_802D9EE0:
/* 802D9EE0  7E 85 A3 78 */	mr r5, r20
/* 802D9EE4  4B FF 45 91 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802D9EE8  7C 7C 1B 78 */	mr r28, r3
/* 802D9EEC  3B 20 00 01 */	li r25, 1
lbl_802D9EF0:
/* 802D9EF0  28 1C 00 00 */	cmplwi r28, 0
/* 802D9EF4  40 82 00 0C */	bne lbl_802D9F00
/* 802D9EF8  38 60 00 00 */	li r3, 0
/* 802D9EFC  48 00 02 D0 */	b lbl_802DA1CC
lbl_802D9F00:
/* 802D9F00  2C 1B 00 00 */	cmpwi r27, 0
/* 802D9F04  40 82 01 8C */	bne lbl_802DA090
/* 802D9F08  38 60 00 00 */	li r3, 0
/* 802D9F0C  28 1E 00 00 */	cmplwi r30, 0
/* 802D9F10  41 82 00 8C */	beq lbl_802D9F9C
/* 802D9F14  38 01 00 27 */	addi r0, r1, 0x27
/* 802D9F18  54 13 00 34 */	rlwinm r19, r0, 0, 0, 0x1a
/* 802D9F1C  7F D2 F3 78 */	mr r18, r30
lbl_802D9F20:
/* 802D9F20  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9F24  7E 64 9B 78 */	mr r4, r19
/* 802D9F28  38 A0 00 20 */	li r5, 0x20
/* 802D9F2C  7E 46 93 78 */	mr r6, r18
/* 802D9F30  38 E0 00 02 */	li r7, 2
/* 802D9F34  48 06 EF 11 */	bl DVDReadPrio
/* 802D9F38  2C 03 00 00 */	cmpwi r3, 0
/* 802D9F3C  40 80 00 40 */	bge lbl_802D9F7C
/* 802D9F40  2C 03 FF FD */	cmpwi r3, -3
/* 802D9F44  41 82 00 10 */	beq lbl_802D9F54
/* 802D9F48  88 0D 83 48 */	lbz r0, data_804508C8(r13)
/* 802D9F4C  28 00 00 00 */	cmplwi r0, 0
/* 802D9F50  40 82 00 24 */	bne lbl_802D9F74
lbl_802D9F54:
/* 802D9F54  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802D9F58  28 00 00 01 */	cmplwi r0, 1
/* 802D9F5C  40 82 00 10 */	bne lbl_802D9F6C
/* 802D9F60  7F 83 E3 78 */	mr r3, r28
/* 802D9F64  38 80 00 00 */	li r4, 0
/* 802D9F68  4B FF 45 99 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D9F6C:
/* 802D9F6C  38 60 00 00 */	li r3, 0
/* 802D9F70  48 00 02 5C */	b lbl_802DA1CC
lbl_802D9F74:
/* 802D9F74  48 07 2A 51 */	bl VIWaitForRetrace
/* 802D9F78  4B FF FF A8 */	b lbl_802D9F20
lbl_802D9F7C:
/* 802D9F7C  7E 63 9B 78 */	mr r3, r19
/* 802D9F80  38 80 00 20 */	li r4, 0x20
/* 802D9F84  48 06 15 FD */	bl DCInvalidateRange
/* 802D9F88  7E 63 9B 78 */	mr r3, r19
/* 802D9F8C  48 00 1D 6D */	bl checkCompressed__9JKRDecompFPUc
/* 802D9F90  2C 03 00 03 */	cmpwi r3, 3
/* 802D9F94  40 82 00 08 */	bne lbl_802D9F9C
/* 802D9F98  38 60 00 00 */	li r3, 0
lbl_802D9F9C:
/* 802D9F9C  2C 03 00 00 */	cmpwi r3, 0
/* 802D9FA0  41 82 00 14 */	beq lbl_802D9FB4
/* 802D9FA4  2C 15 00 02 */	cmpwi r21, 2
/* 802D9FA8  41 82 00 0C */	beq lbl_802D9FB4
/* 802D9FAC  2C 15 00 00 */	cmpwi r21, 0
/* 802D9FB0  40 82 00 90 */	bne lbl_802DA040
lbl_802D9FB4:
/* 802D9FB4  7E 7E C0 50 */	subf r19, r30, r24
/* 802D9FB8  28 1F 00 00 */	cmplwi r31, 0
/* 802D9FBC  41 82 00 10 */	beq lbl_802D9FCC
/* 802D9FC0  7C 1F 98 40 */	cmplw r31, r19
/* 802D9FC4  40 80 00 08 */	bge lbl_802D9FCC
/* 802D9FC8  7F F3 FB 78 */	mr r19, r31
lbl_802D9FCC:
/* 802D9FCC  7F D2 F3 78 */	mr r18, r30
lbl_802D9FD0:
/* 802D9FD0  38 76 00 5C */	addi r3, r22, 0x5c
/* 802D9FD4  7F 84 E3 78 */	mr r4, r28
/* 802D9FD8  7E 65 9B 78 */	mr r5, r19
/* 802D9FDC  7E 46 93 78 */	mr r6, r18
/* 802D9FE0  38 E0 00 02 */	li r7, 2
/* 802D9FE4  48 06 EE 61 */	bl DVDReadPrio
/* 802D9FE8  2C 03 00 00 */	cmpwi r3, 0
/* 802D9FEC  40 80 00 40 */	bge lbl_802DA02C
/* 802D9FF0  2C 03 FF FD */	cmpwi r3, -3
/* 802D9FF4  41 82 00 10 */	beq lbl_802DA004
/* 802D9FF8  88 0D 83 48 */	lbz r0, data_804508C8(r13)
/* 802D9FFC  28 00 00 00 */	cmplwi r0, 0
/* 802DA000  40 82 00 24 */	bne lbl_802DA024
lbl_802DA004:
/* 802DA004  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802DA008  28 00 00 01 */	cmplwi r0, 1
/* 802DA00C  40 82 00 10 */	bne lbl_802DA01C
/* 802DA010  7F 83 E3 78 */	mr r3, r28
/* 802DA014  38 80 00 00 */	li r4, 0
/* 802DA018  4B FF 44 E9 */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA01C:
/* 802DA01C  38 60 00 00 */	li r3, 0
/* 802DA020  48 00 01 AC */	b lbl_802DA1CC
lbl_802DA024:
/* 802DA024  48 07 29 A1 */	bl VIWaitForRetrace
/* 802DA028  4B FF FF A8 */	b lbl_802D9FD0
lbl_802DA02C:
/* 802DA02C  28 17 00 00 */	cmplwi r23, 0
/* 802DA030  41 82 00 08 */	beq lbl_802DA038
/* 802DA034  92 77 00 00 */	stw r19, 0(r23)
lbl_802DA038:
/* 802DA038  7F 83 E3 78 */	mr r3, r28
/* 802DA03C  48 00 01 90 */	b lbl_802DA1CC
lbl_802DA040:
/* 802DA040  2C 03 00 02 */	cmpwi r3, 2
/* 802DA044  40 82 00 28 */	bne lbl_802DA06C
/* 802DA048  7E C3 B3 78 */	mr r3, r22
/* 802DA04C  7F 84 E3 78 */	mr r4, r28
/* 802DA050  7F 05 C3 78 */	mr r5, r24
/* 802DA054  7F E6 FB 78 */	mr r6, r31
/* 802DA058  38 E0 00 00 */	li r7, 0
/* 802DA05C  7F C8 F3 78 */	mr r8, r30
/* 802DA060  7E E9 BB 78 */	mr r9, r23
/* 802DA064  48 00 01 81 */	bl JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl
/* 802DA068  48 00 00 20 */	b lbl_802DA088
lbl_802DA06C:
/* 802DA06C  3C 60 80 3A */	lis r3, JKRDvdRipper__stringBase0@ha /* 0x8039D290@ha */
/* 802DA070  38 63 D2 90 */	addi r3, r3, JKRDvdRipper__stringBase0@l /* 0x8039D290@l */
/* 802DA074  38 80 01 43 */	li r4, 0x143
/* 802DA078  38 A3 00 11 */	addi r5, r3, 0x11
/* 802DA07C  38 C3 00 14 */	addi r6, r3, 0x14
/* 802DA080  4C C6 31 82 */	crclr 6
/* 802DA084  48 00 81 79 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802DA088:
/* 802DA088  7F 83 E3 78 */	mr r3, r28
/* 802DA08C  48 00 01 40 */	b lbl_802DA1CC
lbl_802DA090:
/* 802DA090  2C 1B 00 01 */	cmpwi r27, 1
/* 802DA094  40 82 00 D0 */	bne lbl_802DA164
/* 802DA098  28 1E 00 00 */	cmplwi r30, 0
/* 802DA09C  41 82 00 20 */	beq lbl_802DA0BC
/* 802DA0A0  3C 60 80 3A */	lis r3, JKRDvdRipper__stringBase0@ha /* 0x8039D290@ha */
/* 802DA0A4  38 63 D2 90 */	addi r3, r3, JKRDvdRipper__stringBase0@l /* 0x8039D290@l */
/* 802DA0A8  38 80 01 4D */	li r4, 0x14d
/* 802DA0AC  38 A3 00 11 */	addi r5, r3, 0x11
/* 802DA0B0  38 C3 00 38 */	addi r6, r3, 0x38
/* 802DA0B4  4C C6 31 82 */	crclr 6
/* 802DA0B8  48 00 81 45 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802DA0BC:
/* 802DA0BC  38 76 00 5C */	addi r3, r22, 0x5c
/* 802DA0C0  7F A4 EB 78 */	mr r4, r29
/* 802DA0C4  7F 05 C3 78 */	mr r5, r24
/* 802DA0C8  38 C0 00 00 */	li r6, 0
/* 802DA0CC  38 E0 00 02 */	li r7, 2
/* 802DA0D0  48 06 ED 75 */	bl DVDReadPrio
/* 802DA0D4  2C 03 00 00 */	cmpwi r3, 0
/* 802DA0D8  40 80 00 4C */	bge lbl_802DA124
/* 802DA0DC  2C 03 FF FD */	cmpwi r3, -3
/* 802DA0E0  41 82 00 10 */	beq lbl_802DA0F0
/* 802DA0E4  88 0D 83 48 */	lbz r0, data_804508C8(r13)
/* 802DA0E8  28 00 00 00 */	cmplwi r0, 0
/* 802DA0EC  40 82 00 30 */	bne lbl_802DA11C
lbl_802DA0F0:
/* 802DA0F0  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 802DA0F4  28 00 00 01 */	cmplwi r0, 1
/* 802DA0F8  40 82 00 10 */	bne lbl_802DA108
/* 802DA0FC  7F 83 E3 78 */	mr r3, r28
/* 802DA100  38 80 00 00 */	li r4, 0
/* 802DA104  4B FF 43 FD */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA108:
/* 802DA108  7F A3 EB 78 */	mr r3, r29
/* 802DA10C  38 80 00 00 */	li r4, 0
/* 802DA110  4B FF 43 F1 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DA114  38 60 00 00 */	li r3, 0
/* 802DA118  48 00 00 B4 */	b lbl_802DA1CC
lbl_802DA11C:
/* 802DA11C  48 07 28 A9 */	bl VIWaitForRetrace
/* 802DA120  4B FF FF 9C */	b lbl_802DA0BC
lbl_802DA124:
/* 802DA124  7F A3 EB 78 */	mr r3, r29
/* 802DA128  7F 04 C3 78 */	mr r4, r24
/* 802DA12C  48 06 14 55 */	bl DCInvalidateRange
/* 802DA130  7F A3 EB 78 */	mr r3, r29
/* 802DA134  7F 84 E3 78 */	mr r4, r28
/* 802DA138  7F 45 D3 78 */	mr r5, r26
/* 802DA13C  7F C6 F3 78 */	mr r6, r30
/* 802DA140  48 00 18 49 */	bl orderSync__9JKRDecompFPUcPUcUlUl
/* 802DA144  7F A3 EB 78 */	mr r3, r29
/* 802DA148  38 80 00 00 */	li r4, 0
/* 802DA14C  4B FF 43 B5 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802DA150  28 17 00 00 */	cmplwi r23, 0
/* 802DA154  41 82 00 08 */	beq lbl_802DA15C
/* 802DA158  93 57 00 00 */	stw r26, 0(r23)
lbl_802DA15C:
/* 802DA15C  7F 83 E3 78 */	mr r3, r28
/* 802DA160  48 00 00 6C */	b lbl_802DA1CC
lbl_802DA164:
/* 802DA164  2C 1B 00 02 */	cmpwi r27, 2
/* 802DA168  40 82 00 4C */	bne lbl_802DA1B4
/* 802DA16C  7E C3 B3 78 */	mr r3, r22
/* 802DA170  7F 84 E3 78 */	mr r4, r28
/* 802DA174  7F 05 C3 78 */	mr r5, r24
/* 802DA178  7F 46 D3 78 */	mr r6, r26
/* 802DA17C  7F C7 F3 78 */	mr r7, r30
/* 802DA180  39 00 00 00 */	li r8, 0
/* 802DA184  7E E9 BB 78 */	mr r9, r23
/* 802DA188  48 00 00 5D */	bl JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUlPUl
/* 802DA18C  28 03 00 00 */	cmplwi r3, 0
/* 802DA190  41 82 00 1C */	beq lbl_802DA1AC
/* 802DA194  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 802DA198  41 82 00 10 */	beq lbl_802DA1A8
/* 802DA19C  7F 83 E3 78 */	mr r3, r28
/* 802DA1A0  38 80 00 00 */	li r4, 0
/* 802DA1A4  4B FF 43 5D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA1A8:
/* 802DA1A8  3B 80 00 00 */	li r28, 0
lbl_802DA1AC:
/* 802DA1AC  7F 83 E3 78 */	mr r3, r28
/* 802DA1B0  48 00 00 1C */	b lbl_802DA1CC
lbl_802DA1B4:
/* 802DA1B4  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 802DA1B8  41 82 00 10 */	beq lbl_802DA1C8
/* 802DA1BC  7F 83 E3 78 */	mr r3, r28
/* 802DA1C0  38 80 00 00 */	li r4, 0
/* 802DA1C4  4B FF 43 3D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802DA1C8:
/* 802DA1C8  38 60 00 00 */	li r3, 0
lbl_802DA1CC:
/* 802DA1CC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 802DA1D0  48 08 80 2D */	bl _restgpr_18
/* 802DA1D4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802DA1D8  7C 08 03 A6 */	mtlr r0
/* 802DA1DC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802DA1E0  4E 80 00 20 */	blr 
