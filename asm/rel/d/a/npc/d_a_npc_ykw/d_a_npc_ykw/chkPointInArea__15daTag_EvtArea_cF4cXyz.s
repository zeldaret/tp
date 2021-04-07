lbl_80B67BC4:
/* 80B67BC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B67BC8  7C 08 02 A6 */	mflr r0
/* 80B67BCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B67BD0  3C A0 80 B6 */	lis r5, lit_4358@ha /* 0x80B67D18@ha */
/* 80B67BD4  C0 25 7D 18 */	lfs f1, lit_4358@l(r5)  /* 0x80B67D18@l */
/* 80B67BD8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B67BDC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B67BE0  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B67BE4  C0 04 00 00 */	lfs f0, 0(r4)
/* 80B67BE8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B67BEC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B67BF0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B67BF4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B67BF8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B67BFC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B67C00  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B67C04  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B67C08  38 81 00 14 */	addi r4, r1, 0x14
/* 80B67C0C  38 A1 00 08 */	addi r5, r1, 8
/* 80B67C10  4B 92 4D 3D */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80B67C14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B67C18  7C 08 03 A6 */	mtlr r0
/* 80B67C1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B67C20  4E 80 00 20 */	blr 
