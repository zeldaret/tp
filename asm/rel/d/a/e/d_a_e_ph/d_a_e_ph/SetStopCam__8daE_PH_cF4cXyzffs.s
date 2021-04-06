lbl_8073D648:
/* 8073D648  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8073D64C  7C 08 02 A6 */	mflr r0
/* 8073D650  90 01 00 44 */	stw r0, 0x44(r1)
/* 8073D654  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8073D658  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8073D65C  7C 7E 1B 78 */	mr r30, r3
/* 8073D660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073D664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073D668  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8073D66C  7C 00 07 74 */	extsb r0, r0
/* 8073D670  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8073D674  7C 63 02 14 */	add r3, r3, r0
/* 8073D678  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 8073D67C  3C 60 80 74 */	lis r3, lit_3767@ha /* 0x80741BF4@ha */
/* 8073D680  C0 03 1B F4 */	lfs f0, lit_3767@l(r3)  /* 0x80741BF4@l */
/* 8073D684  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8073D688  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8073D68C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8073D690  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8073D694  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8073D698  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8073D69C  C0 44 00 08 */	lfs f2, 8(r4)
/* 8073D6A0  C0 24 00 04 */	lfs f1, 4(r4)
/* 8073D6A4  C0 04 00 00 */	lfs f0, 0(r4)
/* 8073D6A8  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 8073D6AC  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
/* 8073D6B0  D0 5E 05 DC */	stfs f2, 0x5dc(r30)
/* 8073D6B4  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 8073D6B8  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 8073D6BC  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8073D6C0  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 8073D6C4  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8073D6C8  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 8073D6CC  38 61 00 20 */	addi r3, r1, 0x20
/* 8073D6D0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8073D6D4  4B B3 36 ED */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8073D6D8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8073D6DC  D0 1E 05 BC */	stfs f0, 0x5bc(r30)
/* 8073D6E0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8073D6E4  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8073D6E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8073D6EC  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8073D6F0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8073D6F4  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8073D6F8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8073D6FC  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 8073D700  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8073D704  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 8073D708  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 8073D70C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073D710  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8073D714  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073D718  C0 1E 05 DC */	lfs f0, 0x5dc(r30)
/* 8073D71C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8073D720  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 8073D724  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073D728  C0 1E 05 C0 */	lfs f0, 0x5c0(r30)
/* 8073D72C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073D730  C0 1E 05 C4 */	lfs f0, 0x5c4(r30)
/* 8073D734  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073D738  38 7F 02 48 */	addi r3, r31, 0x248
/* 8073D73C  38 81 00 14 */	addi r4, r1, 0x14
/* 8073D740  38 A1 00 08 */	addi r5, r1, 8
/* 8073D744  C0 3E 05 F4 */	lfs f1, 0x5f4(r30)
/* 8073D748  38 C0 00 00 */	li r6, 0
/* 8073D74C  4B A4 33 95 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 8073D750  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8073D754  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8073D758  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8073D75C  7C 08 03 A6 */	mtlr r0
/* 8073D760  38 21 00 40 */	addi r1, r1, 0x40
/* 8073D764  4E 80 00 20 */	blr 
