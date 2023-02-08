lbl_80AFBD3C:
/* 80AFBD3C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AFBD40  7C 08 02 A6 */	mflr r0
/* 80AFBD44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AFBD48  3C A0 80 B0 */	lis r5, lit_4297@ha /* 0x80AFBE88@ha */
/* 80AFBD4C  C0 25 BE 88 */	lfs f1, lit_4297@l(r5)  /* 0x80AFBE88@l */
/* 80AFBD50  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AFBD54  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80AFBD58  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80AFBD5C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80AFBD60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AFBD64  C0 04 00 04 */	lfs f0, 4(r4)
/* 80AFBD68  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AFBD6C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80AFBD70  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AFBD74  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AFBD78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80AFBD7C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80AFBD80  38 81 00 14 */	addi r4, r1, 0x14
/* 80AFBD84  38 A1 00 08 */	addi r5, r1, 8
/* 80AFBD88  4B 99 0B C5 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz4cXyz
/* 80AFBD8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AFBD90  7C 08 03 A6 */	mtlr r0
/* 80AFBD94  38 21 00 30 */	addi r1, r1, 0x30
/* 80AFBD98  4E 80 00 20 */	blr 
