lbl_80D19744:
/* 80D19744  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D19748  7C 08 02 A6 */	mflr r0
/* 80D1974C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D19750  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D19754  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D19758  7C 7E 1B 78 */	mr r30, r3
/* 80D1975C  3C 60 80 D2 */	lis r3, lit_3775@ha /* 0x80D1B6D8@ha */
/* 80D19760  3B E3 B6 D8 */	addi r31, r3, lit_3775@l /* 0x80D1B6D8@l */
/* 80D19764  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D19768  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80D1976C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D19770  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D19774  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D19778  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D1977C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D19780  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D19784  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80D19788  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D1978C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D19790  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D19794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D19798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D1979C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80D197A0  4B 2F 2C 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 80D197A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D197A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D197AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80D197B0  38 A1 00 08 */	addi r5, r1, 8
/* 80D197B4  4B 62 D5 B9 */	bl PSMTXMultVec
/* 80D197B8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D197BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D197C0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D197C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D197C8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80D197CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D197D0  EC 01 00 2A */	fadds f0, f1, f0
/* 80D197D4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80D197D8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80D197DC  C0 3E 07 1C */	lfs f1, 0x71c(r30)
/* 80D197E0  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80D197E4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D197E8  4B 55 62 55 */	bl cLib_addCalc2__FPffff
/* 80D197EC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80D197F0  C0 3E 07 20 */	lfs f1, 0x720(r30)
/* 80D197F4  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80D197F8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D197FC  4B 55 62 41 */	bl cLib_addCalc2__FPffff
/* 80D19800  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80D19804  A8 9E 07 24 */	lha r4, 0x724(r30)
/* 80D19808  38 A0 00 10 */	li r5, 0x10
/* 80D1980C  38 C0 10 00 */	li r6, 0x1000
/* 80D19810  4B 55 6D F9 */	bl cLib_addCalcAngleS2__FPssss
/* 80D19814  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D19818  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D1981C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D19820  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D19824  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D19828  7C 08 03 A6 */	mtlr r0
/* 80D1982C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D19830  4E 80 00 20 */	blr 
