lbl_801BA7F0:
/* 801BA7F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BA7F4  7C 08 02 A6 */	mflr r0
/* 801BA7F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BA7FC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 801BA800  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 801BA804  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BA808  7C 7F 1B 78 */	mr r31, r3
/* 801BA80C  FF E0 08 90 */	fmr f31, f1
/* 801BA810  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BA814  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801BA818  40 82 00 60 */	bne lbl_801BA878
/* 801BA81C  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA820  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801BA824  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801BA828  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA82C  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA830  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA834  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA838  7D 89 03 A6 */	mtctr r12
/* 801BA83C  4E 80 04 21 */	bctrl 
/* 801BA840  38 00 00 00 */	li r0, 0
/* 801BA844  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BA848  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA84C  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801BA850  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801BA854  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA858  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA85C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA860  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA864  7D 89 03 A6 */	mtctr r12
/* 801BA868  4E 80 04 21 */	bctrl 
/* 801BA86C  38 00 00 00 */	li r0, 0
/* 801BA870  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BA874  48 00 00 E4 */	b lbl_801BA958
lbl_801BA878:
/* 801BA878  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA87C  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801BA880  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801BA884  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA888  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA88C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA890  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA894  7D 89 03 A6 */	mtctr r12
/* 801BA898  4E 80 04 21 */	bctrl 
/* 801BA89C  38 00 00 01 */	li r0, 1
/* 801BA8A0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BA8A4  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA8A8  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801BA8AC  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801BA8B0  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA8B4  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA8B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA8BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA8C0  7D 89 03 A6 */	mtctr r12
/* 801BA8C4  4E 80 04 21 */	bctrl 
/* 801BA8C8  38 00 00 01 */	li r0, 1
/* 801BA8CC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801BA8D0  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA8D4  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F30@ha */
/* 801BA8D8  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x30305F30@l */
/* 801BA8DC  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA8E0  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA8E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA8E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA8EC  7D 89 03 A6 */	mtctr r12
/* 801BA8F0  4E 80 04 21 */	bctrl 
/* 801BA8F4  C0 02 A6 20 */	lfs f0, lit_4643(r2)
/* 801BA8F8  EF E0 07 F2 */	fmuls f31, f0, f31
/* 801BA8FC  FC 00 F8 1E */	fctiwz f0, f31
/* 801BA900  D8 01 00 08 */	stfd f0, 8(r1)
/* 801BA904  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801BA908  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA90C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BA910  7D 89 03 A6 */	mtctr r12
/* 801BA914  4E 80 04 21 */	bctrl 
/* 801BA918  80 7F 0C A8 */	lwz r3, 0xca8(r31)
/* 801BA91C  3C 80 30 30 */	lis r4, 0x3030 /* 0x30305F31@ha */
/* 801BA920  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x30305F31@l */
/* 801BA924  3C 80 67 6F */	lis r4, 0x676F /* 0x676F6C64@ha */
/* 801BA928  38 A4 6C 64 */	addi r5, r4, 0x6C64 /* 0x676F6C64@l */
/* 801BA92C  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA930  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801BA934  7D 89 03 A6 */	mtctr r12
/* 801BA938  4E 80 04 21 */	bctrl 
/* 801BA93C  FC 00 F8 1E */	fctiwz f0, f31
/* 801BA940  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801BA944  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801BA948  81 83 00 00 */	lwz r12, 0(r3)
/* 801BA94C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801BA950  7D 89 03 A6 */	mtctr r12
/* 801BA954  4E 80 04 21 */	bctrl 
lbl_801BA958:
/* 801BA958  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 801BA95C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 801BA960  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BA964  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BA968  7C 08 03 A6 */	mtlr r0
/* 801BA96C  38 21 00 30 */	addi r1, r1, 0x30
/* 801BA970  4E 80 00 20 */	blr 
