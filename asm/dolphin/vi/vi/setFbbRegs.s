lbl_8034CA18:
/* 8034CA18  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8034CA1C  3D 20 80 45 */	lis r9, regs@ha
/* 8034CA20  39 29 CA 28 */	addi r9, r9, regs@l
/* 8034CA24  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8034CA28  89 03 00 2C */	lbz r8, 0x2c(r3)
/* 8034CA2C  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8034CA30  55 1F 28 34 */	slwi r31, r8, 5
/* 8034CA34  A1 03 00 16 */	lhz r8, 0x16(r3)
/* 8034CA38  7C 1F 01 D6 */	mullw r0, r31, r0
/* 8034CA3C  81 63 00 20 */	lwz r11, 0x20(r3)
/* 8034CA40  81 43 00 30 */	lwz r10, 0x30(r3)
/* 8034CA44  A1 83 00 0A */	lhz r12, 0xa(r3)
/* 8034CA48  55 08 08 34 */	rlwinm r8, r8, 1, 0, 0x1a
/* 8034CA4C  7C 08 02 14 */	add r0, r8, r0
/* 8034CA50  7C 0A 02 14 */	add r0, r10, r0
/* 8034CA54  2C 0B 00 00 */	cmpwi r11, 0
/* 8034CA58  90 04 00 00 */	stw r0, 0(r4)
/* 8034CA5C  40 82 00 0C */	bne lbl_8034CA68
/* 8034CA60  81 04 00 00 */	lwz r8, 0(r4)
/* 8034CA64  48 00 00 0C */	b lbl_8034CA70
lbl_8034CA68:
/* 8034CA68  80 04 00 00 */	lwz r0, 0(r4)
/* 8034CA6C  7D 00 FA 14 */	add r8, r0, r31
lbl_8034CA70:
/* 8034CA70  7D 80 0E 70 */	srawi r0, r12, 1
/* 8034CA74  91 05 00 00 */	stw r8, 0(r5)
/* 8034CA78  7C 00 01 94 */	addze r0, r0
/* 8034CA7C  54 00 08 3C */	slwi r0, r0, 1
/* 8034CA80  7C 00 60 10 */	subfc r0, r0, r12
/* 8034CA84  2C 00 00 01 */	cmpwi r0, 1
/* 8034CA88  40 82 00 14 */	bne lbl_8034CA9C
/* 8034CA8C  81 04 00 00 */	lwz r8, 0(r4)
/* 8034CA90  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CA94  90 04 00 00 */	stw r0, 0(r4)
/* 8034CA98  91 05 00 00 */	stw r8, 0(r5)
lbl_8034CA9C:
/* 8034CA9C  80 04 00 00 */	lwz r0, 0(r4)
/* 8034CAA0  54 00 00 BE */	clrlwi r0, r0, 2
/* 8034CAA4  90 04 00 00 */	stw r0, 0(r4)
/* 8034CAA8  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CAAC  54 00 00 BE */	clrlwi r0, r0, 2
/* 8034CAB0  90 05 00 00 */	stw r0, 0(r5)
/* 8034CAB4  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8034CAB8  2C 00 00 00 */	cmpwi r0, 0
/* 8034CABC  41 82 00 90 */	beq lbl_8034CB4C
/* 8034CAC0  89 03 00 2C */	lbz r8, 0x2c(r3)
/* 8034CAC4  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8034CAC8  55 1F 28 34 */	slwi r31, r8, 5
/* 8034CACC  A1 03 00 16 */	lhz r8, 0x16(r3)
/* 8034CAD0  7C 1F 01 D6 */	mullw r0, r31, r0
/* 8034CAD4  81 63 00 20 */	lwz r11, 0x20(r3)
/* 8034CAD8  81 43 00 48 */	lwz r10, 0x48(r3)
/* 8034CADC  A1 83 00 0A */	lhz r12, 0xa(r3)
/* 8034CAE0  55 08 08 34 */	rlwinm r8, r8, 1, 0, 0x1a
/* 8034CAE4  7C 08 02 14 */	add r0, r8, r0
/* 8034CAE8  7C 0A 02 14 */	add r0, r10, r0
/* 8034CAEC  2C 0B 00 00 */	cmpwi r11, 0
/* 8034CAF0  90 06 00 00 */	stw r0, 0(r6)
/* 8034CAF4  40 82 00 0C */	bne lbl_8034CB00
/* 8034CAF8  81 06 00 00 */	lwz r8, 0(r6)
/* 8034CAFC  48 00 00 0C */	b lbl_8034CB08
lbl_8034CB00:
/* 8034CB00  80 06 00 00 */	lwz r0, 0(r6)
/* 8034CB04  7D 00 FA 14 */	add r8, r0, r31
lbl_8034CB08:
/* 8034CB08  7D 80 0E 70 */	srawi r0, r12, 1
/* 8034CB0C  91 07 00 00 */	stw r8, 0(r7)
/* 8034CB10  7C 00 01 94 */	addze r0, r0
/* 8034CB14  54 00 08 3C */	slwi r0, r0, 1
/* 8034CB18  7C 00 60 10 */	subfc r0, r0, r12
/* 8034CB1C  2C 00 00 01 */	cmpwi r0, 1
/* 8034CB20  40 82 00 14 */	bne lbl_8034CB34
/* 8034CB24  81 06 00 00 */	lwz r8, 0(r6)
/* 8034CB28  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CB2C  90 06 00 00 */	stw r0, 0(r6)
/* 8034CB30  91 07 00 00 */	stw r8, 0(r7)
lbl_8034CB34:
/* 8034CB34  80 06 00 00 */	lwz r0, 0(r6)
/* 8034CB38  54 00 00 BE */	clrlwi r0, r0, 2
/* 8034CB3C  90 06 00 00 */	stw r0, 0(r6)
/* 8034CB40  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CB44  54 00 00 BE */	clrlwi r0, r0, 2
/* 8034CB48  90 07 00 00 */	stw r0, 0(r7)
lbl_8034CB4C:
/* 8034CB4C  80 04 00 00 */	lwz r0, 0(r4)
/* 8034CB50  3D 00 01 00 */	lis r8, 0x100
/* 8034CB54  7C 00 40 40 */	cmplw r0, r8
/* 8034CB58  40 80 00 30 */	bge lbl_8034CB88
/* 8034CB5C  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CB60  7C 00 40 40 */	cmplw r0, r8
/* 8034CB64  40 80 00 24 */	bge lbl_8034CB88
/* 8034CB68  80 06 00 00 */	lwz r0, 0(r6)
/* 8034CB6C  7C 00 40 40 */	cmplw r0, r8
/* 8034CB70  40 80 00 18 */	bge lbl_8034CB88
/* 8034CB74  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CB78  7C 00 40 40 */	cmplw r0, r8
/* 8034CB7C  40 80 00 0C */	bge lbl_8034CB88
/* 8034CB80  39 40 00 00 */	li r10, 0
/* 8034CB84  48 00 00 08 */	b lbl_8034CB8C
lbl_8034CB88:
/* 8034CB88  39 40 00 01 */	li r10, 1
lbl_8034CB8C:
/* 8034CB8C  28 0A 00 00 */	cmplwi r10, 0
/* 8034CB90  41 82 00 34 */	beq lbl_8034CBC4
/* 8034CB94  80 04 00 00 */	lwz r0, 0(r4)
/* 8034CB98  54 00 D9 7E */	srwi r0, r0, 5
/* 8034CB9C  90 04 00 00 */	stw r0, 0(r4)
/* 8034CBA0  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CBA4  54 00 D9 7E */	srwi r0, r0, 5
/* 8034CBA8  90 05 00 00 */	stw r0, 0(r5)
/* 8034CBAC  80 06 00 00 */	lwz r0, 0(r6)
/* 8034CBB0  54 00 D9 7E */	srwi r0, r0, 5
/* 8034CBB4  90 06 00 00 */	stw r0, 0(r6)
/* 8034CBB8  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CBBC  54 00 D9 7E */	srwi r0, r0, 5
/* 8034CBC0  90 07 00 00 */	stw r0, 0(r7)
lbl_8034CBC4:
/* 8034CBC4  80 04 00 00 */	lwz r0, 0(r4)
/* 8034CBC8  55 4B 60 26 */	slwi r11, r10, 0xc
/* 8034CBCC  3D 00 00 01 */	lis r8, 1
/* 8034CBD0  B0 09 00 1E */	sth r0, 0x1e(r9)
/* 8034CBD4  3C 00 00 02 */	lis r0, 2
/* 8034CBD8  81 4D 92 90 */	lwz r10, changed(r13)
/* 8034CBDC  81 8D 92 94 */	lwz r12, data_80451814(r13)
/* 8034CBE0  7D 4A 43 78 */	or r10, r10, r8
/* 8034CBE4  91 8D 92 94 */	stw r12, data_80451814(r13)
/* 8034CBE8  91 4D 92 90 */	stw r10, changed(r13)
/* 8034CBEC  81 44 00 00 */	lwz r10, 0(r4)
/* 8034CBF0  88 83 00 3C */	lbz r4, 0x3c(r3)
/* 8034CBF4  55 4A 84 3E */	srwi r10, r10, 0x10
/* 8034CBF8  54 84 40 2E */	slwi r4, r4, 8
/* 8034CBFC  7D 44 23 78 */	or r4, r10, r4
/* 8034CC00  7D 64 23 78 */	or r4, r11, r4
/* 8034CC04  B0 89 00 1C */	sth r4, 0x1c(r9)
/* 8034CC08  80 8D 92 90 */	lwz r4, changed(r13)
/* 8034CC0C  81 4D 92 94 */	lwz r10, data_80451814(r13)
/* 8034CC10  7C 80 03 78 */	or r0, r4, r0
/* 8034CC14  91 4D 92 94 */	stw r10, data_80451814(r13)
/* 8034CC18  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CC1C  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CC20  B0 09 00 26 */	sth r0, 0x26(r9)
/* 8034CC24  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CC28  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034CC2C  60 00 10 00 */	ori r0, r0, 0x1000
/* 8034CC30  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034CC34  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CC38  80 05 00 00 */	lwz r0, 0(r5)
/* 8034CC3C  54 00 84 3E */	srwi r0, r0, 0x10
/* 8034CC40  B0 09 00 24 */	sth r0, 0x24(r9)
/* 8034CC44  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CC48  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034CC4C  60 00 20 00 */	ori r0, r0, 0x2000
/* 8034CC50  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034CC54  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CC58  80 03 00 44 */	lwz r0, 0x44(r3)
/* 8034CC5C  2C 00 00 00 */	cmpwi r0, 0
/* 8034CC60  41 82 00 80 */	beq lbl_8034CCE0
/* 8034CC64  80 66 00 00 */	lwz r3, 0(r6)
/* 8034CC68  38 08 80 00 */	addi r0, r8, -32768
/* 8034CC6C  B0 69 00 22 */	sth r3, 0x22(r9)
/* 8034CC70  80 6D 92 90 */	lwz r3, changed(r13)
/* 8034CC74  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034CC78  60 63 40 00 */	ori r3, r3, 0x4000
/* 8034CC7C  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034CC80  90 6D 92 90 */	stw r3, changed(r13)
/* 8034CC84  80 66 00 00 */	lwz r3, 0(r6)
/* 8034CC88  54 63 84 3E */	srwi r3, r3, 0x10
/* 8034CC8C  B0 69 00 20 */	sth r3, 0x20(r9)
/* 8034CC90  80 6D 92 90 */	lwz r3, changed(r13)
/* 8034CC94  80 8D 92 94 */	lwz r4, data_80451814(r13)
/* 8034CC98  7C 60 03 78 */	or r0, r3, r0
/* 8034CC9C  90 8D 92 94 */	stw r4, data_80451814(r13)
/* 8034CCA0  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CCA4  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CCA8  B0 09 00 2A */	sth r0, 0x2a(r9)
/* 8034CCAC  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CCB0  80 6D 92 94 */	lwz r3, data_80451814(r13)
/* 8034CCB4  60 00 04 00 */	ori r0, r0, 0x400
/* 8034CCB8  90 6D 92 94 */	stw r3, data_80451814(r13)
/* 8034CCBC  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CCC0  80 07 00 00 */	lwz r0, 0(r7)
/* 8034CCC4  54 00 84 3E */	srwi r0, r0, 0x10
/* 8034CCC8  B0 09 00 28 */	sth r0, 0x28(r9)
/* 8034CCCC  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CCD0  80 6D 92 94 */	lwz r3, data_80451814(r13)
/* 8034CCD4  60 00 08 00 */	ori r0, r0, 0x800
/* 8034CCD8  90 6D 92 94 */	stw r3, data_80451814(r13)
/* 8034CCDC  90 0D 92 90 */	stw r0, changed(r13)
lbl_8034CCE0:
/* 8034CCE0  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8034CCE4  38 21 00 48 */	addi r1, r1, 0x48
/* 8034CCE8  4E 80 00 20 */	blr 
