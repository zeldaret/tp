lbl_8005B660:
/* 8005B660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005B664  7C 08 02 A6 */	mflr r0
/* 8005B668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005B66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005B670  93 C1 00 08 */	stw r30, 8(r1)
/* 8005B674  7C 7E 1B 78 */	mr r30, r3
/* 8005B678  7C 9F 23 78 */	mr r31, r4
/* 8005B67C  C8 03 00 10 */	lfd f0, 0x10(r3)
/* 8005B680  FC 40 00 32 */	fmul f2, f0, f0
/* 8005B684  C8 03 00 00 */	lfd f0, 0(r3)
/* 8005B688  FC 20 00 32 */	fmul f1, f0, f0
/* 8005B68C  C8 03 00 08 */	lfd f0, 8(r3)
/* 8005B690  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B694  FC 01 00 2A */	fadd f0, f1, f0
/* 8005B698  FC 22 00 2A */	fadd f1, f2, f0
/* 8005B69C  48 31 13 B9 */	bl sqrt
/* 8005B6A0  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005B6A4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005B6A8  41 82 00 38 */	beq lbl_8005B6E0
/* 8005B6AC  C8 1E 00 00 */	lfd f0, 0(r30)
/* 8005B6B0  FC 00 08 24 */	fdiv f0, f0, f1
/* 8005B6B4  FC 00 00 18 */	frsp f0, f0
/* 8005B6B8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8005B6BC  C8 1E 00 08 */	lfd f0, 8(r30)
/* 8005B6C0  FC 00 08 24 */	fdiv f0, f0, f1
/* 8005B6C4  FC 00 00 18 */	frsp f0, f0
/* 8005B6C8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B6CC  C8 1E 00 10 */	lfd f0, 0x10(r30)
/* 8005B6D0  FC 00 08 24 */	fdiv f0, f0, f1
/* 8005B6D4  FC 00 00 18 */	frsp f0, f0
/* 8005B6D8  D0 1F 00 08 */	stfs f0, 8(r31)
/* 8005B6DC  48 00 00 14 */	b lbl_8005B6F0
lbl_8005B6E0:
/* 8005B6E0  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005B6E4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8005B6E8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 8005B6EC  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_8005B6F0:
/* 8005B6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005B6F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005B6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005B6FC  7C 08 03 A6 */	mtlr r0
/* 8005B700  38 21 00 10 */	addi r1, r1, 0x10
/* 8005B704  4E 80 00 20 */	blr 
