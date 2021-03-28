lbl_8003E578:
/* 8003E578  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8003E57C  7C 08 02 A6 */	mflr r0
/* 8003E580  90 01 00 44 */	stw r0, 0x44(r1)
/* 8003E584  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8003E588  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8003E58C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8003E590  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8003E594  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E598  48 32 3C 41 */	bl _savegpr_28
/* 8003E59C  7C 7C 1B 78 */	mr r28, r3
/* 8003E5A0  7C DD 33 79 */	or. r29, r6, r6
/* 8003E5A4  7C FE 3B 78 */	mr r30, r7
/* 8003E5A8  7D 1F 43 78 */	mr r31, r8
/* 8003E5AC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8003E5B0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8003E5B4  80 DC 00 10 */	lwz r6, 0x10(r28)
/* 8003E5B8  C0 26 00 08 */	lfs f1, 8(r6)
/* 8003E5BC  EF E1 00 2A */	fadds f31, f1, f0
/* 8003E5C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8003E5C4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 8003E5C8  EF C1 00 2A */	fadds f30, f1, f0
/* 8003E5CC  41 82 00 0C */	beq lbl_8003E5D8
/* 8003E5D0  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003E5D4  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8003E5D8:
/* 8003E5D8  28 1E 00 00 */	cmplwi r30, 0
/* 8003E5DC  41 82 00 0C */	beq lbl_8003E5E8
/* 8003E5E0  C0 02 84 20 */	lfs f0, lit_3894(r2)
/* 8003E5E4  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8003E5E8:
/* 8003E5E8  28 04 00 00 */	cmplwi r4, 0
/* 8003E5EC  41 82 00 0C */	beq lbl_8003E5F8
/* 8003E5F0  80 1C 00 00 */	lwz r0, 0(r28)
/* 8003E5F4  90 04 00 00 */	stw r0, 0(r4)
lbl_8003E5F8:
/* 8003E5F8  28 05 00 00 */	cmplwi r5, 0
/* 8003E5FC  41 82 00 10 */	beq lbl_8003E60C
/* 8003E600  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8003E604  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8003E608  90 05 00 00 */	stw r0, 0(r5)
lbl_8003E60C:
/* 8003E60C  80 7C 00 14 */	lwz r3, 0x14(r28)
/* 8003E610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8003E614  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8003E618  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8003E61C  48 32 A3 79 */	bl strcmp
/* 8003E620  2C 03 00 00 */	cmpwi r3, 0
/* 8003E624  40 82 00 50 */	bne lbl_8003E674
/* 8003E628  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 8003E62C  28 00 00 00 */	cmplwi r0, 0
/* 8003E630  41 82 00 8C */	beq lbl_8003E6BC
/* 8003E634  28 1F 00 00 */	cmplwi r31, 0
/* 8003E638  41 82 00 08 */	beq lbl_8003E640
/* 8003E63C  90 1F 00 00 */	stw r0, 0(r31)
lbl_8003E640:
/* 8003E640  28 1D 00 00 */	cmplwi r29, 0
/* 8003E644  41 82 00 14 */	beq lbl_8003E658
/* 8003E648  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8003E64C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003E650  EC 1F 00 2A */	fadds f0, f31, f0
/* 8003E654  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8003E658:
/* 8003E658  28 1E 00 00 */	cmplwi r30, 0
/* 8003E65C  41 82 00 60 */	beq lbl_8003E6BC
/* 8003E660  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 8003E664  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8003E668  EC 1E 00 2A */	fadds f0, f30, f0
/* 8003E66C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 8003E670  48 00 00 4C */	b lbl_8003E6BC
lbl_8003E674:
/* 8003E674  80 1C 00 2C */	lwz r0, 0x2c(r28)
/* 8003E678  28 00 00 00 */	cmplwi r0, 0
/* 8003E67C  41 82 00 40 */	beq lbl_8003E6BC
/* 8003E680  28 1F 00 00 */	cmplwi r31, 0
/* 8003E684  41 82 00 08 */	beq lbl_8003E68C
/* 8003E688  90 1F 00 00 */	stw r0, 0(r31)
lbl_8003E68C:
/* 8003E68C  28 1D 00 00 */	cmplwi r29, 0
/* 8003E690  41 82 00 14 */	beq lbl_8003E6A4
/* 8003E694  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8003E698  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003E69C  EC 1F 00 2A */	fadds f0, f31, f0
/* 8003E6A0  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_8003E6A4:
/* 8003E6A4  28 1E 00 00 */	cmplwi r30, 0
/* 8003E6A8  41 82 00 14 */	beq lbl_8003E6BC
/* 8003E6AC  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 8003E6B0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8003E6B4  EC 1E 00 2A */	fadds f0, f30, f0
/* 8003E6B8  D0 1E 00 00 */	stfs f0, 0(r30)
lbl_8003E6BC:
/* 8003E6BC  38 60 00 00 */	li r3, 0
/* 8003E6C0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8003E6C4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8003E6C8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8003E6CC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8003E6D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8003E6D4  48 32 3B 51 */	bl _restgpr_28
/* 8003E6D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8003E6DC  7C 08 03 A6 */	mtlr r0
/* 8003E6E0  38 21 00 40 */	addi r1, r1, 0x40
/* 8003E6E4  4E 80 00 20 */	blr 
