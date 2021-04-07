lbl_80967DAC:
/* 80967DAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80967DB0  7C 08 02 A6 */	mflr r0
/* 80967DB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80967DB8  3C A0 80 96 */	lis r5, lit_4103@ha /* 0x80967EE8@ha */
/* 80967DBC  C0 25 7E E8 */	lfs f1, lit_4103@l(r5)  /* 0x80967EE8@l */
/* 80967DC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80967DC4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80967DC8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80967DCC  C0 04 00 00 */	lfs f0, 0(r4)
/* 80967DD0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80967DD4  C0 04 00 04 */	lfs f0, 4(r4)
/* 80967DD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80967DDC  C0 04 00 08 */	lfs f0, 8(r4)
/* 80967DE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80967DE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80967DE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80967DEC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80967DF0  38 81 00 14 */	addi r4, r1, 0x14
/* 80967DF4  38 A1 00 08 */	addi r5, r1, 8
/* 80967DF8  4B B2 4B 55 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80967DFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80967E00  7C 08 03 A6 */	mtlr r0
/* 80967E04  38 21 00 30 */	addi r1, r1, 0x30
/* 80967E08  4E 80 00 20 */	blr 
