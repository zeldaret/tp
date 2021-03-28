lbl_80BE42C0:
/* 80BE42C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BE42C4  7C 08 02 A6 */	mflr r0
/* 80BE42C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BE42CC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BE42D0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BE42D4  7C 7E 1B 78 */	mr r30, r3
/* 80BE42D8  3C 60 80 BE */	lis r3, lit_3677@ha
/* 80BE42DC  3B E3 4A B0 */	addi r31, r3, lit_3677@l
/* 80BE42E0  38 7E 05 D9 */	addi r3, r30, 0x5d9
/* 80BE42E4  48 00 07 A9 */	bl func_80BE4A8C
/* 80BE42E8  88 1E 05 D9 */	lbz r0, 0x5d9(r30)
/* 80BE42EC  28 00 00 08 */	cmplwi r0, 8
/* 80BE42F0  41 80 00 58 */	blt lbl_80BE4348
/* 80BE42F4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BE42F8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BE42FC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BE4300  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BE4304  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE4308  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80BE430C  88 1E 05 D9 */	lbz r0, 0x5d9(r30)
/* 80BE4310  28 00 00 09 */	cmplwi r0, 9
/* 80BE4314  40 82 00 B4 */	bne lbl_80BE43C8
/* 80BE4318  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025D@ha */
/* 80BE431C  38 03 02 5D */	addi r0, r3, 0x025D /* 0x0008025D@l */
/* 80BE4320  90 01 00 08 */	stw r0, 8(r1)
/* 80BE4324  38 7E 05 F4 */	addi r3, r30, 0x5f4
/* 80BE4328  38 81 00 08 */	addi r4, r1, 8
/* 80BE432C  38 A0 00 00 */	li r5, 0
/* 80BE4330  38 C0 FF FF */	li r6, -1
/* 80BE4334  81 9E 06 04 */	lwz r12, 0x604(r30)
/* 80BE4338  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BE433C  7D 89 03 A6 */	mtctr r12
/* 80BE4340  4E 80 04 21 */	bctrl 
/* 80BE4344  48 00 00 84 */	b lbl_80BE43C8
lbl_80BE4348:
/* 80BE4348  28 00 00 07 */	cmplwi r0, 7
/* 80BE434C  40 82 00 38 */	bne lbl_80BE4384
/* 80BE4350  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE4354  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BE4358  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BE435C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BE4360  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BE4364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE4368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE436C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BE4370  38 80 00 08 */	li r4, 8
/* 80BE4374  38 A0 00 1F */	li r5, 0x1f
/* 80BE4378  38 C1 00 18 */	addi r6, r1, 0x18
/* 80BE437C  4B 48 B6 A8 */	b StartShock__12dVibration_cFii4cXyz
/* 80BE4380  48 00 00 48 */	b lbl_80BE43C8
lbl_80BE4384:
/* 80BE4384  28 00 00 00 */	cmplwi r0, 0
/* 80BE4388  40 82 00 40 */	bne lbl_80BE43C8
/* 80BE438C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BE4390  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BE4394  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BE4398  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BE439C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BE43A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE43A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BE43A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BE43AC  38 80 00 04 */	li r4, 4
/* 80BE43B0  38 A0 00 1E */	li r5, 0x1e
/* 80BE43B4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BE43B8  4B 48 B7 58 */	b StartQuake__12dVibration_cFii4cXyz
/* 80BE43BC  38 00 00 01 */	li r0, 1
/* 80BE43C0  98 1E 05 F1 */	stb r0, 0x5f1(r30)
/* 80BE43C4  98 1E 05 F0 */	stb r0, 0x5f0(r30)
lbl_80BE43C8:
/* 80BE43C8  38 60 00 00 */	li r3, 0
/* 80BE43CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BE43D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BE43D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BE43D8  7C 08 03 A6 */	mtlr r0
/* 80BE43DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80BE43E0  4E 80 00 20 */	blr 
