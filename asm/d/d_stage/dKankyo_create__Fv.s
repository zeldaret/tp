lbl_80026898:
/* 80026898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002689C  7C 08 02 A6 */	mflr r0
/* 800268A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800268A4  38 60 00 13 */	li r3, 0x13
/* 800268A8  38 80 00 00 */	li r4, 0
/* 800268AC  38 A0 00 00 */	li r5, 0
/* 800268B0  38 C0 00 00 */	li r6, 0
/* 800268B4  38 E0 00 00 */	li r7, 0
/* 800268B8  4B FF 8F 61 */	bl fopKyM_fastCreate__FsiP4cXyzP4cXyzPFPv_i
/* 800268BC  38 60 03 11 */	li r3, 0x311
/* 800268C0  38 80 00 00 */	li r4, 0
/* 800268C4  38 A0 00 00 */	li r5, 0
/* 800268C8  38 C0 00 00 */	li r6, 0
/* 800268CC  38 E0 00 00 */	li r7, 0
/* 800268D0  4B FF 8F 49 */	bl fopKyM_fastCreate__FsiP4cXyzP4cXyzPFPv_i
/* 800268D4  38 60 03 12 */	li r3, 0x312
/* 800268D8  38 80 00 00 */	li r4, 0
/* 800268DC  38 A0 00 00 */	li r5, 0
/* 800268E0  38 C0 00 00 */	li r6, 0
/* 800268E4  38 E0 00 00 */	li r7, 0
/* 800268E8  4B FF 8F 31 */	bl fopKyM_fastCreate__FsiP4cXyzP4cXyzPFPv_i
/* 800268EC  38 60 00 15 */	li r3, 0x15
/* 800268F0  38 80 00 00 */	li r4, 0
/* 800268F4  38 A0 00 00 */	li r5, 0
/* 800268F8  38 C0 00 00 */	li r6, 0
/* 800268FC  38 E0 00 00 */	li r7, 0
/* 80026900  4B FF 8F 19 */	bl fopKyM_fastCreate__FsiP4cXyzP4cXyzPFPv_i
/* 80026904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026908  7C 08 03 A6 */	mtlr r0
/* 8002690C  38 21 00 10 */	addi r1, r1, 0x10
/* 80026910  4E 80 00 20 */	blr 
