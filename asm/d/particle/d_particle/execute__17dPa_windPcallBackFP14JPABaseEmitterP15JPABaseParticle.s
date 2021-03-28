lbl_8004B4E0:
/* 8004B4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004B4E4  7C 08 02 A6 */	mflr r0
/* 8004B4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004B4EC  7C A3 2B 78 */	mr r3, r5
/* 8004B4F0  4B FF EE BD */	bl dPa_setWindPower__FP15JPABaseParticle
/* 8004B4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004B4F8  7C 08 03 A6 */	mtlr r0
/* 8004B4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004B500  4E 80 00 20 */	blr 
