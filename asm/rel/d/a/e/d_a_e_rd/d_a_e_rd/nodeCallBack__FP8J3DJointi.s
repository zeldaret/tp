lbl_80504DDC:
/* 80504DDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80504DE0  7C 08 02 A6 */	mflr r0
/* 80504DE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80504DE8  39 61 00 40 */	addi r11, r1, 0x40
/* 80504DEC  4B E5 D3 EC */	b _savegpr_28
/* 80504DF0  2C 04 00 00 */	cmpwi r4, 0
/* 80504DF4  40 82 04 E4 */	bne lbl_805052D8
/* 80504DF8  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80504DFC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80504E00  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80504E04  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80504E08  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80504E0C  28 1C 00 00 */	cmplwi r28, 0
/* 80504E10  41 82 04 C8 */	beq lbl_805052D8
/* 80504E14  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80504E18  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80504E1C  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80504E20  7C 60 EA 14 */	add r3, r0, r29
/* 80504E24  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80504E28  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80504E2C  80 84 00 00 */	lwz r4, 0(r4)
/* 80504E30  4B E4 16 80 */	b PSMTXCopy
/* 80504E34  2C 1F 00 00 */	cmpwi r31, 0
/* 80504E38  40 82 00 28 */	bne lbl_80504E60
/* 80504E3C  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80504E40  2C 00 00 03 */	cmpwi r0, 3
/* 80504E44  40 82 04 04 */	bne lbl_80505248
/* 80504E48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504E4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504E50  80 63 00 00 */	lwz r3, 0(r3)
/* 80504E54  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 80504E58  4B B0 75 DC */	b mDoMtx_YrotM__FPA4_fs
/* 80504E5C  48 00 03 EC */	b lbl_80505248
lbl_80504E60:
/* 80504E60  2C 1F 00 01 */	cmpwi r31, 1
/* 80504E64  40 82 00 64 */	bne lbl_80504EC8
/* 80504E68  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80504E6C  2C 00 00 03 */	cmpwi r0, 3
/* 80504E70  40 82 00 18 */	bne lbl_80504E88
/* 80504E74  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504E78  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504E7C  80 63 00 00 */	lwz r3, 0(r3)
/* 80504E80  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 80504E84  4B B0 75 18 */	b mDoMtx_XrotM__FPA4_fs
lbl_80504E88:
/* 80504E88  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504E8C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504E90  80 63 00 00 */	lwz r3, 0(r3)
/* 80504E94  A8 9C 0A E0 */	lha r4, 0xae0(r28)
/* 80504E98  4B B0 75 9C */	b mDoMtx_YrotM__FPA4_fs
/* 80504E9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504EA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504EA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80504EA8  A8 BC 0A C0 */	lha r5, 0xac0(r28)
/* 80504EAC  A8 9C 0A 3E */	lha r4, 0xa3e(r28)
/* 80504EB0  A8 1C 0A DE */	lha r0, 0xade(r28)
/* 80504EB4  7C 04 00 50 */	subf r0, r4, r0
/* 80504EB8  7C 05 02 14 */	add r0, r5, r0
/* 80504EBC  7C 04 07 34 */	extsh r4, r0
/* 80504EC0  4B B0 76 0C */	b mDoMtx_ZrotM__FPA4_fs
/* 80504EC4  48 00 03 84 */	b lbl_80505248
lbl_80504EC8:
/* 80504EC8  2C 1F 00 02 */	cmpwi r31, 2
/* 80504ECC  40 82 00 1C */	bne lbl_80504EE8
/* 80504ED0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504ED4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504ED8  80 63 00 00 */	lwz r3, 0(r3)
/* 80504EDC  A8 9C 0A CA */	lha r4, 0xaca(r28)
/* 80504EE0  4B B0 75 54 */	b mDoMtx_YrotM__FPA4_fs
/* 80504EE4  48 00 03 64 */	b lbl_80505248
lbl_80504EE8:
/* 80504EE8  2C 1F 00 04 */	cmpwi r31, 4
/* 80504EEC  40 82 00 1C */	bne lbl_80504F08
/* 80504EF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504EF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504EF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80504EFC  A8 9C 0A CC */	lha r4, 0xacc(r28)
/* 80504F00  4B B0 75 CC */	b mDoMtx_ZrotM__FPA4_fs
/* 80504F04  48 00 03 44 */	b lbl_80505248
lbl_80504F08:
/* 80504F08  2C 1F 00 06 */	cmpwi r31, 6
/* 80504F0C  40 82 00 1C */	bne lbl_80504F28
/* 80504F10  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504F14  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504F18  80 63 00 00 */	lwz r3, 0(r3)
/* 80504F1C  A8 9C 0A CE */	lha r4, 0xace(r28)
/* 80504F20  4B B0 75 14 */	b mDoMtx_YrotM__FPA4_fs
/* 80504F24  48 00 03 24 */	b lbl_80505248
lbl_80504F28:
/* 80504F28  2C 1F 00 08 */	cmpwi r31, 8
/* 80504F2C  40 82 00 1C */	bne lbl_80504F48
/* 80504F30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504F34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504F38  80 63 00 00 */	lwz r3, 0(r3)
/* 80504F3C  A8 9C 0A D0 */	lha r4, 0xad0(r28)
/* 80504F40  4B B0 75 8C */	b mDoMtx_ZrotM__FPA4_fs
/* 80504F44  48 00 03 04 */	b lbl_80505248
lbl_80504F48:
/* 80504F48  2C 1F 00 0B */	cmpwi r31, 0xb
/* 80504F4C  40 82 01 20 */	bne lbl_8050506C
/* 80504F50  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504F54  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504F58  80 63 00 00 */	lwz r3, 0(r3)
/* 80504F5C  A8 9C 0A 3A */	lha r4, 0xa3a(r28)
/* 80504F60  4B B0 74 D4 */	b mDoMtx_YrotM__FPA4_fs
/* 80504F64  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80504F68  2C 00 00 03 */	cmpwi r0, 3
/* 80504F6C  40 82 00 18 */	bne lbl_80504F84
/* 80504F70  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504F74  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504F78  80 63 00 00 */	lwz r3, 0(r3)
/* 80504F7C  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 80504F80  4B B0 74 1C */	b mDoMtx_XrotM__FPA4_fs
lbl_80504F84:
/* 80504F84  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504F88  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504F8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80504F90  A8 9C 0A 38 */	lha r4, 0xa38(r28)
/* 80504F94  A8 1C 0A BE */	lha r0, 0xabe(r28)
/* 80504F98  7C 04 02 14 */	add r0, r4, r0
/* 80504F9C  7C 04 07 34 */	extsh r4, r0
/* 80504FA0  4B B0 75 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 80504FA4  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80504FA8  2C 00 00 04 */	cmpwi r0, 4
/* 80504FAC  40 82 00 9C */	bne lbl_80505048
/* 80504FB0  3C 60 80 52 */	lis r3, lit_4289@ha
/* 80504FB4  C0 43 85 E4 */	lfs f2, lit_4289@l(r3)
/* 80504FB8  A8 1C 09 CC */	lha r0, 0x9cc(r28)
/* 80504FBC  3C 60 80 52 */	lis r3, lit_4293@ha
/* 80504FC0  C8 23 85 EC */	lfd f1, lit_4293@l(r3)
/* 80504FC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80504FC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80504FCC  3C 00 43 30 */	lis r0, 0x4330
/* 80504FD0  90 01 00 08 */	stw r0, 8(r1)
/* 80504FD4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80504FD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80504FDC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80504FE0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80504FE4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80504FE8  80 63 00 00 */	lwz r3, 0(r3)
/* 80504FEC  FC 00 00 1E */	fctiwz f0, f0
/* 80504FF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80504FF4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80504FF8  4B B0 74 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80504FFC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505000  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505004  80 63 00 00 */	lwz r3, 0(r3)
/* 80505008  3C 80 80 52 */	lis r4, lit_4468@ha
/* 8050500C  C0 44 85 F4 */	lfs f2, lit_4468@l(r4)
/* 80505010  A8 1C 09 CC */	lha r0, 0x9cc(r28)
/* 80505014  3C 80 80 52 */	lis r4, lit_4293@ha
/* 80505018  C8 24 85 EC */	lfd f1, lit_4293@l(r4)
/* 8050501C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80505020  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80505024  3C 00 43 30 */	lis r0, 0x4330
/* 80505028  90 01 00 18 */	stw r0, 0x18(r1)
/* 8050502C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80505030  EC 00 08 28 */	fsubs f0, f0, f1
/* 80505034  EC 02 00 32 */	fmuls f0, f2, f0
/* 80505038  FC 00 00 1E */	fctiwz f0, f0
/* 8050503C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80505040  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80505044  4B B0 73 58 */	b mDoMtx_XrotM__FPA4_fs
lbl_80505048:
/* 80505048  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 8050504C  2C 00 00 03 */	cmpwi r0, 3
/* 80505050  40 82 01 F8 */	bne lbl_80505248
/* 80505054  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505058  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8050505C  80 63 00 00 */	lwz r3, 0(r3)
/* 80505060  A8 9C 09 CC */	lha r4, 0x9cc(r28)
/* 80505064  4B B0 74 68 */	b mDoMtx_ZrotM__FPA4_fs
/* 80505068  48 00 01 E0 */	b lbl_80505248
lbl_8050506C:
/* 8050506C  2C 1F 00 0D */	cmpwi r31, 0xd
/* 80505070  40 82 00 78 */	bne lbl_805050E8
/* 80505074  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80505078  7C 00 07 74 */	extsb r0, r0
/* 8050507C  2C 00 00 03 */	cmpwi r0, 3
/* 80505080  41 82 01 C8 */	beq lbl_80505248
/* 80505084  2C 00 00 04 */	cmpwi r0, 4
/* 80505088  41 82 01 C0 */	beq lbl_80505248
/* 8050508C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505090  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505094  80 63 00 00 */	lwz r3, 0(r3)
/* 80505098  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 8050509C  A8 1C 09 CE */	lha r0, 0x9ce(r28)
/* 805050A0  7C 04 00 50 */	subf r0, r4, r0
/* 805050A4  7C 00 0E 70 */	srawi r0, r0, 1
/* 805050A8  7C 00 01 94 */	addze r0, r0
/* 805050AC  7C 04 07 34 */	extsh r4, r0
/* 805050B0  4B B0 73 84 */	b mDoMtx_YrotM__FPA4_fs
/* 805050B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805050B8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805050BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805050C0  A8 BC 0A BC */	lha r5, 0xabc(r28)
/* 805050C4  A8 9C 09 CC */	lha r4, 0x9cc(r28)
/* 805050C8  A8 1C 0A 32 */	lha r0, 0xa32(r28)
/* 805050CC  7C 04 00 50 */	subf r0, r4, r0
/* 805050D0  7C 05 02 14 */	add r0, r5, r0
/* 805050D4  7C 00 0E 70 */	srawi r0, r0, 1
/* 805050D8  7C 00 01 94 */	addze r0, r0
/* 805050DC  7C 04 07 34 */	extsh r4, r0
/* 805050E0  4B B0 73 EC */	b mDoMtx_ZrotM__FPA4_fs
/* 805050E4  48 00 01 64 */	b lbl_80505248
lbl_805050E8:
/* 805050E8  2C 1F 00 0C */	cmpwi r31, 0xc
/* 805050EC  40 82 00 B0 */	bne lbl_8050519C
/* 805050F0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805050F4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805050F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805050FC  A8 9C 0A 34 */	lha r4, 0xa34(r28)
/* 80505100  4B B0 73 34 */	b mDoMtx_YrotM__FPA4_fs
/* 80505104  88 1C 09 C8 */	lbz r0, 0x9c8(r28)
/* 80505108  7C 00 07 74 */	extsb r0, r0
/* 8050510C  2C 00 00 03 */	cmpwi r0, 3
/* 80505110  41 82 00 68 */	beq lbl_80505178
/* 80505114  2C 00 00 04 */	cmpwi r0, 4
/* 80505118  41 82 00 60 */	beq lbl_80505178
/* 8050511C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505120  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505124  80 63 00 00 */	lwz r3, 0(r3)
/* 80505128  A8 9C 09 CA */	lha r4, 0x9ca(r28)
/* 8050512C  A8 1C 09 CE */	lha r0, 0x9ce(r28)
/* 80505130  7C 04 00 50 */	subf r0, r4, r0
/* 80505134  7C 00 0E 70 */	srawi r0, r0, 1
/* 80505138  7C 00 01 94 */	addze r0, r0
/* 8050513C  7C 04 07 34 */	extsh r4, r0
/* 80505140  4B B0 72 F4 */	b mDoMtx_YrotM__FPA4_fs
/* 80505144  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505148  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8050514C  80 63 00 00 */	lwz r3, 0(r3)
/* 80505150  A8 BC 0A BC */	lha r5, 0xabc(r28)
/* 80505154  A8 9C 09 CC */	lha r4, 0x9cc(r28)
/* 80505158  A8 1C 0A 32 */	lha r0, 0xa32(r28)
/* 8050515C  7C 04 00 50 */	subf r0, r4, r0
/* 80505160  7C 05 02 14 */	add r0, r5, r0
/* 80505164  7C 00 0E 70 */	srawi r0, r0, 1
/* 80505168  7C 00 01 94 */	addze r0, r0
/* 8050516C  7C 04 07 34 */	extsh r4, r0
/* 80505170  4B B0 73 5C */	b mDoMtx_ZrotM__FPA4_fs
/* 80505174  48 00 00 D4 */	b lbl_80505248
lbl_80505178:
/* 80505178  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050517C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505180  80 63 00 00 */	lwz r3, 0(r3)
/* 80505184  A8 9C 0A 32 */	lha r4, 0xa32(r28)
/* 80505188  A8 1C 0A BC */	lha r0, 0xabc(r28)
/* 8050518C  7C 04 02 14 */	add r0, r4, r0
/* 80505190  7C 04 07 34 */	extsh r4, r0
/* 80505194  4B B0 73 38 */	b mDoMtx_ZrotM__FPA4_fs
/* 80505198  48 00 00 B0 */	b lbl_80505248
lbl_8050519C:
/* 8050519C  2C 1F 00 11 */	cmpwi r31, 0x11
/* 805051A0  40 82 00 28 */	bne lbl_805051C8
/* 805051A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805051A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805051AC  80 63 00 00 */	lwz r3, 0(r3)
/* 805051B0  A8 9C 0A 46 */	lha r4, 0xa46(r28)
/* 805051B4  A8 1C 0A C2 */	lha r0, 0xac2(r28)
/* 805051B8  7C 04 02 14 */	add r0, r4, r0
/* 805051BC  7C 04 07 34 */	extsh r4, r0
/* 805051C0  4B B0 72 74 */	b mDoMtx_YrotM__FPA4_fs
/* 805051C4  48 00 00 84 */	b lbl_80505248
lbl_805051C8:
/* 805051C8  2C 1F 00 12 */	cmpwi r31, 0x12
/* 805051CC  40 82 00 28 */	bne lbl_805051F4
/* 805051D0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805051D4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805051D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805051DC  A8 9C 0A 4C */	lha r4, 0xa4c(r28)
/* 805051E0  A8 1C 0A C4 */	lha r0, 0xac4(r28)
/* 805051E4  7C 04 02 14 */	add r0, r4, r0
/* 805051E8  7C 04 07 34 */	extsh r4, r0
/* 805051EC  4B B0 72 48 */	b mDoMtx_YrotM__FPA4_fs
/* 805051F0  48 00 00 58 */	b lbl_80505248
lbl_805051F4:
/* 805051F4  2C 1F 00 16 */	cmpwi r31, 0x16
/* 805051F8  40 82 00 28 */	bne lbl_80505220
/* 805051FC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505200  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505204  80 63 00 00 */	lwz r3, 0(r3)
/* 80505208  A8 9C 0A 52 */	lha r4, 0xa52(r28)
/* 8050520C  A8 1C 0A C6 */	lha r0, 0xac6(r28)
/* 80505210  7C 04 02 14 */	add r0, r4, r0
/* 80505214  7C 04 07 34 */	extsh r4, r0
/* 80505218  4B B0 72 1C */	b mDoMtx_YrotM__FPA4_fs
/* 8050521C  48 00 00 2C */	b lbl_80505248
lbl_80505220:
/* 80505220  2C 1F 00 17 */	cmpwi r31, 0x17
/* 80505224  40 82 00 24 */	bne lbl_80505248
/* 80505228  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050522C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505230  80 63 00 00 */	lwz r3, 0(r3)
/* 80505234  A8 9C 0A 58 */	lha r4, 0xa58(r28)
/* 80505238  A8 1C 0A C8 */	lha r0, 0xac8(r28)
/* 8050523C  7C 04 02 14 */	add r0, r4, r0
/* 80505240  7C 04 07 34 */	extsh r4, r0
/* 80505244  4B B0 71 F0 */	b mDoMtx_YrotM__FPA4_fs
lbl_80505248:
/* 80505248  A8 9C 0A DA */	lha r4, 0xada(r28)
/* 8050524C  7C 80 07 35 */	extsh. r0, r4
/* 80505250  41 82 00 54 */	beq lbl_805052A4
/* 80505254  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80505258  41 82 00 18 */	beq lbl_80505270
/* 8050525C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505260  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505264  80 63 00 00 */	lwz r3, 0(r3)
/* 80505268  4B B0 71 CC */	b mDoMtx_YrotM__FPA4_fs
/* 8050526C  48 00 00 38 */	b lbl_805052A4
lbl_80505270:
/* 80505270  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 80505274  41 82 00 18 */	beq lbl_8050528C
/* 80505278  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8050527C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80505280  80 63 00 00 */	lwz r3, 0(r3)
/* 80505284  4B B0 71 18 */	b mDoMtx_XrotM__FPA4_fs
/* 80505288  48 00 00 1C */	b lbl_805052A4
lbl_8050528C:
/* 8050528C  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 80505290  41 82 00 14 */	beq lbl_805052A4
/* 80505294  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80505298  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8050529C  80 63 00 00 */	lwz r3, 0(r3)
/* 805052A0  4B B0 72 2C */	b mDoMtx_ZrotM__FPA4_fs
lbl_805052A4:
/* 805052A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805052A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805052AC  80 63 00 00 */	lwz r3, 0(r3)
/* 805052B0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 805052B4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805052B8  7C 80 EA 14 */	add r4, r0, r29
/* 805052BC  4B E4 11 F4 */	b PSMTXCopy
/* 805052C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805052C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805052C8  80 63 00 00 */	lwz r3, 0(r3)
/* 805052CC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805052D0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805052D4  4B E4 11 DC */	b PSMTXCopy
lbl_805052D8:
/* 805052D8  38 60 00 01 */	li r3, 1
/* 805052DC  39 61 00 40 */	addi r11, r1, 0x40
/* 805052E0  4B E5 CF 44 */	b _restgpr_28
/* 805052E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805052E8  7C 08 03 A6 */	mtlr r0
/* 805052EC  38 21 00 40 */	addi r1, r1, 0x40
/* 805052F0  4E 80 00 20 */	blr 
