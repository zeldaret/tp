lbl_80543048:
/* 80543048  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054304C  7C 08 02 A6 */	mflr r0
/* 80543050  90 01 00 34 */	stw r0, 0x34(r1)
/* 80543054  39 61 00 30 */	addi r11, r1, 0x30
/* 80543058  4B E1 F1 7C */	b _savegpr_27
/* 8054305C  3C A0 80 55 */	lis r5, lit_3905@ha
/* 80543060  3B E5 A9 64 */	addi r31, r5, lit_3905@l
/* 80543064  2C 04 00 00 */	cmpwi r4, 0
/* 80543068  40 82 02 CC */	bne lbl_80543334
/* 8054306C  A3 63 00 14 */	lhz r27, 0x14(r3)
/* 80543070  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80543074  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80543078  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 8054307C  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80543080  28 1C 00 00 */	cmplwi r28, 0
/* 80543084  41 82 02 B0 */	beq lbl_80543334
/* 80543088  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8054308C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80543090  1F BB 00 30 */	mulli r29, r27, 0x30
/* 80543094  7C 60 EA 14 */	add r3, r0, r29
/* 80543098  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8054309C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 805430A0  80 84 00 00 */	lwz r4, 0(r4)
/* 805430A4  4B E0 34 0C */	b PSMTXCopy
/* 805430A8  2C 1B 00 01 */	cmpwi r27, 1
/* 805430AC  40 82 00 78 */	bne lbl_80543124
/* 805430B0  88 1C 07 E1 */	lbz r0, 0x7e1(r28)
/* 805430B4  7C 00 07 75 */	extsb. r0, r0
/* 805430B8  41 82 00 1C */	beq lbl_805430D4
/* 805430BC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805430C0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805430C4  80 63 00 00 */	lwz r3, 0(r3)
/* 805430C8  A8 9C 06 C4 */	lha r4, 0x6c4(r28)
/* 805430CC  4B AC 93 68 */	b mDoMtx_YrotM__FPA4_fs
/* 805430D0  48 00 02 30 */	b lbl_80543300
lbl_805430D4:
/* 805430D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805430D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805430DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805430E0  A8 1C 06 C4 */	lha r0, 0x6c4(r28)
/* 805430E4  C8 3F 00 20 */	lfd f1, 0x20(r31)
/* 805430E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805430EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805430F0  3C 00 43 30 */	lis r0, 0x4330
/* 805430F4  90 01 00 08 */	stw r0, 8(r1)
/* 805430F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805430FC  EC 40 08 28 */	fsubs f2, f0, f1
/* 80543100  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80543104  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 80543108  EC 01 00 32 */	fmuls f0, f1, f0
/* 8054310C  EC 02 00 2A */	fadds f0, f2, f0
/* 80543110  FC 00 00 1E */	fctiwz f0, f0
/* 80543114  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80543118  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8054311C  4B AC 92 80 */	b mDoMtx_XrotM__FPA4_fs
/* 80543120  48 00 01 E0 */	b lbl_80543300
lbl_80543124:
/* 80543124  2C 1B 00 03 */	cmpwi r27, 3
/* 80543128  40 82 00 50 */	bne lbl_80543178
/* 8054312C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543130  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543134  80 63 00 00 */	lwz r3, 0(r3)
/* 80543138  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8054313C  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 80543140  EC 01 00 32 */	fmuls f0, f1, f0
/* 80543144  FC 00 00 1E */	fctiwz f0, f0
/* 80543148  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8054314C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80543150  4B AC 92 4C */	b mDoMtx_XrotM__FPA4_fs
/* 80543154  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543158  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8054315C  80 63 00 00 */	lwz r3, 0(r3)
/* 80543160  A8 1C 06 B0 */	lha r0, 0x6b0(r28)
/* 80543164  7C 00 16 70 */	srawi r0, r0, 2
/* 80543168  7C 00 01 94 */	addze r0, r0
/* 8054316C  7C 04 07 34 */	extsh r4, r0
/* 80543170  4B AC 93 5C */	b mDoMtx_ZrotM__FPA4_fs
/* 80543174  48 00 01 8C */	b lbl_80543300
lbl_80543178:
/* 80543178  2C 1B 00 04 */	cmpwi r27, 4
/* 8054317C  40 82 00 50 */	bne lbl_805431CC
/* 80543180  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543184  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543188  80 63 00 00 */	lwz r3, 0(r3)
/* 8054318C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80543190  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 80543194  EC 01 00 32 */	fmuls f0, f1, f0
/* 80543198  FC 00 00 1E */	fctiwz f0, f0
/* 8054319C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805431A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805431A4  4B AC 91 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 805431A8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805431AC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805431B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805431B4  A8 1C 06 B0 */	lha r0, 0x6b0(r28)
/* 805431B8  7C 00 0E 70 */	srawi r0, r0, 1
/* 805431BC  7C 00 01 94 */	addze r0, r0
/* 805431C0  7C 04 07 34 */	extsh r4, r0
/* 805431C4  4B AC 93 08 */	b mDoMtx_ZrotM__FPA4_fs
/* 805431C8  48 00 01 38 */	b lbl_80543300
lbl_805431CC:
/* 805431CC  2C 1B 00 0B */	cmpwi r27, 0xb
/* 805431D0  40 82 00 1C */	bne lbl_805431EC
/* 805431D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805431D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805431DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805431E0  A8 9C 06 B6 */	lha r4, 0x6b6(r28)
/* 805431E4  4B AC 92 E8 */	b mDoMtx_ZrotM__FPA4_fs
/* 805431E8  48 00 01 18 */	b lbl_80543300
lbl_805431EC:
/* 805431EC  2C 1B 00 0E */	cmpwi r27, 0xe
/* 805431F0  40 82 00 24 */	bne lbl_80543214
/* 805431F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805431F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805431FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80543200  A8 1C 06 BC */	lha r0, 0x6bc(r28)
/* 80543204  7C 00 00 D0 */	neg r0, r0
/* 80543208  7C 04 07 34 */	extsh r4, r0
/* 8054320C  4B AC 92 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80543210  48 00 00 F0 */	b lbl_80543300
lbl_80543214:
/* 80543214  2C 1B 00 0F */	cmpwi r27, 0xf
/* 80543218  40 82 00 1C */	bne lbl_80543234
/* 8054321C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543220  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543224  80 63 00 00 */	lwz r3, 0(r3)
/* 80543228  A8 9C 06 C0 */	lha r4, 0x6c0(r28)
/* 8054322C  4B AC 92 A0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80543230  48 00 00 D0 */	b lbl_80543300
lbl_80543234:
/* 80543234  2C 1B 00 14 */	cmpwi r27, 0x14
/* 80543238  40 82 00 1C */	bne lbl_80543254
/* 8054323C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543240  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543244  80 63 00 00 */	lwz r3, 0(r3)
/* 80543248  A8 9C 06 BE */	lha r4, 0x6be(r28)
/* 8054324C  4B AC 91 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80543250  48 00 00 B0 */	b lbl_80543300
lbl_80543254:
/* 80543254  2C 1B 00 15 */	cmpwi r27, 0x15
/* 80543258  40 82 00 1C */	bne lbl_80543274
/* 8054325C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543260  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543264  80 63 00 00 */	lwz r3, 0(r3)
/* 80543268  A8 9C 06 C2 */	lha r4, 0x6c2(r28)
/* 8054326C  4B AC 92 60 */	b mDoMtx_ZrotM__FPA4_fs
/* 80543270  48 00 00 90 */	b lbl_80543300
lbl_80543274:
/* 80543274  2C 1B 00 1A */	cmpwi r27, 0x1a
/* 80543278  40 82 00 1C */	bne lbl_80543294
/* 8054327C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543280  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543284  80 63 00 00 */	lwz r3, 0(r3)
/* 80543288  A8 9C 07 04 */	lha r4, 0x704(r28)
/* 8054328C  4B AC 92 40 */	b mDoMtx_ZrotM__FPA4_fs
/* 80543290  48 00 00 70 */	b lbl_80543300
lbl_80543294:
/* 80543294  2C 1B 00 1B */	cmpwi r27, 0x1b
/* 80543298  40 82 00 24 */	bne lbl_805432BC
/* 8054329C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805432A0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805432A4  80 63 00 00 */	lwz r3, 0(r3)
/* 805432A8  A8 1C 07 04 */	lha r0, 0x704(r28)
/* 805432AC  7C 00 00 D0 */	neg r0, r0
/* 805432B0  7C 04 07 34 */	extsh r4, r0
/* 805432B4  4B AC 92 18 */	b mDoMtx_ZrotM__FPA4_fs
/* 805432B8  48 00 00 48 */	b lbl_80543300
lbl_805432BC:
/* 805432BC  2C 1B 00 1D */	cmpwi r27, 0x1d
/* 805432C0  40 82 00 1C */	bne lbl_805432DC
/* 805432C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805432C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805432CC  80 63 00 00 */	lwz r3, 0(r3)
/* 805432D0  A8 9C 07 06 */	lha r4, 0x706(r28)
/* 805432D4  4B AC 91 F8 */	b mDoMtx_ZrotM__FPA4_fs
/* 805432D8  48 00 00 28 */	b lbl_80543300
lbl_805432DC:
/* 805432DC  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 805432E0  40 82 00 20 */	bne lbl_80543300
/* 805432E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805432E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805432EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805432F0  A8 1C 07 06 */	lha r0, 0x706(r28)
/* 805432F4  7C 00 00 D0 */	neg r0, r0
/* 805432F8  7C 04 07 34 */	extsh r4, r0
/* 805432FC  4B AC 91 D0 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80543300:
/* 80543300  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543304  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543308  80 63 00 00 */	lwz r3, 0(r3)
/* 8054330C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80543310  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80543314  7C 80 EA 14 */	add r4, r0, r29
/* 80543318  4B E0 31 98 */	b PSMTXCopy
/* 8054331C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80543320  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80543324  80 63 00 00 */	lwz r3, 0(r3)
/* 80543328  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 8054332C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80543330  4B E0 31 80 */	b PSMTXCopy
lbl_80543334:
/* 80543334  38 60 00 01 */	li r3, 1
/* 80543338  39 61 00 30 */	addi r11, r1, 0x30
/* 8054333C  4B E1 EE E4 */	b _restgpr_27
/* 80543340  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80543344  7C 08 03 A6 */	mtlr r0
/* 80543348  38 21 00 30 */	addi r1, r1, 0x30
/* 8054334C  4E 80 00 20 */	blr 
