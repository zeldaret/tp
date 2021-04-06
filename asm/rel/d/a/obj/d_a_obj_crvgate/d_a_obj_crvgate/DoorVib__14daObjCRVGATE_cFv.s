lbl_80BD0F9C:
/* 80BD0F9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD0FA0  7C 08 02 A6 */	mflr r0
/* 80BD0FA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD0FA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD0FAC  7C 7F 1B 78 */	mr r31, r3
/* 80BD0FB0  A8 63 06 12 */	lha r3, 0x612(r3)
/* 80BD0FB4  38 03 FF 00 */	addi r0, r3, -256
/* 80BD0FB8  B0 1F 06 12 */	sth r0, 0x612(r31)
/* 80BD0FBC  A8 7F 06 14 */	lha r3, 0x614(r31)
/* 80BD0FC0  A8 1F 06 12 */	lha r0, 0x612(r31)
/* 80BD0FC4  7C 03 02 14 */	add r0, r3, r0
/* 80BD0FC8  B0 1F 06 14 */	sth r0, 0x614(r31)
/* 80BD0FCC  38 7F 06 10 */	addi r3, r31, 0x610
/* 80BD0FD0  38 80 00 00 */	li r4, 0
/* 80BD0FD4  38 A0 00 40 */	li r5, 0x40
/* 80BD0FD8  4B 69 FB B9 */	bl cLib_chaseAngleS__FPsss
/* 80BD0FDC  A8 9F 06 10 */	lha r4, 0x610(r31)
/* 80BD0FE0  7C 80 07 35 */	extsh. r0, r4
/* 80BD0FE4  41 82 00 C8 */	beq lbl_80BD10AC
/* 80BD0FE8  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD0FEC  28 00 00 01 */	cmplwi r0, 1
/* 80BD0FF0  40 82 00 60 */	bne lbl_80BD1050
/* 80BD0FF4  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80BD0FF8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD0FFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD1000  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD1004  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BD1008  3C 60 80 BD */	lis r3, lit_3796@ha /* 0x80BD3110@ha */
/* 80BD100C  C8 23 31 10 */	lfd f1, lit_3796@l(r3)  /* 0x80BD3110@l */
/* 80BD1010  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80BD1014  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BD1018  3C 00 43 30 */	lis r0, 0x4330
/* 80BD101C  90 01 00 08 */	stw r0, 8(r1)
/* 80BD1020  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BD1024  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BD1028  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD102C  FC 00 00 1E */	fctiwz f0, f0
/* 80BD1030  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BD1034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD1038  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80BD103C  A8 1F 06 46 */	lha r0, 0x646(r31)
/* 80BD1040  7C 00 00 D0 */	neg r0, r0
/* 80BD1044  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD1048  B0 03 06 46 */	sth r0, 0x646(r3)
/* 80BD104C  48 00 00 60 */	b lbl_80BD10AC
lbl_80BD1050:
/* 80BD1050  A8 1F 06 14 */	lha r0, 0x614(r31)
/* 80BD1054  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD1058  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BD105C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BD1060  7C 43 04 2E */	lfsx f2, r3, r0
/* 80BD1064  7C 04 00 D0 */	neg r0, r4
/* 80BD1068  3C 60 80 BD */	lis r3, lit_3796@ha /* 0x80BD3110@ha */
/* 80BD106C  C8 23 31 10 */	lfd f1, lit_3796@l(r3)  /* 0x80BD3110@l */
/* 80BD1070  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BD1074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD1078  3C 00 43 30 */	lis r0, 0x4330
/* 80BD107C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BD1080  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BD1084  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BD1088  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BD108C  FC 00 00 1E */	fctiwz f0, f0
/* 80BD1090  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BD1094  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BD1098  B0 1F 06 46 */	sth r0, 0x646(r31)
/* 80BD109C  A8 1F 06 46 */	lha r0, 0x646(r31)
/* 80BD10A0  7C 00 00 D0 */	neg r0, r0
/* 80BD10A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BD10A8  B0 03 06 46 */	sth r0, 0x646(r3)
lbl_80BD10AC:
/* 80BD10AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD10B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD10B4  7C 08 03 A6 */	mtlr r0
/* 80BD10B8  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD10BC  4E 80 00 20 */	blr 
