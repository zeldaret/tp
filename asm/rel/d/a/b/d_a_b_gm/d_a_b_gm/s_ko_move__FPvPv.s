lbl_805EE738:
/* 805EE738  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EE73C  7C 08 02 A6 */	mflr r0
/* 805EE740  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EE744  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EE748  7C 7F 1B 78 */	mr r31, r3
/* 805EE74C  4B A2 A5 94 */	b fopAc_IsActor__FPv
/* 805EE750  2C 03 00 00 */	cmpwi r3, 0
/* 805EE754  41 82 00 44 */	beq lbl_805EE798
/* 805EE758  A8 1F 00 08 */	lha r0, 8(r31)
/* 805EE75C  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 805EE760  40 82 00 38 */	bne lbl_805EE798
/* 805EE764  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EE768  28 00 00 01 */	cmplwi r0, 1
/* 805EE76C  40 82 00 2C */	bne lbl_805EE798
/* 805EE770  3C 60 80 5F */	lis r3, lit_3777@ha
/* 805EE774  C0 23 41 94 */	lfs f1, lit_3777@l(r3)
/* 805EE778  4B C7 91 DC */	b cM_rndF__Ff
/* 805EE77C  FC 00 08 1E */	fctiwz f0, f1
/* 805EE780  D8 01 00 08 */	stfd f0, 8(r1)
/* 805EE784  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805EE788  38 00 00 01 */	li r0, 1
/* 805EE78C  98 1F 0A 71 */	stb r0, 0xa71(r31)
/* 805EE790  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805EE794  B0 1F 0A 5E */	sth r0, 0xa5e(r31)
lbl_805EE798:
/* 805EE798  38 60 00 00 */	li r3, 0
/* 805EE79C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EE7A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EE7A4  7C 08 03 A6 */	mtlr r0
/* 805EE7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805EE7AC  4E 80 00 20 */	blr 
