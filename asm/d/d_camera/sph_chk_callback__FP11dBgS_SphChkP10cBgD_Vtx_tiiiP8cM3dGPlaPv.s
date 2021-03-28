lbl_80165C08:
/* 80165C08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80165C0C  7C 08 02 A6 */	mflr r0
/* 80165C10  90 01 00 44 */	stw r0, 0x44(r1)
/* 80165C14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80165C18  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80165C1C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80165C20  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80165C24  7D 1E 43 78 */	mr r30, r8
/* 80165C28  7D 3F 4B 78 */	mr r31, r9
/* 80165C2C  88 09 00 1C */	lbz r0, 0x1c(r9)
/* 80165C30  28 00 00 00 */	cmplwi r0, 0
/* 80165C34  40 82 00 8C */	bne lbl_80165CC0
/* 80165C38  7F C3 F3 78 */	mr r3, r30
/* 80165C3C  38 9F 00 0C */	addi r4, r31, 0xc
/* 80165C40  48 10 2B D5 */	bl cM3d_SignedLenPlaAndPos__FPC8cM3dGPlaPC3Vec
/* 80165C44  FF E0 08 90 */	fmr f31, f1
/* 80165C48  7F C3 F3 78 */	mr r3, r30
/* 80165C4C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80165C50  48 1E 15 45 */	bl PSVECDotProduct
/* 80165C54  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80165C58  EC 20 08 2A */	fadds f1, f0, f1
/* 80165C5C  C0 02 9D 1C */	lfs f0, lit_8163(r2)
/* 80165C60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165C64  4C 41 13 82 */	cror 2, 1, 2
/* 80165C68  40 82 00 58 */	bne lbl_80165CC0
/* 80165C6C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80165C70  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80165C74  40 80 00 4C */	bge lbl_80165CC0
/* 80165C78  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80165C7C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80165C80  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80165C84  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80165C88  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80165C8C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80165C90  38 61 00 08 */	addi r3, r1, 8
/* 80165C94  38 81 00 14 */	addi r4, r1, 0x14
/* 80165C98  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 80165C9C  EC 00 08 2A */	fadds f0, f0, f1
/* 80165CA0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80165CA4  48 10 0E E1 */	bl __ml__4cXyzCFf
/* 80165CA8  38 7F 00 0C */	addi r3, r31, 0xc
/* 80165CAC  38 81 00 08 */	addi r4, r1, 8
/* 80165CB0  7C 65 1B 78 */	mr r5, r3
/* 80165CB4  48 1E 13 DD */	bl PSVECAdd
/* 80165CB8  38 00 00 01 */	li r0, 1
/* 80165CBC  98 1F 00 1C */	stb r0, 0x1c(r31)
lbl_80165CC0:
/* 80165CC0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80165CC4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80165CC8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80165CCC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80165CD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80165CD4  7C 08 03 A6 */	mtlr r0
/* 80165CD8  38 21 00 40 */	addi r1, r1, 0x40
/* 80165CDC  4E 80 00 20 */	blr 
