lbl_8033AC3C:
/* 8033AC3C  7C 08 02 A6 */	mflr r0
/* 8033AC40  90 01 00 04 */	stw r0, 4(r1)
/* 8033AC44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033AC48  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8033AC4C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8033AC50  7C 7E 1B 78 */	mr r30, r3
/* 8033AC54  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8033AC58  48 00 2A 9D */	bl OSDisableInterrupts
/* 8033AC5C  80 1E 00 00 */	lwz r0, 0(r30)
/* 8033AC60  3B E3 00 00 */	addi r31, r3, 0
/* 8033AC64  28 00 00 00 */	cmplwi r0, 0
/* 8033AC68  40 82 00 10 */	bne lbl_8033AC78
/* 8033AC6C  7F E3 FB 78 */	mr r3, r31
/* 8033AC70  48 00 2A AD */	bl OSRestoreInterrupts
/* 8033AC74  48 00 00 C8 */	b lbl_8033AD3C
lbl_8033AC78:
/* 8033AC78  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 8033AC7C  28 1D 00 00 */	cmplwi r29, 0
/* 8033AC80  40 82 00 14 */	bne lbl_8033AC94
/* 8033AC84  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8033AC88  38 6D 90 B8 */	la r3, AlarmQueue(r13) /* 80451638-_SDA_BASE_ */
/* 8033AC8C  90 03 00 04 */	stw r0, 4(r3)
/* 8033AC90  48 00 00 0C */	b lbl_8033AC9C
lbl_8033AC94:
/* 8033AC94  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 8033AC98  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8033AC9C:
/* 8033AC9C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8033ACA0  28 03 00 00 */	cmplwi r3, 0
/* 8033ACA4  41 82 00 0C */	beq lbl_8033ACB0
/* 8033ACA8  93 A3 00 14 */	stw r29, 0x14(r3)
/* 8033ACAC  48 00 00 80 */	b lbl_8033AD2C
lbl_8033ACB0:
/* 8033ACB0  28 1D 00 00 */	cmplwi r29, 0
/* 8033ACB4  93 AD 90 B8 */	stw r29, AlarmQueue(r13)
/* 8033ACB8  41 82 00 74 */	beq lbl_8033AD2C
/* 8033ACBC  48 00 7A 61 */	bl __OSGetSystemTime
/* 8033ACC0  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 8033ACC4  38 E0 00 00 */	li r7, 0
/* 8033ACC8  80 1D 00 08 */	lwz r0, 8(r29)
/* 8033ACCC  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 8033ACD0  7D 04 30 10 */	subfc r8, r4, r6
/* 8033ACD4  7C 03 01 10 */	subfe r0, r3, r0
/* 8033ACD8  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 8033ACDC  7C 07 40 10 */	subfc r0, r7, r8
/* 8033ACE0  7C A5 31 10 */	subfe r5, r5, r6
/* 8033ACE4  7C A6 31 10 */	subfe r5, r6, r6
/* 8033ACE8  7C A5 00 D1 */	neg. r5, r5
/* 8033ACEC  41 82 00 10 */	beq lbl_8033ACFC
/* 8033ACF0  38 60 00 00 */	li r3, 0
/* 8033ACF4  4B FF EF FD */	bl PPCMtdec
/* 8033ACF8  48 00 00 34 */	b lbl_8033AD2C
lbl_8033ACFC:
/* 8033ACFC  3C 80 80 00 */	lis r4, 0x8000
/* 8033AD00  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 8033AD04  7C 04 40 10 */	subfc r0, r4, r8
/* 8033AD08  7C 63 31 10 */	subfe r3, r3, r6
/* 8033AD0C  7C 66 31 10 */	subfe r3, r6, r6
/* 8033AD10  7C 63 00 D1 */	neg. r3, r3
/* 8033AD14  41 82 00 10 */	beq lbl_8033AD24
/* 8033AD18  7D 03 43 78 */	mr r3, r8
/* 8033AD1C  4B FF EF D5 */	bl PPCMtdec
/* 8033AD20  48 00 00 0C */	b lbl_8033AD2C
lbl_8033AD24:
/* 8033AD24  38 64 FF FF */	addi r3, r4, -1
/* 8033AD28  4B FF EF C9 */	bl PPCMtdec
lbl_8033AD2C:
/* 8033AD2C  38 00 00 00 */	li r0, 0
/* 8033AD30  90 1E 00 00 */	stw r0, 0(r30)
/* 8033AD34  7F E3 FB 78 */	mr r3, r31
/* 8033AD38  48 00 29 E5 */	bl OSRestoreInterrupts
lbl_8033AD3C:
/* 8033AD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8033AD40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8033AD44  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8033AD48  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8033AD4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8033AD50  7C 08 03 A6 */	mtlr r0
/* 8033AD54  4E 80 00 20 */	blr 
