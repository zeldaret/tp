lbl_8026C22C:
/* 8026C22C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026C230  C0 23 00 00 */	lfs f1, 0(r3)
/* 8026C234  C0 04 00 00 */	lfs f0, 0(r4)
/* 8026C238  EC 41 00 28 */	fsubs f2, f1, f0
/* 8026C23C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8026C240  C0 04 00 08 */	lfs f0, 8(r4)
/* 8026C244  EC 01 00 28 */	fsubs f0, f1, f0
/* 8026C248  EC 22 00 B2 */	fmuls f1, f2, f2
/* 8026C24C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8026C250  EC 81 00 2A */	fadds f4, f1, f0
/* 8026C254  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8026C258  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026C25C  EC A1 00 2A */	fadds f5, f1, f0
/* 8026C260  EC 05 01 72 */	fmuls f0, f5, f5
/* 8026C264  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C268  40 81 00 14 */	ble lbl_8026C27C
/* 8026C26C  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026C270  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026C274  38 60 00 00 */	li r3, 0
/* 8026C278  48 00 01 34 */	b lbl_8026C3AC
lbl_8026C27C:
/* 8026C27C  C0 43 00 04 */	lfs f2, 4(r3)
/* 8026C280  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8026C284  EC 02 00 2A */	fadds f0, f2, f0
/* 8026C288  C0 24 00 04 */	lfs f1, 4(r4)
/* 8026C28C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8026C290  41 80 00 14 */	blt lbl_8026C2A4
/* 8026C294  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8026C298  EC 01 00 2A */	fadds f0, f1, f0
/* 8026C29C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026C2A0  40 81 00 14 */	ble lbl_8026C2B4
lbl_8026C2A4:
/* 8026C2A4  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026C2A8  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026C2AC  38 60 00 00 */	li r3, 0
/* 8026C2B0  48 00 00 FC */	b lbl_8026C3AC
lbl_8026C2B4:
/* 8026C2B4  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026C2B8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C2BC  40 81 00 58 */	ble lbl_8026C314
/* 8026C2C0  FC 00 20 34 */	frsqrte f0, f4
/* 8026C2C4  C8 62 B7 20 */	lfd f3, lit_2257(r2)
/* 8026C2C8  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C2CC  C8 42 B7 28 */	lfd f2, lit_2258(r2)
/* 8026C2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C2D4  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C2D8  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C2E0  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C2E8  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C2EC  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C2F4  FC 23 00 32 */	fmul f1, f3, f0
/* 8026C2F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8026C2FC  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C300  FC 02 00 28 */	fsub f0, f2, f0
/* 8026C304  FC 01 00 32 */	fmul f0, f1, f0
/* 8026C308  FC 04 00 32 */	fmul f0, f4, f0
/* 8026C30C  FC 00 00 18 */	frsp f0, f0
/* 8026C310  48 00 00 90 */	b lbl_8026C3A0
lbl_8026C314:
/* 8026C314  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026C318  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8026C31C  40 80 00 10 */	bge lbl_8026C32C
/* 8026C320  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026C324  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)
/* 8026C328  48 00 00 78 */	b lbl_8026C3A0
lbl_8026C32C:
/* 8026C32C  D0 81 00 08 */	stfs f4, 8(r1)
/* 8026C330  80 81 00 08 */	lwz r4, 8(r1)
/* 8026C334  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026C338  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026C33C  7C 03 00 00 */	cmpw r3, r0
/* 8026C340  41 82 00 14 */	beq lbl_8026C354
/* 8026C344  40 80 00 40 */	bge lbl_8026C384
/* 8026C348  2C 03 00 00 */	cmpwi r3, 0
/* 8026C34C  41 82 00 20 */	beq lbl_8026C36C
/* 8026C350  48 00 00 34 */	b lbl_8026C384
lbl_8026C354:
/* 8026C354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026C358  41 82 00 0C */	beq lbl_8026C364
/* 8026C35C  38 00 00 01 */	li r0, 1
/* 8026C360  48 00 00 28 */	b lbl_8026C388
lbl_8026C364:
/* 8026C364  38 00 00 02 */	li r0, 2
/* 8026C368  48 00 00 20 */	b lbl_8026C388
lbl_8026C36C:
/* 8026C36C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026C370  41 82 00 0C */	beq lbl_8026C37C
/* 8026C374  38 00 00 05 */	li r0, 5
/* 8026C378  48 00 00 10 */	b lbl_8026C388
lbl_8026C37C:
/* 8026C37C  38 00 00 03 */	li r0, 3
/* 8026C380  48 00 00 08 */	b lbl_8026C388
lbl_8026C384:
/* 8026C384  38 00 00 04 */	li r0, 4
lbl_8026C388:
/* 8026C388  2C 00 00 01 */	cmpwi r0, 1
/* 8026C38C  40 82 00 10 */	bne lbl_8026C39C
/* 8026C390  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8026C394  C0 03 0A E0 */	lfs f0, __float_nan@l(r3)
/* 8026C398  48 00 00 08 */	b lbl_8026C3A0
lbl_8026C39C:
/* 8026C39C  FC 00 20 90 */	fmr f0, f4
lbl_8026C3A0:
/* 8026C3A0  EC 05 00 28 */	fsubs f0, f5, f0
/* 8026C3A4  D0 05 00 00 */	stfs f0, 0(r5)
/* 8026C3A8  38 60 00 01 */	li r3, 1
lbl_8026C3AC:
/* 8026C3AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8026C3B0  4E 80 00 20 */	blr 
