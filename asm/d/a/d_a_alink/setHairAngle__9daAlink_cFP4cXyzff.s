lbl_800A002C:
/* 800A002C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 800A0030  7C 08 02 A6 */	mflr r0
/* 800A0034  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800A0038  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 800A003C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 800A0040  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 800A0044  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 800A0048  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 800A004C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 800A0050  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 800A0054  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 800A0058  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 800A005C  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 800A0060  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 800A0064  93 C1 00 48 */	stw r30, 0x48(r1)
/* 800A0068  7C 7E 1B 78 */	mr r30, r3
/* 800A006C  7C 9F 23 78 */	mr r31, r4
/* 800A0070  FF 80 08 90 */	fmr f28, f1
/* 800A0074  FF A0 10 90 */	fmr f29, f2
/* 800A0078  7F E3 FB 78 */	mr r3, r31
/* 800A007C  48 2A 70 BD */	bl PSVECSquareMag
/* 800A0080  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A0084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0088  40 81 00 58 */	ble lbl_800A00E0
/* 800A008C  FC 00 08 34 */	frsqrte f0, f1
/* 800A0090  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A0094  FC 44 00 32 */	fmul f2, f4, f0
/* 800A0098  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A009C  FC 00 00 32 */	fmul f0, f0, f0
/* 800A00A0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A00A4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A00A8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A00AC  FC 44 00 32 */	fmul f2, f4, f0
/* 800A00B0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A00B4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A00B8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A00BC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A00C0  FC 44 00 32 */	fmul f2, f4, f0
/* 800A00C4  FC 00 00 32 */	fmul f0, f0, f0
/* 800A00C8  FC 01 00 32 */	fmul f0, f1, f0
/* 800A00CC  FC 03 00 28 */	fsub f0, f3, f0
/* 800A00D0  FC 02 00 32 */	fmul f0, f2, f0
/* 800A00D4  FF E1 00 32 */	fmul f31, f1, f0
/* 800A00D8  FF E0 F8 18 */	frsp f31, f31
/* 800A00DC  48 00 00 90 */	b lbl_800A016C
lbl_800A00E0:
/* 800A00E0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A00E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A00E8  40 80 00 10 */	bge lbl_800A00F8
/* 800A00EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A00F0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A00F4  48 00 00 78 */	b lbl_800A016C
lbl_800A00F8:
/* 800A00F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800A00FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800A0100  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A0104  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A0108  7C 03 00 00 */	cmpw r3, r0
/* 800A010C  41 82 00 14 */	beq lbl_800A0120
/* 800A0110  40 80 00 40 */	bge lbl_800A0150
/* 800A0114  2C 03 00 00 */	cmpwi r3, 0
/* 800A0118  41 82 00 20 */	beq lbl_800A0138
/* 800A011C  48 00 00 34 */	b lbl_800A0150
lbl_800A0120:
/* 800A0120  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A0124  41 82 00 0C */	beq lbl_800A0130
/* 800A0128  38 00 00 01 */	li r0, 1
/* 800A012C  48 00 00 28 */	b lbl_800A0154
lbl_800A0130:
/* 800A0130  38 00 00 02 */	li r0, 2
/* 800A0134  48 00 00 20 */	b lbl_800A0154
lbl_800A0138:
/* 800A0138  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A013C  41 82 00 0C */	beq lbl_800A0148
/* 800A0140  38 00 00 05 */	li r0, 5
/* 800A0144  48 00 00 10 */	b lbl_800A0154
lbl_800A0148:
/* 800A0148  38 00 00 03 */	li r0, 3
/* 800A014C  48 00 00 08 */	b lbl_800A0154
lbl_800A0150:
/* 800A0150  38 00 00 04 */	li r0, 4
lbl_800A0154:
/* 800A0154  2C 00 00 01 */	cmpwi r0, 1
/* 800A0158  40 82 00 10 */	bne lbl_800A0168
/* 800A015C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A0160  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A0164  48 00 00 08 */	b lbl_800A016C
lbl_800A0168:
/* 800A0168  FF E0 08 90 */	fmr f31, f1
lbl_800A016C:
/* 800A016C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 800A0170  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A0174  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800A0178  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A017C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A0180  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800A0184  38 61 00 10 */	addi r3, r1, 0x10
/* 800A0188  48 2A 6F B1 */	bl PSVECSquareMag
/* 800A018C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A0190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0194  40 81 00 58 */	ble lbl_800A01EC
/* 800A0198  FC 00 08 34 */	frsqrte f0, f1
/* 800A019C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A01A0  FC 44 00 32 */	fmul f2, f4, f0
/* 800A01A4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A01A8  FC 00 00 32 */	fmul f0, f0, f0
/* 800A01AC  FC 01 00 32 */	fmul f0, f1, f0
/* 800A01B0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A01B4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A01B8  FC 44 00 32 */	fmul f2, f4, f0
/* 800A01BC  FC 00 00 32 */	fmul f0, f0, f0
/* 800A01C0  FC 01 00 32 */	fmul f0, f1, f0
/* 800A01C4  FC 03 00 28 */	fsub f0, f3, f0
/* 800A01C8  FC 02 00 32 */	fmul f0, f2, f0
/* 800A01CC  FC 44 00 32 */	fmul f2, f4, f0
/* 800A01D0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A01D4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A01D8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A01DC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A01E0  FF C1 00 32 */	fmul f30, f1, f0
/* 800A01E4  FF C0 F0 18 */	frsp f30, f30
/* 800A01E8  48 00 00 90 */	b lbl_800A0278
lbl_800A01EC:
/* 800A01EC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A01F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A01F4  40 80 00 10 */	bge lbl_800A0204
/* 800A01F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A01FC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A0200  48 00 00 78 */	b lbl_800A0278
lbl_800A0204:
/* 800A0204  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A0208  80 81 00 08 */	lwz r4, 8(r1)
/* 800A020C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A0210  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A0214  7C 03 00 00 */	cmpw r3, r0
/* 800A0218  41 82 00 14 */	beq lbl_800A022C
/* 800A021C  40 80 00 40 */	bge lbl_800A025C
/* 800A0220  2C 03 00 00 */	cmpwi r3, 0
/* 800A0224  41 82 00 20 */	beq lbl_800A0244
/* 800A0228  48 00 00 34 */	b lbl_800A025C
lbl_800A022C:
/* 800A022C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A0230  41 82 00 0C */	beq lbl_800A023C
/* 800A0234  38 00 00 01 */	li r0, 1
/* 800A0238  48 00 00 28 */	b lbl_800A0260
lbl_800A023C:
/* 800A023C  38 00 00 02 */	li r0, 2
/* 800A0240  48 00 00 20 */	b lbl_800A0260
lbl_800A0244:
/* 800A0244  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A0248  41 82 00 0C */	beq lbl_800A0254
/* 800A024C  38 00 00 05 */	li r0, 5
/* 800A0250  48 00 00 10 */	b lbl_800A0260
lbl_800A0254:
/* 800A0254  38 00 00 03 */	li r0, 3
/* 800A0258  48 00 00 08 */	b lbl_800A0260
lbl_800A025C:
/* 800A025C  38 00 00 04 */	li r0, 4
lbl_800A0260:
/* 800A0260  2C 00 00 01 */	cmpwi r0, 1
/* 800A0264  40 82 00 10 */	bne lbl_800A0274
/* 800A0268  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800A026C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800A0270  48 00 00 08 */	b lbl_800A0278
lbl_800A0274:
/* 800A0274  FF C0 08 90 */	fmr f30, f1
lbl_800A0278:
/* 800A0278  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800A027C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 800A0280  41 80 00 0C */	blt lbl_800A028C
/* 800A0284  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 800A0288  40 80 00 94 */	bge lbl_800A031C
lbl_800A028C:
/* 800A028C  7F C3 F3 78 */	mr r3, r30
/* 800A0290  38 9E 30 2E */	addi r4, r30, 0x302e
/* 800A0294  4B FF FD 65 */	bl calcHairAngle__9daAlink_cFPs
/* 800A0298  7F C3 F3 78 */	mr r3, r30
/* 800A029C  38 9E 30 42 */	addi r4, r30, 0x3042
/* 800A02A0  4B FF FD 59 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02A4  7F C3 F3 78 */	mr r3, r30
/* 800A02A8  38 9E 30 30 */	addi r4, r30, 0x3030
/* 800A02AC  4B FF FD 4D */	bl calcHairAngle__9daAlink_cFPs
/* 800A02B0  7F C3 F3 78 */	mr r3, r30
/* 800A02B4  38 9E 30 44 */	addi r4, r30, 0x3044
/* 800A02B8  4B FF FD 41 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02BC  7F C3 F3 78 */	mr r3, r30
/* 800A02C0  38 9E 30 32 */	addi r4, r30, 0x3032
/* 800A02C4  4B FF FD 35 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02C8  7F C3 F3 78 */	mr r3, r30
/* 800A02CC  38 9E 30 46 */	addi r4, r30, 0x3046
/* 800A02D0  4B FF FD 29 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02D4  7F C3 F3 78 */	mr r3, r30
/* 800A02D8  38 9E 30 34 */	addi r4, r30, 0x3034
/* 800A02DC  4B FF FD 1D */	bl calcHairAngle__9daAlink_cFPs
/* 800A02E0  7F C3 F3 78 */	mr r3, r30
/* 800A02E4  38 9E 30 48 */	addi r4, r30, 0x3048
/* 800A02E8  4B FF FD 11 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02EC  7F C3 F3 78 */	mr r3, r30
/* 800A02F0  38 9E 30 36 */	addi r4, r30, 0x3036
/* 800A02F4  4B FF FD 05 */	bl calcHairAngle__9daAlink_cFPs
/* 800A02F8  7F C3 F3 78 */	mr r3, r30
/* 800A02FC  38 9E 30 4A */	addi r4, r30, 0x304a
/* 800A0300  4B FF FC F9 */	bl calcHairAngle__9daAlink_cFPs
/* 800A0304  38 00 80 00 */	li r0, -32768
/* 800A0308  B0 1E 30 70 */	sth r0, 0x3070(r30)
/* 800A030C  B0 1E 30 72 */	sth r0, 0x3072(r30)
/* 800A0310  B0 1E 30 74 */	sth r0, 0x3074(r30)
/* 800A0314  B0 1E 30 76 */	sth r0, 0x3076(r30)
/* 800A0318  48 00 03 EC */	b lbl_800A0704
lbl_800A031C:
/* 800A031C  C0 02 97 F8 */	lfs f0, lit_55145(r2)
/* 800A0320  EC 5F 00 32 */	fmuls f2, f31, f0
/* 800A0324  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 800A0328  40 81 00 08 */	ble lbl_800A0330
/* 800A032C  FC 40 08 90 */	fmr f2, f1
lbl_800A0330:
/* 800A0330  C0 22 93 EC */	lfs f1, lit_13119(r2)
/* 800A0334  C0 02 95 DC */	lfs f0, lit_27477(r2)
/* 800A0338  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800A033C  EF E1 00 2A */	fadds f31, f1, f0
/* 800A0340  C0 22 93 B8 */	lfs f1, lit_10041(r2)
/* 800A0344  48 1C 76 11 */	bl cM_rndF__Ff
/* 800A0348  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800A034C  EC 00 08 2A */	fadds f0, f0, f1
/* 800A0350  EF 7F 00 32 */	fmuls f27, f31, f0
/* 800A0354  C0 22 93 18 */	lfs f1, lit_7308(r2)
/* 800A0358  48 1C 75 FD */	bl cM_rndF__Ff
/* 800A035C  C0 42 93 B8 */	lfs f2, lit_10041(r2)
/* 800A0360  EC 02 08 2A */	fadds f0, f2, f1
/* 800A0364  EC 00 D8 2A */	fadds f0, f0, f27
/* 800A0368  FC 00 00 1E */	fctiwz f0, f0
/* 800A036C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800A0370  80 61 00 24 */	lwz r3, 0x24(r1)
/* 800A0374  A8 1E 30 70 */	lha r0, 0x3070(r30)
/* 800A0378  7C 00 1A 14 */	add r0, r0, r3
/* 800A037C  B0 1E 30 70 */	sth r0, 0x3070(r30)
/* 800A0380  FC 20 10 90 */	fmr f1, f2
/* 800A0384  48 1C 75 D1 */	bl cM_rndF__Ff
/* 800A0388  C0 02 95 08 */	lfs f0, lit_20495(r2)
/* 800A038C  EC 00 08 2A */	fadds f0, f0, f1
/* 800A0390  EF 7F 00 32 */	fmuls f27, f31, f0
/* 800A0394  C0 22 93 18 */	lfs f1, lit_7308(r2)
/* 800A0398  48 1C 75 BD */	bl cM_rndF__Ff
/* 800A039C  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800A03A0  EC 00 08 2A */	fadds f0, f0, f1
/* 800A03A4  EC 00 D8 2A */	fadds f0, f0, f27
/* 800A03A8  FC 00 00 1E */	fctiwz f0, f0
/* 800A03AC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 800A03B0  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 800A03B4  A8 1E 30 72 */	lha r0, 0x3072(r30)
/* 800A03B8  7C 00 1A 14 */	add r0, r0, r3
/* 800A03BC  B0 1E 30 72 */	sth r0, 0x3072(r30)
/* 800A03C0  C0 22 95 0C */	lfs f1, lit_20496(r2)
/* 800A03C4  48 1C 75 91 */	bl cM_rndF__Ff
/* 800A03C8  C0 02 94 60 */	lfs f0, lit_14787(r2)
/* 800A03CC  EC 00 08 2A */	fadds f0, f0, f1
/* 800A03D0  EF 7F 00 32 */	fmuls f27, f31, f0
/* 800A03D4  C0 22 93 18 */	lfs f1, lit_7308(r2)
/* 800A03D8  48 1C 75 7D */	bl cM_rndF__Ff
/* 800A03DC  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800A03E0  EC 00 08 2A */	fadds f0, f0, f1
/* 800A03E4  EC 00 D8 2A */	fadds f0, f0, f27
/* 800A03E8  FC 00 00 1E */	fctiwz f0, f0
/* 800A03EC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800A03F0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 800A03F4  A8 1E 30 74 */	lha r0, 0x3074(r30)
/* 800A03F8  7C 00 1A 14 */	add r0, r0, r3
/* 800A03FC  B0 1E 30 74 */	sth r0, 0x3074(r30)
/* 800A0400  C0 22 95 0C */	lfs f1, lit_20496(r2)
/* 800A0404  48 1C 75 51 */	bl cM_rndF__Ff
/* 800A0408  C0 02 94 60 */	lfs f0, lit_14787(r2)
/* 800A040C  EC 00 08 2A */	fadds f0, f0, f1
/* 800A0410  EF 7F 00 32 */	fmuls f27, f31, f0
/* 800A0414  C0 22 93 18 */	lfs f1, lit_7308(r2)
/* 800A0418  48 1C 75 3D */	bl cM_rndF__Ff
/* 800A041C  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800A0420  EC 00 08 2A */	fadds f0, f0, f1
/* 800A0424  EC 00 D8 2A */	fadds f0, f0, f27
/* 800A0428  FC 00 00 1E */	fctiwz f0, f0
/* 800A042C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800A0430  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 800A0434  A8 1E 30 76 */	lha r0, 0x3076(r30)
/* 800A0438  7C 00 1A 14 */	add r0, r0, r3
/* 800A043C  B0 1E 30 76 */	sth r0, 0x3076(r30)
/* 800A0440  C0 A2 92 B8 */	lfs f5, lit_6040(r2)
/* 800A0444  EC 25 F0 24 */	fdivs f1, f5, f30
/* 800A0448  C0 1F 00 00 */	lfs f0, 0(r31)
/* 800A044C  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A0450  D0 1F 00 00 */	stfs f0, 0(r31)
/* 800A0454  C0 1F 00 08 */	lfs f0, 8(r31)
/* 800A0458  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A045C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 800A0460  C0 5F 00 00 */	lfs f2, 0(r31)
/* 800A0464  EC 22 07 72 */	fmuls f1, f2, f29
/* 800A0468  C0 7F 00 08 */	lfs f3, 8(r31)
/* 800A046C  EC 03 07 32 */	fmuls f0, f3, f28
/* 800A0470  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A0474  EC 42 07 32 */	fmuls f2, f2, f28
/* 800A0478  EC 23 07 72 */	fmuls f1, f3, f29
/* 800A047C  EC 22 08 2A */	fadds f1, f2, f1
/* 800A0480  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800A0484  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800A0488  38 63 00 04 */	addi r3, r3, 4
/* 800A048C  A8 1E 30 70 */	lha r0, 0x3070(r30)
/* 800A0490  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A0494  7C 00 1E 70 */	srawi r0, r0, 3
/* 800A0498  54 00 18 38 */	slwi r0, r0, 3
/* 800A049C  7C 43 04 2E */	lfsx f2, r3, r0
/* 800A04A0  C0 C2 92 98 */	lfs f6, lit_5943(r2)
/* 800A04A4  EC 45 10 2A */	fadds f2, f5, f2
/* 800A04A8  EC 46 00 B2 */	fmuls f2, f6, f2
/* 800A04AC  EC 5F 00 B2 */	fmuls f2, f31, f2
/* 800A04B0  A8 1E 30 72 */	lha r0, 0x3072(r30)
/* 800A04B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A04B8  7C 63 04 2E */	lfsx f3, r3, r0
/* 800A04BC  EC 65 18 2A */	fadds f3, f5, f3
/* 800A04C0  EC 66 00 F2 */	fmuls f3, f6, f3
/* 800A04C4  EC 7F 00 F2 */	fmuls f3, f31, f3
/* 800A04C8  A8 1E 30 74 */	lha r0, 0x3074(r30)
/* 800A04CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A04D0  7C 83 04 2E */	lfsx f4, r3, r0
/* 800A04D4  EC 85 20 2A */	fadds f4, f5, f4
/* 800A04D8  EC 86 01 32 */	fmuls f4, f6, f4
/* 800A04DC  EC 9F 01 32 */	fmuls f4, f31, f4
/* 800A04E0  A8 1E 30 76 */	lha r0, 0x3076(r30)
/* 800A04E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A04E8  7C E3 04 2E */	lfsx f7, r3, r0
/* 800A04EC  EC A5 38 2A */	fadds f5, f5, f7
/* 800A04F0  EC A6 01 72 */	fmuls f5, f6, f5
/* 800A04F4  EC BF 01 72 */	fmuls f5, f31, f5
/* 800A04F8  C0 C2 92 C0 */	lfs f6, lit_6108(r2)
/* 800A04FC  FC 00 30 40 */	fcmpo cr0, f0, f6
/* 800A0500  40 81 00 94 */	ble lbl_800A0594
/* 800A0504  C0 C2 97 FC */	lfs f6, lit_55146(r2)
/* 800A0508  EC C6 00 B2 */	fmuls f6, f6, f2
/* 800A050C  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A0510  FC C0 30 1E */	fctiwz f6, f6
/* 800A0514  D8 C1 00 38 */	stfd f6, 0x38(r1)
/* 800A0518  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A051C  B0 1E 30 42 */	sth r0, 0x3042(r30)
/* 800A0520  C0 C2 98 00 */	lfs f6, lit_55147(r2)
/* 800A0524  EC C6 00 B2 */	fmuls f6, f6, f2
/* 800A0528  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A052C  FC C0 30 1E */	fctiwz f6, f6
/* 800A0530  D8 C1 00 30 */	stfd f6, 0x30(r1)
/* 800A0534  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A0538  B0 1E 30 44 */	sth r0, 0x3044(r30)
/* 800A053C  C0 C2 94 4C */	lfs f6, lit_14782(r2)
/* 800A0540  EC C6 00 F2 */	fmuls f6, f6, f3
/* 800A0544  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A0548  FC C0 30 1E */	fctiwz f6, f6
/* 800A054C  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 800A0550  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A0554  B0 1E 30 46 */	sth r0, 0x3046(r30)
/* 800A0558  C0 C2 98 04 */	lfs f6, lit_55148(r2)
/* 800A055C  EC C6 01 32 */	fmuls f6, f6, f4
/* 800A0560  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A0564  FC C0 30 1E */	fctiwz f6, f6
/* 800A0568  D8 C1 00 20 */	stfd f6, 0x20(r1)
/* 800A056C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A0570  B0 1E 30 48 */	sth r0, 0x3048(r30)
/* 800A0574  C0 C2 94 54 */	lfs f6, lit_14784(r2)
/* 800A0578  EC C6 01 72 */	fmuls f6, f6, f5
/* 800A057C  EC 06 00 32 */	fmuls f0, f6, f0
/* 800A0580  FC 00 00 1E */	fctiwz f0, f0
/* 800A0584  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800A0588  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A058C  B0 1E 30 4A */	sth r0, 0x304a(r30)
/* 800A0590  48 00 00 90 */	b lbl_800A0620
lbl_800A0594:
/* 800A0594  C0 C2 93 5C */	lfs f6, lit_8322(r2)
/* 800A0598  EC C6 00 B2 */	fmuls f6, f6, f2
/* 800A059C  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A05A0  FC C0 30 1E */	fctiwz f6, f6
/* 800A05A4  D8 C1 00 40 */	stfd f6, 0x40(r1)
/* 800A05A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A05AC  B0 1E 30 42 */	sth r0, 0x3042(r30)
/* 800A05B0  C0 C2 94 4C */	lfs f6, lit_14782(r2)
/* 800A05B4  EC C6 00 B2 */	fmuls f6, f6, f2
/* 800A05B8  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A05BC  FC C0 30 1E */	fctiwz f6, f6
/* 800A05C0  D8 C1 00 38 */	stfd f6, 0x38(r1)
/* 800A05C4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A05C8  B0 1E 30 44 */	sth r0, 0x3044(r30)
/* 800A05CC  C0 C2 98 00 */	lfs f6, lit_55147(r2)
/* 800A05D0  EC C6 00 F2 */	fmuls f6, f6, f3
/* 800A05D4  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A05D8  FC C0 30 1E */	fctiwz f6, f6
/* 800A05DC  D8 C1 00 30 */	stfd f6, 0x30(r1)
/* 800A05E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A05E4  B0 1E 30 46 */	sth r0, 0x3046(r30)
/* 800A05E8  C0 C2 94 54 */	lfs f6, lit_14784(r2)
/* 800A05EC  EC C6 01 32 */	fmuls f6, f6, f4
/* 800A05F0  EC C6 00 32 */	fmuls f6, f6, f0
/* 800A05F4  FC C0 30 1E */	fctiwz f6, f6
/* 800A05F8  D8 C1 00 28 */	stfd f6, 0x28(r1)
/* 800A05FC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800A0600  B0 1E 30 48 */	sth r0, 0x3048(r30)
/* 800A0604  C0 C2 98 04 */	lfs f6, lit_55148(r2)
/* 800A0608  EC C6 01 72 */	fmuls f6, f6, f5
/* 800A060C  EC 06 00 32 */	fmuls f0, f6, f0
/* 800A0610  FC 00 00 1E */	fctiwz f0, f0
/* 800A0614  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 800A0618  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A061C  B0 1E 30 4A */	sth r0, 0x304a(r30)
lbl_800A0620:
/* 800A0620  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A0624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A0628  40 81 00 58 */	ble lbl_800A0680
/* 800A062C  C0 02 98 08 */	lfs f0, lit_55149(r2)
/* 800A0630  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800A0634  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A0638  FC 00 00 1E */	fctiwz f0, f0
/* 800A063C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800A0640  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A0644  B0 1E 30 2E */	sth r0, 0x302e(r30)
/* 800A0648  C0 C2 98 0C */	lfs f6, lit_55150(r2)
/* 800A064C  EC 06 00 B2 */	fmuls f0, f6, f2
/* 800A0650  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A0654  FC 00 00 1E */	fctiwz f0, f0
/* 800A0658  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800A065C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A0660  B0 1E 30 30 */	sth r0, 0x3030(r30)
/* 800A0664  EC 06 00 F2 */	fmuls f0, f6, f3
/* 800A0668  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A066C  FC 00 00 1E */	fctiwz f0, f0
/* 800A0670  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800A0674  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A0678  B0 1E 30 32 */	sth r0, 0x3032(r30)
/* 800A067C  48 00 00 54 */	b lbl_800A06D0
lbl_800A0680:
/* 800A0680  C0 02 97 58 */	lfs f0, lit_45501(r2)
/* 800A0684  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800A0688  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A068C  FC 00 00 1E */	fctiwz f0, f0
/* 800A0690  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800A0694  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A0698  B0 1E 30 2E */	sth r0, 0x302e(r30)
/* 800A069C  C0 C2 94 5C */	lfs f6, lit_14786(r2)
/* 800A06A0  EC 06 00 B2 */	fmuls f0, f6, f2
/* 800A06A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A06A8  FC 00 00 1E */	fctiwz f0, f0
/* 800A06AC  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800A06B0  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A06B4  B0 1E 30 30 */	sth r0, 0x3030(r30)
/* 800A06B8  EC 06 00 F2 */	fmuls f0, f6, f3
/* 800A06BC  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A06C0  FC 00 00 1E */	fctiwz f0, f0
/* 800A06C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 800A06C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A06CC  B0 1E 30 32 */	sth r0, 0x3032(r30)
lbl_800A06D0:
/* 800A06D0  C0 42 98 10 */	lfs f2, lit_55151(r2)
/* 800A06D4  EC 02 01 32 */	fmuls f0, f2, f4
/* 800A06D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A06DC  FC 00 00 1E */	fctiwz f0, f0
/* 800A06E0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 800A06E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800A06E8  B0 1E 30 34 */	sth r0, 0x3034(r30)
/* 800A06EC  EC 02 01 72 */	fmuls f0, f2, f5
/* 800A06F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A06F4  FC 00 00 1E */	fctiwz f0, f0
/* 800A06F8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 800A06FC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800A0700  B0 1E 30 36 */	sth r0, 0x3036(r30)
lbl_800A0704:
/* 800A0704  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 800A0708  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 800A070C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 800A0710  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 800A0714  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 800A0718  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 800A071C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 800A0720  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 800A0724  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 800A0728  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 800A072C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800A0730  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800A0734  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 800A0738  7C 08 03 A6 */	mtlr r0
/* 800A073C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 800A0740  4E 80 00 20 */	blr 
