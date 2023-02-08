lbl_8025FA2C:
/* 8025FA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FA30  7C 08 02 A6 */	mflr r0
/* 8025FA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FA38  7C 64 1B 78 */	mr r4, r3
/* 8025FA3C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8025FA40  28 03 00 00 */	cmplwi r3, 0
/* 8025FA44  41 82 00 18 */	beq lbl_8025FA5C
/* 8025FA48  C0 04 03 C0 */	lfs f0, 0x3c0(r4)
/* 8025FA4C  EC 21 00 2A */	fadds f1, f1, f0
/* 8025FA50  C0 04 03 C4 */	lfs f0, 0x3c4(r4)
/* 8025FA54  EC 42 00 2A */	fadds f2, f2, f0
/* 8025FA58  4B FF 4B 59 */	bl paneTrans__8CPaneMgrFff
lbl_8025FA5C:
/* 8025FA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FA60  7C 08 03 A6 */	mtlr r0
/* 8025FA64  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FA68  4E 80 00 20 */	blr 
