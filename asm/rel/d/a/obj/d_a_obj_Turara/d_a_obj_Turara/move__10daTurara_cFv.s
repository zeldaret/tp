lbl_80B9D548:
/* 80B9D548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B9D54C  7C 08 02 A6 */	mflr r0
/* 80B9D550  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B9D554  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B9D558  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B9D55C  7C 7E 1B 78 */	mr r30, r3
/* 80B9D560  3C 60 80 BA */	lis r3, cNullVec__6Z2Calc@ha
/* 80B9D564  38 83 E9 7C */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80B9D568  3C 60 80 BA */	lis r3, lit_3661@ha
/* 80B9D56C  3B E3 E8 F4 */	addi r31, r3, lit_3661@l
/* 80B9D570  3C 60 80 BA */	lis r3, data_80B9EBC4@ha
/* 80B9D574  38 C3 EB C4 */	addi r6, r3, data_80B9EBC4@l
/* 80B9D578  88 06 00 00 */	lbz r0, 0(r6)
/* 80B9D57C  7C 00 07 75 */	extsb. r0, r0
/* 80B9D580  40 82 00 88 */	bne lbl_80B9D608
/* 80B9D584  80 64 00 64 */	lwz r3, 0x64(r4)
/* 80B9D588  80 04 00 68 */	lwz r0, 0x68(r4)
/* 80B9D58C  90 64 00 A0 */	stw r3, 0xa0(r4)
/* 80B9D590  90 04 00 A4 */	stw r0, 0xa4(r4)
/* 80B9D594  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80B9D598  90 04 00 A8 */	stw r0, 0xa8(r4)
/* 80B9D59C  38 A4 00 A0 */	addi r5, r4, 0xa0
/* 80B9D5A0  80 64 00 70 */	lwz r3, 0x70(r4)
/* 80B9D5A4  80 04 00 74 */	lwz r0, 0x74(r4)
/* 80B9D5A8  90 65 00 0C */	stw r3, 0xc(r5)
/* 80B9D5AC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80B9D5B0  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80B9D5B4  90 05 00 14 */	stw r0, 0x14(r5)
/* 80B9D5B8  80 64 00 7C */	lwz r3, 0x7c(r4)
/* 80B9D5BC  80 04 00 80 */	lwz r0, 0x80(r4)
/* 80B9D5C0  90 65 00 18 */	stw r3, 0x18(r5)
/* 80B9D5C4  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80B9D5C8  80 04 00 84 */	lwz r0, 0x84(r4)
/* 80B9D5CC  90 05 00 20 */	stw r0, 0x20(r5)
/* 80B9D5D0  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80B9D5D4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80B9D5D8  90 65 00 24 */	stw r3, 0x24(r5)
/* 80B9D5DC  90 05 00 28 */	stw r0, 0x28(r5)
/* 80B9D5E0  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80B9D5E4  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80B9D5E8  80 64 00 94 */	lwz r3, 0x94(r4)
/* 80B9D5EC  80 04 00 98 */	lwz r0, 0x98(r4)
/* 80B9D5F0  90 65 00 30 */	stw r3, 0x30(r5)
/* 80B9D5F4  90 05 00 34 */	stw r0, 0x34(r5)
/* 80B9D5F8  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 80B9D5FC  90 05 00 38 */	stw r0, 0x38(r5)
/* 80B9D600  38 00 00 01 */	li r0, 1
/* 80B9D604  98 06 00 00 */	stb r0, 0(r6)
lbl_80B9D608:
/* 80B9D608  7F C3 F3 78 */	mr r3, r30
/* 80B9D60C  88 1E 05 C8 */	lbz r0, 0x5c8(r30)
/* 80B9D610  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80B9D614  39 84 00 A0 */	addi r12, r4, 0xa0
/* 80B9D618  7D 8C 02 14 */	add r12, r12, r0
/* 80B9D61C  4B 7C 4A 68 */	b __ptmf_scall
/* 80B9D620  60 00 00 00 */	nop 
/* 80B9D624  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B9D628  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B9D62C  80 1E 07 48 */	lwz r0, 0x748(r30)
/* 80B9D630  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80B9D634  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B9D638  7C 64 02 14 */	add r3, r4, r0
/* 80B9D63C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B9D640  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 80B9D644  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B9D648  FC 00 00 1E */	fctiwz f0, f0
/* 80B9D64C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B9D650  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B9D654  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 80B9D658  80 1E 07 48 */	lwz r0, 0x748(r30)
/* 80B9D65C  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80B9D660  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B9D664  7C 24 04 2E */	lfsx f1, r4, r0
/* 80B9D668  C0 1E 07 4C */	lfs f0, 0x74c(r30)
/* 80B9D66C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B9D670  FC 00 00 1E */	fctiwz f0, f0
/* 80B9D674  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B9D678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9D67C  B0 1E 07 54 */	sth r0, 0x754(r30)
/* 80B9D680  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80B9D684  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80B9D688  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80B9D68C  4B 6D 23 F4 */	b cLib_addCalc0__FPfff
/* 80B9D690  80 7E 07 48 */	lwz r3, 0x748(r30)
/* 80B9D694  38 03 00 01 */	addi r0, r3, 1
/* 80B9D698  90 1E 07 48 */	stw r0, 0x748(r30)
/* 80B9D69C  88 1E 09 84 */	lbz r0, 0x984(r30)
/* 80B9D6A0  28 00 00 00 */	cmplwi r0, 0
/* 80B9D6A4  40 82 00 14 */	bne lbl_80B9D6B8
/* 80B9D6A8  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80B9D6AC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80B9D6B0  4B 6D 1B 50 */	b SetR__8cM3dGCylFf
/* 80B9D6B4  48 00 00 10 */	b lbl_80B9D6C4
lbl_80B9D6B8:
/* 80B9D6B8  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80B9D6BC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80B9D6C0  4B 6D 1B 40 */	b SetR__8cM3dGCylFf
lbl_80B9D6C4:
/* 80B9D6C4  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80B9D6C8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80B9D6CC  4B 6D 1B 2C */	b SetH__8cM3dGCylFf
/* 80B9D6D0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B9D6D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B9D6D8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B9D6DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B9D6E0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B9D6E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B9D6E8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80B9D6EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B9D6F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B9D6F4  38 7E 07 2C */	addi r3, r30, 0x72c
/* 80B9D6F8  38 81 00 08 */	addi r4, r1, 8
/* 80B9D6FC  4B 6D 1A E0 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B9D700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B9D704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B9D708  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B9D70C  38 9E 06 08 */	addi r4, r30, 0x608
/* 80B9D710  4B 6C 74 98 */	b Set__4cCcSFP8cCcD_Obj
/* 80B9D714  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B9D718  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B9D71C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B9D720  7C 08 03 A6 */	mtlr r0
/* 80B9D724  38 21 00 30 */	addi r1, r1, 0x30
/* 80B9D728  4E 80 00 20 */	blr 
