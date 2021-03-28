lbl_80B35780:
/* 80B35780  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B35784  7C 08 02 A6 */	mflr r0
/* 80B35788  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B3578C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B35790  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B35794  39 61 00 60 */	addi r11, r1, 0x60
/* 80B35798  4B 82 CA 44 */	b _savegpr_29
/* 80B3579C  7C 7D 1B 78 */	mr r29, r3
/* 80B357A0  88 03 0E 02 */	lbz r0, 0xe02(r3)
/* 80B357A4  28 00 00 00 */	cmplwi r0, 0
/* 80B357A8  40 82 00 0C */	bne lbl_80B357B4
/* 80B357AC  38 60 00 00 */	li r3, 0
/* 80B357B0  48 00 01 20 */	b lbl_80B358D0
lbl_80B357B4:
/* 80B357B4  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B357B8  28 00 00 00 */	cmplwi r0, 0
/* 80B357BC  3B C0 00 18 */	li r30, 0x18
/* 80B357C0  40 82 00 08 */	bne lbl_80B357C8
/* 80B357C4  3B C0 00 1A */	li r30, 0x1a
lbl_80B357C8:
/* 80B357C8  28 00 00 00 */	cmplwi r0, 0
/* 80B357CC  3B E0 00 1B */	li r31, 0x1b
/* 80B357D0  40 82 00 08 */	bne lbl_80B357D8
/* 80B357D4  3B E0 00 1E */	li r31, 0x1e
lbl_80B357D8:
/* 80B357D8  C0 3D 0D FC */	lfs f1, 0xdfc(r29)
/* 80B357DC  3C 60 80 B4 */	lis r3, lit_6299@ha
/* 80B357E0  C8 43 1C 9C */	lfd f2, lit_6299@l(r3)
/* 80B357E4  4B 83 6F 9C */	b pow
/* 80B357E8  FF E0 08 18 */	frsp f31, f1
/* 80B357EC  38 61 00 44 */	addi r3, r1, 0x44
/* 80B357F0  7F A4 EB 78 */	mr r4, r29
/* 80B357F4  7F C5 F3 78 */	mr r5, r30
/* 80B357F8  48 00 00 F9 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B357FC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B35800  D0 1D 08 9C */	stfs f0, 0x89c(r29)
/* 80B35804  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B35808  D0 1D 08 A0 */	stfs f0, 0x8a0(r29)
/* 80B3580C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B35810  D0 1D 08 A4 */	stfs f0, 0x8a4(r29)
/* 80B35814  38 61 00 38 */	addi r3, r1, 0x38
/* 80B35818  7F A4 EB 78 */	mr r4, r29
/* 80B3581C  7F E5 FB 78 */	mr r5, r31
/* 80B35820  48 00 00 D1 */	bl getJointPos__15daNpcWrestler_cFi
/* 80B35824  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B35828  D0 1D 08 A8 */	stfs f0, 0x8a8(r29)
/* 80B3582C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B35830  D0 1D 08 AC */	stfs f0, 0x8ac(r29)
/* 80B35834  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B35838  D0 1D 08 B0 */	stfs f0, 0x8b0(r29)
/* 80B3583C  C0 5D 08 A4 */	lfs f2, 0x8a4(r29)
/* 80B35840  C0 1D 08 9C */	lfs f0, 0x89c(r29)
/* 80B35844  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B35848  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B3584C  C0 23 18 94 */	lfs f1, lit_4418@l(r3)
/* 80B35850  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B35854  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80B35858  C0 5D 0D F8 */	lfs f2, 0xdf8(r29)
/* 80B3585C  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 80B35860  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B35864  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80B35868  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80B3586C  38 61 00 20 */	addi r3, r1, 0x20
/* 80B35870  38 81 00 2C */	addi r4, r1, 0x2c
/* 80B35874  4B 81 1B 28 */	b PSVECSquareDistance
/* 80B35878  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B3587C  7C 00 00 26 */	mfcr r0
/* 80B35880  54 03 17 FF */	rlwinm. r3, r0, 2, 0x1f, 0x1f
/* 80B35884  40 82 00 4C */	bne lbl_80B358D0
/* 80B35888  C0 5D 08 B0 */	lfs f2, 0x8b0(r29)
/* 80B3588C  C0 1D 08 A8 */	lfs f0, 0x8a8(r29)
/* 80B35890  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B35894  3C 60 80 B4 */	lis r3, lit_4418@ha
/* 80B35898  C0 23 18 94 */	lfs f1, lit_4418@l(r3)
/* 80B3589C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B358A0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80B358A4  C0 5D 0D F8 */	lfs f2, 0xdf8(r29)
/* 80B358A8  C0 1D 0D F0 */	lfs f0, 0xdf0(r29)
/* 80B358AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B358B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B358B4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B358B8  38 61 00 08 */	addi r3, r1, 8
/* 80B358BC  38 81 00 14 */	addi r4, r1, 0x14
/* 80B358C0  4B 81 1A DC */	b PSVECSquareDistance
/* 80B358C4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80B358C8  7C 00 00 26 */	mfcr r0
/* 80B358CC  54 03 17 FE */	rlwinm r3, r0, 2, 0x1f, 0x1f
lbl_80B358D0:
/* 80B358D0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B358D4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B358D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80B358DC  4B 82 C9 4C */	b _restgpr_29
/* 80B358E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B358E4  7C 08 03 A6 */	mtlr r0
/* 80B358E8  38 21 00 70 */	addi r1, r1, 0x70
/* 80B358EC  4E 80 00 20 */	blr 
