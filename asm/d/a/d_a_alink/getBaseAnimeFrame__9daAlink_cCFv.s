lbl_800AC328:
/* 800AC328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AC32C  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800AC330  28 00 00 D1 */	cmplwi r0, 0xd1
/* 800AC334  40 82 00 38 */	bne lbl_800AC36C
/* 800AC338  C0 23 33 9C */	lfs f1, 0x339c(r3)
/* 800AC33C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800AC340  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800AC344  40 81 00 28 */	ble lbl_800AC36C
/* 800AC348  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800AC34C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800AC350  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800AC354  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AC358  3C 00 43 30 */	lis r0, 0x4330
/* 800AC35C  90 01 00 08 */	stw r0, 8(r1)
/* 800AC360  C8 01 00 08 */	lfd f0, 8(r1)
/* 800AC364  EC 20 08 28 */	fsubs f1, f0, f1
/* 800AC368  48 00 00 08 */	b lbl_800AC370
lbl_800AC36C:
/* 800AC36C  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
lbl_800AC370:
/* 800AC370  38 21 00 10 */	addi r1, r1, 0x10
/* 800AC374  4E 80 00 20 */	blr 
