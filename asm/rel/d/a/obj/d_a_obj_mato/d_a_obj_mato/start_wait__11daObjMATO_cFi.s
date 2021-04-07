lbl_80C91ECC:
/* 80C91ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C91ED0  7C 08 02 A6 */	mflr r0
/* 80C91ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C91ED8  7C 85 23 78 */	mr r5, r4
/* 80C91EDC  1C 05 01 C0 */	mulli r0, r5, 0x1c0
/* 80C91EE0  7C 83 02 14 */	add r4, r3, r0
/* 80C91EE4  80 04 07 28 */	lwz r0, 0x728(r4)
/* 80C91EE8  2C 00 00 00 */	cmpwi r0, 0
/* 80C91EEC  40 82 00 3C */	bne lbl_80C91F28
/* 80C91EF0  38 00 00 00 */	li r0, 0
/* 80C91EF4  98 04 07 2F */	stb r0, 0x72f(r4)
/* 80C91EF8  B0 04 07 08 */	sth r0, 0x708(r4)
/* 80C91EFC  B0 04 07 0A */	sth r0, 0x70a(r4)
/* 80C91F00  B0 04 07 0C */	sth r0, 0x70c(r4)
/* 80C91F04  3C 60 80 C9 */	lis r3, lit_3878@ha /* 0x80C92C6C@ha */
/* 80C91F08  C0 03 2C 6C */	lfs f0, lit_3878@l(r3)  /* 0x80C92C6C@l */
/* 80C91F0C  D0 04 06 FC */	stfs f0, 0x6fc(r4)
/* 80C91F10  D0 04 07 00 */	stfs f0, 0x700(r4)
/* 80C91F14  D0 04 07 04 */	stfs f0, 0x704(r4)
/* 80C91F18  80 64 07 28 */	lwz r3, 0x728(r4)
/* 80C91F1C  38 03 00 01 */	addi r0, r3, 1
/* 80C91F20  90 04 07 28 */	stw r0, 0x728(r4)
/* 80C91F24  48 00 00 40 */	b lbl_80C91F64
lbl_80C91F28:
/* 80C91F28  2C 00 FF FF */	cmpwi r0, -1
/* 80C91F2C  41 82 00 38 */	beq lbl_80C91F64
/* 80C91F30  88 03 39 F6 */	lbz r0, 0x39f6(r3)
/* 80C91F34  28 00 00 00 */	cmplwi r0, 0
/* 80C91F38  41 82 00 2C */	beq lbl_80C91F64
/* 80C91F3C  3C 80 80 C9 */	lis r4, lit_3867@ha /* 0x80C92D2C@ha */
/* 80C91F40  38 C4 2D 2C */	addi r6, r4, lit_3867@l /* 0x80C92D2C@l */
/* 80C91F44  80 86 00 00 */	lwz r4, 0(r6)
/* 80C91F48  80 06 00 04 */	lwz r0, 4(r6)
/* 80C91F4C  90 81 00 08 */	stw r4, 8(r1)
/* 80C91F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C91F54  80 06 00 08 */	lwz r0, 8(r6)
/* 80C91F58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C91F5C  38 81 00 08 */	addi r4, r1, 8
/* 80C91F60  4B FF FB F9 */	bl setAction__11daObjMATO_cFM11daObjMATO_cFPCvPvi_vi
lbl_80C91F64:
/* 80C91F64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C91F68  7C 08 03 A6 */	mtlr r0
/* 80C91F6C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C91F70  4E 80 00 20 */	blr 
