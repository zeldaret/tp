lbl_80C41690:
/* 80C41690  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80C41694  7C 08 02 A6 */	mflr r0
/* 80C41698  90 01 01 04 */	stw r0, 0x104(r1)
/* 80C4169C  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80C416A0  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80C416A4  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 80C416A8  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80C416AC  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80C416B0  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 80C416B4  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 80C416B8  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 80C416BC  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 80C416C0  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 80C416C4  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 80C416C8  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 80C416CC  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 80C416D0  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 80C416D4  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 80C416D8  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 80C416DC  39 61 00 80 */	addi r11, r1, 0x80
/* 80C416E0  4B 72 0A D9 */	bl _savegpr_20
/* 80C416E4  7C 79 1B 78 */	mr r25, r3
/* 80C416E8  7C 9A 23 78 */	mr r26, r4
/* 80C416EC  3C 60 80 C4 */	lis r3, lit_3655@ha /* 0x80C439E4@ha */
/* 80C416F0  38 83 39 E4 */	addi r4, r3, lit_3655@l /* 0x80C439E4@l */
/* 80C416F4  C0 1A 00 40 */	lfs f0, 0x40(r26)
/* 80C416F8  D0 1A 00 58 */	stfs f0, 0x58(r26)
/* 80C416FC  C0 1A 00 44 */	lfs f0, 0x44(r26)
/* 80C41700  D0 1A 00 5C */	stfs f0, 0x5c(r26)
/* 80C41704  C0 1A 00 48 */	lfs f0, 0x48(r26)
/* 80C41708  D0 1A 00 60 */	stfs f0, 0x60(r26)
/* 80C4170C  3B BA 00 64 */	addi r29, r26, 0x64
/* 80C41710  3B 9A 01 24 */	addi r28, r26, 0x124
/* 80C41714  3B 7A 01 DE */	addi r27, r26, 0x1de
/* 80C41718  88 19 05 84 */	lbz r0, 0x584(r25)
/* 80C4171C  28 00 00 00 */	cmplwi r0, 0
/* 80C41720  40 82 00 14 */	bne lbl_80C41734
/* 80C41724  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C41728  C0 19 2A E8 */	lfs f0, 0x2ae8(r25)
/* 80C4172C  EF 81 00 2A */	fadds f28, f1, f0
/* 80C41730  48 00 00 14 */	b lbl_80C41744
lbl_80C41734:
/* 80C41734  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C41738  C0 19 2A E8 */	lfs f0, 0x2ae8(r25)
/* 80C4173C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C41740  EF 81 00 2A */	fadds f28, f1, f0
lbl_80C41744:
/* 80C41744  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C41748  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C4174C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C41750  88 19 05 84 */	lbz r0, 0x584(r25)
/* 80C41754  28 00 00 00 */	cmplwi r0, 0
/* 80C41758  41 82 00 18 */	beq lbl_80C41770
/* 80C4175C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C41760  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C41764  C3 44 00 14 */	lfs f26, 0x14(r4)
/* 80C41768  C3 64 00 18 */	lfs f27, 0x18(r4)
/* 80C4176C  48 00 00 14 */	b lbl_80C41780
lbl_80C41770:
/* 80C41770  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C41774  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C41778  C3 44 00 1C */	lfs f26, 0x1c(r4)
/* 80C4177C  C3 64 00 10 */	lfs f27, 0x10(r4)
lbl_80C41780:
/* 80C41780  3B C0 00 01 */	li r30, 1
/* 80C41784  3B 00 EA 84 */	li r24, -5500
/* 80C41788  3A E0 EB 4C */	li r23, -5300
/* 80C4178C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C41790  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C41794  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80C41798  C3 E4 00 04 */	lfs f31, 4(r4)
/* 80C4179C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C417A0  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
/* 80C417A4  48 00 01 BC */	b lbl_80C41960
lbl_80C417A8:
/* 80C417A8  A8 79 06 1A */	lha r3, 0x61a(r25)
/* 80C417AC  1C 03 15 7C */	mulli r0, r3, 0x157c
/* 80C417B0  7C 00 BA 14 */	add r0, r0, r23
/* 80C417B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C417B8  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C417BC  C0 3A 02 38 */	lfs f1, 0x238(r26)
/* 80C417C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C417C4  EC 9E 00 32 */	fmuls f4, f30, f0
/* 80C417C8  D0 81 00 20 */	stfs f4, 0x20(r1)
/* 80C417CC  1C 03 16 A8 */	mulli r0, r3, 0x16a8
/* 80C417D0  7C 00 C2 14 */	add r0, r0, r24
/* 80C417D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C417D8  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80C417DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C417E0  EC 7E 00 32 */	fmuls f3, f30, f0
/* 80C417E4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80C417E8  C0 5C 00 00 */	lfs f2, 0(r28)
/* 80C417EC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C417F0  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 80C417F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C417F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C417FC  EF A4 00 2A */	fadds f29, f4, f0
/* 80C41800  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80C41804  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80C41808  C0 1D FF FC */	lfs f0, -4(r29)
/* 80C4180C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C41810  EC 02 00 2A */	fadds f0, f2, f0
/* 80C41814  EF 03 00 2A */	fadds f24, f3, f0
/* 80C41818  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C4181C  EC 20 D8 2A */	fadds f1, f0, f27
/* 80C41820  FC 01 E0 40 */	fcmpo cr0, f1, f28
/* 80C41824  4C 40 13 82 */	cror 2, 0, 2
/* 80C41828  40 82 00 08 */	bne lbl_80C41830
/* 80C4182C  FC 20 E0 90 */	fmr f1, f28
lbl_80C41830:
/* 80C41830  C0 1D FF F8 */	lfs f0, -8(r29)
/* 80C41834  EF 21 00 28 */	fsubs f25, f1, f0
/* 80C41838  FC 20 C8 90 */	fmr f1, f25
/* 80C4183C  FC 40 C0 90 */	fmr f2, f24
/* 80C41840  4B 62 5E 35 */	bl cM_atan2s__Fff
/* 80C41844  7C 03 00 D0 */	neg r0, r3
/* 80C41848  7C 14 07 34 */	extsh r20, r0
/* 80C4184C  EC 39 06 72 */	fmuls f1, f25, f25
/* 80C41850  EC 18 06 32 */	fmuls f0, f24, f24
/* 80C41854  EC 41 00 2A */	fadds f2, f1, f0
/* 80C41858  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 80C4185C  40 81 00 0C */	ble lbl_80C41868
/* 80C41860  FC 00 10 34 */	frsqrte f0, f2
/* 80C41864  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C41868:
/* 80C41868  FC 20 E8 90 */	fmr f1, f29
/* 80C4186C  4B 62 5E 09 */	bl cM_atan2s__Fff
/* 80C41870  7C 75 07 34 */	extsh r21, r3
/* 80C41874  80 76 00 00 */	lwz r3, 0(r22)
/* 80C41878  7E 84 A3 78 */	mr r4, r20
/* 80C4187C  4B 3C AA C9 */	bl mDoMtx_XrotS__FPA4_fs
/* 80C41880  80 76 00 00 */	lwz r3, 0(r22)
/* 80C41884  7E A4 AB 78 */	mr r4, r21
/* 80C41888  4B 3C AB AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80C4188C  38 61 00 38 */	addi r3, r1, 0x38
/* 80C41890  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C41894  4B 62 F6 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C41898  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C4189C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C418A0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80C418A4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C418A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C418AC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C418B0  C0 3D FF F4 */	lfs f1, -0xc(r29)
/* 80C418B4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C418B8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C418BC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80C418C0  C0 3D FF F8 */	lfs f1, -8(r29)
/* 80C418C4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C418C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C418CC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80C418D0  C0 3D FF FC */	lfs f1, -4(r29)
/* 80C418D4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C418D8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C418DC  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80C418E0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C418E4  7F A4 EB 78 */	mr r4, r29
/* 80C418E8  7F 85 E3 78 */	mr r5, r28
/* 80C418EC  4B 62 52 49 */	bl __mi__4cXyzCFRC3Vec
/* 80C418F0  38 61 00 08 */	addi r3, r1, 8
/* 80C418F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C418F8  FC 20 D0 90 */	fmr f1, f26
/* 80C418FC  4B 62 52 89 */	bl __ml__4cXyzCFf
/* 80C41900  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C41904  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C41908  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C4190C  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C41910  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C41914  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C41918  B2 BB FF FC */	sth r21, -4(r27)
/* 80C4191C  B2 9B FF FA */	sth r20, -6(r27)
/* 80C41920  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C41924  38 03 FF FF */	addi r0, r3, -1
/* 80C41928  7C 1E 00 00 */	cmpw r30, r0
/* 80C4192C  40 82 00 1C */	bne lbl_80C41948
/* 80C41930  A8 1B FF FA */	lha r0, -6(r27)
/* 80C41934  B0 1B 00 00 */	sth r0, 0(r27)
/* 80C41938  A8 1B FF FC */	lha r0, -4(r27)
/* 80C4193C  B0 1B 00 02 */	sth r0, 2(r27)
/* 80C41940  A8 1B FF FE */	lha r0, -2(r27)
/* 80C41944  B0 1B 00 04 */	sth r0, 4(r27)
lbl_80C41948:
/* 80C41948  3B DE 00 01 */	addi r30, r30, 1
/* 80C4194C  3B 18 EA 84 */	addi r24, r24, -5500
/* 80C41950  3A F7 EB 4C */	addi r23, r23, -5300
/* 80C41954  3B BD 00 0C */	addi r29, r29, 0xc
/* 80C41958  3B 7B 00 06 */	addi r27, r27, 6
/* 80C4195C  3B 9C 00 0C */	addi r28, r28, 0xc
lbl_80C41960:
/* 80C41960  80 19 05 7C */	lwz r0, 0x57c(r25)
/* 80C41964  7C 1E 00 00 */	cmpw r30, r0
/* 80C41968  41 80 FE 40 */	blt lbl_80C417A8
/* 80C4196C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80C41970  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80C41974  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80C41978  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80C4197C  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 80C41980  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80C41984  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 80C41988  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80C4198C  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 80C41990  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 80C41994  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 80C41998  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 80C4199C  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 80C419A0  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 80C419A4  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 80C419A8  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 80C419AC  39 61 00 80 */	addi r11, r1, 0x80
/* 80C419B0  4B 72 08 55 */	bl _restgpr_20
/* 80C419B4  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80C419B8  7C 08 03 A6 */	mtlr r0
/* 80C419BC  38 21 01 00 */	addi r1, r1, 0x100
/* 80C419C0  4E 80 00 20 */	blr 
