lbl_8036E8E0:
/* 8036E8E0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8036E8E4  7C 2C 0B 78 */	mr r12, r1
/* 8036E8E8  21 6B F6 C0 */	subfic r11, r11, -2368
/* 8036E8EC  7C 21 59 6E */	stwux r1, r1, r11
/* 8036E8F0  7C 08 02 A6 */	mflr r0
/* 8036E8F4  90 0C 00 04 */	stw r0, 4(r12)
/* 8036E8F8  BF 4C FF E8 */	stmw r26, -0x18(r12)
/* 8036E8FC  7C 7F 1B 78 */	mr r31, r3
/* 8036E900  3C 60 80 3A */	lis r3, lit_321@ha
/* 8036E904  3B A3 28 D0 */	addi r29, r3, lit_321@l
/* 8036E908  38 9D 01 B0 */	addi r4, r29, 0x1b0
/* 8036E90C  38 60 00 01 */	li r3, 1
/* 8036E910  83 5F 00 20 */	lwz r26, 0x20(r31)
/* 8036E914  A3 7F 00 1C */	lhz r27, 0x1c(r31)
/* 8036E918  8B DF 00 18 */	lbz r30, 0x18(r31)
/* 8036E91C  7F 46 D3 78 */	mr r6, r26
/* 8036E920  88 BF 00 14 */	lbz r5, 0x14(r31)
/* 8036E924  7F 67 DB 78 */	mr r7, r27
/* 8036E928  7F C8 F3 78 */	mr r8, r30
/* 8036E92C  4C C6 31 82 */	crclr 6
/* 8036E930  48 00 43 25 */	bl MWTRACE
/* 8036E934  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8036E938  41 82 00 40 */	beq lbl_8036E978
/* 8036E93C  38 61 00 64 */	addi r3, r1, 0x64
/* 8036E940  38 80 00 00 */	li r4, 0
/* 8036E944  38 A0 00 40 */	li r5, 0x40
/* 8036E948  4B C9 4B 11 */	bl memset
/* 8036E94C  38 60 00 80 */	li r3, 0x80
/* 8036E950  38 A0 00 40 */	li r5, 0x40
/* 8036E954  38 00 00 12 */	li r0, 0x12
/* 8036E958  98 61 00 68 */	stb r3, 0x68(r1)
/* 8036E95C  38 61 00 64 */	addi r3, r1, 0x64
/* 8036E960  38 80 00 40 */	li r4, 0x40
/* 8036E964  90 A1 00 64 */	stw r5, 0x64(r1)
/* 8036E968  98 01 00 6C */	stb r0, 0x6c(r1)
/* 8036E96C  48 00 33 FD */	bl TRKWriteUARTN
/* 8036E970  38 60 00 00 */	li r3, 0
/* 8036E974  48 00 01 98 */	b lbl_8036EB0C
lbl_8036E978:
/* 8036E978  57 DC 06 73 */	rlwinm. r28, r30, 0, 0x19, 0x19
/* 8036E97C  93 61 00 20 */	stw r27, 0x20(r1)
/* 8036E980  41 82 00 20 */	beq lbl_8036E9A0
/* 8036E984  7F 44 D3 78 */	mr r4, r26
/* 8036E988  38 61 01 00 */	addi r3, r1, 0x100
/* 8036E98C  38 A1 00 20 */	addi r5, r1, 0x20
/* 8036E990  38 C0 00 01 */	li r6, 1
/* 8036E994  48 00 10 81 */	bl TRKTargetAccessARAM
/* 8036E998  7C 7E 1B 78 */	mr r30, r3
/* 8036E99C  48 00 00 24 */	b lbl_8036E9C0
lbl_8036E9A0:
/* 8036E9A0  57 C0 EF FE */	rlwinm r0, r30, 0x1d, 0x1f, 0x1f
/* 8036E9A4  7F 44 D3 78 */	mr r4, r26
/* 8036E9A8  38 61 01 00 */	addi r3, r1, 0x100
/* 8036E9AC  38 A1 00 20 */	addi r5, r1, 0x20
/* 8036E9B0  68 06 00 01 */	xori r6, r0, 1
/* 8036E9B4  38 E0 00 01 */	li r7, 1
/* 8036E9B8  48 00 24 1D */	bl TRKTargetAccessMemory
/* 8036E9BC  7C 7E 1B 78 */	mr r30, r3
lbl_8036E9C0:
/* 8036E9C0  7F E3 FB 78 */	mr r3, r31
/* 8036E9C4  38 80 00 00 */	li r4, 0
/* 8036E9C8  4B FF EC 85 */	bl TRKResetBuffer
/* 8036E9CC  2C 1E 00 00 */	cmpwi r30, 0
/* 8036E9D0  40 82 00 78 */	bne lbl_8036EA48
/* 8036E9D4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8036E9D8  38 80 00 00 */	li r4, 0
/* 8036E9DC  38 A0 00 40 */	li r5, 0x40
/* 8036E9E0  4B C9 4A 79 */	bl memset
/* 8036E9E4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8036E9E8  38 00 00 80 */	li r0, 0x80
/* 8036E9EC  9B C1 00 AC */	stb r30, 0xac(r1)
/* 8036E9F0  7F E3 FB 78 */	mr r3, r31
/* 8036E9F4  38 84 00 40 */	addi r4, r4, 0x40
/* 8036E9F8  38 A0 00 40 */	li r5, 0x40
/* 8036E9FC  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 8036EA00  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8036EA04  98 01 00 A8 */	stb r0, 0xa8(r1)
/* 8036EA08  4B FF EB 71 */	bl TRKAppendBuffer
/* 8036EA0C  2C 1C 00 00 */	cmpwi r28, 0
/* 8036EA10  41 82 00 24 */	beq lbl_8036EA34
/* 8036EA14  57 40 06 FE */	clrlwi r0, r26, 0x1b
/* 8036EA18  38 81 01 00 */	addi r4, r1, 0x100
/* 8036EA1C  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8036EA20  7F E3 FB 78 */	mr r3, r31
/* 8036EA24  7C 84 02 14 */	add r4, r4, r0
/* 8036EA28  4B FF EB 51 */	bl TRKAppendBuffer
/* 8036EA2C  7C 7E 1B 78 */	mr r30, r3
/* 8036EA30  48 00 00 18 */	b lbl_8036EA48
lbl_8036EA34:
/* 8036EA34  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8036EA38  7F E3 FB 78 */	mr r3, r31
/* 8036EA3C  38 81 01 00 */	addi r4, r1, 0x100
/* 8036EA40  4B FF EB 39 */	bl TRKAppendBuffer
/* 8036EA44  7C 7E 1B 78 */	mr r30, r3
lbl_8036EA48:
/* 8036EA48  2C 1E 00 00 */	cmpwi r30, 0
/* 8036EA4C  41 82 00 8C */	beq lbl_8036EAD8
/* 8036EA50  38 1E F9 00 */	addi r0, r30, -1792
/* 8036EA54  28 00 00 06 */	cmplwi r0, 6
/* 8036EA58  41 81 00 44 */	bgt lbl_8036EA9C
/* 8036EA5C  3C 60 80 3D */	lis r3, lit_536@ha
/* 8036EA60  54 00 10 3A */	slwi r0, r0, 2
/* 8036EA64  38 63 32 1C */	addi r3, r3, lit_536@l
/* 8036EA68  7C 03 00 2E */	lwzx r0, r3, r0
/* 8036EA6C  7C 09 03 A6 */	mtctr r0
/* 8036EA70  4E 80 04 20 */	bctr 
/* 8036EA74  3B 80 00 15 */	li r28, 0x15
/* 8036EA78  48 00 00 28 */	b lbl_8036EAA0
/* 8036EA7C  3B 80 00 13 */	li r28, 0x13
/* 8036EA80  48 00 00 20 */	b lbl_8036EAA0
/* 8036EA84  3B 80 00 21 */	li r28, 0x21
/* 8036EA88  48 00 00 18 */	b lbl_8036EAA0
/* 8036EA8C  3B 80 00 22 */	li r28, 0x22
/* 8036EA90  48 00 00 10 */	b lbl_8036EAA0
/* 8036EA94  3B 80 00 20 */	li r28, 0x20
/* 8036EA98  48 00 00 08 */	b lbl_8036EAA0
lbl_8036EA9C:
/* 8036EA9C  3B 80 00 03 */	li r28, 3
lbl_8036EAA0:
/* 8036EAA0  38 61 00 24 */	addi r3, r1, 0x24
/* 8036EAA4  38 80 00 00 */	li r4, 0
/* 8036EAA8  38 A0 00 40 */	li r5, 0x40
/* 8036EAAC  4B C9 49 AD */	bl memset
/* 8036EAB0  38 60 00 80 */	li r3, 0x80
/* 8036EAB4  38 00 00 40 */	li r0, 0x40
/* 8036EAB8  98 61 00 28 */	stb r3, 0x28(r1)
/* 8036EABC  38 61 00 24 */	addi r3, r1, 0x24
/* 8036EAC0  38 80 00 40 */	li r4, 0x40
/* 8036EAC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036EAC8  9B 81 00 2C */	stb r28, 0x2c(r1)
/* 8036EACC  48 00 32 9D */	bl TRKWriteUARTN
/* 8036EAD0  38 60 00 00 */	li r3, 0
/* 8036EAD4  48 00 00 38 */	b lbl_8036EB0C
lbl_8036EAD8:
/* 8036EAD8  38 9D 00 60 */	addi r4, r29, 0x60
/* 8036EADC  38 60 00 01 */	li r3, 1
/* 8036EAE0  4C C6 31 82 */	crclr 6
/* 8036EAE4  48 00 41 71 */	bl MWTRACE
/* 8036EAE8  7F E3 FB 78 */	mr r3, r31
/* 8036EAEC  4B FF E4 ED */	bl TRKMessageSend
/* 8036EAF0  38 9D 00 80 */	addi r4, r29, 0x80
/* 8036EAF4  7C 7D 1B 78 */	mr r29, r3
/* 8036EAF8  38 60 00 01 */	li r3, 1
/* 8036EAFC  7F A5 EB 78 */	mr r5, r29
/* 8036EB00  4C C6 31 82 */	crclr 6
/* 8036EB04  48 00 41 51 */	bl MWTRACE
/* 8036EB08  7F A3 EB 78 */	mr r3, r29
lbl_8036EB0C:
/* 8036EB0C  81 41 00 00 */	lwz r10, 0(r1)
/* 8036EB10  BB 4A FF E8 */	lmw r26, -0x18(r10)
/* 8036EB14  80 0A 00 04 */	lwz r0, 4(r10)
/* 8036EB18  7C 08 03 A6 */	mtlr r0
/* 8036EB1C  7D 41 53 78 */	mr r1, r10
/* 8036EB20  4E 80 00 20 */	blr 
