lbl_8059F9FC:
/* 8059F9FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059FA00  7C 08 02 A6 */	mflr r0
/* 8059FA04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059FA08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059FA0C  7C 7F 1B 78 */	mr r31, r3
/* 8059FA10  3C 60 80 5A */	lis r3, lit_3884@ha
/* 8059FA14  84 03 11 88 */	lwzu r0, lit_3884@l(r3)
/* 8059FA18  90 01 00 08 */	stw r0, 8(r1)
/* 8059FA1C  A0 03 00 04 */	lhz r0, 4(r3)
/* 8059FA20  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8059FA24  3C 60 80 5A */	lis r3, lit_3886@ha
/* 8059FA28  C0 23 11 90 */	lfs f1, lit_3886@l(r3)
/* 8059FA2C  4B CC 7F 28 */	b cM_rndF__Ff
/* 8059FA30  FC 00 08 1E */	fctiwz f0, f1
/* 8059FA34  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8059FA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059FA3C  54 00 08 3C */	slwi r0, r0, 1
/* 8059FA40  38 61 00 08 */	addi r3, r1, 8
/* 8059FA44  7C 63 02 AE */	lhax r3, r3, r0
/* 8059FA48  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8059FA4C  7C 00 1A 14 */	add r0, r0, r3
/* 8059FA50  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 8059FA54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059FA58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059FA5C  7C 08 03 A6 */	mtlr r0
/* 8059FA60  38 21 00 20 */	addi r1, r1, 0x20
/* 8059FA64  4E 80 00 20 */	blr 
