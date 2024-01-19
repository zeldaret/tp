lbl_8034CCEC:
/* 8034CCEC  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8034CCF0  3D 60 80 45 */	lis r11, regs@ha /* 0x8044CA28@ha */
/* 8034CCF4  39 6B CA 28 */	addi r11, r11, regs@l /* 0x8044CA28@l */
/* 8034CCF8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8034CCFC  83 E1 00 30 */	lwz r31, 0x30(r1)
/* 8034CD00  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8034CD04  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8034CD08  A0 0B 00 6C */	lhz r0, 0x6c(r11)
/* 8034CD0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8034CD10  41 82 00 10 */	beq lbl_8034CD20
/* 8034CD14  39 80 00 01 */	li r12, 1
/* 8034CD18  3B A0 00 02 */	li r29, 2
/* 8034CD1C  48 00 00 0C */	b lbl_8034CD28
lbl_8034CD20:
/* 8034CD20  39 80 00 02 */	li r12, 2
/* 8034CD24  3B A0 00 01 */	li r29, 1
lbl_8034CD28:
/* 8034CD28  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 8034CD2C  7F C0 0E 70 */	srawi r0, r30, 1
/* 8034CD30  7C 00 01 94 */	addze r0, r0
/* 8034CD34  54 00 08 3C */	slwi r0, r0, 1
/* 8034CD38  7C 00 F0 11 */	subfc. r0, r0, r30
/* 8034CD3C  40 82 00 3C */	bne lbl_8034CD78
/* 8034CD40  55 83 04 3E */	clrlwi r3, r12, 0x10
/* 8034CD44  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8034CD48  7C 03 01 D6 */	mullw r0, r3, r0
/* 8034CD4C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8034CD50  7C 03 00 50 */	subf r0, r3, r0
/* 8034CD54  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8034CD58  7F A3 F1 D6 */	mullw r29, r3, r30
/* 8034CD5C  7C 1E 00 50 */	subf r0, r30, r0
/* 8034CD60  7F C3 01 D6 */	mullw r30, r3, r0
/* 8034CD64  7C 07 EA 14 */	add r0, r7, r29
/* 8034CD68  7C C9 F2 14 */	add r6, r9, r30
/* 8034CD6C  7C 68 EA 14 */	add r3, r8, r29
/* 8034CD70  7C EA F2 14 */	add r7, r10, r30
/* 8034CD74  48 00 00 38 */	b lbl_8034CDAC
lbl_8034CD78:
/* 8034CD78  55 83 04 3E */	clrlwi r3, r12, 0x10
/* 8034CD7C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8034CD80  7C 03 01 D6 */	mullw r0, r3, r0
/* 8034CD84  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8034CD88  7C 03 00 50 */	subf r0, r3, r0
/* 8034CD8C  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8034CD90  7F A3 F1 D6 */	mullw r29, r3, r30
/* 8034CD94  7C 1E 00 50 */	subf r0, r30, r0
/* 8034CD98  7F C3 01 D6 */	mullw r30, r3, r0
/* 8034CD9C  7C 08 EA 14 */	add r0, r8, r29
/* 8034CDA0  7C CA F2 14 */	add r6, r10, r30
/* 8034CDA4  7C 67 EA 14 */	add r3, r7, r29
/* 8034CDA8  7C E9 F2 14 */	add r7, r9, r30
lbl_8034CDAC:
/* 8034CDAC  54 88 04 3E */	clrlwi r8, r4, 0x10
/* 8034CDB0  55 84 04 3E */	clrlwi r4, r12, 0x10
/* 8034CDB4  7C 88 23 D6 */	divw r4, r8, r4
/* 8034CDB8  2C 1F 00 00 */	cmpwi r31, 0
/* 8034CDBC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8034CDC0  41 82 00 20 */	beq lbl_8034CDE0
/* 8034CDC4  54 84 08 3C */	slwi r4, r4, 1
/* 8034CDC8  38 84 FF FE */	addi r4, r4, -2
/* 8034CDCC  7C 00 22 14 */	add r0, r0, r4
/* 8034CDD0  7C 63 22 14 */	add r3, r3, r4
/* 8034CDD4  38 80 00 00 */	li r4, 0
/* 8034CDD8  38 C6 00 02 */	addi r6, r6, 2
/* 8034CDDC  38 E7 00 02 */	addi r7, r7, 2
lbl_8034CDE0:
/* 8034CDE0  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 8034CDE4  54 84 23 36 */	rlwinm r4, r4, 4, 0xc, 0x1b
/* 8034CDE8  7C A4 23 78 */	or r4, r5, r4
/* 8034CDEC  B0 8B 00 00 */	sth r4, 0(r11)
/* 8034CDF0  3C 80 80 00 */	lis r4, 0x8000
/* 8034CDF4  3D 20 01 00 */	lis r9, 0x100
/* 8034CDF8  80 AD 92 90 */	lwz r5, changed(r13)
/* 8034CDFC  3D 00 02 00 */	lis r8, 0x200
/* 8034CE00  81 4D 92 94 */	lwz r10, changed+0x4(r13)
/* 8034CE04  7C A4 23 78 */	or r4, r5, r4
/* 8034CE08  3C A0 00 40 */	lis r5, 0x40
/* 8034CE0C  91 4D 92 94 */	stw r10, changed+0x4(r13)
/* 8034CE10  90 8D 92 90 */	stw r4, changed(r13)
/* 8034CE14  3C 80 00 80 */	lis r4, 0x80
/* 8034CE18  B0 0B 00 0E */	sth r0, 0xe(r11)
/* 8034CE1C  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CE20  81 4D 92 94 */	lwz r10, changed+0x4(r13)
/* 8034CE24  7C 00 4B 78 */	or r0, r0, r9
/* 8034CE28  91 4D 92 94 */	stw r10, changed+0x4(r13)
/* 8034CE2C  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CE30  B0 CB 00 0C */	sth r6, 0xc(r11)
/* 8034CE34  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CE38  80 CD 92 94 */	lwz r6, changed+0x4(r13)
/* 8034CE3C  7C 00 43 78 */	or r0, r0, r8
/* 8034CE40  90 CD 92 94 */	stw r6, changed+0x4(r13)
/* 8034CE44  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CE48  B0 6B 00 12 */	sth r3, 0x12(r11)
/* 8034CE4C  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CE50  80 6D 92 94 */	lwz r3, changed+0x4(r13)
/* 8034CE54  7C 00 2B 78 */	or r0, r0, r5
/* 8034CE58  90 6D 92 94 */	stw r3, changed+0x4(r13)
/* 8034CE5C  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CE60  B0 EB 00 10 */	sth r7, 0x10(r11)
/* 8034CE64  80 0D 92 90 */	lwz r0, changed(r13)
/* 8034CE68  80 6D 92 94 */	lwz r3, changed+0x4(r13)
/* 8034CE6C  7C 00 23 78 */	or r0, r0, r4
/* 8034CE70  90 6D 92 94 */	stw r3, changed+0x4(r13)
/* 8034CE74  90 0D 92 90 */	stw r0, changed(r13)
/* 8034CE78  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8034CE7C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8034CE80  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8034CE84  38 21 00 28 */	addi r1, r1, 0x28
/* 8034CE88  4E 80 00 20 */	blr 
