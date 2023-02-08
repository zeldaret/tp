lbl_80164E20:
/* 80164E20  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80164E24  7C 08 02 A6 */	mflr r0
/* 80164E28  90 01 01 64 */	stw r0, 0x164(r1)
/* 80164E2C  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80164E30  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80164E34  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 80164E38  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 80164E3C  39 61 01 40 */	addi r11, r1, 0x140
/* 80164E40  48 1F D3 95 */	bl _savegpr_27
/* 80164E44  7C 7F 1B 78 */	mr r31, r3
/* 80164E48  7C 9B 23 78 */	mr r27, r4
/* 80164E4C  7C BC 2B 79 */	or. r28, r5, r5
/* 80164E50  7C DD 33 78 */	mr r29, r6
/* 80164E54  7C FE 3B 78 */	mr r30, r7
/* 80164E58  FF E0 08 90 */	fmr f31, f1
/* 80164E5C  40 82 00 24 */	bne lbl_80164E80
/* 80164E60  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80164E64  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80164E68  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80164E6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80164E70  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80164E74  C0 03 00 08 */	lfs f0, 8(r3)
/* 80164E78  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80164E7C  48 00 02 60 */	b lbl_801650DC
lbl_80164E80:
/* 80164E80  28 1D 00 00 */	cmplwi r29, 0
/* 80164E84  40 82 00 10 */	bne lbl_80164E94
/* 80164E88  7F C6 F3 78 */	mr r6, r30
/* 80164E8C  4B FF FE E1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80164E90  48 00 02 4C */	b lbl_801650DC
lbl_80164E94:
/* 80164E94  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80164E98  4B F3 28 85 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80164E9C  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 80164EA0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80164EA4  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 80164EA8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80164EAC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80164EB0  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80164EB4  38 61 00 AC */	addi r3, r1, 0xac
/* 80164EB8  7F 64 DB 78 */	mr r4, r27
/* 80164EBC  7F A5 EB 78 */	mr r5, r29
/* 80164EC0  4B F3 28 5D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80164EC4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80164EC8  D0 01 00 F4 */	stfs f0, 0xf4(r1)
/* 80164ECC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80164ED0  D0 01 00 F8 */	stfs f0, 0xf8(r1)
/* 80164ED4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80164ED8  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80164EDC  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80164EE0  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80164EE4  38 A1 01 00 */	addi r5, r1, 0x100
/* 80164EE8  48 10 1C 4D */	bl __mi__4cXyzCFRC3Vec
/* 80164EEC  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80164EF0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80164EF4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80164EF8  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80164EFC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80164F00  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80164F04  38 61 00 20 */	addi r3, r1, 0x20
/* 80164F08  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80164F0C  48 10 C9 75 */	bl __ct__7cSGlobeFRC4cXyz
/* 80164F10  38 61 00 94 */	addi r3, r1, 0x94
/* 80164F14  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80164F18  48 10 1F DD */	bl normalize__4cXyzFv
/* 80164F1C  38 61 00 88 */	addi r3, r1, 0x88
/* 80164F20  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80164F24  A8 1C 05 4E */	lha r0, 0x54e(r28)
/* 80164F28  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80164F2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80164F30  90 01 01 14 */	stw r0, 0x114(r1)
/* 80164F34  3C 00 43 30 */	lis r0, 0x4330
/* 80164F38  90 01 01 10 */	stw r0, 0x110(r1)
/* 80164F3C  C8 01 01 10 */	lfd f0, 0x110(r1)
/* 80164F40  EC 20 08 28 */	fsubs f1, f0, f1
/* 80164F44  48 10 1C 41 */	bl __ml__4cXyzCFf
/* 80164F48  38 61 01 00 */	addi r3, r1, 0x100
/* 80164F4C  38 81 00 88 */	addi r4, r1, 0x88
/* 80164F50  7C 65 1B 78 */	mr r5, r3
/* 80164F54  48 1E 21 61 */	bl PSVECSubtract
/* 80164F58  38 61 00 7C */	addi r3, r1, 0x7c
/* 80164F5C  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80164F60  A8 1D 05 4E */	lha r0, 0x54e(r29)
/* 80164F64  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80164F68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80164F6C  90 01 01 1C */	stw r0, 0x11c(r1)
/* 80164F70  3C 00 43 30 */	lis r0, 0x4330
/* 80164F74  90 01 01 18 */	stw r0, 0x118(r1)
/* 80164F78  C8 01 01 18 */	lfd f0, 0x118(r1)
/* 80164F7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80164F80  48 10 1C 05 */	bl __ml__4cXyzCFf
/* 80164F84  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80164F88  38 81 00 7C */	addi r4, r1, 0x7c
/* 80164F8C  7C 65 1B 78 */	mr r5, r3
/* 80164F90  48 1E 21 01 */	bl PSVECAdd
/* 80164F94  38 61 00 70 */	addi r3, r1, 0x70
/* 80164F98  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80164F9C  38 A1 01 00 */	addi r5, r1, 0x100
/* 80164FA0  48 10 1B 95 */	bl __mi__4cXyzCFRC3Vec
/* 80164FA4  38 61 00 64 */	addi r3, r1, 0x64
/* 80164FA8  38 81 00 70 */	addi r4, r1, 0x70
/* 80164FAC  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80164FB0  48 10 1B D5 */	bl __ml__4cXyzCFf
/* 80164FB4  38 61 00 58 */	addi r3, r1, 0x58
/* 80164FB8  38 81 01 00 */	addi r4, r1, 0x100
/* 80164FBC  38 A1 00 64 */	addi r5, r1, 0x64
/* 80164FC0  48 10 1B 25 */	bl __pl__4cXyzCFRC3Vec
/* 80164FC4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80164FC8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80164FCC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80164FD0  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80164FD4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80164FD8  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80164FDC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80164FE0  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80164FE4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80164FE8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80164FEC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80164FF0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80164FF4  38 61 00 10 */	addi r3, r1, 0x10
/* 80164FF8  38 9B 00 62 */	addi r4, r27, 0x62
/* 80164FFC  3B C1 00 26 */	addi r30, r1, 0x26
/* 80165000  7F C5 F3 78 */	mr r5, r30
/* 80165004  48 10 C1 A1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80165008  38 61 00 14 */	addi r3, r1, 0x14
/* 8016500C  38 81 00 10 */	addi r4, r1, 0x10
/* 80165010  48 10 BF 59 */	bl __ct__7cSAngleFRC7cSAngle
/* 80165014  A8 61 00 14 */	lha r3, 0x14(r1)
/* 80165018  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8016501C  7C 03 00 00 */	cmpw r3, r0
/* 80165020  40 80 00 10 */	bge lbl_80165030
/* 80165024  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80165028  FC 00 00 50 */	fneg f0, f0
/* 8016502C  D0 01 00 D0 */	stfs f0, 0xd0(r1)
lbl_80165030:
/* 80165030  38 61 00 18 */	addi r3, r1, 0x18
/* 80165034  38 81 00 D0 */	addi r4, r1, 0xd0
/* 80165038  48 10 C8 49 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016503C  38 61 00 0C */	addi r3, r1, 0xc
/* 80165040  7F C4 F3 78 */	mr r4, r30
/* 80165044  38 A1 00 1E */	addi r5, r1, 0x1e
/* 80165048  48 10 C1 2D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016504C  38 61 00 08 */	addi r3, r1, 8
/* 80165050  A8 81 00 0C */	lha r4, 0xc(r1)
/* 80165054  48 10 BF 45 */	bl __ct__7cSAngleFs
/* 80165058  A8 01 00 08 */	lha r0, 8(r1)
/* 8016505C  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80165060  C3 C1 00 20 */	lfs f30, 0x20(r1)
/* 80165064  38 61 00 14 */	addi r3, r1, 0x14
/* 80165068  48 10 C0 B9 */	bl Cos__7cSAngleCFv
/* 8016506C  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 80165070  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80165074  EC 00 00 72 */	fmuls f0, f0, f1
/* 80165078  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8016507C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80165080  38 61 00 4C */	addi r3, r1, 0x4c
/* 80165084  38 81 00 20 */	addi r4, r1, 0x20
/* 80165088  48 10 CA 2D */	bl Xyz__7cSGlobeCFv
/* 8016508C  38 61 00 40 */	addi r3, r1, 0x40
/* 80165090  38 81 00 DC */	addi r4, r1, 0xdc
/* 80165094  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80165098  48 10 1A 4D */	bl __pl__4cXyzCFRC3Vec
/* 8016509C  38 61 00 34 */	addi r3, r1, 0x34
/* 801650A0  38 81 00 18 */	addi r4, r1, 0x18
/* 801650A4  48 10 CA 11 */	bl Xyz__7cSGlobeCFv
/* 801650A8  38 61 00 28 */	addi r3, r1, 0x28
/* 801650AC  38 81 00 40 */	addi r4, r1, 0x40
/* 801650B0  38 A1 00 34 */	addi r5, r1, 0x34
/* 801650B4  48 10 1A 31 */	bl __pl__4cXyzCFRC3Vec
/* 801650B8  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801650BC  D0 41 00 C4 */	stfs f2, 0xc4(r1)
/* 801650C0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801650C4  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 801650C8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801650CC  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 801650D0  D0 5F 00 00 */	stfs f2, 0(r31)
/* 801650D4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 801650D8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_801650DC:
/* 801650DC  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 801650E0  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 801650E4  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 801650E8  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 801650EC  39 61 01 40 */	addi r11, r1, 0x140
/* 801650F0  48 1F D1 31 */	bl _restgpr_27
/* 801650F4  80 01 01 64 */	lwz r0, 0x164(r1)
/* 801650F8  7C 08 03 A6 */	mtlr r0
/* 801650FC  38 21 01 60 */	addi r1, r1, 0x160
/* 80165100  4E 80 00 20 */	blr 
