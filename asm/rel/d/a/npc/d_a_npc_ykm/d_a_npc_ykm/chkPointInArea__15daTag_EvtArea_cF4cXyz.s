lbl_80B5D720:
/* 80B5D720  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5D724  7C 08 02 A6 */	mflr r0
/* 80B5D728  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5D72C  3C A0 80 B6 */	lis r5, lit_4392@ha
/* 80B5D730  C0 25 D8 98 */	lfs f1, lit_4392@l(r5)
/* 80B5D734  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B5D738  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B5D73C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80B5D740  C0 04 00 00 */	lfs f0, 0(r4)
/* 80B5D744  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B5D748  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B5D74C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B5D750  C0 04 00 08 */	lfs f0, 8(r4)
/* 80B5D754  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B5D758  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B5D75C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B5D760  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B5D764  38 81 00 14 */	addi r4, r1, 0x14
/* 80B5D768  38 A1 00 08 */	addi r5, r1, 8
/* 80B5D76C  4B 92 F1 E0 */	b chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80B5D770  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5D774  7C 08 03 A6 */	mtlr r0
/* 80B5D778  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5D77C  4E 80 00 20 */	blr 
