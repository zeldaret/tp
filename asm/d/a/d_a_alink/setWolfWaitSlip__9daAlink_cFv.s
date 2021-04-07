lbl_8012C1F4:
/* 8012C1F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8012C1F8  7C 08 02 A6 */	mflr r0
/* 8012C1FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 8012C200  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8012C204  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8012C208  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8012C20C  7C 7F 1B 78 */	mr r31, r3
/* 8012C210  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012C214  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012C218  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012C21C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012C220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012C224  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8012C228  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 8012C22C  38 A1 00 08 */	addi r5, r1, 8
/* 8012C230  4B F4 85 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8012C234  38 61 00 08 */	addi r3, r1, 8
/* 8012C238  48 13 AE F1 */	bl atan2sX_Z__4cXyzCFv
/* 8012C23C  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8012C240  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8012C244  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8012C248  EF E1 00 28 */	fsubs f31, f1, f0
/* 8012C24C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012C250  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8012C254  40 81 00 0C */	ble lbl_8012C260
/* 8012C258  FC 00 F8 34 */	frsqrte f0, f31
/* 8012C25C  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_8012C260:
/* 8012C260  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 8012C264  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012C268  7C 03 00 50 */	subf r0, r3, r0
/* 8012C26C  7C 03 07 34 */	extsh r3, r0
/* 8012C270  48 23 8E 61 */	bl abs
/* 8012C274  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8012C278  41 80 00 14 */	blt lbl_8012C28C
/* 8012C27C  38 00 00 01 */	li r0, 1
/* 8012C280  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012C284  C0 82 97 58 */	lfs f4, lit_45501(r2)
/* 8012C288  48 00 00 10 */	b lbl_8012C298
lbl_8012C28C:
/* 8012C28C  38 00 00 00 */	li r0, 0
/* 8012C290  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012C294  C0 82 93 B8 */	lfs f4, lit_10041(r2)
lbl_8012C298:
/* 8012C298  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8012C29C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8012C2A0  EC 04 00 32 */	fmuls f0, f4, f0
/* 8012C2A4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8012C2A8  EC 61 00 2A */	fadds f3, f1, f0
/* 8012C2AC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 8012C2B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8012C2B4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8012C2B8  EC 41 00 28 */	fsubs f2, f1, f0
/* 8012C2BC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8012C2C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 8012C2C4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8012C2C8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8012C2CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8012C2D0  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8012C2D4  D0 5F 37 CC */	stfs f2, 0x37cc(r31)
/* 8012C2D8  D0 7F 37 D0 */	stfs f3, 0x37d0(r31)
/* 8012C2DC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8012C2E0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8012C2E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8012C2E8  FC 20 F8 90 */	fmr f1, f31
/* 8012C2EC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8012C2F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8012C2F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8012C2F8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8012C2FC  7C 08 03 A6 */	mtlr r0
/* 8012C300  38 21 00 40 */	addi r1, r1, 0x40
/* 8012C304  4E 80 00 20 */	blr 
