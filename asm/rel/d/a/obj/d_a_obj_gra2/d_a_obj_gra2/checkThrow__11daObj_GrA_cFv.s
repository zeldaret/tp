lbl_80C0BE5C:
/* 80C0BE5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C0BE60  7C 08 02 A6 */	mflr r0
/* 80C0BE64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C0BE68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C0BE6C  7C 7F 1B 78 */	mr r31, r3
/* 80C0BE70  A0 83 0A 48 */	lhz r4, 0xa48(r3)
/* 80C0BE74  28 04 00 00 */	cmplwi r4, 0
/* 80C0BE78  41 82 00 A4 */	beq lbl_80C0BF1C
/* 80C0BE7C  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 80C0BE80  41 82 00 4C */	beq lbl_80C0BECC
/* 80C0BE84  3C 80 80 C1 */	lis r4, lit_9077@ha /* 0x80C1032C@ha */
/* 80C0BE88  38 A4 03 2C */	addi r5, r4, lit_9077@l /* 0x80C1032C@l */
/* 80C0BE8C  80 85 00 00 */	lwz r4, 0(r5)
/* 80C0BE90  80 05 00 04 */	lwz r0, 4(r5)
/* 80C0BE94  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C0BE98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C0BE9C  80 05 00 08 */	lwz r0, 8(r5)
/* 80C0BEA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C0BEA4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0BEA8  4B FF 5A 4D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0BEAC  7F E3 FB 78 */	mr r3, r31
/* 80C0BEB0  38 80 00 00 */	li r4, 0
/* 80C0BEB4  48 00 04 95 */	bl initCrazyBeforeCatch__11daObj_GrA_cFi
/* 80C0BEB8  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 80C0BEBC  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80C0BEC0  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 80C0BEC4  38 60 00 01 */	li r3, 1
/* 80C0BEC8  48 00 00 58 */	b lbl_80C0BF20
lbl_80C0BECC:
/* 80C0BECC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 80C0BED0  41 82 00 4C */	beq lbl_80C0BF1C
/* 80C0BED4  3C 80 80 C1 */	lis r4, lit_9082@ha /* 0x80C10338@ha */
/* 80C0BED8  38 A4 03 38 */	addi r5, r4, lit_9082@l /* 0x80C10338@l */
/* 80C0BEDC  80 85 00 00 */	lwz r4, 0(r5)
/* 80C0BEE0  80 05 00 04 */	lwz r0, 4(r5)
/* 80C0BEE4  90 81 00 08 */	stw r4, 8(r1)
/* 80C0BEE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C0BEEC  80 05 00 08 */	lwz r0, 8(r5)
/* 80C0BEF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C0BEF4  38 81 00 08 */	addi r4, r1, 8
/* 80C0BEF8  4B FF 59 FD */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C0BEFC  7F E3 FB 78 */	mr r3, r31
/* 80C0BF00  38 80 00 00 */	li r4, 0
/* 80C0BF04  48 00 04 DD */	bl initCrazyCatch__11daObj_GrA_cFi
/* 80C0BF08  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 80C0BF0C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C0BF10  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 80C0BF14  38 60 00 01 */	li r3, 1
/* 80C0BF18  48 00 00 08 */	b lbl_80C0BF20
lbl_80C0BF1C:
/* 80C0BF1C  38 60 00 00 */	li r3, 0
lbl_80C0BF20:
/* 80C0BF20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C0BF24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C0BF28  7C 08 03 A6 */	mtlr r0
/* 80C0BF2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C0BF30  4E 80 00 20 */	blr 
