lbl_8047EBEC:
/* 8047EBEC  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047EBF0  38 63 0F 28 */	addi r3, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047EBF4  80 04 05 AC */	lwz r0, 0x5ac(r4)
/* 8047EBF8  2C 00 00 02 */	cmpwi r0, 2
/* 8047EBFC  40 82 00 F8 */	bne lbl_8047ECF4
/* 8047EC00  80 04 08 AC */	lwz r0, 0x8ac(r4)
/* 8047EC04  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 8047EC08  38 C3 02 40 */	addi r6, r3, 0x240
/* 8047EC0C  7C C6 02 14 */	add r6, r6, r0
/* 8047EC10  C0 46 00 2C */	lfs f2, 0x2c(r6)
/* 8047EC14  C0 66 00 30 */	lfs f3, 0x30(r6)
/* 8047EC18  EC 82 18 2A */	fadds f4, f2, f3
/* 8047EC1C  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 8047EC20  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8047EC24  EC A1 00 28 */	fsubs f5, f1, f0
/* 8047EC28  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 8047EC2C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8047EC30  EC C1 00 28 */	fsubs f6, f1, f0
/* 8047EC34  A8 05 00 0E */	lha r0, 0xe(r5)
/* 8047EC38  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8047EC3C  40 82 00 18 */	bne lbl_8047EC54
/* 8047EC40  FC 60 10 90 */	fmr f3, f2
/* 8047EC44  C0 26 00 74 */	lfs f1, 0x74(r6)
/* 8047EC48  C0 06 00 44 */	lfs f0, 0x44(r6)
/* 8047EC4C  EC E1 00 32 */	fmuls f7, f1, f0
/* 8047EC50  48 00 00 10 */	b lbl_8047EC60
lbl_8047EC54:
/* 8047EC54  C0 26 00 74 */	lfs f1, 0x74(r6)
/* 8047EC58  C0 06 00 48 */	lfs f0, 0x48(r6)
/* 8047EC5C  EC E1 00 32 */	fmuls f7, f1, f0
lbl_8047EC60:
/* 8047EC60  EC 25 01 72 */	fmuls f1, f5, f5
/* 8047EC64  EC 06 01 B2 */	fmuls f0, f6, f6
/* 8047EC68  EC 41 00 2A */	fadds f2, f1, f0
/* 8047EC6C  C0 03 01 C0 */	lfs f0, 0x1c0(r3)
/* 8047EC70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047EC74  40 81 00 0C */	ble lbl_8047EC80
/* 8047EC78  FC 00 10 34 */	frsqrte f0, f2
/* 8047EC7C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8047EC80:
/* 8047EC80  C0 23 01 D4 */	lfs f1, 0x1d4(r3)
/* 8047EC84  C0 06 00 74 */	lfs f0, 0x74(r6)
/* 8047EC88  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047EC8C  EC 41 00 28 */	fsubs f2, f1, f0
/* 8047EC90  C0 23 07 44 */	lfs f1, 0x744(r3)
/* 8047EC94  C0 03 07 48 */	lfs f0, 0x748(r3)
/* 8047EC98  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8047EC9C  EC 21 00 2A */	fadds f1, f1, f0
/* 8047ECA0  C0 03 01 C0 */	lfs f0, 0x1c0(r3)
/* 8047ECA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047ECA8  40 80 00 08 */	bge lbl_8047ECB0
/* 8047ECAC  FC 20 00 90 */	fmr f1, f0
lbl_8047ECB0:
/* 8047ECB0  EC 63 00 72 */	fmuls f3, f3, f1
/* 8047ECB4  C0 04 08 BC */	lfs f0, 0x8bc(r4)
/* 8047ECB8  EC 00 18 2A */	fadds f0, f0, f3
/* 8047ECBC  D0 04 08 BC */	stfs f0, 0x8bc(r4)
/* 8047ECC0  C0 04 08 BC */	lfs f0, 0x8bc(r4)
/* 8047ECC4  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8047ECC8  40 80 00 08 */	bge lbl_8047ECD0
/* 8047ECCC  D0 84 08 BC */	stfs f4, 0x8bc(r4)
lbl_8047ECD0:
/* 8047ECD0  C0 24 08 C0 */	lfs f1, 0x8c0(r4)
/* 8047ECD4  EC 07 01 72 */	fmuls f0, f7, f5
/* 8047ECD8  EC 01 00 2A */	fadds f0, f1, f0
/* 8047ECDC  D0 04 08 C0 */	stfs f0, 0x8c0(r4)
/* 8047ECE0  C0 24 08 C4 */	lfs f1, 0x8c4(r4)
/* 8047ECE4  EC 07 01 B2 */	fmuls f0, f7, f6
/* 8047ECE8  EC 01 00 2A */	fadds f0, f1, f0
/* 8047ECEC  D0 04 08 C4 */	stfs f0, 0x8c4(r4)
/* 8047ECF0  4E 80 00 20 */	blr 
lbl_8047ECF4:
/* 8047ECF4  A8 05 00 0E */	lha r0, 0xe(r5)
/* 8047ECF8  2C 00 00 1D */	cmpwi r0, 0x1d
/* 8047ECFC  4C 82 00 20 */	bnelr 
/* 8047ED00  80 04 08 A8 */	lwz r0, 0x8a8(r4)
/* 8047ED04  60 00 00 40 */	ori r0, r0, 0x40
/* 8047ED08  90 04 08 A8 */	stw r0, 0x8a8(r4)
/* 8047ED0C  4E 80 00 20 */	blr 
