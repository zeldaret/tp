lbl_80101D70:
/* 80101D70  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80101D74  7C 08 02 A6 */	mflr r0
/* 80101D78  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80101D7C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80101D80  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80101D84  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80101D88  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80101D8C  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80101D90  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80101D94  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80101D98  48 26 04 3D */	bl _savegpr_27
/* 80101D9C  7C 7C 1B 78 */	mr r28, r3
/* 80101DA0  FF A0 08 90 */	fmr f29, f1
/* 80101DA4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80101DA8  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 80101DAC  90 03 05 74 */	stw r0, 0x574(r3)
/* 80101DB0  4B FF FC 09 */	bl getZoraSwim__9daAlink_cCFv
/* 80101DB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80101DB8  40 82 00 10 */	bne lbl_80101DC8
/* 80101DBC  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80101DC0  28 00 01 4D */	cmplwi r0, 0x14d
/* 80101DC4  40 82 05 F0 */	bne lbl_801023B4
lbl_80101DC8:
/* 80101DC8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80101DCC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80101DD0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80101DD4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80101DD8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80101DDC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80101DE0  7F 83 E3 78 */	mr r3, r28
/* 80101DE4  4B FF FB D5 */	bl getZoraSwim__9daAlink_cCFv
/* 80101DE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80101DEC  41 82 00 0C */	beq lbl_80101DF8
/* 80101DF0  A8 1C 30 80 */	lha r0, 0x3080(r28)
/* 80101DF4  48 00 00 20 */	b lbl_80101E14
lbl_80101DF8:
/* 80101DF8  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 80101DFC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80101E00  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlWallHang_c0@ha
/* 80101E04  38 63 F1 A0 */	addi r3, r3, m__24daAlinkHIO_wlWallHang_c0@l
/* 80101E08  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80101E0C  EC 01 00 2A */	fadds f0, f1, f0
/* 80101E10  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80101E14:
/* 80101E14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80101E18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80101E1C  3B E3 00 04 */	addi r31, r3, 4
/* 80101E20  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80101E24  7C 1F 24 2E */	lfsx f0, r31, r4
/* 80101E28  EC 7D 00 32 */	fmuls f3, f29, f0
/* 80101E2C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80101E30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80101E34  7C 5F 04 2E */	lfsx f2, r31, r0
/* 80101E38  7C 03 04 2E */	lfsx f0, r3, r0
/* 80101E3C  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80101E40  EC 03 00 32 */	fmuls f0, f3, f0
/* 80101E44  EC 01 00 2A */	fadds f0, f1, f0
/* 80101E48  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80101E4C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80101E50  7C 03 24 2E */	lfsx f0, r3, r4
/* 80101E54  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80101E58  EC 01 00 28 */	fsubs f0, f1, f0
/* 80101E5C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80101E60  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80101E64  EC 03 00 B2 */	fmuls f0, f3, f2
/* 80101E68  EC 01 00 2A */	fadds f0, f1, f0
/* 80101E6C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80101E70  7F 83 E3 78 */	mr r3, r28
/* 80101E74  38 81 00 68 */	addi r4, r1, 0x68
/* 80101E78  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80101E7C  4B FA 03 1D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 80101E80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80101E84  41 82 05 30 */	beq lbl_801023B4
/* 80101E88  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80101E8C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80101E90  90 01 00 84 */	stw r0, 0x84(r1)
/* 80101E94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80101E98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80101E9C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80101EA0  7F C3 F3 78 */	mr r3, r30
/* 80101EA4  38 9C 1B 5C */	addi r4, r28, 0x1b5c
/* 80101EA8  38 A1 00 74 */	addi r5, r1, 0x74
/* 80101EAC  4B F7 28 99 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80101EB0  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80101EB4  48 16 63 5D */	bl cBgW_CheckBWall__Ff
/* 80101EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80101EBC  41 82 04 EC */	beq lbl_801023A8
/* 80101EC0  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80101EC4  28 00 01 4D */	cmplwi r0, 0x14d
/* 80101EC8  40 82 00 18 */	bne lbl_80101EE0
/* 80101ECC  7F C3 F3 78 */	mr r3, r30
/* 80101ED0  38 9C 1B 5C */	addi r4, r28, 0x1b5c
/* 80101ED4  4B F7 2F 2D */	bl GetWallCode__4dBgSFRC13cBgS_PolyInfo
/* 80101ED8  2C 03 00 07 */	cmpwi r3, 7
/* 80101EDC  41 82 04 CC */	beq lbl_801023A8
lbl_80101EE0:
/* 80101EE0  38 61 00 44 */	addi r3, r1, 0x44
/* 80101EE4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80101EE8  3B BC 1B 78 */	addi r29, r28, 0x1b78
/* 80101EEC  7F A5 EB 78 */	mr r5, r29
/* 80101EF0  48 16 4C 45 */	bl __mi__4cXyzCFRC3Vec
/* 80101EF4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80101EF8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80101EFC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80101F00  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80101F04  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80101F08  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80101F0C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80101F10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101F14  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80101F18  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80101F1C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80101F20  48 24 52 19 */	bl PSVECSquareMag
/* 80101F24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80101F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80101F2C  40 81 00 58 */	ble lbl_80101F84
/* 80101F30  FC 00 08 34 */	frsqrte f0, f1
/* 80101F34  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80101F38  FC 44 00 32 */	fmul f2, f4, f0
/* 80101F3C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80101F40  FC 00 00 32 */	fmul f0, f0, f0
/* 80101F44  FC 01 00 32 */	fmul f0, f1, f0
/* 80101F48  FC 03 00 28 */	fsub f0, f3, f0
/* 80101F4C  FC 02 00 32 */	fmul f0, f2, f0
/* 80101F50  FC 44 00 32 */	fmul f2, f4, f0
/* 80101F54  FC 00 00 32 */	fmul f0, f0, f0
/* 80101F58  FC 01 00 32 */	fmul f0, f1, f0
/* 80101F5C  FC 03 00 28 */	fsub f0, f3, f0
/* 80101F60  FC 02 00 32 */	fmul f0, f2, f0
/* 80101F64  FC 44 00 32 */	fmul f2, f4, f0
/* 80101F68  FC 00 00 32 */	fmul f0, f0, f0
/* 80101F6C  FC 01 00 32 */	fmul f0, f1, f0
/* 80101F70  FC 03 00 28 */	fsub f0, f3, f0
/* 80101F74  FC 02 00 32 */	fmul f0, f2, f0
/* 80101F78  FF C1 00 32 */	fmul f30, f1, f0
/* 80101F7C  FF C0 F0 18 */	frsp f30, f30
/* 80101F80  48 00 00 90 */	b lbl_80102010
lbl_80101F84:
/* 80101F84  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80101F88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80101F8C  40 80 00 10 */	bge lbl_80101F9C
/* 80101F90  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80101F94  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80101F98  48 00 00 78 */	b lbl_80102010
lbl_80101F9C:
/* 80101F9C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80101FA0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80101FA4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80101FA8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80101FAC  7C 03 00 00 */	cmpw r3, r0
/* 80101FB0  41 82 00 14 */	beq lbl_80101FC4
/* 80101FB4  40 80 00 40 */	bge lbl_80101FF4
/* 80101FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80101FBC  41 82 00 20 */	beq lbl_80101FDC
/* 80101FC0  48 00 00 34 */	b lbl_80101FF4
lbl_80101FC4:
/* 80101FC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80101FC8  41 82 00 0C */	beq lbl_80101FD4
/* 80101FCC  38 00 00 01 */	li r0, 1
/* 80101FD0  48 00 00 28 */	b lbl_80101FF8
lbl_80101FD4:
/* 80101FD4  38 00 00 02 */	li r0, 2
/* 80101FD8  48 00 00 20 */	b lbl_80101FF8
lbl_80101FDC:
/* 80101FDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80101FE0  41 82 00 0C */	beq lbl_80101FEC
/* 80101FE4  38 00 00 05 */	li r0, 5
/* 80101FE8  48 00 00 10 */	b lbl_80101FF8
lbl_80101FEC:
/* 80101FEC  38 00 00 03 */	li r0, 3
/* 80101FF0  48 00 00 08 */	b lbl_80101FF8
lbl_80101FF4:
/* 80101FF4  38 00 00 04 */	li r0, 4
lbl_80101FF8:
/* 80101FF8  2C 00 00 01 */	cmpwi r0, 1
/* 80101FFC  40 82 00 10 */	bne lbl_8010200C
/* 80102000  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80102004  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 80102008  48 00 00 08 */	b lbl_80102010
lbl_8010200C:
/* 8010200C  FF C0 08 90 */	fmr f30, f1
lbl_80102010:
/* 80102010  38 61 00 50 */	addi r3, r1, 0x50
/* 80102014  48 16 51 15 */	bl atan2sX_Z__4cXyzCFv
/* 80102018  7C 7B 1B 78 */	mr r27, r3
/* 8010201C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80102020  FC 20 00 50 */	fneg f1, f0
/* 80102024  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80102028  FC 40 00 50 */	fneg f2, f0
/* 8010202C  48 16 56 49 */	bl cM_atan2s__Fff
/* 80102030  7C 03 D8 50 */	subf r0, r3, r27
/* 80102034  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80102038  7C 3F 04 2E */	lfsx f1, r31, r0
/* 8010203C  FC 00 F0 50 */	fneg f0, f30
/* 80102040  EC 20 00 72 */	fmuls f1, f0, f1
/* 80102044  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80102048  EF E1 00 32 */	fmuls f31, f1, f0
/* 8010204C  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80102050  EF C1 00 32 */	fmuls f30, f1, f0
/* 80102054  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 80102058  28 00 01 4D */	cmplwi r0, 0x14d
/* 8010205C  41 82 01 38 */	beq lbl_80102194
/* 80102060  7F 83 E3 78 */	mr r3, r28
/* 80102064  4B FF F9 55 */	bl getZoraSwim__9daAlink_cCFv
/* 80102068  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010206C  41 82 01 34 */	beq lbl_801021A0
/* 80102070  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80102074  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80102078  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010207C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80102080  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80102084  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80102088  38 61 00 20 */	addi r3, r1, 0x20
/* 8010208C  48 24 50 AD */	bl PSVECSquareMag
/* 80102090  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80102094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102098  40 81 00 58 */	ble lbl_801020F0
/* 8010209C  FC 00 08 34 */	frsqrte f0, f1
/* 801020A0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 801020A4  FC 44 00 32 */	fmul f2, f4, f0
/* 801020A8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 801020AC  FC 00 00 32 */	fmul f0, f0, f0
/* 801020B0  FC 01 00 32 */	fmul f0, f1, f0
/* 801020B4  FC 03 00 28 */	fsub f0, f3, f0
/* 801020B8  FC 02 00 32 */	fmul f0, f2, f0
/* 801020BC  FC 44 00 32 */	fmul f2, f4, f0
/* 801020C0  FC 00 00 32 */	fmul f0, f0, f0
/* 801020C4  FC 01 00 32 */	fmul f0, f1, f0
/* 801020C8  FC 03 00 28 */	fsub f0, f3, f0
/* 801020CC  FC 02 00 32 */	fmul f0, f2, f0
/* 801020D0  FC 44 00 32 */	fmul f2, f4, f0
/* 801020D4  FC 00 00 32 */	fmul f0, f0, f0
/* 801020D8  FC 01 00 32 */	fmul f0, f1, f0
/* 801020DC  FC 03 00 28 */	fsub f0, f3, f0
/* 801020E0  FC 02 00 32 */	fmul f0, f2, f0
/* 801020E4  FC 41 00 32 */	fmul f2, f1, f0
/* 801020E8  FC 40 10 18 */	frsp f2, f2
/* 801020EC  48 00 00 90 */	b lbl_8010217C
lbl_801020F0:
/* 801020F0  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801020F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801020F8  40 80 00 10 */	bge lbl_80102108
/* 801020FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80102100  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80102104  48 00 00 78 */	b lbl_8010217C
lbl_80102108:
/* 80102108  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8010210C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80102110  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80102114  3C 00 7F 80 */	lis r0, 0x7f80
/* 80102118  7C 03 00 00 */	cmpw r3, r0
/* 8010211C  41 82 00 14 */	beq lbl_80102130
/* 80102120  40 80 00 40 */	bge lbl_80102160
/* 80102124  2C 03 00 00 */	cmpwi r3, 0
/* 80102128  41 82 00 20 */	beq lbl_80102148
/* 8010212C  48 00 00 34 */	b lbl_80102160
lbl_80102130:
/* 80102130  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80102134  41 82 00 0C */	beq lbl_80102140
/* 80102138  38 00 00 01 */	li r0, 1
/* 8010213C  48 00 00 28 */	b lbl_80102164
lbl_80102140:
/* 80102140  38 00 00 02 */	li r0, 2
/* 80102144  48 00 00 20 */	b lbl_80102164
lbl_80102148:
/* 80102148  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010214C  41 82 00 0C */	beq lbl_80102158
/* 80102150  38 00 00 05 */	li r0, 5
/* 80102154  48 00 00 10 */	b lbl_80102164
lbl_80102158:
/* 80102158  38 00 00 03 */	li r0, 3
/* 8010215C  48 00 00 08 */	b lbl_80102164
lbl_80102160:
/* 80102160  38 00 00 04 */	li r0, 4
lbl_80102164:
/* 80102164  2C 00 00 01 */	cmpwi r0, 1
/* 80102168  40 82 00 10 */	bne lbl_80102178
/* 8010216C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80102170  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80102174  48 00 00 08 */	b lbl_8010217C
lbl_80102178:
/* 80102178  FC 40 08 90 */	fmr f2, f1
lbl_8010217C:
/* 8010217C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80102180  48 16 54 F5 */	bl cM_atan2s__Fff
/* 80102184  A8 9C 30 80 */	lha r4, 0x3080(r28)
/* 80102188  48 16 EC 9D */	bl cLib_distanceAngleS__Fss
/* 8010218C  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80102190  40 80 00 10 */	bge lbl_801021A0
lbl_80102194:
/* 80102194  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 80102198  64 00 20 00 */	oris r0, r0, 0x2000
/* 8010219C  90 1C 05 74 */	stw r0, 0x574(r28)
lbl_801021A0:
/* 801021A0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 801021A4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801021A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 801021AC  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 801021B0  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801021B4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 801021B8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 801021BC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801021C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 801021C4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 801021C8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 801021CC  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 801021D0  7F 83 E3 78 */	mr r3, r28
/* 801021D4  38 81 00 68 */	addi r4, r1, 0x68
/* 801021D8  38 A1 00 5C */	addi r5, r1, 0x5c
/* 801021DC  4B F9 FF BD */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 801021E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801021E4  41 82 01 9C */	beq lbl_80102380
/* 801021E8  7F C3 F3 78 */	mr r3, r30
/* 801021EC  38 9C 1B 5C */	addi r4, r28, 0x1b5c
/* 801021F0  38 A1 00 74 */	addi r5, r1, 0x74
/* 801021F4  4B F7 25 51 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 801021F8  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 801021FC  48 16 60 15 */	bl cBgW_CheckBWall__Ff
/* 80102200  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80102204  41 82 01 7C */	beq lbl_80102380
/* 80102208  38 61 00 38 */	addi r3, r1, 0x38
/* 8010220C  38 81 00 5C */	addi r4, r1, 0x5c
/* 80102210  7F A5 EB 78 */	mr r5, r29
/* 80102214  48 16 49 21 */	bl __mi__4cXyzCFRC3Vec
/* 80102218  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8010221C  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80102220  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80102224  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80102228  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 8010222C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80102230  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80102234  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80102238  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8010223C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80102240  38 61 00 14 */	addi r3, r1, 0x14
/* 80102244  48 24 4E F5 */	bl PSVECSquareMag
/* 80102248  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010224C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80102250  40 81 00 58 */	ble lbl_801022A8
/* 80102254  FC 00 08 34 */	frsqrte f0, f1
/* 80102258  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010225C  FC 44 00 32 */	fmul f2, f4, f0
/* 80102260  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80102264  FC 00 00 32 */	fmul f0, f0, f0
/* 80102268  FC 01 00 32 */	fmul f0, f1, f0
/* 8010226C  FC 03 00 28 */	fsub f0, f3, f0
/* 80102270  FC 02 00 32 */	fmul f0, f2, f0
/* 80102274  FC 44 00 32 */	fmul f2, f4, f0
/* 80102278  FC 00 00 32 */	fmul f0, f0, f0
/* 8010227C  FC 01 00 32 */	fmul f0, f1, f0
/* 80102280  FC 03 00 28 */	fsub f0, f3, f0
/* 80102284  FC 02 00 32 */	fmul f0, f2, f0
/* 80102288  FC 44 00 32 */	fmul f2, f4, f0
/* 8010228C  FC 00 00 32 */	fmul f0, f0, f0
/* 80102290  FC 01 00 32 */	fmul f0, f1, f0
/* 80102294  FC 03 00 28 */	fsub f0, f3, f0
/* 80102298  FC 02 00 32 */	fmul f0, f2, f0
/* 8010229C  FF A1 00 32 */	fmul f29, f1, f0
/* 801022A0  FF A0 E8 18 */	frsp f29, f29
/* 801022A4  48 00 00 90 */	b lbl_80102334
lbl_801022A8:
/* 801022A8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 801022AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801022B0  40 80 00 10 */	bge lbl_801022C0
/* 801022B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801022B8  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 801022BC  48 00 00 78 */	b lbl_80102334
lbl_801022C0:
/* 801022C0  D0 21 00 08 */	stfs f1, 8(r1)
/* 801022C4  80 81 00 08 */	lwz r4, 8(r1)
/* 801022C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801022CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 801022D0  7C 03 00 00 */	cmpw r3, r0
/* 801022D4  41 82 00 14 */	beq lbl_801022E8
/* 801022D8  40 80 00 40 */	bge lbl_80102318
/* 801022DC  2C 03 00 00 */	cmpwi r3, 0
/* 801022E0  41 82 00 20 */	beq lbl_80102300
/* 801022E4  48 00 00 34 */	b lbl_80102318
lbl_801022E8:
/* 801022E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801022EC  41 82 00 0C */	beq lbl_801022F8
/* 801022F0  38 00 00 01 */	li r0, 1
/* 801022F4  48 00 00 28 */	b lbl_8010231C
lbl_801022F8:
/* 801022F8  38 00 00 02 */	li r0, 2
/* 801022FC  48 00 00 20 */	b lbl_8010231C
lbl_80102300:
/* 80102300  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80102304  41 82 00 0C */	beq lbl_80102310
/* 80102308  38 00 00 05 */	li r0, 5
/* 8010230C  48 00 00 10 */	b lbl_8010231C
lbl_80102310:
/* 80102310  38 00 00 03 */	li r0, 3
/* 80102314  48 00 00 08 */	b lbl_8010231C
lbl_80102318:
/* 80102318  38 00 00 04 */	li r0, 4
lbl_8010231C:
/* 8010231C  2C 00 00 01 */	cmpwi r0, 1
/* 80102320  40 82 00 10 */	bne lbl_80102330
/* 80102324  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80102328  C3 A3 0A E0 */	lfs f29, __float_nan@l(r3)
/* 8010232C  48 00 00 08 */	b lbl_80102334
lbl_80102330:
/* 80102330  FF A0 08 90 */	fmr f29, f1
lbl_80102334:
/* 80102334  38 61 00 50 */	addi r3, r1, 0x50
/* 80102338  48 16 4D F1 */	bl atan2sX_Z__4cXyzCFv
/* 8010233C  7C 7D 1B 78 */	mr r29, r3
/* 80102340  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80102344  FC 20 00 50 */	fneg f1, f0
/* 80102348  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8010234C  FC 40 00 50 */	fneg f2, f0
/* 80102350  48 16 53 25 */	bl cM_atan2s__Fff
/* 80102354  7C 03 E8 50 */	subf r0, r3, r29
/* 80102358  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8010235C  7C 3F 04 2E */	lfsx f1, r31, r0
/* 80102360  FC 00 E8 50 */	fneg f0, f29
/* 80102364  EC 20 00 72 */	fmuls f1, f0, f1
/* 80102368  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8010236C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80102370  EF FF 00 2A */	fadds f31, f31, f0
/* 80102374  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80102378  EC 01 00 32 */	fmuls f0, f1, f0
/* 8010237C  EF DE 00 2A */	fadds f30, f30, f0
lbl_80102380:
/* 80102380  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80102384  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80102388  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8010238C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80102390  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80102394  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80102398  FC 20 F8 50 */	fneg f1, f31
/* 8010239C  FC 40 F0 50 */	fneg f2, f30
/* 801023A0  48 16 52 D5 */	bl cM_atan2s__Fff
/* 801023A4  B0 7C 30 92 */	sth r3, 0x3092(r28)
lbl_801023A8:
/* 801023A8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 801023AC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 801023B0  90 01 00 84 */	stw r0, 0x84(r1)
lbl_801023B4:
/* 801023B4  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 801023B8  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 801023BC  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 801023C0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 801023C4  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 801023C8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 801023CC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 801023D0  48 25 FE 51 */	bl _restgpr_27
/* 801023D4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801023D8  7C 08 03 A6 */	mtlr r0
/* 801023DC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 801023E0  4E 80 00 20 */	blr 
