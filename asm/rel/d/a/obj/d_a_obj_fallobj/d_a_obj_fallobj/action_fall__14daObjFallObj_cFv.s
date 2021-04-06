lbl_80BE45F4:
/* 80BE45F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE45F8  7C 08 02 A6 */	mflr r0
/* 80BE45FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4600  C0 23 04 FC */	lfs f1, 0x4fc(r3)
/* 80BE4604  C0 03 05 30 */	lfs f0, 0x530(r3)
/* 80BE4608  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE460C  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BE4610  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BE4614  C0 23 05 34 */	lfs f1, 0x534(r3)
/* 80BE4618  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BE461C  40 80 00 08 */	bge lbl_80BE4624
/* 80BE4620  D0 23 04 FC */	stfs f1, 0x4fc(r3)
lbl_80BE4624:
/* 80BE4624  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BE4628  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BE462C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE4630  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BE4634  C0 23 04 AC */	lfs f1, 0x4ac(r3)
/* 80BE4638  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BE463C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BE4640  FC 00 02 10 */	fabs f0, f0
/* 80BE4644  FC 20 00 18 */	frsp f1, f0
/* 80BE4648  3C 80 80 BE */	lis r4, lit_3949@ha /* 0x80BE4B08@ha */
/* 80BE464C  C0 04 4B 08 */	lfs f0, lit_3949@l(r4)  /* 0x80BE4B08@l */
/* 80BE4650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE4654  40 81 00 08 */	ble lbl_80BE465C
/* 80BE4658  4B 43 56 25 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BE465C:
/* 80BE465C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE4660  7C 08 03 A6 */	mtlr r0
/* 80BE4664  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4668  4E 80 00 20 */	blr 
