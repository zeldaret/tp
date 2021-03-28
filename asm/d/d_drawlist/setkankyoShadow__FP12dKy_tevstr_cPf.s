lbl_80054ACC:
/* 80054ACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80054AD0  3C A0 80 43 */	lis r5, g_env_light@ha
/* 80054AD4  38 A5 CA 54 */	addi r5, r5, g_env_light@l
/* 80054AD8  28 03 00 00 */	cmplwi r3, 0
/* 80054ADC  41 82 00 18 */	beq lbl_80054AF4
/* 80054AE0  C0 24 00 00 */	lfs f1, 0(r4)
/* 80054AE4  C0 03 03 44 */	lfs f0, 0x344(r3)
/* 80054AE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054AEC  D0 04 00 00 */	stfs f0, 0(r4)
/* 80054AF0  48 00 00 14 */	b lbl_80054B04
lbl_80054AF4:
/* 80054AF4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80054AF8  C0 05 12 38 */	lfs f0, 0x1238(r5)
/* 80054AFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054B00  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80054B04:
/* 80054B04  88 05 12 D7 */	lbz r0, 0x12d7(r5)
/* 80054B08  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80054B0C  41 82 00 1C */	beq lbl_80054B28
/* 80054B10  28 03 00 00 */	cmplwi r3, 0
/* 80054B14  41 82 00 14 */	beq lbl_80054B28
/* 80054B18  C0 24 00 00 */	lfs f1, 0(r4)
/* 80054B1C  C0 03 03 44 */	lfs f0, 0x344(r3)
/* 80054B20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054B24  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80054B28:
/* 80054B28  88 05 0E D5 */	lbz r0, 0xed5(r5)
/* 80054B2C  28 00 00 00 */	cmplwi r0, 0
/* 80054B30  41 82 00 1C */	beq lbl_80054B4C
/* 80054B34  28 00 00 0A */	cmplwi r0, 0xa
/* 80054B38  40 80 00 14 */	bge lbl_80054B4C
/* 80054B3C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80054B40  C0 05 0E DC */	lfs f0, 0xedc(r5)
/* 80054B44  EC 01 00 2A */	fadds f0, f1, f0
/* 80054B48  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80054B4C:
/* 80054B4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80054B50  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80054B54  88 03 07 A4 */	lbz r0, 0x7a4(r3)
/* 80054B58  28 00 00 02 */	cmplwi r0, 2
/* 80054B5C  40 82 00 58 */	bne lbl_80054BB4
/* 80054B60  88 03 07 A5 */	lbz r0, 0x7a5(r3)
/* 80054B64  C8 22 86 18 */	lfd f1, lit_4076(r2)
/* 80054B68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80054B6C  3C 00 43 30 */	lis r0, 0x4330
/* 80054B70  90 01 00 08 */	stw r0, 8(r1)
/* 80054B74  C8 01 00 08 */	lfd f0, 8(r1)
/* 80054B78  EC 20 08 28 */	fsubs f1, f0, f1
/* 80054B7C  C0 02 86 68 */	lfs f0, lit_5155(r2)
/* 80054B80  EC 21 00 24 */	fdivs f1, f1, f0
/* 80054B84  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80054B88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054B8C  40 81 00 08 */	ble lbl_80054B94
/* 80054B90  FC 20 00 90 */	fmr f1, f0
lbl_80054B94:
/* 80054B94  C0 44 00 00 */	lfs f2, 0(r4)
/* 80054B98  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80054B9C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80054BA0  C0 02 86 6C */	lfs f0, lit_5156(r2)
/* 80054BA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80054BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80054BAC  EC 02 00 2A */	fadds f0, f2, f0
/* 80054BB0  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80054BB4:
/* 80054BB4  C0 24 00 00 */	lfs f1, 0(r4)
/* 80054BB8  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80054BBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80054BC0  40 81 00 08 */	ble lbl_80054BC8
/* 80054BC4  D0 04 00 00 */	stfs f0, 0(r4)
lbl_80054BC8:
/* 80054BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80054BCC  4E 80 00 20 */	blr 
