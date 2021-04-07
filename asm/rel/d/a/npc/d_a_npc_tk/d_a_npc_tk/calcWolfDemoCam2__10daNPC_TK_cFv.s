lbl_80B082A4:
/* 80B082A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B082A8  7C 08 02 A6 */	mflr r0
/* 80B082AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B082B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B082B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B082B8  7C 7E 1B 78 */	mr r30, r3
/* 80B082BC  3C 60 80 B1 */	lis r3, lit_3999@ha /* 0x80B0C1C4@ha */
/* 80B082C0  3B E3 C1 C4 */	addi r31, r3, lit_3999@l /* 0x80B0C1C4@l */
/* 80B082C4  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 80B082C8  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B082CC  7C 84 07 74 */	extsb r4, r4
/* 80B082D0  4B 54 94 E1 */	bl dPath_GetPnt__FPC5dPathi
/* 80B082D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B082D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B082DC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B082E0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B082E4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B082E8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B082EC  80 7E 06 DC */	lwz r3, 0x6dc(r30)
/* 80B082F0  88 1E 06 CC */	lbz r0, 0x6cc(r30)
/* 80B082F4  7C 04 07 74 */	extsb r4, r0
/* 80B082F8  38 84 FF FF */	addi r4, r4, -1
/* 80B082FC  4B 54 94 B5 */	bl dPath_GetPnt__FPC5dPathi
/* 80B08300  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B08304  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B08308  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B0830C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B08310  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B08314  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B08318  38 7E 06 FC */	addi r3, r30, 0x6fc
/* 80B0831C  38 81 00 20 */	addi r4, r1, 0x20
/* 80B08320  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80B08324  C0 5E 07 14 */	lfs f2, 0x714(r30)
/* 80B08328  4B 76 7E 51 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B0832C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B08330  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B08334  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B08338  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B0833C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B08340  38 61 00 20 */	addi r3, r1, 0x20
/* 80B08344  38 81 00 14 */	addi r4, r1, 0x14
/* 80B08348  4B 76 88 BD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B0834C  7C 65 1B 78 */	mr r5, r3
/* 80B08350  38 61 00 2C */	addi r3, r1, 0x2c
/* 80B08354  38 81 00 20 */	addi r4, r1, 0x20
/* 80B08358  38 C1 00 08 */	addi r6, r1, 8
/* 80B0835C  4B 76 8A 65 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B08360  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80B08364  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B08368  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80B0836C  C0 5E 07 14 */	lfs f2, 0x714(r30)
/* 80B08370  4B 76 7E 09 */	bl cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B08374  38 7E 07 14 */	addi r3, r30, 0x714
/* 80B08378  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80B0837C  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80B08380  4B 76 83 C1 */	bl cLib_chaseF__FPfff
/* 80B08384  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B08388  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B0838C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B08390  7C 08 03 A6 */	mtlr r0
/* 80B08394  38 21 00 40 */	addi r1, r1, 0x40
/* 80B08398  4E 80 00 20 */	blr 
