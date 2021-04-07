lbl_80483A5C:
/* 80483A5C  3C 80 80 48 */	lis r4, M_bmd__Q211daObjSwpush5Act_c@ha /* 0x80484D10@ha */
/* 80483A60  38 A4 4D 10 */	addi r5, r4, M_bmd__Q211daObjSwpush5Act_c@l /* 0x80484D10@l */
/* 80483A64  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483A68  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483A6C  38 85 00 1C */	addi r4, r5, 0x1c
/* 80483A70  7C 84 02 14 */	add r4, r4, r0
/* 80483A74  C0 64 00 0C */	lfs f3, 0xc(r4)
/* 80483A78  C0 43 05 D4 */	lfs f2, 0x5d4(r3)
/* 80483A7C  C0 23 05 D0 */	lfs f1, 0x5d0(r3)
/* 80483A80  C0 03 05 CC */	lfs f0, 0x5cc(r3)
/* 80483A84  EC 21 00 28 */	fsubs f1, f1, f0
/* 80483A88  C0 04 00 08 */	lfs f0, 8(r4)
/* 80483A8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80483A90  EC 02 00 28 */	fsubs f0, f2, f0
/* 80483A94  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80483A98  C0 23 05 D4 */	lfs f1, 0x5d4(r3)
/* 80483A9C  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80483AA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80483AA4  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80483AA8  C0 23 05 D0 */	lfs f1, 0x5d0(r3)
/* 80483AAC  C0 03 05 D4 */	lfs f0, 0x5d4(r3)
/* 80483AB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80483AB4  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
/* 80483AB8  C0 45 01 20 */	lfs f2, 0x120(r5)
/* 80483ABC  C0 25 01 1C */	lfs f1, 0x11c(r5)
/* 80483AC0  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 80483AC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80483AC8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80483ACC  D0 03 05 D8 */	stfs f0, 0x5d8(r3)
/* 80483AD0  C0 03 05 D8 */	lfs f0, 0x5d8(r3)
/* 80483AD4  C0 45 01 30 */	lfs f2, 0x130(r5)
/* 80483AD8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80483ADC  40 80 00 08 */	bge lbl_80483AE4
/* 80483AE0  48 00 00 18 */	b lbl_80483AF8
lbl_80483AE4:
/* 80483AE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80483AE8  40 81 00 0C */	ble lbl_80483AF4
/* 80483AEC  FC 40 08 90 */	fmr f2, f1
/* 80483AF0  48 00 00 08 */	b lbl_80483AF8
lbl_80483AF4:
/* 80483AF4  FC 40 00 90 */	fmr f2, f0
lbl_80483AF8:
/* 80483AF8  D0 43 05 D8 */	stfs f2, 0x5d8(r3)
/* 80483AFC  A8 83 05 E0 */	lha r4, 0x5e0(r3)
/* 80483B00  2C 04 00 00 */	cmpwi r4, 0
/* 80483B04  40 81 00 1C */	ble lbl_80483B20
/* 80483B08  38 04 FF FF */	addi r0, r4, -1
/* 80483B0C  B0 03 05 E0 */	sth r0, 0x5e0(r3)
/* 80483B10  7C 00 07 35 */	extsh. r0, r0
/* 80483B14  40 82 00 0C */	bne lbl_80483B20
/* 80483B18  C0 03 05 E4 */	lfs f0, 0x5e4(r3)
/* 80483B1C  D0 03 05 DC */	stfs f0, 0x5dc(r3)
lbl_80483B20:
/* 80483B20  80 03 05 B0 */	lwz r0, 0x5b0(r3)
/* 80483B24  2C 00 00 00 */	cmpwi r0, 0
/* 80483B28  40 82 00 10 */	bne lbl_80483B38
/* 80483B2C  C0 03 05 D0 */	lfs f0, 0x5d0(r3)
/* 80483B30  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
/* 80483B34  48 00 00 0C */	b lbl_80483B40
lbl_80483B38:
/* 80483B38  C0 03 05 DC */	lfs f0, 0x5dc(r3)
/* 80483B3C  D0 03 05 E8 */	stfs f0, 0x5e8(r3)
lbl_80483B40:
/* 80483B40  C0 45 01 20 */	lfs f2, 0x120(r5)
/* 80483B44  C0 25 01 1C */	lfs f1, 0x11c(r5)
/* 80483B48  C0 03 05 E8 */	lfs f0, 0x5e8(r3)
/* 80483B4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80483B50  EC 02 00 32 */	fmuls f0, f2, f0
/* 80483B54  D0 03 05 EC */	stfs f0, 0x5ec(r3)
/* 80483B58  C0 03 05 EC */	lfs f0, 0x5ec(r3)
/* 80483B5C  C0 23 05 D8 */	lfs f1, 0x5d8(r3)
/* 80483B60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80483B64  4C 80 00 20 */	bgelr 
/* 80483B68  D0 23 05 EC */	stfs f1, 0x5ec(r3)
/* 80483B6C  4E 80 00 20 */	blr 
