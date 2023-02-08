lbl_8033CA80:
/* 8033CA80  7C 08 02 A6 */	mflr r0
/* 8033CA84  90 01 00 04 */	stw r0, 4(r1)
/* 8033CA88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033CA8C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8033CA90  3B 44 00 00 */	addi r26, r4, 0
/* 8033CA94  3B A5 00 00 */	addi r29, r5, 0
/* 8033CA98  3B C3 00 00 */	addi r30, r3, 0
/* 8033CA9C  38 80 00 00 */	li r4, 0
/* 8033CAA0  38 A0 20 00 */	li r5, 0x2000
/* 8033CAA4  4B CC 69 B5 */	bl memset
/* 8033CAA8  2C 1A 00 00 */	cmpwi r26, 0
/* 8033CAAC  40 82 00 10 */	bne lbl_8033CABC
/* 8033CAB0  38 00 00 00 */	li r0, 0
/* 8033CAB4  90 1E 00 08 */	stw r0, 8(r30)
/* 8033CAB8  48 00 01 24 */	b lbl_8033CBDC
lbl_8033CABC:
/* 8033CABC  57 40 10 3A */	slwi r0, r26, 2
/* 8033CAC0  3B FA 00 00 */	addi r31, r26, 0
/* 8033CAC4  3B 7E 20 00 */	addi r27, r30, 0x2000
/* 8033CAC8  7F 9D 02 14 */	add r28, r29, r0
/* 8033CACC  48 00 00 28 */	b lbl_8033CAF4
lbl_8033CAD0:
/* 8033CAD0  80 7C 00 00 */	lwz r3, 0(r28)
/* 8033CAD4  48 02 C1 11 */	bl strlen
/* 8033CAD8  38 03 00 01 */	addi r0, r3, 1
/* 8033CADC  80 9C 00 00 */	lwz r4, 0(r28)
/* 8033CAE0  7F 60 D8 50 */	subf r27, r0, r27
/* 8033CAE4  38 7B 00 00 */	addi r3, r27, 0
/* 8033CAE8  48 02 C0 45 */	bl strcpy
/* 8033CAEC  7C 1E D8 50 */	subf r0, r30, r27
/* 8033CAF0  90 1C 00 00 */	stw r0, 0(r28)
lbl_8033CAF4:
/* 8033CAF4  37 5A FF FF */	addic. r26, r26, -1
/* 8033CAF8  3B 9C FF FC */	addi r28, r28, -4
/* 8033CAFC  40 80 FF D4 */	bge lbl_8033CAD0
/* 8033CB00  7C 1E D8 50 */	subf r0, r30, r27
/* 8033CB04  38 7F 00 01 */	addi r3, r31, 1
/* 8033CB08  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 8033CB0C  28 03 00 00 */	cmplwi r3, 0
/* 8033CB10  7C DE 02 14 */	add r6, r30, r0
/* 8033CB14  54 60 10 3A */	slwi r0, r3, 2
/* 8033CB18  7C C0 30 50 */	subf r6, r0, r6
/* 8033CB1C  38 A6 00 00 */	addi r5, r6, 0
/* 8033CB20  38 E0 00 00 */	li r7, 0
/* 8033CB24  40 81 00 A8 */	ble lbl_8033CBCC
/* 8033CB28  28 03 00 08 */	cmplwi r3, 8
/* 8033CB2C  38 7F FF F9 */	addi r3, r31, -7
/* 8033CB30  40 81 00 B4 */	ble lbl_8033CBE4
/* 8033CB34  38 03 00 07 */	addi r0, r3, 7
/* 8033CB38  54 00 E8 FE */	srwi r0, r0, 3
/* 8033CB3C  28 03 00 00 */	cmplwi r3, 0
/* 8033CB40  7C 09 03 A6 */	mtctr r0
/* 8033CB44  38 7D 00 00 */	addi r3, r29, 0
/* 8033CB48  38 85 00 00 */	addi r4, r5, 0
/* 8033CB4C  40 81 00 98 */	ble lbl_8033CBE4
lbl_8033CB50:
/* 8033CB50  80 03 00 00 */	lwz r0, 0(r3)
/* 8033CB54  38 E7 00 08 */	addi r7, r7, 8
/* 8033CB58  90 04 00 00 */	stw r0, 0(r4)
/* 8033CB5C  80 03 00 04 */	lwz r0, 4(r3)
/* 8033CB60  90 04 00 04 */	stw r0, 4(r4)
/* 8033CB64  80 03 00 08 */	lwz r0, 8(r3)
/* 8033CB68  90 04 00 08 */	stw r0, 8(r4)
/* 8033CB6C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8033CB70  90 04 00 0C */	stw r0, 0xc(r4)
/* 8033CB74  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8033CB78  90 04 00 10 */	stw r0, 0x10(r4)
/* 8033CB7C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8033CB80  90 04 00 14 */	stw r0, 0x14(r4)
/* 8033CB84  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8033CB88  90 04 00 18 */	stw r0, 0x18(r4)
/* 8033CB8C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8033CB90  38 63 00 20 */	addi r3, r3, 0x20
/* 8033CB94  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8033CB98  38 84 00 20 */	addi r4, r4, 0x20
/* 8033CB9C  42 00 FF B4 */	bdnz lbl_8033CB50
/* 8033CBA0  48 00 00 44 */	b lbl_8033CBE4
lbl_8033CBA4:
/* 8033CBA4  38 7F 00 01 */	addi r3, r31, 1
/* 8033CBA8  7C 07 18 50 */	subf r0, r7, r3
/* 8033CBAC  7C 07 18 40 */	cmplw r7, r3
/* 8033CBB0  7C 09 03 A6 */	mtctr r0
/* 8033CBB4  40 80 00 18 */	bge lbl_8033CBCC
lbl_8033CBB8:
/* 8033CBB8  80 04 00 00 */	lwz r0, 0(r4)
/* 8033CBBC  38 84 00 04 */	addi r4, r4, 4
/* 8033CBC0  90 05 00 00 */	stw r0, 0(r5)
/* 8033CBC4  38 A5 00 04 */	addi r5, r5, 4
/* 8033CBC8  42 00 FF F0 */	bdnz lbl_8033CBB8
lbl_8033CBCC:
/* 8033CBCC  38 06 FF FC */	addi r0, r6, -4
/* 8033CBD0  93 E6 FF FC */	stw r31, -4(r6)
/* 8033CBD4  7C 1E 00 50 */	subf r0, r30, r0
/* 8033CBD8  90 1E 00 08 */	stw r0, 8(r30)
lbl_8033CBDC:
/* 8033CBDC  38 60 00 01 */	li r3, 1
/* 8033CBE0  48 00 00 14 */	b lbl_8033CBF4
lbl_8033CBE4:
/* 8033CBE4  54 E0 10 3A */	slwi r0, r7, 2
/* 8033CBE8  7C 9D 02 14 */	add r4, r29, r0
/* 8033CBEC  7C A5 02 14 */	add r5, r5, r0
/* 8033CBF0  4B FF FF B4 */	b lbl_8033CBA4
lbl_8033CBF4:
/* 8033CBF4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8033CBF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033CBFC  38 21 00 30 */	addi r1, r1, 0x30
/* 8033CC00  7C 08 03 A6 */	mtlr r0
/* 8033CC04  4E 80 00 20 */	blr 
