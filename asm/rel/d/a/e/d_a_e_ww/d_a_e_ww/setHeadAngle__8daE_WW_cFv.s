lbl_807E784C:
/* 807E784C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807E7850  7C 08 02 A6 */	mflr r0
/* 807E7854  90 01 00 34 */	stw r0, 0x34(r1)
/* 807E7858  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807E785C  7C 7F 1B 78 */	mr r31, r3
/* 807E7860  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807E7864  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807E7868  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807E786C  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 807E7870  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E7874  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 807E7878  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E787C  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 807E7880  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E7884  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 807E7888  2C 00 00 00 */	cmpwi r0, 0
/* 807E788C  41 82 01 34 */	beq lbl_807E79C0
/* 807E7890  88 1F 07 5A */	lbz r0, 0x75a(r31)
/* 807E7894  28 00 00 00 */	cmplwi r0, 0
/* 807E7898  41 82 00 F8 */	beq lbl_807E7990
/* 807E789C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807E78A0  80 63 00 04 */	lwz r3, 4(r3)
/* 807E78A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807E78A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807E78AC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 807E78B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E78B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E78B8  4B B5 EB F9 */	bl PSMTXCopy
/* 807E78BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E78C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E78C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E78C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E78CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807E78D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E78D4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807E78D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E78DC  38 61 00 08 */	addi r3, r1, 8
/* 807E78E0  38 81 00 14 */	addi r4, r1, 0x14
/* 807E78E4  4B A8 93 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807E78E8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 807E78EC  7C 00 18 50 */	subf r0, r0, r3
/* 807E78F0  7C 04 07 34 */	extsh r4, r0
/* 807E78F4  2C 04 40 00 */	cmpwi r4, 0x4000
/* 807E78F8  40 81 00 08 */	ble lbl_807E7900
/* 807E78FC  38 80 40 00 */	li r4, 0x4000
lbl_807E7900:
/* 807E7900  7C 80 07 34 */	extsh r0, r4
/* 807E7904  2C 00 C0 00 */	cmpwi r0, -16384
/* 807E7908  40 80 00 08 */	bge lbl_807E7910
/* 807E790C  38 80 C0 00 */	li r4, -16384
lbl_807E7910:
/* 807E7910  38 7F 06 7C */	addi r3, r31, 0x67c
/* 807E7914  7C 80 07 34 */	extsh r0, r4
/* 807E7918  7C 00 0E 70 */	srawi r0, r0, 1
/* 807E791C  7C 00 01 94 */	addze r0, r0
/* 807E7920  7C 04 07 34 */	extsh r4, r0
/* 807E7924  38 A0 00 04 */	li r5, 4
/* 807E7928  38 C0 04 00 */	li r6, 0x400
/* 807E792C  38 E0 01 00 */	li r7, 0x100
/* 807E7930  4B A8 8C 11 */	bl cLib_addCalcAngleS__FPsssss
/* 807E7934  38 61 00 08 */	addi r3, r1, 8
/* 807E7938  38 81 00 14 */	addi r4, r1, 0x14
/* 807E793C  4B A8 93 39 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 807E7940  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 807E7944  7C 00 18 50 */	subf r0, r0, r3
/* 807E7948  7C 04 07 34 */	extsh r4, r0
/* 807E794C  2C 04 30 00 */	cmpwi r4, 0x3000
/* 807E7950  40 81 00 08 */	ble lbl_807E7958
/* 807E7954  38 80 30 00 */	li r4, 0x3000
lbl_807E7958:
/* 807E7958  7C 80 07 34 */	extsh r0, r4
/* 807E795C  2C 00 D0 00 */	cmpwi r0, -12288
/* 807E7960  40 80 00 08 */	bge lbl_807E7968
/* 807E7964  38 80 D0 00 */	li r4, -12288
lbl_807E7968:
/* 807E7968  38 7F 06 7A */	addi r3, r31, 0x67a
/* 807E796C  7C 80 07 34 */	extsh r0, r4
/* 807E7970  7C 00 0E 70 */	srawi r0, r0, 1
/* 807E7974  7C 00 01 94 */	addze r0, r0
/* 807E7978  7C 04 07 34 */	extsh r4, r0
/* 807E797C  38 A0 00 04 */	li r5, 4
/* 807E7980  38 C0 04 00 */	li r6, 0x400
/* 807E7984  38 E0 01 00 */	li r7, 0x100
/* 807E7988  4B A8 8B B9 */	bl cLib_addCalcAngleS__FPsssss
/* 807E798C  48 00 00 34 */	b lbl_807E79C0
lbl_807E7990:
/* 807E7990  38 7F 06 7C */	addi r3, r31, 0x67c
/* 807E7994  38 80 00 00 */	li r4, 0
/* 807E7998  38 A0 00 04 */	li r5, 4
/* 807E799C  38 C0 04 00 */	li r6, 0x400
/* 807E79A0  38 E0 01 00 */	li r7, 0x100
/* 807E79A4  4B A8 8B 9D */	bl cLib_addCalcAngleS__FPsssss
/* 807E79A8  38 7F 06 7A */	addi r3, r31, 0x67a
/* 807E79AC  38 80 00 00 */	li r4, 0
/* 807E79B0  38 A0 00 04 */	li r5, 4
/* 807E79B4  38 C0 04 00 */	li r6, 0x400
/* 807E79B8  38 E0 01 00 */	li r7, 0x100
/* 807E79BC  4B A8 8B 85 */	bl cLib_addCalcAngleS__FPsssss
lbl_807E79C0:
/* 807E79C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807E79C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807E79C8  7C 08 03 A6 */	mtlr r0
/* 807E79CC  38 21 00 30 */	addi r1, r1, 0x30
/* 807E79D0  4E 80 00 20 */	blr 
