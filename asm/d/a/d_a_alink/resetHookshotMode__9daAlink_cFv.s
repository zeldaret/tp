lbl_801086DC:
/* 801086DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801086E0  7C 08 02 A6 */	mflr r0
/* 801086E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801086E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801086EC  7C 7F 1B 78 */	mr r31, r3
/* 801086F0  38 00 00 00 */	li r0, 0
/* 801086F4  B0 03 30 1A */	sth r0, 0x301a(r3)
/* 801086F8  4B FA 33 E9 */	bl initLockAt__9daAlink_cFv
/* 801086FC  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80108700  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80108704  D0 1F 34 90 */	stfs f0, 0x3490(r31)
/* 80108708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010870C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80108710  7C 08 03 A6 */	mtlr r0
/* 80108714  38 21 00 10 */	addi r1, r1, 0x10
/* 80108718  4E 80 00 20 */	blr 
