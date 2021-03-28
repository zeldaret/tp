lbl_805ADA2C:
/* 805ADA2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805ADA30  3C 60 80 5B */	lis r3, lit_3850@ha
/* 805ADA34  38 83 DF 50 */	addi r4, r3, lit_3850@l
/* 805ADA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805ADA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805ADA40  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 805ADA44  C0 65 04 D0 */	lfs f3, 0x4d0(r5)
/* 805ADA48  D0 61 00 08 */	stfs f3, 8(r1)
/* 805ADA4C  C0 45 04 D4 */	lfs f2, 0x4d4(r5)
/* 805ADA50  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805ADA54  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 805ADA58  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805ADA5C  C0 04 00 08 */	lfs f0, 8(r4)
/* 805ADA60  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 805ADA64  40 82 00 50 */	bne lbl_805ADAB4
/* 805ADA68  C0 04 01 48 */	lfs f0, 0x148(r4)
/* 805ADA6C  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 805ADA70  40 80 00 44 */	bge lbl_805ADAB4
/* 805ADA74  C0 04 01 4C */	lfs f0, 0x14c(r4)
/* 805ADA78  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 805ADA7C  40 80 00 38 */	bge lbl_805ADAB4
/* 805ADA80  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 805ADA84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805ADA88  40 80 00 2C */	bge lbl_805ADAB4
/* 805ADA8C  C0 04 01 50 */	lfs f0, 0x150(r4)
/* 805ADA90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ADA94  40 80 00 20 */	bge lbl_805ADAB4
/* 805ADA98  80 63 5F 18 */	lwz r3, 0x5f18(r3)
/* 805ADA9C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 805ADAA0  40 82 00 14 */	bne lbl_805ADAB4
/* 805ADAA4  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 805ADAA8  40 82 00 0C */	bne lbl_805ADAB4
/* 805ADAAC  38 60 00 01 */	li r3, 1
/* 805ADAB0  48 00 00 08 */	b lbl_805ADAB8
lbl_805ADAB4:
/* 805ADAB4  38 60 00 00 */	li r3, 0
lbl_805ADAB8:
/* 805ADAB8  38 21 00 20 */	addi r1, r1, 0x20
/* 805ADABC  4E 80 00 20 */	blr 
