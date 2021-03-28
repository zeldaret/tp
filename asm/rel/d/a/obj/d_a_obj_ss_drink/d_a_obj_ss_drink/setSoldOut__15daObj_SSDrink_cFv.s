lbl_80CE59FC:
/* 80CE59FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE5A00  7C 08 02 A6 */	mflr r0
/* 80CE5A04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE5A08  7C 64 1B 78 */	mr r4, r3
/* 80CE5A0C  80 63 05 6C */	lwz r3, 0x56c(r3)
/* 80CE5A10  28 03 00 00 */	cmplwi r3, 0
/* 80CE5A14  41 82 00 2C */	beq lbl_80CE5A40
/* 80CE5A18  88 03 09 2F */	lbz r0, 0x92f(r3)
/* 80CE5A1C  60 00 00 01 */	ori r0, r0, 1
/* 80CE5A20  98 03 09 2F */	stb r0, 0x92f(r3)
/* 80CE5A24  80 64 05 6C */	lwz r3, 0x56c(r4)
/* 80CE5A28  28 04 00 00 */	cmplwi r4, 0
/* 80CE5A2C  41 82 00 0C */	beq lbl_80CE5A38
/* 80CE5A30  80 84 00 04 */	lwz r4, 4(r4)
/* 80CE5A34  48 00 00 08 */	b lbl_80CE5A3C
lbl_80CE5A38:
/* 80CE5A38  38 80 FF FF */	li r4, -1
lbl_80CE5A3C:
/* 80CE5A3C  4B C6 2D B0 */	b soldoutItem__8daMyna_cFUi
lbl_80CE5A40:
/* 80CE5A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE5A44  7C 08 03 A6 */	mtlr r0
/* 80CE5A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE5A4C  4E 80 00 20 */	blr 
