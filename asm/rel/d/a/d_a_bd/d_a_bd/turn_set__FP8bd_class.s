lbl_804D7890:
/* 804D7890  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D7894  7C 08 02 A6 */	mflr r0
/* 804D7898  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D789C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D78A0  7C 7F 1B 78 */	mr r31, r3
/* 804D78A4  3C 60 80 4E */	lis r3, lit_4286@ha
/* 804D78A8  84 03 9E D0 */	lwzu r0, lit_4286@l(r3)
/* 804D78AC  90 01 00 08 */	stw r0, 8(r1)
/* 804D78B0  A0 03 00 04 */	lhz r0, 4(r3)
/* 804D78B4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804D78B8  3C 60 80 4E */	lis r3, lit_4288@ha
/* 804D78BC  C0 23 9E D8 */	lfs f1, lit_4288@l(r3)
/* 804D78C0  4B D9 00 94 */	b cM_rndF__Ff
/* 804D78C4  FC 00 08 1E */	fctiwz f0, f1
/* 804D78C8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804D78CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D78D0  54 00 08 3C */	slwi r0, r0, 1
/* 804D78D4  38 61 00 08 */	addi r3, r1, 8
/* 804D78D8  7C 63 02 AE */	lhax r3, r3, r0
/* 804D78DC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804D78E0  7C 00 1A 14 */	add r0, r0, r3
/* 804D78E4  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 804D78E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D78EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D78F0  7C 08 03 A6 */	mtlr r0
/* 804D78F4  38 21 00 20 */	addi r1, r1, 0x20
/* 804D78F8  4E 80 00 20 */	blr 
