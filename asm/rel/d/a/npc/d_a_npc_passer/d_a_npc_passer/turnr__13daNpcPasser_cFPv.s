lbl_80AA5454:
/* 80AA5454  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA5458  7C 08 02 A6 */	mflr r0
/* 80AA545C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA5460  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA5464  7C 7F 1B 78 */	mr r31, r3
/* 80AA5468  88 03 0B 22 */	lbz r0, 0xb22(r3)
/* 80AA546C  28 00 00 00 */	cmplwi r0, 0
/* 80AA5470  41 82 00 4C */	beq lbl_80AA54BC
/* 80AA5474  38 80 00 00 */	li r4, 0
/* 80AA5478  80 BF 0B 00 */	lwz r5, 0xb00(r31)
/* 80AA547C  4B 6B 2C 74 */	b getAnmP__10daNpcCd2_cFii
/* 80AA5480  7C 64 1B 78 */	mr r4, r3
/* 80AA5484  7F E3 FB 78 */	mr r3, r31
/* 80AA5488  3C A0 80 AA */	lis r5, lit_4189@ha
/* 80AA548C  C0 25 69 98 */	lfs f1, lit_4189@l(r5)
/* 80AA5490  3C A0 80 AA */	lis r5, lit_4190@ha
/* 80AA5494  C0 45 69 9C */	lfs f2, lit_4190@l(r5)
/* 80AA5498  38 A0 00 02 */	li r5, 2
/* 80AA549C  38 C0 00 00 */	li r6, 0
/* 80AA54A0  38 E0 FF FF */	li r7, -1
/* 80AA54A4  4B 6B 3A 5C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA54A8  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80AA54AC  38 03 C0 00 */	addi r0, r3, -16384
/* 80AA54B0  B0 1F 0B 20 */	sth r0, 0xb20(r31)
/* 80AA54B4  38 00 00 00 */	li r0, 0
/* 80AA54B8  98 1F 0B 22 */	stb r0, 0xb22(r31)
lbl_80AA54BC:
/* 80AA54BC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80AA54C0  A8 9F 0B 20 */	lha r4, 0xb20(r31)
/* 80AA54C4  38 A0 00 04 */	li r5, 4
/* 80AA54C8  38 C0 20 00 */	li r6, 0x2000
/* 80AA54CC  4B 7C B1 3C */	b cLib_addCalcAngleS2__FPssss
/* 80AA54D0  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 80AA54D4  A8 1F 0B 20 */	lha r0, 0xb20(r31)
/* 80AA54D8  7C 63 00 50 */	subf r3, r3, r0
/* 80AA54DC  4B 8B FB F4 */	b abs
/* 80AA54E0  2C 03 00 04 */	cmpwi r3, 4
/* 80AA54E4  41 81 00 14 */	bgt lbl_80AA54F8
/* 80AA54E8  A8 1F 0B 20 */	lha r0, 0xb20(r31)
/* 80AA54EC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80AA54F0  38 60 00 01 */	li r3, 1
/* 80AA54F4  48 00 00 08 */	b lbl_80AA54FC
lbl_80AA54F8:
/* 80AA54F8  38 60 00 00 */	li r3, 0
lbl_80AA54FC:
/* 80AA54FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA5500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA5504  7C 08 03 A6 */	mtlr r0
/* 80AA5508  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA550C  4E 80 00 20 */	blr 
