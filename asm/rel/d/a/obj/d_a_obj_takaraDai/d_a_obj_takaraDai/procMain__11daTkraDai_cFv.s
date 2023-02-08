lbl_80D073A4:
/* 80D073A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D073A8  7C 08 02 A6 */	mflr r0
/* 80D073AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D073B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D073B4  7C 7F 1B 78 */	mr r31, r3
/* 80D073B8  3C 60 80 D0 */	lis r3, data_80D07958@ha /* 0x80D07958@ha */
/* 80D073BC  38 C3 79 58 */	addi r6, r3, data_80D07958@l /* 0x80D07958@l */
/* 80D073C0  88 06 00 00 */	lbz r0, 0(r6)
/* 80D073C4  7C 00 07 75 */	extsb. r0, r0
/* 80D073C8  40 82 00 34 */	bne lbl_80D073FC
/* 80D073CC  3C 60 80 D0 */	lis r3, mode_proc@ha /* 0x80D0786C@ha */
/* 80D073D0  38 A3 78 6C */	addi r5, r3, mode_proc@l /* 0x80D0786C@l */
/* 80D073D4  3C 60 80 D0 */	lis r3, lit_3799@ha /* 0x80D07860@ha */
/* 80D073D8  38 83 78 60 */	addi r4, r3, lit_3799@l /* 0x80D07860@l */
/* 80D073DC  80 64 00 00 */	lwz r3, 0(r4)
/* 80D073E0  80 04 00 04 */	lwz r0, 4(r4)
/* 80D073E4  90 65 00 00 */	stw r3, 0(r5)
/* 80D073E8  90 05 00 04 */	stw r0, 4(r5)
/* 80D073EC  80 04 00 08 */	lwz r0, 8(r4)
/* 80D073F0  90 05 00 08 */	stw r0, 8(r5)
/* 80D073F4  38 00 00 01 */	li r0, 1
/* 80D073F8  98 06 00 00 */	stb r0, 0(r6)
lbl_80D073FC:
/* 80D073FC  7F E3 FB 78 */	mr r3, r31
/* 80D07400  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80D07404  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80D07408  3C 80 80 D0 */	lis r4, mode_proc@ha /* 0x80D0786C@ha */
/* 80D0740C  38 04 78 6C */	addi r0, r4, mode_proc@l /* 0x80D0786C@l */
/* 80D07410  7D 80 2A 14 */	add r12, r0, r5
/* 80D07414  4B 65 AC 71 */	bl __ptmf_scall
/* 80D07418  60 00 00 00 */	nop 
/* 80D0741C  3C 60 80 D0 */	lis r3, lit_3816@ha /* 0x80D0784C@ha */
/* 80D07420  C0 23 78 4C */	lfs f1, lit_3816@l(r3)  /* 0x80D0784C@l */
/* 80D07424  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80D07428  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D0742C  FC 00 00 1E */	fctiwz f0, f0
/* 80D07430  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D07434  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D07438  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80D0743C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80D07440  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80D07444  7C 00 07 34 */	extsh r0, r0
/* 80D07448  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D0744C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D07450  7C 64 02 14 */	add r3, r4, r0
/* 80D07454  C0 43 00 04 */	lfs f2, 4(r3)
/* 80D07458  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80D0745C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80D07460  FC 00 00 1E */	fctiwz f0, f0
/* 80D07464  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80D07468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0746C  B0 1F 05 D8 */	sth r0, 0x5d8(r31)
/* 80D07470  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80D07474  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D07478  FC 00 00 1E */	fctiwz f0, f0
/* 80D0747C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80D07480  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80D07484  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80D07488  7C 00 07 34 */	extsh r0, r0
/* 80D0748C  7C 03 01 D6 */	mullw r0, r3, r0
/* 80D07490  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80D07494  7C 24 04 2E */	lfsx f1, r4, r0
/* 80D07498  C0 1F 05 DC */	lfs f0, 0x5dc(r31)
/* 80D0749C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D074A0  FC 00 00 1E */	fctiwz f0, f0
/* 80D074A4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80D074A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D074AC  B0 1F 05 D4 */	sth r0, 0x5d4(r31)
/* 80D074B0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80D074B4  38 03 00 01 */	addi r0, r3, 1
/* 80D074B8  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 80D074BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D074C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D074C4  7C 08 03 A6 */	mtlr r0
/* 80D074C8  38 21 00 30 */	addi r1, r1, 0x30
/* 80D074CC  4E 80 00 20 */	blr 
