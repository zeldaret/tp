lbl_80B75D28:
/* 80B75D28  80 C3 09 6C */	lwz r6, 0x96c(r3)
/* 80B75D2C  28 06 00 00 */	cmplwi r6, 0
/* 80B75D30  41 82 00 FC */	beq lbl_80B75E2C
/* 80B75D34  80 03 09 70 */	lwz r0, 0x970(r3)
/* 80B75D38  28 00 00 00 */	cmplwi r0, 0
/* 80B75D3C  41 82 00 F0 */	beq lbl_80B75E2C
/* 80B75D40  88 03 0E 29 */	lbz r0, 0xe29(r3)
/* 80B75D44  28 00 00 00 */	cmplwi r0, 0
/* 80B75D48  41 82 00 AC */	beq lbl_80B75DF4
/* 80B75D4C  80 03 06 58 */	lwz r0, 0x658(r3)
/* 80B75D50  28 00 00 00 */	cmplwi r0, 0
/* 80B75D54  41 82 00 A0 */	beq lbl_80B75DF4
/* 80B75D58  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B75D5C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80B75D60  7C 00 1E 70 */	srawi r0, r0, 3
/* 80B75D64  54 00 18 38 */	slwi r0, r0, 3
/* 80B75D68  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B75D6C  38 A4 9A 20 */	addi r5, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B75D70  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B75D74  3C 80 80 B8 */	lis r4, lit_4551@ha /* 0x80B78084@ha */
/* 80B75D78  C0 44 80 84 */	lfs f2, lit_4551@l(r4)  /* 0x80B78084@l */
/* 80B75D7C  3C 80 80 B8 */	lis r4, lit_4192@ha /* 0x80B78078@ha */
/* 80B75D80  C0 24 80 78 */	lfs f1, lit_4192@l(r4)  /* 0x80B78078@l */
/* 80B75D84  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B75D88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B75D8C  D0 06 00 FC */	stfs f0, 0xfc(r6)
/* 80B75D90  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B75D94  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B75D98  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B75D9C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B75DA0  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B75DA4  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B75DA8  A8 03 0C D6 */	lha r0, 0xcd6(r3)
/* 80B75DAC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B75DB0  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B75DB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B75DB8  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B75DBC  D0 04 00 FC */	stfs f0, 0xfc(r4)
/* 80B75DC0  A8 03 0C D4 */	lha r0, 0xcd4(r3)
/* 80B75DC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B75DC8  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B75DCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B75DD0  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B75DD4  D0 04 01 00 */	stfs f0, 0x100(r4)
/* 80B75DD8  38 00 00 01 */	li r0, 1
/* 80B75DDC  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B75DE0  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B75DE4  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B75DE8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B75DEC  38 60 00 01 */	li r3, 1
/* 80B75DF0  4E 80 00 20 */	blr 
lbl_80B75DF4:
/* 80B75DF4  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B75DF8  28 00 00 00 */	cmplwi r0, 0
/* 80B75DFC  41 82 00 1C */	beq lbl_80B75E18
/* 80B75E00  98 06 01 05 */	stb r0, 0x105(r6)
/* 80B75E04  88 03 0E 2A */	lbz r0, 0xe2a(r3)
/* 80B75E08  80 83 09 70 */	lwz r4, 0x970(r3)
/* 80B75E0C  98 04 01 05 */	stb r0, 0x105(r4)
/* 80B75E10  38 00 00 00 */	li r0, 0
/* 80B75E14  98 03 0E 2A */	stb r0, 0xe2a(r3)
lbl_80B75E18:
/* 80B75E18  38 00 00 00 */	li r0, 0
/* 80B75E1C  80 83 09 6C */	lwz r4, 0x96c(r3)
/* 80B75E20  98 04 01 04 */	stb r0, 0x104(r4)
/* 80B75E24  80 63 09 70 */	lwz r3, 0x970(r3)
/* 80B75E28  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B75E2C:
/* 80B75E2C  38 60 00 00 */	li r3, 0
/* 80B75E30  4E 80 00 20 */	blr 
