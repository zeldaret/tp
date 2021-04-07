lbl_8095D574:
/* 8095D574  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095D578  7C 08 02 A6 */	mflr r0
/* 8095D57C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095D580  3C A0 80 96 */	lis r5, lit_4301@ha /* 0x8095D6C0@ha */
/* 8095D584  C0 25 D6 C0 */	lfs f1, lit_4301@l(r5)  /* 0x8095D6C0@l */
/* 8095D588  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8095D58C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8095D590  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8095D594  C0 04 00 00 */	lfs f0, 0(r4)
/* 8095D598  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8095D59C  C0 04 00 04 */	lfs f0, 4(r4)
/* 8095D5A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8095D5A4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8095D5A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8095D5AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8095D5B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8095D5B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8095D5B8  38 81 00 14 */	addi r4, r1, 0x14
/* 8095D5BC  38 A1 00 08 */	addi r5, r1, 8
/* 8095D5C0  4B B2 F3 8D */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 8095D5C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095D5C8  7C 08 03 A6 */	mtlr r0
/* 8095D5CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8095D5D0  4E 80 00 20 */	blr 
