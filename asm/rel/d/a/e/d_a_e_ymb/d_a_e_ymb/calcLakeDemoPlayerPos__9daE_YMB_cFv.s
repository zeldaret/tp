lbl_8081DE14:
/* 8081DE14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8081DE18  7C 08 02 A6 */	mflr r0
/* 8081DE1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081DE20  7C 65 1B 78 */	mr r5, r3
/* 8081DE24  C0 23 06 A4 */	lfs f1, 0x6a4(r3)
/* 8081DE28  C0 03 06 9C */	lfs f0, 0x69c(r3)
/* 8081DE2C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081DE30  3C 60 80 82 */	lis r3, lit_3910@ha
/* 8081DE34  C0 43 18 C4 */	lfs f2, lit_3910@l(r3)
/* 8081DE38  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8081DE3C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8081DE40  C0 25 06 CC */	lfs f1, 0x6cc(r5)
/* 8081DE44  C0 05 07 5C */	lfs f0, 0x75c(r5)
/* 8081DE48  EC 01 00 2A */	fadds f0, f1, f0
/* 8081DE4C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8081DE50  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8081DE54  3C 60 80 82 */	lis r3, lit_5378@ha
/* 8081DE58  C0 03 19 54 */	lfs f0, lit_5378@l(r3)
/* 8081DE5C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8081DE60  38 65 04 D0 */	addi r3, r5, 0x4d0
/* 8081DE64  38 81 00 14 */	addi r4, r1, 0x14
/* 8081DE68  A8 A5 06 E4 */	lha r5, 0x6e4(r5)
/* 8081DE6C  38 C1 00 08 */	addi r6, r1, 8
/* 8081DE70  4B A5 2F 50 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081DE74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8081DE78  7C 08 03 A6 */	mtlr r0
/* 8081DE7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8081DE80  4E 80 00 20 */	blr 
