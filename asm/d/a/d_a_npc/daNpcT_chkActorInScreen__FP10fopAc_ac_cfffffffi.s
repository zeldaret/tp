lbl_8014C200:
/* 8014C200  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8014C204  7C 08 02 A6 */	mflr r0
/* 8014C208  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8014C20C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8014C210  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8014C214  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8014C218  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8014C21C  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 8014C220  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 8014C224  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8014C228  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8014C22C  FF A0 38 90 */	fmr f29, f7
/* 8014C230  7C 9E 23 78 */	mr r30, r4
/* 8014C234  80 63 05 04 */	lwz r3, 0x504(r3)
/* 8014C238  28 03 00 00 */	cmplwi r3, 0
/* 8014C23C  41 82 01 14 */	beq lbl_8014C350
/* 8014C240  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8014C244  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 8014C248  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8014C24C  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 8014C250  D0 A1 00 24 */	stfs f5, 0x24(r1)
/* 8014C254  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8014C258  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8014C25C  D0 A1 00 30 */	stfs f5, 0x30(r1)
/* 8014C260  D0 C1 00 34 */	stfs f6, 0x34(r1)
/* 8014C264  D0 81 00 38 */	stfs f4, 0x38(r1)
/* 8014C268  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8014C26C  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 8014C270  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8014C274  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8014C278  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 8014C27C  D0 81 00 50 */	stfs f4, 0x50(r1)
/* 8014C280  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 8014C284  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 8014C288  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8014C28C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8014C290  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 8014C294  D0 81 00 68 */	stfs f4, 0x68(r1)
/* 8014C298  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8014C29C  D0 C1 00 70 */	stfs f6, 0x70(r1)
/* 8014C2A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014C2A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014C2A8  48 1F A2 09 */	bl PSMTXCopy
/* 8014C2AC  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 8014C2B0  FC 40 E8 90 */	fmr f2, f29
/* 8014C2B4  FC 60 08 90 */	fmr f3, f1
/* 8014C2B8  4B EC 0A E5 */	bl transM__14mDoMtx_stack_cFfff
/* 8014C2BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8014C2C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8014C2C4  38 81 00 14 */	addi r4, r1, 0x14
/* 8014C2C8  7C 85 23 78 */	mr r5, r4
/* 8014C2CC  38 C0 00 08 */	li r6, 8
/* 8014C2D0  48 1F AA F1 */	bl PSMTXMultVecArray
/* 8014C2D4  2C 1E 00 00 */	cmpwi r30, 0
/* 8014C2D8  41 82 00 0C */	beq lbl_8014C2E4
/* 8014C2DC  38 60 00 00 */	li r3, 0
/* 8014C2E0  48 00 00 74 */	b lbl_8014C354
lbl_8014C2E4:
/* 8014C2E4  3B C0 00 00 */	li r30, 0
/* 8014C2E8  3B E0 00 00 */	li r31, 0
/* 8014C2EC  C3 A2 99 D8 */	lfs f29, lit_4116(r2)
/* 8014C2F0  C3 C2 9A 88 */	lfs f30, lit_7550(r2)
/* 8014C2F4  C3 E2 9A 8C */	lfs f31, lit_7551(r2)
lbl_8014C2F8:
/* 8014C2F8  38 61 00 14 */	addi r3, r1, 0x14
/* 8014C2FC  7C 63 FA 14 */	add r3, r3, r31
/* 8014C300  38 81 00 08 */	addi r4, r1, 8
/* 8014C304  4B EC 90 0D */	bl mDoLib_project__FP3VecP3Vec
/* 8014C308  C0 01 00 08 */	lfs f0, 8(r1)
/* 8014C30C  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8014C310  40 80 00 20 */	bge lbl_8014C330
/* 8014C314  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8014C318  40 80 00 18 */	bge lbl_8014C330
/* 8014C31C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8014C320  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 8014C324  40 80 00 0C */	bge lbl_8014C330
/* 8014C328  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8014C32C  41 80 00 0C */	blt lbl_8014C338
lbl_8014C330:
/* 8014C330  38 60 00 00 */	li r3, 0
/* 8014C334  48 00 00 20 */	b lbl_8014C354
lbl_8014C338:
/* 8014C338  3B DE 00 01 */	addi r30, r30, 1
/* 8014C33C  2C 1E 00 08 */	cmpwi r30, 8
/* 8014C340  3B FF 00 0C */	addi r31, r31, 0xc
/* 8014C344  41 80 FF B4 */	blt lbl_8014C2F8
/* 8014C348  38 60 00 01 */	li r3, 1
/* 8014C34C  48 00 00 08 */	b lbl_8014C354
lbl_8014C350:
/* 8014C350  38 60 00 00 */	li r3, 0
lbl_8014C354:
/* 8014C354  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8014C358  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8014C35C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8014C360  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8014C364  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8014C368  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8014C36C  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8014C370  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8014C374  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8014C378  7C 08 03 A6 */	mtlr r0
/* 8014C37C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8014C380  4E 80 00 20 */	blr 
