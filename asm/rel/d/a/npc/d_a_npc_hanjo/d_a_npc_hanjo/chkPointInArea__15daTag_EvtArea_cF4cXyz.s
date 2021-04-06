lbl_80A0058C:
/* 80A0058C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A00590  7C 08 02 A6 */	mflr r0
/* 80A00594  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A00598  3C A0 80 A0 */	lis r5, lit_4141@ha /* 0x80A006FC@ha */
/* 80A0059C  C0 25 06 FC */	lfs f1, lit_4141@l(r5)  /* 0x80A006FC@l */
/* 80A005A0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80A005A4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80A005A8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A005AC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80A005B0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A005B4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80A005B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A005BC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80A005C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A005C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A005C8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A005CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80A005D0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A005D4  38 A1 00 08 */	addi r5, r1, 8
/* 80A005D8  4B A8 C3 75 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80A005DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A005E0  7C 08 03 A6 */	mtlr r0
/* 80A005E4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A005E8  4E 80 00 20 */	blr 
