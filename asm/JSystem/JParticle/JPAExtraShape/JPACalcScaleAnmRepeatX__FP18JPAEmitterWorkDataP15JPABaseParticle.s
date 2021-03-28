lbl_8027AA20:
/* 8027AA20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8027AA24  80 A3 00 04 */	lwz r5, 4(r3)
/* 8027AA28  80 A5 00 20 */	lwz r5, 0x20(r5)
/* 8027AA2C  80 A5 00 00 */	lwz r5, 0(r5)
/* 8027AA30  A8 A5 00 28 */	lha r5, 0x28(r5)
/* 8027AA34  A8 84 00 80 */	lha r4, 0x80(r4)
/* 8027AA38  7C 04 2B D6 */	divw r0, r4, r5
/* 8027AA3C  7C 00 29 D6 */	mullw r0, r0, r5
/* 8027AA40  7C 00 20 50 */	subf r0, r0, r4
/* 8027AA44  C8 42 B8 E8 */	lfd f2, lit_2312(r2)
/* 8027AA48  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8027AA4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027AA50  3C 80 43 30 */	lis r4, 0x4330
/* 8027AA54  90 81 00 08 */	stw r4, 8(r1)
/* 8027AA58  C8 01 00 08 */	lfd f0, 8(r1)
/* 8027AA5C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027AA60  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 8027AA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027AA68  90 81 00 10 */	stw r4, 0x10(r1)
/* 8027AA6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8027AA70  EC 00 10 28 */	fsubs f0, f0, f2
/* 8027AA74  EC 01 00 24 */	fdivs f0, f1, f0
/* 8027AA78  D0 03 01 FC */	stfs f0, 0x1fc(r3)
/* 8027AA7C  38 21 00 20 */	addi r1, r1, 0x20
/* 8027AA80  4E 80 00 20 */	blr 
