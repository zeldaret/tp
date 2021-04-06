lbl_80CA6FF8:
/* 80CA6FF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA6FFC  7C 08 02 A6 */	mflr r0
/* 80CA7000  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA7004  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80CA7008  38 00 00 00 */	li r0, 0
/* 80CA700C  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80CA7010  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80CA7014  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80CA7018  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80CA701C  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80CA7020  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80CA7024  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80CA7028  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80CA702C  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80CA7030  3C 80 80 CA */	lis r4, lit_3897@ha /* 0x80CA79FC@ha */
/* 80CA7034  38 A4 79 FC */	addi r5, r4, lit_3897@l /* 0x80CA79FC@l */
/* 80CA7038  80 85 00 00 */	lwz r4, 0(r5)
/* 80CA703C  80 05 00 04 */	lwz r0, 4(r5)
/* 80CA7040  90 81 00 08 */	stw r4, 8(r1)
/* 80CA7044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CA7048  80 05 00 08 */	lwz r0, 8(r5)
/* 80CA704C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CA7050  38 81 00 08 */	addi r4, r1, 8
/* 80CA7054  48 00 01 B9 */	bl setProcess__15daObj_Oiltubo_cFM15daObj_Oiltubo_cFPCvPvPv_i
/* 80CA7058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA705C  7C 08 03 A6 */	mtlr r0
/* 80CA7060  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA7064  4E 80 00 20 */	blr 
