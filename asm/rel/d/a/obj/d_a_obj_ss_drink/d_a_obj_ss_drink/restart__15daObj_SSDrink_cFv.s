lbl_80CE5B80:
/* 80CE5B80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE5B84  7C 08 02 A6 */	mflr r0
/* 80CE5B88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE5B8C  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80CE5B90  38 00 00 00 */	li r0, 0
/* 80CE5B94  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80CE5B98  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80CE5B9C  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80CE5BA0  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80CE5BA4  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80CE5BA8  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80CE5BAC  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80CE5BB0  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80CE5BB4  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80CE5BB8  3C 80 80 CE */	lis r4, lit_4164@ha /* 0x80CE6A48@ha */
/* 80CE5BBC  38 A4 6A 48 */	addi r5, r4, lit_4164@l /* 0x80CE6A48@l */
/* 80CE5BC0  80 85 00 00 */	lwz r4, 0(r5)
/* 80CE5BC4  80 05 00 04 */	lwz r0, 4(r5)
/* 80CE5BC8  90 81 00 08 */	stw r4, 8(r1)
/* 80CE5BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE5BD0  80 05 00 08 */	lwz r0, 8(r5)
/* 80CE5BD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE5BD8  38 81 00 08 */	addi r4, r1, 8
/* 80CE5BDC  48 00 02 01 */	bl setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE5BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE5BE4  7C 08 03 A6 */	mtlr r0
/* 80CE5BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE5BEC  4E 80 00 20 */	blr 
