lbl_80CE78E0:
/* 80CE78E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE78E4  7C 08 02 A6 */	mflr r0
/* 80CE78E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE78EC  A8 83 04 B6 */	lha r4, 0x4b6(r3)
/* 80CE78F0  38 00 00 00 */	li r0, 0
/* 80CE78F4  B0 03 04 DC */	sth r0, 0x4dc(r3)
/* 80CE78F8  B0 83 04 DE */	sth r4, 0x4de(r3)
/* 80CE78FC  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80CE7900  A8 03 04 DC */	lha r0, 0x4dc(r3)
/* 80CE7904  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 80CE7908  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 80CE790C  B0 03 04 E6 */	sth r0, 0x4e6(r3)
/* 80CE7910  A8 03 04 E0 */	lha r0, 0x4e0(r3)
/* 80CE7914  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80CE7918  3C 80 80 CE */	lis r4, lit_4309@ha
/* 80CE791C  38 A4 7F 9C */	addi r5, r4, lit_4309@l
/* 80CE7920  80 85 00 00 */	lwz r4, 0(r5)
/* 80CE7924  80 05 00 04 */	lwz r0, 4(r5)
/* 80CE7928  90 81 00 08 */	stw r4, 8(r1)
/* 80CE792C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE7930  80 05 00 08 */	lwz r0, 8(r5)
/* 80CE7934  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE7938  38 81 00 08 */	addi r4, r1, 8
/* 80CE793C  48 00 01 C9 */	bl setProcess__14daObj_SSItem_cFM14daObj_SSItem_cFPCvPvPv_i
/* 80CE7940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE7944  7C 08 03 A6 */	mtlr r0
/* 80CE7948  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE794C  4E 80 00 20 */	blr 
