lbl_807B60CC:
/* 807B60CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B60D0  7C 08 02 A6 */	mflr r0
/* 807B60D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B60D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B60DC  7C 7F 1B 78 */	mr r31, r3
/* 807B60E0  A8 03 06 50 */	lha r0, 0x650(r3)
/* 807B60E4  2C 00 00 01 */	cmpwi r0, 1
/* 807B60E8  41 82 00 40 */	beq lbl_807B6128
/* 807B60EC  40 80 00 3C */	bge lbl_807B6128
/* 807B60F0  2C 00 00 00 */	cmpwi r0, 0
/* 807B60F4  40 80 00 08 */	bge lbl_807B60FC
/* 807B60F8  48 00 00 30 */	b lbl_807B6128
lbl_807B60FC:
/* 807B60FC  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B6100  80 83 80 E0 */	lwz r4, master@l(r3)  /* 0x807B80E0@l */
/* 807B6104  88 64 06 8A */	lbz r3, 0x68a(r4)
/* 807B6108  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 807B610C  41 82 00 1C */	beq lbl_807B6128
/* 807B6110  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 807B6114  98 04 06 8A */	stb r0, 0x68a(r4)
/* 807B6118  38 00 00 01 */	li r0, 1
/* 807B611C  B0 1F 06 4E */	sth r0, 0x64e(r31)
/* 807B6120  38 00 00 00 */	li r0, 0
/* 807B6124  B0 1F 06 50 */	sth r0, 0x650(r31)
lbl_807B6128:
/* 807B6128  38 7F 05 2C */	addi r3, r31, 0x52c
/* 807B612C  3C 80 80 7B */	lis r4, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B6130  C0 24 7E B8 */	lfs f1, lit_3746@l(r4)  /* 0x807B7EB8@l */
/* 807B6134  FC 40 08 90 */	fmr f2, f1
/* 807B6138  4B AB 99 49 */	bl cLib_addCalc0__FPfff
/* 807B613C  7F E3 FB 78 */	mr r3, r31
/* 807B6140  38 80 00 01 */	li r4, 1
/* 807B6144  4B FF FD E9 */	bl normal_move__FP15e_th_ball_classSc
/* 807B6148  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B614C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B6150  7C 08 03 A6 */	mtlr r0
/* 807B6154  38 21 00 10 */	addi r1, r1, 0x10
/* 807B6158  4E 80 00 20 */	blr 
