lbl_8048CD08:
/* 8048CD08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048CD0C  7C 08 02 A6 */	mflr r0
/* 8048CD10  90 01 00 34 */	stw r0, 0x34(r1)
/* 8048CD14  3C A0 80 49 */	lis r5, lit_3922@ha
/* 8048CD18  C0 25 CD E0 */	lfs f1, lit_3922@l(r5)
/* 8048CD1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8048CD20  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8048CD24  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8048CD28  C0 04 00 00 */	lfs f0, 0(r4)
/* 8048CD2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8048CD30  C0 04 00 04 */	lfs f0, 4(r4)
/* 8048CD34  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8048CD38  C0 04 00 08 */	lfs f0, 8(r4)
/* 8048CD3C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8048CD40  D0 21 00 08 */	stfs f1, 8(r1)
/* 8048CD44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8048CD48  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8048CD4C  38 81 00 14 */	addi r4, r1, 0x14
/* 8048CD50  38 A1 00 08 */	addi r5, r1, 8
/* 8048CD54  4B FF FB F9 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 8048CD58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8048CD5C  7C 08 03 A6 */	mtlr r0
/* 8048CD60  38 21 00 30 */	addi r1, r1, 0x30
/* 8048CD64  4E 80 00 20 */	blr 
