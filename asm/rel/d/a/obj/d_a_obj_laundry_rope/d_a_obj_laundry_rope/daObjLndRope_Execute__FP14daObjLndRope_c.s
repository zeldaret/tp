lbl_80C52E04:
/* 80C52E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C52E08  7C 08 02 A6 */	mflr r0
/* 80C52E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C52E10  3C 80 80 C5 */	lis r4, M_attr__14daObjLndRope_c@ha
/* 80C52E14  C0 04 33 04 */	lfs f0, M_attr__14daObjLndRope_c@l(r4)
/* 80C52E18  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80C52E1C  4B FF FA C5 */	bl setNormalRopePos__14daObjLndRope_cFv
/* 80C52E20  38 60 00 01 */	li r3, 1
/* 80C52E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C52E28  7C 08 03 A6 */	mtlr r0
/* 80C52E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C52E30  4E 80 00 20 */	blr 
