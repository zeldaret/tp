lbl_804781B4:
/* 804781B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804781B8  7C 08 02 A6 */	mflr r0
/* 804781BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 804781C0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804781C4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804781C8  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 804781CC  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 804781D0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804781D4  7C 7F 1B 78 */	mr r31, r3
/* 804781D8  88 03 0C F1 */	lbz r0, 0xcf1(r3)
/* 804781DC  28 00 00 03 */	cmplwi r0, 3
/* 804781E0  41 82 00 0C */	beq lbl_804781EC
/* 804781E4  28 00 00 0B */	cmplwi r0, 0xb
/* 804781E8  40 82 01 3C */	bne lbl_80478324
lbl_804781EC:
/* 804781EC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804781F0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804781F4  41 82 00 3C */	beq lbl_80478230
/* 804781F8  38 7F 0D 00 */	addi r3, r31, 0xd00
/* 804781FC  38 80 00 00 */	li r4, 0
/* 80478200  38 A0 20 00 */	li r5, 0x2000
/* 80478204  4B DF 84 CC */	b cLib_chaseS__FPsss
/* 80478208  2C 03 00 00 */	cmpwi r3, 0
/* 8047820C  41 82 01 90 */	beq lbl_8047839C
/* 80478210  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80478214  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80478218  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8047821C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80478220  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 80478224  C0 03 00 08 */	lfs f0, 8(r3)
/* 80478228  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 8047822C  48 00 01 70 */	b lbl_8047839C
lbl_80478230:
/* 80478230  38 61 00 08 */	addi r3, r1, 8
/* 80478234  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80478238  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8047823C  4B DE E8 F8 */	b __mi__4cXyzCFRC3Vec
/* 80478240  C0 01 00 08 */	lfs f0, 8(r1)
/* 80478244  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80478248  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8047824C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80478250  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80478254  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80478258  38 61 00 14 */	addi r3, r1, 0x14
/* 8047825C  4B DE EE 50 */	b isZero__4cXyzCFv
/* 80478260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80478264  40 82 00 44 */	bne lbl_804782A8
/* 80478268  3C 60 80 43 */	lis r3, BaseX__4cXyz@ha
/* 8047826C  C4 03 0D 0C */	lfsu f0, BaseX__4cXyz@l(r3)
/* 80478270  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80478274  C0 03 00 04 */	lfs f0, 4(r3)
/* 80478278  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 8047827C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80478280  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 80478284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80478288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047828C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80478290  4B B9 41 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80478294  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80478298  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8047829C  38 9F 0C F4 */	addi r4, r31, 0xcf4
/* 804782A0  7C 85 23 78 */	mr r5, r4
/* 804782A4  4B EC EA C8 */	b PSMTXMultVec
lbl_804782A8:
/* 804782A8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804782AC  FC 00 02 10 */	fabs f0, f0
/* 804782B0  FF E0 00 18 */	frsp f31, f0
/* 804782B4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804782B8  FC 00 02 10 */	fabs f0, f0
/* 804782BC  FF C0 00 18 */	frsp f30, f0
/* 804782C0  7F E3 FB 78 */	mr r3, r31
/* 804782C4  4B FF 73 E1 */	bl data__12daObjCarry_cFv
/* 804782C8  A8 03 00 7A */	lha r0, 0x7a(r3)
/* 804782CC  3C 60 80 48 */	lis r3, lit_4171@ha
/* 804782D0  C8 23 A3 AC */	lfd f1, lit_4171@l(r3)
/* 804782D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804782D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804782DC  3C 00 43 30 */	lis r0, 0x4330
/* 804782E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804782E4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804782E8  EC 40 08 28 */	fsubs f2, f0, f1
/* 804782EC  3C 60 80 48 */	lis r3, lit_3958@ha
/* 804782F0  C0 23 A3 84 */	lfs f1, lit_3958@l(r3)
/* 804782F4  C0 1F 0D 70 */	lfs f0, 0xd70(r31)
/* 804782F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804782FC  EC 20 10 2A */	fadds f1, f0, f2
/* 80478300  EC 1E F8 2A */	fadds f0, f30, f31
/* 80478304  EC 01 00 32 */	fmuls f0, f1, f0
/* 80478308  FC 00 00 1E */	fctiwz f0, f0
/* 8047830C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80478310  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80478314  A8 1F 0D 00 */	lha r0, 0xd00(r31)
/* 80478318  7C 00 1A 14 */	add r0, r0, r3
/* 8047831C  B0 1F 0D 00 */	sth r0, 0xd00(r31)
/* 80478320  48 00 00 7C */	b lbl_8047839C
lbl_80478324:
/* 80478324  28 00 00 01 */	cmplwi r0, 1
/* 80478328  41 82 00 0C */	beq lbl_80478334
/* 8047832C  28 00 00 00 */	cmplwi r0, 0
/* 80478330  40 82 00 2C */	bne lbl_8047835C
lbl_80478334:
/* 80478334  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80478338  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 8047833C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80478340  C0 03 00 04 */	lfs f0, 4(r3)
/* 80478344  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 80478348  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047834C  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 80478350  38 00 00 00 */	li r0, 0
/* 80478354  B0 1F 0D 00 */	sth r0, 0xd00(r31)
/* 80478358  48 00 00 44 */	b lbl_8047839C
lbl_8047835C:
/* 8047835C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80478360  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80478364  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80478368  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047836C  D0 1F 0C F8 */	stfs f0, 0xcf8(r31)
/* 80478370  C0 03 00 08 */	lfs f0, 8(r3)
/* 80478374  D0 1F 0C FC */	stfs f0, 0xcfc(r31)
/* 80478378  38 00 00 00 */	li r0, 0
/* 8047837C  B0 1F 0D 00 */	sth r0, 0xd00(r31)
/* 80478380  3C 60 80 48 */	lis r3, lit_3899@ha
/* 80478384  C0 03 A3 54 */	lfs f0, lit_3899@l(r3)
/* 80478388  D0 1F 0D 60 */	stfs f0, 0xd60(r31)
/* 8047838C  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 80478390  B0 1F 0D 68 */	sth r0, 0xd68(r31)
/* 80478394  B0 1F 0D 66 */	sth r0, 0xd66(r31)
/* 80478398  B0 1F 0D 64 */	sth r0, 0xd64(r31)
lbl_8047839C:
/* 8047839C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804783A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804783A4  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 804783A8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 804783AC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804783B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804783B4  7C 08 03 A6 */	mtlr r0
/* 804783B8  38 21 00 60 */	addi r1, r1, 0x60
/* 804783BC  4E 80 00 20 */	blr 
