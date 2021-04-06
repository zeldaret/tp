lbl_80C5EEA4:
/* 80C5EEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EEA8  7C 08 02 A6 */	mflr r0
/* 80C5EEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EEB0  3C 80 80 C6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C5F41C@ha */
/* 80C5EEB4  38 E4 F4 1C */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C5F41C@l */
/* 80C5EEB8  3C 80 80 C6 */	lis r4, data_80C5F538@ha /* 0x80C5F538@ha */
/* 80C5EEBC  38 C4 F5 38 */	addi r6, r4, data_80C5F538@l /* 0x80C5F538@l */
/* 80C5EEC0  88 06 00 00 */	lbz r0, 0(r6)
/* 80C5EEC4  7C 00 07 75 */	extsb. r0, r0
/* 80C5EEC8  40 82 00 58 */	bne lbl_80C5EF20
/* 80C5EECC  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80C5EED0  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80C5EED4  90 87 00 44 */	stw r4, 0x44(r7)
/* 80C5EED8  90 07 00 48 */	stw r0, 0x48(r7)
/* 80C5EEDC  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C5EEE0  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80C5EEE4  38 A7 00 44 */	addi r5, r7, 0x44
/* 80C5EEE8  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80C5EEEC  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80C5EEF0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C5EEF4  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C5EEF8  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C5EEFC  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C5EF00  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80C5EF04  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80C5EF08  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C5EF0C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C5EF10  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C5EF14  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C5EF18  38 00 00 01 */	li r0, 1
/* 80C5EF1C  98 06 00 00 */	stb r0, 0(r6)
lbl_80C5EF20:
/* 80C5EF20  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80C5EF24  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C5EF28  39 87 00 44 */	addi r12, r7, 0x44
/* 80C5EF2C  7D 8C 02 14 */	add r12, r12, r0
/* 80C5EF30  4B 70 31 55 */	bl __ptmf_scall
/* 80C5EF34  60 00 00 00 */	nop 
/* 80C5EF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EF3C  7C 08 03 A6 */	mtlr r0
/* 80C5EF40  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EF44  4E 80 00 20 */	blr 
