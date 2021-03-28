lbl_80948074:
/* 80948074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80948078  7C 08 02 A6 */	mflr r0
/* 8094807C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80948080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80948084  7C 7F 1B 78 */	mr r31, r3
/* 80948088  38 7F 04 DE */	addi r3, r31, 0x4de
/* 8094808C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80948090  3C A0 80 95 */	lis r5, l_HOSTIO@ha
/* 80948094  38 E5 BA 3C */	addi r7, r5, l_HOSTIO@l
/* 80948098  A8 A7 00 26 */	lha r5, 0x26(r7)
/* 8094809C  A8 C7 00 28 */	lha r6, 0x28(r7)
/* 809480A0  A8 E7 00 2A */	lha r7, 0x2a(r7)
/* 809480A4  4B 92 84 9C */	b cLib_addCalcAngleS__FPsssss
/* 809480A8  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809480AC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809480B0  7C 63 00 50 */	subf r3, r3, r0
/* 809480B4  4B A1 D0 1C */	b abs
/* 809480B8  2C 03 00 10 */	cmpwi r3, 0x10
/* 809480BC  41 81 00 14 */	bgt lbl_809480D0
/* 809480C0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809480C4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809480C8  88 1F 09 2D */	lbz r0, 0x92d(r31)
/* 809480CC  98 1F 09 2C */	stb r0, 0x92c(r31)
lbl_809480D0:
/* 809480D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809480D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809480D8  7C 08 03 A6 */	mtlr r0
/* 809480DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809480E0  4E 80 00 20 */	blr 
