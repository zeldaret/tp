lbl_80CD5C88:
/* 80CD5C88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CD5C8C  7C 08 02 A6 */	mflr r0
/* 80CD5C90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CD5C94  3C A0 80 CD */	lis r5, lit_4350@ha
/* 80CD5C98  C0 25 5D BC */	lfs f1, lit_4350@l(r5)
/* 80CD5C9C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CD5CA0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CD5CA4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80CD5CA8  C0 04 00 00 */	lfs f0, 0(r4)
/* 80CD5CAC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD5CB0  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CD5CB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD5CB8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CD5CBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD5CC0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CD5CC4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CD5CC8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CD5CCC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CD5CD0  38 A1 00 08 */	addi r5, r1, 8
/* 80CD5CD4  4B 7B 6C 78 */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80CD5CD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CD5CDC  7C 08 03 A6 */	mtlr r0
/* 80CD5CE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CD5CE4  4E 80 00 20 */	blr 
