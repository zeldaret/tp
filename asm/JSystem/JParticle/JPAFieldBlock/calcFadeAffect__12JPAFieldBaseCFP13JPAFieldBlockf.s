lbl_8027BF18:
/* 8027BF18  C0 42 B9 38 */	lfs f2, lit_2353(r2)
/* 8027BF1C  80 64 00 00 */	lwz r3, 0(r4)
/* 8027BF20  80 03 00 08 */	lwz r0, 8(r3)
/* 8027BF24  54 05 84 3E */	srwi r5, r0, 0x10
/* 8027BF28  54 00 87 39 */	rlwinm. r0, r0, 0x10, 0x1c, 0x1c
/* 8027BF2C  41 82 00 10 */	beq lbl_8027BF3C
/* 8027BF30  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8027BF34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027BF38  41 80 00 1C */	blt lbl_8027BF54
lbl_8027BF3C:
/* 8027BF3C  54 A0 06 F7 */	rlwinm. r0, r5, 0, 0x1b, 0x1b
/* 8027BF40  41 82 00 1C */	beq lbl_8027BF5C
/* 8027BF44  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8027BF48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027BF4C  4C 41 13 82 */	cror 2, 1, 2
/* 8027BF50  40 82 00 0C */	bne lbl_8027BF5C
lbl_8027BF54:
/* 8027BF54  C0 42 B9 3C */	lfs f2, lit_2354(r2)
/* 8027BF58  48 00 00 54 */	b lbl_8027BFAC
lbl_8027BF5C:
/* 8027BF5C  54 A0 06 73 */	rlwinm. r0, r5, 0, 0x19, 0x19
/* 8027BF60  41 82 00 28 */	beq lbl_8027BF88
/* 8027BF64  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8027BF68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027BF6C  4C 41 13 82 */	cror 2, 1, 2
/* 8027BF70  40 82 00 18 */	bne lbl_8027BF88
/* 8027BF74  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 8027BF78  EC 20 08 28 */	fsubs f1, f0, f1
/* 8027BF7C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8027BF80  EC 41 00 32 */	fmuls f2, f1, f0
/* 8027BF84  48 00 00 28 */	b lbl_8027BFAC
lbl_8027BF88:
/* 8027BF88  54 A0 06 B5 */	rlwinm. r0, r5, 0, 0x1a, 0x1a
/* 8027BF8C  41 82 00 20 */	beq lbl_8027BFAC
/* 8027BF90  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027BF94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027BF98  40 80 00 14 */	bge lbl_8027BFAC
/* 8027BF9C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8027BFA0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8027BFA4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8027BFA8  EC 41 00 32 */	fmuls f2, f1, f0
lbl_8027BFAC:
/* 8027BFAC  FC 20 10 90 */	fmr f1, f2
/* 8027BFB0  4E 80 00 20 */	blr 
