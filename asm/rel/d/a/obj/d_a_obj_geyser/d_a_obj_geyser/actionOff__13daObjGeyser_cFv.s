lbl_80BF8268:
/* 80BF8268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF826C  7C 08 02 A6 */	mflr r0
/* 80BF8270  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8278  7C 7F 1B 78 */	mr r31, r3
/* 80BF827C  38 7F 07 30 */	addi r3, r31, 0x730
/* 80BF8280  3C 80 80 C0 */	lis r4, lit_3759@ha
/* 80BF8284  C0 24 90 0C */	lfs f1, lit_3759@l(r4)
/* 80BF8288  3C 80 80 C0 */	lis r4, lit_3861@ha
/* 80BF828C  C0 44 90 40 */	lfs f2, lit_3861@l(r4)
/* 80BF8290  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BF8294  EC 42 00 32 */	fmuls f2, f2, f0
/* 80BF8298  4B 67 84 A8 */	b cLib_chaseF__FPfff
/* 80BF829C  A0 7F 07 60 */	lhz r3, 0x760(r31)
/* 80BF82A0  28 03 00 00 */	cmplwi r3, 0
/* 80BF82A4  40 82 00 10 */	bne lbl_80BF82B4
/* 80BF82A8  7F E3 FB 78 */	mr r3, r31
/* 80BF82AC  48 00 00 25 */	bl actionOnWaitInit__13daObjGeyser_cFv
/* 80BF82B0  48 00 00 0C */	b lbl_80BF82BC
lbl_80BF82B4:
/* 80BF82B4  38 03 FF FF */	addi r0, r3, -1
/* 80BF82B8  B0 1F 07 60 */	sth r0, 0x760(r31)
lbl_80BF82BC:
/* 80BF82BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF82C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF82C4  7C 08 03 A6 */	mtlr r0
/* 80BF82C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF82CC  4E 80 00 20 */	blr 
