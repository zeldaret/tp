lbl_80794100:
/* 80794100  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80794104  7C 08 02 A6 */	mflr r0
/* 80794108  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079410C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80794110  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80794114  7C 7E 1B 78 */	mr r30, r3
/* 80794118  3C 80 80 7A */	lis r4, lit_3920@ha /* 0x807985E0@ha */
/* 8079411C  3B E4 85 E0 */	addi r31, r4, lit_3920@l /* 0x807985E0@l */
/* 80794120  4B FF ED 51 */	bl SmDamageCheck__8daE_SM_cFv
/* 80794124  A8 1E 09 88 */	lha r0, 0x988(r30)
/* 80794128  2C 00 00 03 */	cmpwi r0, 3
/* 8079412C  41 82 00 60 */	beq lbl_8079418C
/* 80794130  40 80 00 1C */	bge lbl_8079414C
/* 80794134  2C 00 00 01 */	cmpwi r0, 1
/* 80794138  41 82 00 30 */	beq lbl_80794168
/* 8079413C  40 80 00 44 */	bge lbl_80794180
/* 80794140  2C 00 00 00 */	cmpwi r0, 0
/* 80794144  40 80 00 18 */	bge lbl_8079415C
/* 80794148  48 00 01 3C */	b lbl_80794284
lbl_8079414C:
/* 8079414C  2C 00 00 05 */	cmpwi r0, 5
/* 80794150  41 82 00 24 */	beq lbl_80794174
/* 80794154  40 80 01 30 */	bge lbl_80794284
/* 80794158  48 00 00 B4 */	b lbl_8079420C
lbl_8079415C:
/* 8079415C  7F C3 F3 78 */	mr r3, r30
/* 80794160  4B FF F5 55 */	bl E_SM_Normal__8daE_SM_cFv
/* 80794164  48 00 01 20 */	b lbl_80794284
lbl_80794168:
/* 80794168  7F C3 F3 78 */	mr r3, r30
/* 8079416C  4B FF F9 F9 */	bl E_SM_Move__8daE_SM_cFv
/* 80794170  48 00 01 14 */	b lbl_80794284
lbl_80794174:
/* 80794174  7F C3 F3 78 */	mr r3, r30
/* 80794178  4B FF FC A1 */	bl E_SM_Attack__8daE_SM_cFv
/* 8079417C  48 00 01 08 */	b lbl_80794284
lbl_80794180:
/* 80794180  7F C3 F3 78 */	mr r3, r30
/* 80794184  4B FF EA 9D */	bl E_SM_Damage__8daE_SM_cFv
/* 80794188  48 00 00 FC */	b lbl_80794284
lbl_8079418C:
/* 8079418C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794190  D0 3E 09 A8 */	stfs f1, 0x9a8(r30)
/* 80794194  A8 7E 06 BC */	lha r3, 0x6bc(r30)
/* 80794198  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8079419C  C0 1E 09 80 */	lfs f0, 0x980(r30)
/* 807941A0  EC 42 00 2A */	fadds f2, f2, f0
/* 807941A4  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 807941A8  EC 02 00 24 */	fdivs f0, f2, f0
/* 807941AC  FC 00 00 1E */	fctiwz f0, f0
/* 807941B0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807941B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807941B8  7C 03 02 14 */	add r0, r3, r0
/* 807941BC  B0 1E 06 BC */	sth r0, 0x6bc(r30)
/* 807941C0  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 807941C4  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807941C8  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 807941CC  4B AD B8 71 */	bl cLib_addCalc2__FPffff
/* 807941D0  38 7E 06 E0 */	addi r3, r30, 0x6e0
/* 807941D4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807941D8  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 807941DC  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 807941E0  4B AD B8 5D */	bl cLib_addCalc2__FPffff
/* 807941E4  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 807941E8  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 807941EC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 807941F0  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 807941F4  4B AD B8 49 */	bl cLib_addCalc2__FPffff
/* 807941F8  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807941FC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794200  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80794204  4B AD C5 3D */	bl cLib_chaseF__FPfff
/* 80794208  48 00 00 7C */	b lbl_80794284
lbl_8079420C:
/* 8079420C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80794210  38 80 00 01 */	li r4, 1
/* 80794214  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80794218  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8079421C  40 82 00 18 */	bne lbl_80794234
/* 80794220  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80794224  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80794228  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8079422C  41 82 00 08 */	beq lbl_80794234
/* 80794230  38 80 00 00 */	li r4, 0
lbl_80794234:
/* 80794234  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80794238  41 82 00 4C */	beq lbl_80794284
/* 8079423C  88 9E 06 80 */	lbz r4, 0x680(r30)
/* 80794240  28 04 00 FF */	cmplwi r4, 0xff
/* 80794244  41 82 00 38 */	beq lbl_8079427C
/* 80794248  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079424C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80794250  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80794254  7C 05 07 74 */	extsb r5, r0
/* 80794258  4B 8A 11 09 */	bl isSwitch__10dSv_info_cCFii
/* 8079425C  2C 03 00 00 */	cmpwi r3, 0
/* 80794260  40 82 00 1C */	bne lbl_8079427C
/* 80794264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80794268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079426C  88 9E 06 80 */	lbz r4, 0x680(r30)
/* 80794270  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80794274  7C 05 07 74 */	extsb r5, r0
/* 80794278  4B 8A 0F 89 */	bl onSwitch__10dSv_info_cFii
lbl_8079427C:
/* 8079427C  7F C3 F3 78 */	mr r3, r30
/* 80794280  4B 88 59 FD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80794284:
/* 80794284  38 7E 09 80 */	addi r3, r30, 0x980
/* 80794288  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8079428C  C0 5F 00 F8 */	lfs f2, 0xf8(r31)
/* 80794290  4B AD C4 B1 */	bl cLib_chaseF__FPfff
/* 80794294  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80794298  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079429C  80 63 00 00 */	lwz r3, 0(r3)
/* 807942A0  A8 9E 09 B2 */	lha r4, 0x9b2(r30)
/* 807942A4  4B 87 81 39 */	bl mDoMtx_YrotS__FPA4_fs
/* 807942A8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807942AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807942B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807942B4  C0 1E 09 A8 */	lfs f0, 0x9a8(r30)
/* 807942B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807942BC  38 61 00 14 */	addi r3, r1, 0x14
/* 807942C0  38 81 00 08 */	addi r4, r1, 8
/* 807942C4  4B AD CC 29 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807942C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 807942CC  D0 1E 09 B8 */	stfs f0, 0x9b8(r30)
/* 807942D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807942D4  D0 1E 09 C0 */	stfs f0, 0x9c0(r30)
/* 807942D8  38 7E 09 90 */	addi r3, r30, 0x990
/* 807942DC  38 9E 09 B8 */	addi r4, r30, 0x9b8
/* 807942E0  7C 65 1B 78 */	mr r5, r3
/* 807942E4  4B BB 2D AD */	bl PSVECAdd
/* 807942E8  C0 3E 09 BC */	lfs f1, 0x9bc(r30)
/* 807942EC  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 807942F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807942F4  D0 1E 09 BC */	stfs f0, 0x9bc(r30)
/* 807942F8  34 9E 0E 8C */	addic. r4, r30, 0xe8c
/* 807942FC  41 82 00 10 */	beq lbl_8079430C
/* 80794300  38 7E 09 90 */	addi r3, r30, 0x990
/* 80794304  7C 65 1B 78 */	mr r5, r3
/* 80794308  4B BB 2D 89 */	bl PSVECAdd
lbl_8079430C:
/* 8079430C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80794310  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80794314  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80794318  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8079431C  4B 8E 27 91 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80794320  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80794324  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80794328  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079432C  7C 08 03 A6 */	mtlr r0
/* 80794330  38 21 00 30 */	addi r1, r1, 0x30
/* 80794334  4E 80 00 20 */	blr 
