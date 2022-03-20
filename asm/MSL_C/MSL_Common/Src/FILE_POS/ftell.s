lbl_80365E90:
/* 80365E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80365E94  7C 08 02 A6 */	mflr r0
/* 80365E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80365E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80365EA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80365EA4  7C 7E 1B 78 */	mr r30, r3
/* 80365EA8  38 60 00 02 */	li r3, 2
/* 80365EAC  4B FF F5 BD */	bl __begin_critical_region
/* 80365EB0  A0 1E 00 04 */	lhz r0, 4(r30)
/* 80365EB4  38 80 00 00 */	li r4, 0
/* 80365EB8  54 00 D7 7E */	rlwinm r0, r0, 0x1a, 0x1d, 0x1f
/* 80365EBC  28 00 00 01 */	cmplwi r0, 1
/* 80365EC0  41 82 00 0C */	beq lbl_80365ECC
/* 80365EC4  28 00 00 02 */	cmplwi r0, 2
/* 80365EC8  40 82 00 10 */	bne lbl_80365ED8
lbl_80365ECC:
/* 80365ECC  88 1E 00 0A */	lbz r0, 0xa(r30)
/* 80365ED0  28 00 00 00 */	cmplwi r0, 0
/* 80365ED4  41 82 00 14 */	beq lbl_80365EE8
lbl_80365ED8:
/* 80365ED8  38 00 00 28 */	li r0, 0x28
/* 80365EDC  3B E0 FF FF */	li r31, -1
/* 80365EE0  90 0D 94 28 */	stw r0, errno(r13)
/* 80365EE4  48 00 00 6C */	b lbl_80365F50
lbl_80365EE8:
/* 80365EE8  88 1E 00 08 */	lbz r0, 8(r30)
/* 80365EEC  54 05 DF 7F */	rlwinm. r5, r0, 0x1b, 0x1d, 0x1f
/* 80365EF0  40 82 00 0C */	bne lbl_80365EFC
/* 80365EF4  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 80365EF8  48 00 00 58 */	b lbl_80365F50
lbl_80365EFC:
/* 80365EFC  80 FE 00 1C */	lwz r7, 0x1c(r30)
/* 80365F00  28 05 00 03 */	cmplwi r5, 3
/* 80365F04  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 80365F08  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80365F0C  7C C7 00 50 */	subf r6, r7, r0
/* 80365F10  7F E3 32 14 */	add r31, r3, r6
/* 80365F14  41 80 00 0C */	blt lbl_80365F20
/* 80365F18  38 85 FF FE */	addi r4, r5, -2
/* 80365F1C  7F E4 F8 50 */	subf r31, r4, r31
lbl_80365F20:
/* 80365F20  88 1E 00 05 */	lbz r0, 5(r30)
/* 80365F24  54 00 EF FF */	rlwinm. r0, r0, 0x1d, 0x1f, 0x1f
/* 80365F28  40 82 00 28 */	bne lbl_80365F50
/* 80365F2C  7C 04 30 51 */	subf. r0, r4, r6
/* 80365F30  7C 09 03 A6 */	mtctr r0
/* 80365F34  41 82 00 1C */	beq lbl_80365F50
lbl_80365F38:
/* 80365F38  88 07 00 00 */	lbz r0, 0(r7)
/* 80365F3C  38 E7 00 01 */	addi r7, r7, 1
/* 80365F40  28 00 00 0A */	cmplwi r0, 0xa
/* 80365F44  40 82 00 08 */	bne lbl_80365F4C
/* 80365F48  3B FF 00 01 */	addi r31, r31, 1
lbl_80365F4C:
/* 80365F4C  42 00 FF EC */	bdnz lbl_80365F38
lbl_80365F50:
/* 80365F50  38 60 00 02 */	li r3, 2
/* 80365F54  4B FF F5 11 */	bl __end_critical_region
/* 80365F58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80365F5C  7F E3 FB 78 */	mr r3, r31
/* 80365F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80365F64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80365F68  7C 08 03 A6 */	mtlr r0
/* 80365F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80365F70  4E 80 00 20 */	blr 
