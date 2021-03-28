lbl_80109BDC:
/* 80109BDC  94 21 FD C0 */	stwu r1, -0x240(r1)
/* 80109BE0  7C 08 02 A6 */	mflr r0
/* 80109BE4  90 01 02 44 */	stw r0, 0x244(r1)
/* 80109BE8  DB E1 02 30 */	stfd f31, 0x230(r1)
/* 80109BEC  F3 E1 02 38 */	psq_st f31, 568(r1), 0, 0 /* qr0 */
/* 80109BF0  DB C1 02 20 */	stfd f30, 0x220(r1)
/* 80109BF4  F3 C1 02 28 */	psq_st f30, 552(r1), 0, 0 /* qr0 */
/* 80109BF8  DB A1 02 10 */	stfd f29, 0x210(r1)
/* 80109BFC  F3 A1 02 18 */	psq_st f29, 536(r1), 0, 0 /* qr0 */
/* 80109C00  39 61 02 10 */	addi r11, r1, 0x210
/* 80109C04  48 25 85 C9 */	bl _savegpr_25
/* 80109C08  7C 7F 1B 78 */	mr r31, r3
/* 80109C0C  80 63 06 50 */	lwz r3, 0x650(r3)
/* 80109C10  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80109C14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80109C18  A0 1F 30 C0 */	lhz r0, 0x30c0(r31)
/* 80109C1C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80109C20  7C 63 02 14 */	add r3, r3, r0
/* 80109C24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80109C28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80109C2C  48 23 C8 85 */	bl PSMTXCopy
/* 80109C30  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 80109C34  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80109C38  FC 60 10 90 */	fmr f3, f2
/* 80109C3C  4B F0 31 61 */	bl transM__14mDoMtx_stack_cFfff
/* 80109C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80109C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80109C48  38 80 04 0D */	li r4, 0x40d
/* 80109C4C  38 A0 73 33 */	li r5, 0x7333
/* 80109C50  38 C0 00 00 */	li r6, 0
/* 80109C54  4B F0 25 11 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 80109C58  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 80109C5C  2C 00 00 00 */	cmpwi r0, 0
/* 80109C60  40 82 00 0C */	bne lbl_80109C6C
/* 80109C64  80 9F 07 08 */	lwz r4, 0x708(r31)
/* 80109C68  48 00 00 08 */	b lbl_80109C70
lbl_80109C6C:
/* 80109C6C  80 9F 07 10 */	lwz r4, 0x710(r31)
lbl_80109C70:
/* 80109C70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80109C74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80109C78  38 84 00 24 */	addi r4, r4, 0x24
/* 80109C7C  48 23 C8 35 */	bl PSMTXCopy
/* 80109C80  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80109C84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80109C88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80109C8C  A0 1F 30 C2 */	lhz r0, 0x30c2(r31)
/* 80109C90  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80109C94  7C 63 02 14 */	add r3, r3, r0
/* 80109C98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80109C9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80109CA0  48 23 C8 11 */	bl PSMTXCopy
/* 80109CA4  C0 22 93 6C */	lfs f1, lit_8473(r2)
/* 80109CA8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 80109CAC  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 80109CB0  4B F0 30 ED */	bl transM__14mDoMtx_stack_cFfff
/* 80109CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80109CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80109CBC  38 80 C8 89 */	li r4, -14199
/* 80109CC0  38 A0 81 6C */	li r5, -32404
/* 80109CC4  38 C0 B9 9A */	li r6, -18022
/* 80109CC8  4B F0 24 9D */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 80109CCC  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 80109CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80109CD4  40 82 00 0C */	bne lbl_80109CE0
/* 80109CD8  80 9F 07 10 */	lwz r4, 0x710(r31)
/* 80109CDC  48 00 00 08 */	b lbl_80109CE4
lbl_80109CE0:
/* 80109CE0  80 9F 07 08 */	lwz r4, 0x708(r31)
lbl_80109CE4:
/* 80109CE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80109CE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80109CEC  38 84 00 24 */	addi r4, r4, 0x24
/* 80109CF0  48 23 C7 C1 */	bl PSMTXCopy
/* 80109CF4  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80109CF8  2C 00 00 02 */	cmpwi r0, 2
/* 80109CFC  41 82 00 0C */	beq lbl_80109D08
/* 80109D00  2C 00 00 03 */	cmpwi r0, 3
/* 80109D04  40 82 00 8C */	bne lbl_80109D90
lbl_80109D08:
/* 80109D08  C0 3F 33 DC */	lfs f1, 0x33dc(r31)
/* 80109D0C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80109D10  EC 01 00 2A */	fadds f0, f1, f0
/* 80109D14  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
/* 80109D18  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 80109D1C  A8 03 00 06 */	lha r0, 6(r3)
/* 80109D20  C0 5F 33 DC */	lfs f2, 0x33dc(r31)
/* 80109D24  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80109D28  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80109D2C  90 61 01 E4 */	stw r3, 0x1e4(r1)
/* 80109D30  3C 00 43 30 */	lis r0, 0x4330
/* 80109D34  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109D38  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109D3C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109D40  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80109D44  4C 41 13 82 */	cror 2, 1, 2
/* 80109D48  40 82 00 1C */	bne lbl_80109D64
/* 80109D4C  90 61 01 E4 */	stw r3, 0x1e4(r1)
/* 80109D50  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109D54  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109D58  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109D5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80109D60  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
lbl_80109D64:
/* 80109D64  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 80109D68  A8 03 00 06 */	lha r0, 6(r3)
/* 80109D6C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80109D70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80109D74  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80109D78  3C 00 43 30 */	lis r0, 0x4330
/* 80109D7C  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109D80  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109D84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109D88  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109D8C  48 00 01 7C */	b lbl_80109F08
lbl_80109D90:
/* 80109D90  2C 00 00 04 */	cmpwi r0, 4
/* 80109D94  41 82 00 14 */	beq lbl_80109DA8
/* 80109D98  2C 00 00 05 */	cmpwi r0, 5
/* 80109D9C  41 82 00 0C */	beq lbl_80109DA8
/* 80109DA0  2C 00 00 06 */	cmpwi r0, 6
/* 80109DA4  40 82 00 80 */	bne lbl_80109E24
lbl_80109DA8:
/* 80109DA8  C0 3F 33 DC */	lfs f1, 0x33dc(r31)
/* 80109DAC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80109DB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80109DB4  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
/* 80109DB8  C0 5F 33 DC */	lfs f2, 0x33dc(r31)
/* 80109DBC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80109DC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80109DC4  40 80 00 30 */	bge lbl_80109DF4
/* 80109DC8  80 7F 07 44 */	lwz r3, 0x744(r31)
/* 80109DCC  A8 03 00 06 */	lha r0, 6(r3)
/* 80109DD0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80109DD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80109DD8  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80109DDC  3C 00 43 30 */	lis r0, 0x4330
/* 80109DE0  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109DE4  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109DE8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109DEC  EC 02 00 2A */	fadds f0, f2, f0
/* 80109DF0  D0 1F 33 DC */	stfs f0, 0x33dc(r31)
lbl_80109DF4:
/* 80109DF4  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80109DF8  2C 00 00 06 */	cmpwi r0, 6
/* 80109DFC  40 82 00 1C */	bne lbl_80109E18
/* 80109E00  80 1F 28 50 */	lwz r0, 0x2850(r31)
/* 80109E04  28 00 00 00 */	cmplwi r0, 0
/* 80109E08  40 82 00 10 */	bne lbl_80109E18
/* 80109E0C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80109E10  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109E14  48 00 00 F4 */	b lbl_80109F08
lbl_80109E18:
/* 80109E18  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 80109E1C  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109E20  48 00 00 E8 */	b lbl_80109F08
lbl_80109E24:
/* 80109E24  2C 00 00 01 */	cmpwi r0, 1
/* 80109E28  40 82 00 D8 */	bne lbl_80109F00
/* 80109E2C  38 60 00 00 */	li r3, 0
/* 80109E30  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80109E34  28 00 01 8D */	cmplwi r0, 0x18d
/* 80109E38  41 82 00 10 */	beq lbl_80109E48
/* 80109E3C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80109E40  28 00 01 8C */	cmplwi r0, 0x18c
/* 80109E44  40 82 00 08 */	bne lbl_80109E4C
lbl_80109E48:
/* 80109E48  38 60 00 01 */	li r3, 1
lbl_80109E4C:
/* 80109E4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109E50  40 82 00 2C */	bne lbl_80109E7C
/* 80109E54  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80109E58  28 00 00 CB */	cmplwi r0, 0xcb
/* 80109E5C  41 82 00 20 */	beq lbl_80109E7C
/* 80109E60  28 00 00 C8 */	cmplwi r0, 0xc8
/* 80109E64  41 82 00 18 */	beq lbl_80109E7C
/* 80109E68  7F E3 FB 78 */	mr r3, r31
/* 80109E6C  4B FF E8 71 */	bl resetHookshotMode__9daAlink_cFv
/* 80109E70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80109E74  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109E78  48 00 00 90 */	b lbl_80109F08
lbl_80109E7C:
/* 80109E7C  C0 3F 33 E0 */	lfs f1, 0x33e0(r31)
/* 80109E80  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80109E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80109E88  40 80 00 20 */	bge lbl_80109EA8
/* 80109E8C  7F E3 FB 78 */	mr r3, r31
/* 80109E90  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020043@ha */
/* 80109E94  38 84 00 43 */	addi r4, r4, 0x0043 /* 0x00020043@l */
/* 80109E98  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80109E9C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80109EA0  7D 89 03 A6 */	mtctr r12
/* 80109EA4  4E 80 04 21 */	bctrl 
lbl_80109EA8:
/* 80109EA8  C0 3F 33 E0 */	lfs f1, 0x33e0(r31)
/* 80109EAC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80109EB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80109EB4  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109EB8  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 80109EBC  A8 03 00 06 */	lha r0, 6(r3)
/* 80109EC0  C0 5F 33 E0 */	lfs f2, 0x33e0(r31)
/* 80109EC4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80109EC8  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80109ECC  90 61 01 E4 */	stw r3, 0x1e4(r1)
/* 80109ED0  3C 00 43 30 */	lis r0, 0x4330
/* 80109ED4  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109ED8  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109EDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109EE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80109EE4  40 81 00 24 */	ble lbl_80109F08
/* 80109EE8  90 61 01 E4 */	stw r3, 0x1e4(r1)
/* 80109EEC  90 01 01 E0 */	stw r0, 0x1e0(r1)
/* 80109EF0  C8 01 01 E0 */	lfd f0, 0x1e0(r1)
/* 80109EF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80109EF8  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
/* 80109EFC  48 00 00 0C */	b lbl_80109F08
lbl_80109F00:
/* 80109F00  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80109F04  D0 1F 33 E0 */	stfs f0, 0x33e0(r31)
lbl_80109F08:
/* 80109F08  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 80109F0C  80 83 00 04 */	lwz r4, 4(r3)
/* 80109F10  38 7F 07 30 */	addi r3, r31, 0x730
/* 80109F14  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80109F18  4B F0 3A B5 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80109F1C  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 80109F20  81 83 00 00 */	lwz r12, 0(r3)
/* 80109F24  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80109F28  7D 89 03 A6 */	mtctr r12
/* 80109F2C  4E 80 04 21 */	bctrl 
/* 80109F30  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 80109F34  38 63 00 24 */	addi r3, r3, 0x24
/* 80109F38  3C 80 80 39 */	lis r4, hookRoot@ha
/* 80109F3C  38 84 1A 08 */	addi r4, r4, hookRoot@l
/* 80109F40  38 BF 37 E0 */	addi r5, r31, 0x37e0
/* 80109F44  48 23 CE 29 */	bl PSMTXMultVec
/* 80109F48  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 80109F4C  38 63 00 24 */	addi r3, r3, 0x24
/* 80109F50  3C 80 80 39 */	lis r4, hookRoot@ha
/* 80109F54  38 84 1A 08 */	addi r4, r4, hookRoot@l
/* 80109F58  38 BF 38 10 */	addi r5, r31, 0x3810
/* 80109F5C  48 23 CE 11 */	bl PSMTXMultVec
/* 80109F60  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 80109F64  38 80 00 00 */	li r4, 0
/* 80109F68  88 BF 2F 9A */	lbz r5, 0x2f9a(r31)
/* 80109F6C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 80109F70  81 8C 00 08 */	lwz r12, 8(r12)
/* 80109F74  7D 89 03 A6 */	mtctr r12
/* 80109F78  4E 80 04 21 */	bctrl 
/* 80109F7C  83 DF 28 50 */	lwz r30, 0x2850(r31)
/* 80109F80  7F E3 FB 78 */	mr r3, r31
/* 80109F84  4B FF E8 01 */	bl checkLv7BossRoom__9daAlink_cFv
/* 80109F88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109F8C  41 82 00 1C */	beq lbl_80109FA8
/* 80109F90  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80109F94  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80109F98  C3 E3 00 68 */	lfs f31, 0x68(r3)
/* 80109F9C  C3 C3 00 64 */	lfs f30, 0x64(r3)
/* 80109FA0  C3 A3 00 60 */	lfs f29, 0x60(r3)
/* 80109FA4  48 00 00 18 */	b lbl_80109FBC
lbl_80109FA8:
/* 80109FA8  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80109FAC  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80109FB0  C3 E3 00 50 */	lfs f31, 0x50(r3)
/* 80109FB4  C3 C3 00 4C */	lfs f30, 0x4c(r3)
/* 80109FB8  C3 A3 00 48 */	lfs f29, 0x48(r3)
lbl_80109FBC:
/* 80109FBC  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 80109FC0  2C 00 00 06 */	cmpwi r0, 6
/* 80109FC4  40 82 02 60 */	bne lbl_8010A224
/* 80109FC8  28 1E 00 00 */	cmplwi r30, 0
/* 80109FCC  41 82 00 30 */	beq lbl_80109FFC
/* 80109FD0  7F E3 FB 78 */	mr r3, r31
/* 80109FD4  4B FF E7 B1 */	bl checkLv7BossRoom__9daAlink_cFv
/* 80109FD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109FDC  41 82 00 14 */	beq lbl_80109FF0
/* 80109FE0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80109FE4  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80109FE8  C3 E3 00 6C */	lfs f31, 0x6c(r3)
/* 80109FEC  48 00 00 10 */	b lbl_80109FFC
lbl_80109FF0:
/* 80109FF0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha
/* 80109FF4  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l
/* 80109FF8  C3 E3 00 54 */	lfs f31, 0x54(r3)
lbl_80109FFC:
/* 80109FFC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010A000  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8010A004  41 82 00 F8 */	beq lbl_8010A0FC
/* 8010A008  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8010A00C  38 9F 37 98 */	addi r4, r31, 0x3798
/* 8010A010  48 23 D3 8D */	bl PSVECSquareDistance
/* 8010A014  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010A018  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A01C  40 81 00 58 */	ble lbl_8010A074
/* 8010A020  FC 00 08 34 */	frsqrte f0, f1
/* 8010A024  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010A028  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A02C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010A030  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A034  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A038  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A03C  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A040  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A044  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A048  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A04C  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A050  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A054  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A058  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A05C  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A060  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A064  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A068  FC 21 00 32 */	fmul f1, f1, f0
/* 8010A06C  FC 20 08 18 */	frsp f1, f1
/* 8010A070  48 00 00 88 */	b lbl_8010A0F8
lbl_8010A074:
/* 8010A074  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010A078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A07C  40 80 00 10 */	bge lbl_8010A08C
/* 8010A080  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010A084  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8010A088  48 00 00 70 */	b lbl_8010A0F8
lbl_8010A08C:
/* 8010A08C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8010A090  80 81 00 28 */	lwz r4, 0x28(r1)
/* 8010A094  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010A098  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010A09C  7C 03 00 00 */	cmpw r3, r0
/* 8010A0A0  41 82 00 14 */	beq lbl_8010A0B4
/* 8010A0A4  40 80 00 40 */	bge lbl_8010A0E4
/* 8010A0A8  2C 03 00 00 */	cmpwi r3, 0
/* 8010A0AC  41 82 00 20 */	beq lbl_8010A0CC
/* 8010A0B0  48 00 00 34 */	b lbl_8010A0E4
lbl_8010A0B4:
/* 8010A0B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010A0B8  41 82 00 0C */	beq lbl_8010A0C4
/* 8010A0BC  38 00 00 01 */	li r0, 1
/* 8010A0C0  48 00 00 28 */	b lbl_8010A0E8
lbl_8010A0C4:
/* 8010A0C4  38 00 00 02 */	li r0, 2
/* 8010A0C8  48 00 00 20 */	b lbl_8010A0E8
lbl_8010A0CC:
/* 8010A0CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010A0D0  41 82 00 0C */	beq lbl_8010A0DC
/* 8010A0D4  38 00 00 05 */	li r0, 5
/* 8010A0D8  48 00 00 10 */	b lbl_8010A0E8
lbl_8010A0DC:
/* 8010A0DC  38 00 00 03 */	li r0, 3
/* 8010A0E0  48 00 00 08 */	b lbl_8010A0E8
lbl_8010A0E4:
/* 8010A0E4  38 00 00 04 */	li r0, 4
lbl_8010A0E8:
/* 8010A0E8  2C 00 00 01 */	cmpwi r0, 1
/* 8010A0EC  40 82 00 0C */	bne lbl_8010A0F8
/* 8010A0F0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010A0F4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8010A0F8:
/* 8010A0F8  EF FF 08 2A */	fadds f31, f31, f1
lbl_8010A0FC:
/* 8010A0FC  A8 7F 30 26 */	lha r3, 0x3026(r31)
/* 8010A100  2C 03 00 00 */	cmpwi r3, 0
/* 8010A104  41 82 00 10 */	beq lbl_8010A114
/* 8010A108  38 03 FF FF */	addi r0, r3, -1
/* 8010A10C  B0 1F 30 26 */	sth r0, 0x3026(r31)
/* 8010A110  48 00 00 B8 */	b lbl_8010A1C8
lbl_8010A114:
/* 8010A114  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8010A118  28 00 01 42 */	cmplwi r0, 0x142
/* 8010A11C  40 82 00 2C */	bne lbl_8010A148
/* 8010A120  38 60 00 00 */	li r3, 0
/* 8010A124  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 8010A128  28 00 01 8D */	cmplwi r0, 0x18d
/* 8010A12C  41 82 00 10 */	beq lbl_8010A13C
/* 8010A130  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8010A134  28 00 01 8C */	cmplwi r0, 0x18c
/* 8010A138  40 82 00 08 */	bne lbl_8010A140
lbl_8010A13C:
/* 8010A13C  38 60 00 01 */	li r3, 1
lbl_8010A140:
/* 8010A140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010A144  40 82 00 84 */	bne lbl_8010A1C8
lbl_8010A148:
/* 8010A148  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 8010A14C  38 9F 37 E0 */	addi r4, r31, 0x37e0
/* 8010A150  FC 20 F8 90 */	fmr f1, f31
/* 8010A154  48 16 66 59 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8010A158  2C 03 00 00 */	cmpwi r3, 0
/* 8010A15C  41 82 00 10 */	beq lbl_8010A16C
/* 8010A160  7F E3 FB 78 */	mr r3, r31
/* 8010A164  4B FF F6 3D */	bl setHookshotReturnEnd__9daAlink_cFv
/* 8010A168  48 00 00 60 */	b lbl_8010A1C8
lbl_8010A16C:
/* 8010A16C  38 61 01 4C */	addi r3, r1, 0x14c
/* 8010A170  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A174  38 BF 37 E0 */	addi r5, r31, 0x37e0
/* 8010A178  48 15 C9 BD */	bl __mi__4cXyzCFRC3Vec
/* 8010A17C  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8010A180  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 8010A184  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 8010A188  D0 01 01 B0 */	stfs f0, 0x1b0(r1)
/* 8010A18C  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 8010A190  D0 01 01 B4 */	stfs f0, 0x1b4(r1)
/* 8010A194  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8010A198  48 15 CF B9 */	bl atan2sY_XZ__4cXyzCFv
/* 8010A19C  B0 7F 30 1C */	sth r3, 0x301c(r31)
/* 8010A1A0  38 61 01 AC */	addi r3, r1, 0x1ac
/* 8010A1A4  48 15 CF 85 */	bl atan2sX_Z__4cXyzCFv
/* 8010A1A8  B0 7F 30 1E */	sth r3, 0x301e(r31)
/* 8010A1AC  7F E3 FB 78 */	mr r3, r31
/* 8010A1B0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004A@ha */
/* 8010A1B4  38 84 00 4A */	addi r4, r4, 0x004A /* 0x0002004A@l */
/* 8010A1B8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8010A1BC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010A1C0  7D 89 03 A6 */	mtctr r12
/* 8010A1C4  4E 80 04 21 */	bctrl 
lbl_8010A1C8:
/* 8010A1C8  28 1E 00 00 */	cmplwi r30, 0
/* 8010A1CC  41 82 00 58 */	beq lbl_8010A224
/* 8010A1D0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010A1D4  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8010A1D8  41 82 00 44 */	beq lbl_8010A21C
/* 8010A1DC  38 61 01 40 */	addi r3, r1, 0x140
/* 8010A1E0  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A1E4  38 BF 37 F8 */	addi r5, r31, 0x37f8
/* 8010A1E8  48 15 C9 4D */	bl __mi__4cXyzCFRC3Vec
/* 8010A1EC  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 8010A1F0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8010A1F4  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 8010A1F8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8010A1FC  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 8010A200  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8010A204  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A208  2C 00 00 00 */	cmpwi r0, 0
/* 8010A20C  40 82 00 18 */	bne lbl_8010A224
/* 8010A210  7F E3 FB 78 */	mr r3, r31
/* 8010A214  4B FF E6 15 */	bl cancelHookshotCarry__9daAlink_cFv
/* 8010A218  48 00 00 0C */	b lbl_8010A224
lbl_8010A21C:
/* 8010A21C  38 7F 28 4C */	addi r3, r31, 0x284c
/* 8010A220  48 05 4A DD */	bl clearData__16daPy_actorKeep_cFv
lbl_8010A224:
/* 8010A224  7F E3 FB 78 */	mr r3, r31
/* 8010A228  4B FF E7 F1 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010A22C  2C 03 00 00 */	cmpwi r3, 0
/* 8010A230  40 82 00 10 */	bne lbl_8010A240
/* 8010A234  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A238  2C 00 00 02 */	cmpwi r0, 2
/* 8010A23C  40 82 02 34 */	bne lbl_8010A470
lbl_8010A240:
/* 8010A240  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 8010A244  28 00 00 CB */	cmplwi r0, 0xcb
/* 8010A248  41 82 00 0C */	beq lbl_8010A254
/* 8010A24C  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8010A250  40 82 00 0C */	bne lbl_8010A25C
lbl_8010A254:
/* 8010A254  3B BF 30 0E */	addi r29, r31, 0x300e
/* 8010A258  48 00 00 08 */	b lbl_8010A260
lbl_8010A25C:
/* 8010A25C  3B BF 05 9C */	addi r29, r31, 0x59c
lbl_8010A260:
/* 8010A260  28 00 00 CB */	cmplwi r0, 0xcb
/* 8010A264  40 82 00 10 */	bne lbl_8010A274
/* 8010A268  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8010A26C  B0 1F 30 1E */	sth r0, 0x301e(r31)
/* 8010A270  48 00 00 14 */	b lbl_8010A284
lbl_8010A274:
/* 8010A274  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8010A278  A8 1F 05 9E */	lha r0, 0x59e(r31)
/* 8010A27C  7C 03 02 14 */	add r0, r3, r0
/* 8010A280  B0 1F 30 1E */	sth r0, 0x301e(r31)
lbl_8010A284:
/* 8010A284  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 8010A288  28 00 00 00 */	cmplwi r0, 0
/* 8010A28C  41 82 00 C0 */	beq lbl_8010A34C
/* 8010A290  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A294  2C 00 00 02 */	cmpwi r0, 2
/* 8010A298  40 82 00 B4 */	bne lbl_8010A34C
/* 8010A29C  7F E3 FB 78 */	mr r3, r31
/* 8010A2A0  38 80 00 00 */	li r4, 0
/* 8010A2A4  4B FB 0D E1 */	bl getBodyAngleXAtnActor__9daAlink_cFi
/* 8010A2A8  7C 79 1B 78 */	mr r25, r3
/* 8010A2AC  A8 9D 00 00 */	lha r4, 0(r29)
/* 8010A2B0  48 16 6B 75 */	bl cLib_distanceAngleS__Fss
/* 8010A2B4  2C 03 30 00 */	cmpwi r3, 0x3000
/* 8010A2B8  40 80 00 94 */	bge lbl_8010A34C
/* 8010A2BC  7F E3 FB 78 */	mr r3, r31
/* 8010A2C0  38 81 01 A0 */	addi r4, r1, 0x1a0
/* 8010A2C4  4B FB 0D 5D */	bl getBodyAngleXBasePos__9daAlink_cFP4cXyz
/* 8010A2C8  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8010A2CC  4B F0 2A 99 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8010A2D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A2D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A2D8  7F 24 CB 78 */	mr r4, r25
/* 8010A2DC  A8 BF 30 1E */	lha r5, 0x301e(r31)
/* 8010A2E0  38 C0 00 00 */	li r6, 0
/* 8010A2E4  4B F0 1F BD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8010A2E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A2EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A2F0  A8 1D 00 00 */	lha r0, 0(r29)
/* 8010A2F4  7C 00 00 D0 */	neg r0, r0
/* 8010A2F8  7C 04 07 34 */	extsh r4, r0
/* 8010A2FC  4B F0 20 A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8010A300  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A304  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A308  A8 1F 30 1E */	lha r0, 0x301e(r31)
/* 8010A30C  7C 00 00 D0 */	neg r0, r0
/* 8010A310  7C 04 07 34 */	extsh r4, r0
/* 8010A314  4B F0 21 21 */	bl mDoMtx_YrotM__FPA4_fs
/* 8010A318  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 8010A31C  FC 20 00 50 */	fneg f1, f0
/* 8010A320  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 8010A324  FC 40 00 50 */	fneg f2, f0
/* 8010A328  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 8010A32C  FC 60 00 50 */	fneg f3, f0
/* 8010A330  4B F0 2A 6D */	bl transM__14mDoMtx_stack_cFfff
/* 8010A334  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A338  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A33C  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A340  7C 85 23 78 */	mr r5, r4
/* 8010A344  48 23 CA 29 */	bl PSMTXMultVec
/* 8010A348  B3 3D 00 00 */	sth r25, 0(r29)
lbl_8010A34C:
/* 8010A34C  A8 1D 00 00 */	lha r0, 0(r29)
/* 8010A350  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 8010A354  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A358  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A35C  A8 9F 30 1C */	lha r4, 0x301c(r31)
/* 8010A360  A8 BF 30 1E */	lha r5, 0x301e(r31)
/* 8010A364  38 C0 00 00 */	li r6, 0
/* 8010A368  4B F0 1E A1 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8010A36C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A370  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A374  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 8010A378  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 8010A37C  38 BF 37 F8 */	addi r5, r31, 0x37f8
/* 8010A380  48 23 C9 ED */	bl PSMTXMultVec
/* 8010A384  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A388  2C 00 00 02 */	cmpwi r0, 2
/* 8010A38C  40 82 00 44 */	bne lbl_8010A3D0
/* 8010A390  7F E3 FB 78 */	mr r3, r31
/* 8010A394  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020048@ha */
/* 8010A398  38 84 00 48 */	addi r4, r4, 0x0048 /* 0x00020048@l */
/* 8010A39C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8010A3A0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8010A3A4  7D 89 03 A6 */	mtctr r12
/* 8010A3A8  4E 80 04 21 */	bctrl 
/* 8010A3AC  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 8010A3B0  28 00 00 00 */	cmplwi r0, 0
/* 8010A3B4  41 82 00 10 */	beq lbl_8010A3C4
/* 8010A3B8  38 00 00 01 */	li r0, 1
/* 8010A3BC  B0 1F 30 28 */	sth r0, 0x3028(r31)
/* 8010A3C0  48 00 00 28 */	b lbl_8010A3E8
lbl_8010A3C4:
/* 8010A3C4  38 00 00 00 */	li r0, 0
/* 8010A3C8  B0 1F 30 28 */	sth r0, 0x3028(r31)
/* 8010A3CC  48 00 00 1C */	b lbl_8010A3E8
lbl_8010A3D0:
/* 8010A3D0  C0 1F 37 E0 */	lfs f0, 0x37e0(r31)
/* 8010A3D4  D0 1F 38 28 */	stfs f0, 0x3828(r31)
/* 8010A3D8  C0 1F 37 E4 */	lfs f0, 0x37e4(r31)
/* 8010A3DC  D0 1F 38 2C */	stfs f0, 0x382c(r31)
/* 8010A3E0  C0 1F 37 E8 */	lfs f0, 0x37e8(r31)
/* 8010A3E4  D0 1F 38 30 */	stfs f0, 0x3830(r31)
lbl_8010A3E8:
/* 8010A3E8  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 8010A3EC  38 63 00 24 */	addi r3, r3, 0x24
/* 8010A3F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8010A3F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8010A3F8  48 23 C0 B9 */	bl PSMTXCopy
/* 8010A3FC  3C 60 80 39 */	lis r3, hookRoot@ha
/* 8010A400  C4 03 1A 08 */	lfsu f0, hookRoot@l(r3)
/* 8010A404  D0 01 01 34 */	stfs f0, 0x134(r1)
/* 8010A408  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010A40C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8010A410  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010A414  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8010A418  38 61 01 34 */	addi r3, r1, 0x134
/* 8010A41C  4B F0 29 B9 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8010A420  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 8010A424  28 00 00 00 */	cmplwi r0, 0
/* 8010A428  40 82 00 10 */	bne lbl_8010A438
/* 8010A42C  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A430  2C 00 00 02 */	cmpwi r0, 2
/* 8010A434  41 82 00 24 */	beq lbl_8010A458
lbl_8010A438:
/* 8010A438  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A43C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A440  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8010A444  D0 1F 37 EC */	stfs f0, 0x37ec(r31)
/* 8010A448  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8010A44C  D0 1F 37 F0 */	stfs f0, 0x37f0(r31)
/* 8010A450  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8010A454  D0 1F 37 F4 */	stfs f0, 0x37f4(r31)
lbl_8010A458:
/* 8010A458  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 8010A45C  2C 00 00 02 */	cmpwi r0, 2
/* 8010A460  40 82 0C 70 */	bne lbl_8010B0D0
/* 8010A464  38 00 00 03 */	li r0, 3
/* 8010A468  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010A46C  48 00 0C 64 */	b lbl_8010B0D0
lbl_8010A470:
/* 8010A470  C0 1F 37 EC */	lfs f0, 0x37ec(r31)
/* 8010A474  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8010A478  C0 1F 37 F0 */	lfs f0, 0x37f0(r31)
/* 8010A47C  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8010A480  C0 1F 37 F4 */	lfs f0, 0x37f4(r31)
/* 8010A484  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 8010A488  2C 00 00 06 */	cmpwi r0, 6
/* 8010A48C  41 82 0B 88 */	beq lbl_8010B014
/* 8010A490  2C 00 00 03 */	cmpwi r0, 3
/* 8010A494  40 82 0B 80 */	bne lbl_8010B014
/* 8010A498  38 7F 12 2C */	addi r3, r31, 0x122c
/* 8010A49C  4B F7 9E 25 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8010A4A0  28 03 00 00 */	cmplwi r3, 0
/* 8010A4A4  41 82 01 B8 */	beq lbl_8010A65C
/* 8010A4A8  80 1F 28 50 */	lwz r0, 0x2850(r31)
/* 8010A4AC  28 00 00 00 */	cmplwi r0, 0
/* 8010A4B0  40 82 00 14 */	bne lbl_8010A4C4
/* 8010A4B4  C0 3F 34 94 */	lfs f1, 0x3494(r31)
/* 8010A4B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010A4BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A4C0  40 81 01 9C */	ble lbl_8010A65C
lbl_8010A4C4:
/* 8010A4C4  28 00 00 00 */	cmplwi r0, 0
/* 8010A4C8  41 82 01 58 */	beq lbl_8010A620
/* 8010A4CC  C0 1F 38 1C */	lfs f0, 0x381c(r31)
/* 8010A4D0  D0 1F 37 EC */	stfs f0, 0x37ec(r31)
/* 8010A4D4  C0 1F 38 20 */	lfs f0, 0x3820(r31)
/* 8010A4D8  D0 1F 37 F0 */	stfs f0, 0x37f0(r31)
/* 8010A4DC  C0 1F 38 24 */	lfs f0, 0x3824(r31)
/* 8010A4E0  D0 1F 37 F4 */	stfs f0, 0x37f4(r31)
/* 8010A4E4  83 DF 28 50 */	lwz r30, 0x2850(r31)
/* 8010A4E8  28 1E 00 00 */	cmplwi r30, 0
/* 8010A4EC  41 82 00 F0 */	beq lbl_8010A5DC
/* 8010A4F0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010A4F4  74 00 00 28 */	andis. r0, r0, 0x28
/* 8010A4F8  41 82 00 E4 */	beq lbl_8010A5DC
/* 8010A4FC  38 7F 28 4C */	addi r3, r31, 0x284c
/* 8010A500  7F C4 F3 78 */	mr r4, r30
/* 8010A504  48 05 47 B5 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010A508  38 61 01 28 */	addi r3, r1, 0x128
/* 8010A50C  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A510  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8010A514  48 15 C6 21 */	bl __mi__4cXyzCFRC3Vec
/* 8010A518  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8010A51C  D0 1F 37 F8 */	stfs f0, 0x37f8(r31)
/* 8010A520  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 8010A524  D0 1F 37 FC */	stfs f0, 0x37fc(r31)
/* 8010A528  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 8010A52C  D0 1F 38 00 */	stfs f0, 0x3800(r31)
/* 8010A530  7F E3 FB 78 */	mr r3, r31
/* 8010A534  4B FF E5 09 */	bl setHookshotCatchNow__9daAlink_cFv
/* 8010A538  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010A53C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8010A540  41 82 00 84 */	beq lbl_8010A5C4
/* 8010A544  38 00 00 05 */	li r0, 5
/* 8010A548  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010A54C  A8 7F 30 1E */	lha r3, 0x301e(r31)
/* 8010A550  A8 1F 30 1C */	lha r0, 0x301c(r31)
/* 8010A554  B0 1F 31 6C */	sth r0, 0x316c(r31)
/* 8010A558  B0 7F 31 6E */	sth r3, 0x316e(r31)
/* 8010A55C  38 00 00 00 */	li r0, 0
/* 8010A560  B0 1F 31 70 */	sth r0, 0x3170(r31)
/* 8010A564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A56C  A8 1E 04 E8 */	lha r0, 0x4e8(r30)
/* 8010A570  7C 00 00 D0 */	neg r0, r0
/* 8010A574  7C 04 07 34 */	extsh r4, r0
/* 8010A578  4B F0 1E FD */	bl mDoMtx_ZrotS__FPA4_fs
/* 8010A57C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A584  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 8010A588  7C 00 00 D0 */	neg r0, r0
/* 8010A58C  7C 04 07 34 */	extsh r4, r0
/* 8010A590  4B F0 1E 0D */	bl mDoMtx_XrotM__FPA4_fs
/* 8010A594  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A598  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A59C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8010A5A0  7C 00 00 D0 */	neg r0, r0
/* 8010A5A4  7C 04 07 34 */	extsh r4, r0
/* 8010A5A8  4B F0 1E 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 8010A5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010A5B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010A5B4  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A5B8  7C 85 23 78 */	mr r5, r4
/* 8010A5BC  48 23 C8 91 */	bl PSMTXMultVecSR
/* 8010A5C0  48 00 00 0C */	b lbl_8010A5CC
lbl_8010A5C4:
/* 8010A5C4  38 00 00 06 */	li r0, 6
/* 8010A5C8  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_8010A5CC:
/* 8010A5CC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8010A5D0  64 00 00 10 */	oris r0, r0, 0x10
/* 8010A5D4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8010A5D8  48 00 0A 3C */	b lbl_8010B014
lbl_8010A5DC:
/* 8010A5DC  38 7F 28 4C */	addi r3, r31, 0x284c
/* 8010A5E0  48 05 47 1D */	bl clearData__16daPy_actorKeep_cFv
/* 8010A5E4  38 00 00 06 */	li r0, 6
/* 8010A5E8  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010A5EC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010A5F0  D0 21 01 1C */	stfs f1, 0x11c(r1)
/* 8010A5F4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010A5F8  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 8010A5FC  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 8010A600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010A604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010A608  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010A60C  38 80 00 01 */	li r4, 1
/* 8010A610  38 A0 00 01 */	li r5, 1
/* 8010A614  38 C1 01 1C */	addi r6, r1, 0x11c
/* 8010A618  4B F6 54 0D */	bl StartShock__12dVibration_cFii4cXyz
/* 8010A61C  48 00 09 F8 */	b lbl_8010B014
lbl_8010A620:
/* 8010A620  38 00 00 06 */	li r0, 6
/* 8010A624  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010A628  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010A62C  D0 21 01 10 */	stfs f1, 0x110(r1)
/* 8010A630  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010A634  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8010A638  D0 21 01 18 */	stfs f1, 0x118(r1)
/* 8010A63C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010A640  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010A644  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8010A648  38 80 00 01 */	li r4, 1
/* 8010A64C  38 A0 00 01 */	li r5, 1
/* 8010A650  38 C1 01 10 */	addi r6, r1, 0x110
/* 8010A654  4B F6 53 D1 */	bl StartShock__12dVibration_cFii4cXyz
/* 8010A658  48 00 09 BC */	b lbl_8010B014
lbl_8010A65C:
/* 8010A65C  7F E3 FB 78 */	mr r3, r31
/* 8010A660  4B FF E2 69 */	bl checkChaseHookshot__9daAlink_cFv
/* 8010A664  2C 03 00 00 */	cmpwi r3, 0
/* 8010A668  41 82 00 88 */	beq lbl_8010A6F0
/* 8010A66C  38 61 01 04 */	addi r3, r1, 0x104
/* 8010A670  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 8010A674  38 84 05 38 */	addi r4, r4, 0x538
/* 8010A678  38 BF 37 EC */	addi r5, r31, 0x37ec
/* 8010A67C  48 15 C4 B9 */	bl __mi__4cXyzCFRC3Vec
/* 8010A680  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 8010A684  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8010A688  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8010A68C  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8010A690  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8010A694  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8010A698  38 61 01 88 */	addi r3, r1, 0x188
/* 8010A69C  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A6A0  48 23 CA F5 */	bl PSVECDotProduct
/* 8010A6A4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010A6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A6AC  4C 41 13 82 */	cror 2, 1, 2
/* 8010A6B0  40 82 00 40 */	bne lbl_8010A6F0
/* 8010A6B4  C0 01 01 88 */	lfs f0, 0x188(r1)
/* 8010A6B8  D0 1F 37 F8 */	stfs f0, 0x37f8(r31)
/* 8010A6BC  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 8010A6C0  D0 1F 37 FC */	stfs f0, 0x37fc(r31)
/* 8010A6C4  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 8010A6C8  D0 1F 38 00 */	stfs f0, 0x3800(r31)
/* 8010A6CC  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8010A6D0  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A6D4  48 15 C8 75 */	bl normalizeZP__4cXyzFv
/* 8010A6D8  38 7F 37 F8 */	addi r3, r31, 0x37f8
/* 8010A6DC  48 15 CA 75 */	bl atan2sY_XZ__4cXyzCFv
/* 8010A6E0  B0 7F 30 1C */	sth r3, 0x301c(r31)
/* 8010A6E4  38 7F 37 F8 */	addi r3, r31, 0x37f8
/* 8010A6E8  48 15 CA 41 */	bl atan2sX_Z__4cXyzCFv
/* 8010A6EC  B0 7F 30 1E */	sth r3, 0x301e(r31)
lbl_8010A6F0:
/* 8010A6F0  38 61 00 EC */	addi r3, r1, 0xec
/* 8010A6F4  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A6F8  FC 20 F0 90 */	fmr f1, f30
/* 8010A6FC  48 15 C4 89 */	bl __ml__4cXyzCFf
/* 8010A700  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 8010A704  38 81 00 EC */	addi r4, r1, 0xec
/* 8010A708  7C 65 1B 78 */	mr r5, r3
/* 8010A70C  48 23 C9 85 */	bl PSVECAdd
/* 8010A710  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010A714  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8010A718  41 82 00 24 */	beq lbl_8010A73C
/* 8010A71C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8010A720  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8010A724  38 BF 37 98 */	addi r5, r31, 0x3798
/* 8010A728  48 15 C4 0D */	bl __mi__4cXyzCFRC3Vec
/* 8010A72C  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 8010A730  38 81 00 E0 */	addi r4, r1, 0xe0
/* 8010A734  7C 65 1B 78 */	mr r5, r3
/* 8010A738  48 23 C9 59 */	bl PSVECAdd
lbl_8010A73C:
/* 8010A73C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8010A740  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A744  38 BF 37 E0 */	addi r5, r31, 0x37e0
/* 8010A748  48 15 C3 ED */	bl __mi__4cXyzCFRC3Vec
/* 8010A74C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8010A750  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8010A754  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8010A758  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 8010A75C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8010A760  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8010A764  38 61 01 7C */	addi r3, r1, 0x17c
/* 8010A768  48 23 C9 D1 */	bl PSVECSquareMag
/* 8010A76C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010A770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A774  40 81 00 58 */	ble lbl_8010A7CC
/* 8010A778  FC 00 08 34 */	frsqrte f0, f1
/* 8010A77C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010A780  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A784  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010A788  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A78C  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A790  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A794  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A798  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A79C  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A7A0  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A7A4  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A7A8  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A7AC  FC 44 00 32 */	fmul f2, f4, f0
/* 8010A7B0  FC 00 00 32 */	fmul f0, f0, f0
/* 8010A7B4  FC 01 00 32 */	fmul f0, f1, f0
/* 8010A7B8  FC 03 00 28 */	fsub f0, f3, f0
/* 8010A7BC  FC 02 00 32 */	fmul f0, f2, f0
/* 8010A7C0  FF C1 00 32 */	fmul f30, f1, f0
/* 8010A7C4  FF C0 F0 18 */	frsp f30, f30
/* 8010A7C8  48 00 00 90 */	b lbl_8010A858
lbl_8010A7CC:
/* 8010A7CC  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010A7D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A7D4  40 80 00 10 */	bge lbl_8010A7E4
/* 8010A7D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010A7DC  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8010A7E0  48 00 00 78 */	b lbl_8010A858
lbl_8010A7E4:
/* 8010A7E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8010A7E8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8010A7EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010A7F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010A7F4  7C 03 00 00 */	cmpw r3, r0
/* 8010A7F8  41 82 00 14 */	beq lbl_8010A80C
/* 8010A7FC  40 80 00 40 */	bge lbl_8010A83C
/* 8010A800  2C 03 00 00 */	cmpwi r3, 0
/* 8010A804  41 82 00 20 */	beq lbl_8010A824
/* 8010A808  48 00 00 34 */	b lbl_8010A83C
lbl_8010A80C:
/* 8010A80C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010A810  41 82 00 0C */	beq lbl_8010A81C
/* 8010A814  38 00 00 01 */	li r0, 1
/* 8010A818  48 00 00 28 */	b lbl_8010A840
lbl_8010A81C:
/* 8010A81C  38 00 00 02 */	li r0, 2
/* 8010A820  48 00 00 20 */	b lbl_8010A840
lbl_8010A824:
/* 8010A824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010A828  41 82 00 0C */	beq lbl_8010A834
/* 8010A82C  38 00 00 05 */	li r0, 5
/* 8010A830  48 00 00 10 */	b lbl_8010A840
lbl_8010A834:
/* 8010A834  38 00 00 03 */	li r0, 3
/* 8010A838  48 00 00 08 */	b lbl_8010A840
lbl_8010A83C:
/* 8010A83C  38 00 00 04 */	li r0, 4
lbl_8010A840:
/* 8010A840  2C 00 00 01 */	cmpwi r0, 1
/* 8010A844  40 82 00 10 */	bne lbl_8010A854
/* 8010A848  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010A84C  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 8010A850  48 00 00 08 */	b lbl_8010A858
lbl_8010A854:
/* 8010A854  FF C0 08 90 */	fmr f30, f1
lbl_8010A858:
/* 8010A858  38 61 01 7C */	addi r3, r1, 0x17c
/* 8010A85C  7C 64 1B 78 */	mr r4, r3
/* 8010A860  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010A864  EC 20 F0 24 */	fdivs f1, f0, f30
/* 8010A868  48 23 C8 71 */	bl PSVECScale
/* 8010A86C  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 8010A870  EC 3D 00 28 */	fsubs f1, f29, f0
/* 8010A874  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 8010A878  4C 41 13 82 */	cror 2, 1, 2
/* 8010A87C  40 82 00 40 */	bne lbl_8010A8BC
/* 8010A880  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8010A884  38 81 01 7C */	addi r4, r1, 0x17c
/* 8010A888  48 15 C2 FD */	bl __ml__4cXyzCFf
/* 8010A88C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8010A890  38 9F 37 E0 */	addi r4, r31, 0x37e0
/* 8010A894  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 8010A898  48 15 C2 4D */	bl __pl__4cXyzCFRC3Vec
/* 8010A89C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8010A8A0  D0 1F 37 EC */	stfs f0, 0x37ec(r31)
/* 8010A8A4  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8010A8A8  D0 1F 37 F0 */	stfs f0, 0x37f0(r31)
/* 8010A8AC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8010A8B0  D0 1F 37 F4 */	stfs f0, 0x37f4(r31)
/* 8010A8B4  38 00 00 06 */	li r0, 6
/* 8010A8B8  B0 1F 30 1A */	sth r0, 0x301a(r31)
lbl_8010A8BC:
/* 8010A8BC  38 7F 38 28 */	addi r3, r31, 0x3828
/* 8010A8C0  38 9F 37 E0 */	addi r4, r31, 0x37e0
/* 8010A8C4  48 23 CA D9 */	bl PSVECSquareDistance
/* 8010A8C8  C0 02 95 FC */	lfs f0, lit_30372(r2)
/* 8010A8CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A8D0  41 81 00 2C */	bgt lbl_8010A8FC
/* 8010A8D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8010A8D8  38 9F 37 98 */	addi r4, r31, 0x3798
/* 8010A8DC  48 23 CA C1 */	bl PSVECSquareDistance
/* 8010A8E0  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010A8E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010A8E8  41 81 00 14 */	bgt lbl_8010A8FC
/* 8010A8EC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8010A8F0  A8 1F 2F E6 */	lha r0, 0x2fe6(r31)
/* 8010A8F4  7C 03 00 00 */	cmpw r3, r0
/* 8010A8F8  41 82 00 0C */	beq lbl_8010A904
lbl_8010A8FC:
/* 8010A8FC  38 00 00 01 */	li r0, 1
/* 8010A900  B0 1F 30 28 */	sth r0, 0x3028(r31)
lbl_8010A904:
/* 8010A904  A8 1F 30 28 */	lha r0, 0x3028(r31)
/* 8010A908  2C 00 00 00 */	cmpwi r0, 0
/* 8010A90C  41 82 00 20 */	beq lbl_8010A92C
/* 8010A910  C0 1F 37 E0 */	lfs f0, 0x37e0(r31)
/* 8010A914  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 8010A918  C0 1F 37 E4 */	lfs f0, 0x37e4(r31)
/* 8010A91C  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8010A920  C0 1F 37 E8 */	lfs f0, 0x37e8(r31)
/* 8010A924  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 8010A928  48 00 00 1C */	b lbl_8010A944
lbl_8010A92C:
/* 8010A92C  C0 1F 38 28 */	lfs f0, 0x3828(r31)
/* 8010A930  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 8010A934  C0 1F 38 2C */	lfs f0, 0x382c(r31)
/* 8010A938  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8010A93C  C0 1F 38 30 */	lfs f0, 0x3830(r31)
/* 8010A940  D0 01 01 78 */	stfs f0, 0x178(r1)
lbl_8010A944:
/* 8010A944  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8010A948  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A94C  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 8010A950  48 15 C2 35 */	bl __ml__4cXyzCFf
/* 8010A954  38 61 01 70 */	addi r3, r1, 0x170
/* 8010A958  38 81 00 B0 */	addi r4, r1, 0xb0
/* 8010A95C  7C 65 1B 78 */	mr r5, r3
/* 8010A960  48 23 C7 55 */	bl PSVECSubtract
/* 8010A964  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8010A968  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010A96C  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 8010A970  48 15 C2 15 */	bl __ml__4cXyzCFf
/* 8010A974  38 61 00 98 */	addi r3, r1, 0x98
/* 8010A978  38 9F 37 EC */	addi r4, r31, 0x37ec
/* 8010A97C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 8010A980  48 15 C1 65 */	bl __pl__4cXyzCFRC3Vec
/* 8010A984  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8010A988  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 8010A98C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8010A990  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8010A994  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8010A998  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 8010A99C  38 7F 1B B8 */	addi r3, r31, 0x1bb8
/* 8010A9A0  38 81 01 70 */	addi r4, r1, 0x170
/* 8010A9A4  38 A1 01 64 */	addi r5, r1, 0x164
/* 8010A9A8  7F E6 FB 78 */	mr r6, r31
/* 8010A9AC  4B F6 D3 B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8010A9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010A9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010A9B8  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8010A9BC  7F A3 EB 78 */	mr r3, r29
/* 8010A9C0  38 9F 1B B8 */	addi r4, r31, 0x1bb8
/* 8010A9C4  4B F6 99 F1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8010A9C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010A9CC  41 82 06 2C */	beq lbl_8010AFF8
/* 8010A9D0  7F E3 FB 78 */	mr r3, r31
/* 8010A9D4  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010A9D8  4B FF DD D9 */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 8010A9DC  2C 03 00 00 */	cmpwi r3, 0
/* 8010A9E0  41 82 00 A0 */	beq lbl_8010AA80
/* 8010A9E4  7F E3 FB 78 */	mr r3, r31
/* 8010A9E8  4B FF E0 55 */	bl setHookshotCatchNow__9daAlink_cFv
/* 8010A9EC  38 00 00 04 */	li r0, 4
/* 8010A9F0  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010A9F4  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040009@ha */
/* 8010A9F8  3B 83 00 09 */	addi r28, r3, 0x0009 /* 0x00040009@l */
/* 8010A9FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010AA00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010AA04  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010AA08  74 00 02 01 */	andis. r0, r0, 0x201
/* 8010AA0C  41 82 00 20 */	beq lbl_8010AA2C
/* 8010AA10  80 1F 28 58 */	lwz r0, 0x2858(r31)
/* 8010AA14  28 00 00 00 */	cmplwi r0, 0
/* 8010AA18  40 82 00 14 */	bne lbl_8010AA2C
/* 8010AA1C  38 7F 1E 3C */	addi r3, r31, 0x1e3c
/* 8010AA20  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 8010AA24  48 15 D7 25 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 8010AA28  48 00 00 0C */	b lbl_8010AA34
lbl_8010AA2C:
/* 8010AA2C  38 7F 1E 3C */	addi r3, r31, 0x1e3c
/* 8010AA30  48 15 D6 F1 */	bl ClearPi__13cBgS_PolyInfoFv
lbl_8010AA34:
/* 8010AA34  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 8010AA38  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010AA3C  48 15 D7 0D */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 8010AA40  7F A3 EB 78 */	mr r3, r29
/* 8010AA44  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010AA48  4B F6 A0 F9 */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 8010AA4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010AA50  41 82 03 E8 */	beq lbl_8010AE38
/* 8010AA54  7F A3 EB 78 */	mr r3, r29
/* 8010AA58  A0 9F 1B CE */	lhz r4, 0x1bce(r31)
/* 8010AA5C  4B F6 9B BD */	bl GetActorPointer__4cBgSCFi
/* 8010AA60  7C 7A 1B 78 */	mr r26, r3
/* 8010AA64  38 7F 28 4C */	addi r3, r31, 0x284c
/* 8010AA68  7F 44 D3 78 */	mr r4, r26
/* 8010AA6C  48 05 42 4D */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8010AA70  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 8010AA74  64 00 00 10 */	oris r0, r0, 0x10
/* 8010AA78  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 8010AA7C  48 00 03 BC */	b lbl_8010AE38
lbl_8010AA80:
/* 8010AA80  7F A3 EB 78 */	mr r3, r29
/* 8010AA84  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010AA88  4B F6 A3 C9 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8010AA8C  7C 7E 1B 78 */	mr r30, r3
/* 8010AA90  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010AA94  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8010AA98  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010AA9C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8010AAA0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 8010AAA4  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 8010AAA8  38 80 00 01 */	li r4, 1
/* 8010AAAC  38 A0 00 01 */	li r5, 1
/* 8010AAB0  38 C1 00 8C */	addi r6, r1, 0x8c
/* 8010AAB4  4B F6 4F 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 8010AAB8  38 00 00 06 */	li r0, 6
/* 8010AABC  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 8010AAC0  3C 60 00 04 */	lis r3, 0x0004 /* 0x0004000A@ha */
/* 8010AAC4  3B 83 00 0A */	addi r28, r3, 0x000A /* 0x0004000A@l */
/* 8010AAC8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8010AACC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8010AAD0  90 01 01 DC */	stw r0, 0x1dc(r1)
/* 8010AAD4  7F A3 EB 78 */	mr r3, r29
/* 8010AAD8  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010AADC  38 A1 01 CC */	addi r5, r1, 0x1cc
/* 8010AAE0  4B F6 9C 65 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8010AAE4  2C 1E 00 0D */	cmpwi r30, 0xd
/* 8010AAE8  41 82 00 0C */	beq lbl_8010AAF4
/* 8010AAEC  2C 1E 00 03 */	cmpwi r30, 3
/* 8010AAF0  40 82 01 D8 */	bne lbl_8010ACC8
lbl_8010AAF4:
/* 8010AAF4  20 1E 00 0D */	subfic r0, r30, 0xd
/* 8010AAF8  7C 00 00 34 */	cntlzw r0, r0
/* 8010AAFC  54 04 D9 7E */	srwi r4, r0, 5
/* 8010AB00  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000881E@ha */
/* 8010AB04  38 03 88 1E */	addi r0, r3, 0x881E /* 0x0000881E@l */
/* 8010AB08  7C 04 02 14 */	add r0, r4, r0
/* 8010AB0C  7C 1B 03 78 */	mr r27, r0
/* 8010AB10  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8010AB14  48 15 C6 15 */	bl atan2sX_Z__4cXyzCFv
/* 8010AB18  7C 7A 1B 78 */	mr r26, r3
/* 8010AB1C  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 8010AB20  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8010AB24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010AB28  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8010AB2C  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8010AB30  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8010AB34  38 61 00 50 */	addi r3, r1, 0x50
/* 8010AB38  48 23 C6 01 */	bl PSVECSquareMag
/* 8010AB3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010AB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010AB44  40 81 00 58 */	ble lbl_8010AB9C
/* 8010AB48  FC 00 08 34 */	frsqrte f0, f1
/* 8010AB4C  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010AB50  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AB54  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010AB58  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AB5C  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AB60  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AB64  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AB68  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AB6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AB70  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AB74  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AB78  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AB7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AB80  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AB84  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AB88  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AB8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AB90  FC 21 00 32 */	fmul f1, f1, f0
/* 8010AB94  FC 20 08 18 */	frsp f1, f1
/* 8010AB98  48 00 00 88 */	b lbl_8010AC20
lbl_8010AB9C:
/* 8010AB9C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010ABA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010ABA4  40 80 00 10 */	bge lbl_8010ABB4
/* 8010ABA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010ABAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8010ABB0  48 00 00 70 */	b lbl_8010AC20
lbl_8010ABB4:
/* 8010ABB4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8010ABB8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8010ABBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010ABC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010ABC4  7C 03 00 00 */	cmpw r3, r0
/* 8010ABC8  41 82 00 14 */	beq lbl_8010ABDC
/* 8010ABCC  40 80 00 40 */	bge lbl_8010AC0C
/* 8010ABD0  2C 03 00 00 */	cmpwi r3, 0
/* 8010ABD4  41 82 00 20 */	beq lbl_8010ABF4
/* 8010ABD8  48 00 00 34 */	b lbl_8010AC0C
lbl_8010ABDC:
/* 8010ABDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010ABE0  41 82 00 0C */	beq lbl_8010ABEC
/* 8010ABE4  38 00 00 01 */	li r0, 1
/* 8010ABE8  48 00 00 28 */	b lbl_8010AC10
lbl_8010ABEC:
/* 8010ABEC  38 00 00 02 */	li r0, 2
/* 8010ABF0  48 00 00 20 */	b lbl_8010AC10
lbl_8010ABF4:
/* 8010ABF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010ABF8  41 82 00 0C */	beq lbl_8010AC04
/* 8010ABFC  38 00 00 05 */	li r0, 5
/* 8010AC00  48 00 00 10 */	b lbl_8010AC10
lbl_8010AC04:
/* 8010AC04  38 00 00 03 */	li r0, 3
/* 8010AC08  48 00 00 08 */	b lbl_8010AC10
lbl_8010AC0C:
/* 8010AC0C  38 00 00 04 */	li r0, 4
lbl_8010AC10:
/* 8010AC10  2C 00 00 01 */	cmpwi r0, 1
/* 8010AC14  40 82 00 0C */	bne lbl_8010AC20
/* 8010AC18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010AC1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8010AC20:
/* 8010AC20  C0 41 01 D0 */	lfs f2, 0x1d0(r1)
/* 8010AC24  48 15 CA 51 */	bl cM_atan2s__Fff
/* 8010AC28  B0 61 00 30 */	sth r3, 0x30(r1)
/* 8010AC2C  B3 41 00 32 */	sth r26, 0x32(r1)
/* 8010AC30  38 60 00 00 */	li r3, 0
/* 8010AC34  B0 61 00 34 */	sth r3, 0x34(r1)
/* 8010AC38  3B 3F 1B E8 */	addi r25, r31, 0x1be8
/* 8010AC3C  90 61 00 08 */	stw r3, 8(r1)
/* 8010AC40  38 00 FF FF */	li r0, -1
/* 8010AC44  90 01 00 0C */	stw r0, 0xc(r1)
/* 8010AC48  90 61 00 10 */	stw r3, 0x10(r1)
/* 8010AC4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010AC50  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 8010AC54  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8010AC58  7F 64 DB 78 */	mr r4, r27
/* 8010AC5C  38 BF 1B CC */	addi r5, r31, 0x1bcc
/* 8010AC60  7F 26 CB 78 */	mr r6, r25
/* 8010AC64  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8010AC68  39 01 00 30 */	addi r8, r1, 0x30
/* 8010AC6C  3D 20 80 42 */	lis r9, l_hookSnowSandHitScale@ha
/* 8010AC70  39 29 56 AC */	addi r9, r9, l_hookSnowSandHitScale@l
/* 8010AC74  39 40 00 00 */	li r10, 0
/* 8010AC78  4B F4 23 F1 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 8010AC7C  2C 1E 00 0D */	cmpwi r30, 0xd
/* 8010AC80  40 82 01 AC */	bne lbl_8010AE2C
/* 8010AC84  38 60 00 00 */	li r3, 0
/* 8010AC88  90 61 00 08 */	stw r3, 8(r1)
/* 8010AC8C  38 00 FF FF */	li r0, -1
/* 8010AC90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8010AC94  90 61 00 10 */	stw r3, 0x10(r1)
/* 8010AC98  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 8010AC9C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008820@ha */
/* 8010ACA0  38 84 88 20 */	addi r4, r4, 0x8820 /* 0x00008820@l */
/* 8010ACA4  38 BF 1B CC */	addi r5, r31, 0x1bcc
/* 8010ACA8  7F 26 CB 78 */	mr r6, r25
/* 8010ACAC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 8010ACB0  39 01 00 30 */	addi r8, r1, 0x30
/* 8010ACB4  3D 20 80 42 */	lis r9, l_hookSnowSandHitScale@ha
/* 8010ACB8  39 29 56 AC */	addi r9, r9, l_hookSnowSandHitScale@l
/* 8010ACBC  39 40 00 00 */	li r10, 0
/* 8010ACC0  4B F4 23 A9 */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 8010ACC4  48 00 01 68 */	b lbl_8010AE2C
lbl_8010ACC8:
/* 8010ACC8  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 8010ACCC  FC 20 00 50 */	fneg f1, f0
/* 8010ACD0  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8010ACD4  FC 40 00 50 */	fneg f2, f0
/* 8010ACD8  48 15 C9 9D */	bl cM_atan2s__Fff
/* 8010ACDC  7C 7B 1B 78 */	mr r27, r3
/* 8010ACE0  C0 01 01 CC */	lfs f0, 0x1cc(r1)
/* 8010ACE4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8010ACE8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010ACEC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8010ACF0  C0 01 01 D4 */	lfs f0, 0x1d4(r1)
/* 8010ACF4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8010ACF8  38 61 00 44 */	addi r3, r1, 0x44
/* 8010ACFC  48 23 C4 3D */	bl PSVECSquareMag
/* 8010AD00  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010AD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010AD08  40 81 00 58 */	ble lbl_8010AD60
/* 8010AD0C  FC 00 08 34 */	frsqrte f0, f1
/* 8010AD10  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010AD14  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AD18  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010AD1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AD20  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AD24  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AD28  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AD2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AD30  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AD34  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AD38  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AD3C  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AD40  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AD44  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AD48  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AD4C  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AD50  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AD54  FC 41 00 32 */	fmul f2, f1, f0
/* 8010AD58  FC 40 10 18 */	frsp f2, f2
/* 8010AD5C  48 00 00 90 */	b lbl_8010ADEC
lbl_8010AD60:
/* 8010AD60  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010AD64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010AD68  40 80 00 10 */	bge lbl_8010AD78
/* 8010AD6C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010AD70  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8010AD74  48 00 00 78 */	b lbl_8010ADEC
lbl_8010AD78:
/* 8010AD78  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8010AD7C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8010AD80  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010AD84  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010AD88  7C 03 00 00 */	cmpw r3, r0
/* 8010AD8C  41 82 00 14 */	beq lbl_8010ADA0
/* 8010AD90  40 80 00 40 */	bge lbl_8010ADD0
/* 8010AD94  2C 03 00 00 */	cmpwi r3, 0
/* 8010AD98  41 82 00 20 */	beq lbl_8010ADB8
/* 8010AD9C  48 00 00 34 */	b lbl_8010ADD0
lbl_8010ADA0:
/* 8010ADA0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010ADA4  41 82 00 0C */	beq lbl_8010ADB0
/* 8010ADA8  38 00 00 01 */	li r0, 1
/* 8010ADAC  48 00 00 28 */	b lbl_8010ADD4
lbl_8010ADB0:
/* 8010ADB0  38 00 00 02 */	li r0, 2
/* 8010ADB4  48 00 00 20 */	b lbl_8010ADD4
lbl_8010ADB8:
/* 8010ADB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010ADBC  41 82 00 0C */	beq lbl_8010ADC8
/* 8010ADC0  38 00 00 05 */	li r0, 5
/* 8010ADC4  48 00 00 10 */	b lbl_8010ADD4
lbl_8010ADC8:
/* 8010ADC8  38 00 00 03 */	li r0, 3
/* 8010ADCC  48 00 00 08 */	b lbl_8010ADD4
lbl_8010ADD0:
/* 8010ADD0  38 00 00 04 */	li r0, 4
lbl_8010ADD4:
/* 8010ADD4  2C 00 00 01 */	cmpwi r0, 1
/* 8010ADD8  40 82 00 10 */	bne lbl_8010ADE8
/* 8010ADDC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010ADE0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8010ADE4  48 00 00 08 */	b lbl_8010ADEC
lbl_8010ADE8:
/* 8010ADE8  FC 40 08 90 */	fmr f2, f1
lbl_8010ADEC:
/* 8010ADEC  C0 21 01 D0 */	lfs f1, 0x1d0(r1)
/* 8010ADF0  48 15 C8 85 */	bl cM_atan2s__Fff
/* 8010ADF4  B0 61 00 30 */	sth r3, 0x30(r1)
/* 8010ADF8  B3 61 00 32 */	sth r27, 0x32(r1)
/* 8010ADFC  38 00 00 00 */	li r0, 0
/* 8010AE00  B0 01 00 34 */	sth r0, 0x34(r1)
/* 8010AE04  38 DF 1B E8 */	addi r6, r31, 0x1be8
/* 8010AE08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010AE0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010AE10  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8010AE14  38 80 00 09 */	li r4, 9
/* 8010AE18  38 A0 00 00 */	li r5, 0
/* 8010AE1C  38 E1 00 30 */	addi r7, r1, 0x30
/* 8010AE20  39 00 00 00 */	li r8, 0
/* 8010AE24  39 20 00 00 */	li r9, 0
/* 8010AE28  4B F4 13 F1 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8010AE2C:
/* 8010AE2C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8010AE30  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8010AE34  90 01 01 DC */	stw r0, 0x1dc(r1)
lbl_8010AE38:
/* 8010AE38  38 61 00 80 */	addi r3, r1, 0x80
/* 8010AE3C  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 8010AE40  C0 22 94 64 */	lfs f1, lit_14954(r2)
/* 8010AE44  48 15 BD 41 */	bl __ml__4cXyzCFf
/* 8010AE48  38 61 00 74 */	addi r3, r1, 0x74
/* 8010AE4C  38 9F 1B E8 */	addi r4, r31, 0x1be8
/* 8010AE50  38 A1 00 80 */	addi r5, r1, 0x80
/* 8010AE54  48 15 BC E1 */	bl __mi__4cXyzCFRC3Vec
/* 8010AE58  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8010AE5C  D0 1F 37 EC */	stfs f0, 0x37ec(r31)
/* 8010AE60  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8010AE64  D0 1F 37 F0 */	stfs f0, 0x37f0(r31)
/* 8010AE68  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8010AE6C  D0 1F 37 F4 */	stfs f0, 0x37f4(r31)
/* 8010AE70  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8010AE74  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8010AE78  90 01 01 C8 */	stw r0, 0x1c8(r1)
/* 8010AE7C  7F A3 EB 78 */	mr r3, r29
/* 8010AE80  38 9F 1B CC */	addi r4, r31, 0x1bcc
/* 8010AE84  38 A1 01 B8 */	addi r5, r1, 0x1b8
/* 8010AE88  4B F6 98 BD */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8010AE8C  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8010AE90  FC 20 00 50 */	fneg f1, f0
/* 8010AE94  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 8010AE98  FC 40 00 50 */	fneg f2, f0
/* 8010AE9C  48 15 C7 D9 */	bl cM_atan2s__Fff
/* 8010AEA0  7C 7B 1B 78 */	mr r27, r3
/* 8010AEA4  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8010AEA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8010AEAC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010AEB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8010AEB4  C0 01 01 C0 */	lfs f0, 0x1c0(r1)
/* 8010AEB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8010AEBC  38 61 00 38 */	addi r3, r1, 0x38
/* 8010AEC0  48 23 C2 79 */	bl PSVECSquareMag
/* 8010AEC4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010AEC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010AECC  40 81 00 58 */	ble lbl_8010AF24
/* 8010AED0  FC 00 08 34 */	frsqrte f0, f1
/* 8010AED4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8010AED8  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AEDC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8010AEE0  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AEE4  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AEE8  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AEEC  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AEF0  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AEF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AEF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AEFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AF00  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AF04  FC 44 00 32 */	fmul f2, f4, f0
/* 8010AF08  FC 00 00 32 */	fmul f0, f0, f0
/* 8010AF0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8010AF10  FC 03 00 28 */	fsub f0, f3, f0
/* 8010AF14  FC 02 00 32 */	fmul f0, f2, f0
/* 8010AF18  FC 41 00 32 */	fmul f2, f1, f0
/* 8010AF1C  FC 40 10 18 */	frsp f2, f2
/* 8010AF20  48 00 00 90 */	b lbl_8010AFB0
lbl_8010AF24:
/* 8010AF24  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8010AF28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010AF2C  40 80 00 10 */	bge lbl_8010AF3C
/* 8010AF30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010AF34  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8010AF38  48 00 00 78 */	b lbl_8010AFB0
lbl_8010AF3C:
/* 8010AF3C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8010AF40  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8010AF44  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8010AF48  3C 00 7F 80 */	lis r0, 0x7f80
/* 8010AF4C  7C 03 00 00 */	cmpw r3, r0
/* 8010AF50  41 82 00 14 */	beq lbl_8010AF64
/* 8010AF54  40 80 00 40 */	bge lbl_8010AF94
/* 8010AF58  2C 03 00 00 */	cmpwi r3, 0
/* 8010AF5C  41 82 00 20 */	beq lbl_8010AF7C
/* 8010AF60  48 00 00 34 */	b lbl_8010AF94
lbl_8010AF64:
/* 8010AF64  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010AF68  41 82 00 0C */	beq lbl_8010AF74
/* 8010AF6C  38 00 00 01 */	li r0, 1
/* 8010AF70  48 00 00 28 */	b lbl_8010AF98
lbl_8010AF74:
/* 8010AF74  38 00 00 02 */	li r0, 2
/* 8010AF78  48 00 00 20 */	b lbl_8010AF98
lbl_8010AF7C:
/* 8010AF7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8010AF80  41 82 00 0C */	beq lbl_8010AF8C
/* 8010AF84  38 00 00 05 */	li r0, 5
/* 8010AF88  48 00 00 10 */	b lbl_8010AF98
lbl_8010AF8C:
/* 8010AF8C  38 00 00 03 */	li r0, 3
/* 8010AF90  48 00 00 08 */	b lbl_8010AF98
lbl_8010AF94:
/* 8010AF94  38 00 00 04 */	li r0, 4
lbl_8010AF98:
/* 8010AF98  2C 00 00 01 */	cmpwi r0, 1
/* 8010AF9C  40 82 00 10 */	bne lbl_8010AFAC
/* 8010AFA0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8010AFA4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8010AFA8  48 00 00 08 */	b lbl_8010AFB0
lbl_8010AFAC:
/* 8010AFAC  FC 40 08 90 */	fmr f2, f1
lbl_8010AFB0:
/* 8010AFB0  C0 21 01 BC */	lfs f1, 0x1bc(r1)
/* 8010AFB4  48 15 C6 C1 */	bl cM_atan2s__Fff
/* 8010AFB8  B0 7F 31 6C */	sth r3, 0x316c(r31)
/* 8010AFBC  B3 7F 31 6E */	sth r27, 0x316e(r31)
/* 8010AFC0  38 00 00 00 */	li r0, 0
/* 8010AFC4  B0 1F 31 70 */	sth r0, 0x3170(r31)
/* 8010AFC8  38 7F 1B CC */	addi r3, r31, 0x1bcc
/* 8010AFCC  48 0A 04 F5 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8010AFD0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8010AFD4  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 8010AFD8  7F 84 E3 78 */	mr r4, r28
/* 8010AFDC  80 DF 07 6C */	lwz r6, 0x76c(r31)
/* 8010AFE0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8010AFE4  48 1B 98 31 */	bl startHitItemSE__14Z2CreatureLinkFUlUlP14Z2SoundObjBasef
/* 8010AFE8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 8010AFEC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 8010AFF0  90 01 01 C8 */	stw r0, 0x1c8(r1)
/* 8010AFF4  48 00 00 20 */	b lbl_8010B014
lbl_8010AFF8:
/* 8010AFF8  7F E3 FB 78 */	mr r3, r31
/* 8010AFFC  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020049@ha */
/* 8010B000  38 84 00 49 */	addi r4, r4, 0x0049 /* 0x00020049@l */
/* 8010B004  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8010B008  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 8010B00C  7D 89 03 A6 */	mtctr r12
/* 8010B010  4E 80 04 21 */	bctrl 
lbl_8010B014:
/* 8010B014  38 7F 37 EC */	addi r3, r31, 0x37ec
/* 8010B018  4B F0 1D 4D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8010B01C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B020  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B024  A8 9F 30 1C */	lha r4, 0x301c(r31)
/* 8010B028  A8 BF 30 1E */	lha r5, 0x301e(r31)
/* 8010B02C  38 C0 00 00 */	li r6, 0
/* 8010B030  4B F0 12 71 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8010B034  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 8010B038  38 81 01 94 */	addi r4, r1, 0x194
/* 8010B03C  38 BF 37 EC */	addi r5, r31, 0x37ec
/* 8010B040  7F E6 FB 78 */	mr r6, r31
/* 8010B044  4B F6 CD 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8010B048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B04C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B050  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 8010B054  7F 23 CB 78 */	mr r3, r25
/* 8010B058  80 9F 07 7C */	lwz r4, 0x77c(r31)
/* 8010B05C  4B F6 93 59 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8010B060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010B064  41 82 00 6C */	beq lbl_8010B0D0
/* 8010B068  7F 23 CB 78 */	mr r3, r25
/* 8010B06C  80 9F 07 7C */	lwz r4, 0x77c(r31)
/* 8010B070  38 84 00 14 */	addi r4, r4, 0x14
/* 8010B074  4B F6 9D DD */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8010B078  2C 03 00 06 */	cmpwi r3, 6
/* 8010B07C  41 82 00 54 */	beq lbl_8010B0D0
/* 8010B080  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 8010B084  38 63 00 30 */	addi r3, r3, 0x30
/* 8010B088  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8010B08C  38 80 00 00 */	li r4, 0
/* 8010B090  4B F1 47 ED */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 8010B094  88 FF 2F 9A */	lbz r7, 0x2f9a(r31)
/* 8010B098  80 7F 07 7C */	lwz r3, 0x77c(r31)
/* 8010B09C  38 A3 00 30 */	addi r5, r3, 0x30
/* 8010B0A0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8010B0A4  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8010B0A8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8010B0AC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8010B0B0  38 81 00 2C */	addi r4, r1, 0x2c
/* 8010B0B4  38 C0 00 00 */	li r6, 0
/* 8010B0B8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010B0BC  FC 40 08 90 */	fmr f2, f1
/* 8010B0C0  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 8010B0C4  FC 80 18 90 */	fmr f4, f3
/* 8010B0C8  39 00 00 00 */	li r8, 0
/* 8010B0CC  48 1A 08 B9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8010B0D0:
/* 8010B0D0  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 8010B0D4  80 83 00 04 */	lwz r4, 4(r3)
/* 8010B0D8  38 7F 07 4C */	addi r3, r31, 0x74c
/* 8010B0DC  C0 3F 33 E0 */	lfs f1, 0x33e0(r31)
/* 8010B0E0  4B F0 28 ED */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 8010B0E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B0E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B0EC  80 9F 07 0C */	lwz r4, 0x70c(r31)
/* 8010B0F0  38 84 00 24 */	addi r4, r4, 0x24
/* 8010B0F4  48 23 B3 BD */	bl PSMTXCopy
/* 8010B0F8  80 7F 07 0C */	lwz r3, 0x70c(r31)
/* 8010B0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 8010B100  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8010B104  7D 89 03 A6 */	mtctr r12
/* 8010B108  4E 80 04 21 */	bctrl 
/* 8010B10C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010B110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010B114  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 8010B118  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8010B11C  41 82 00 2C */	beq lbl_8010B148
/* 8010B120  38 7F 38 04 */	addi r3, r31, 0x3804
/* 8010B124  4B F0 1C 41 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8010B128  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B12C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B130  38 80 C0 00 */	li r4, -16384
/* 8010B134  A8 BF 30 22 */	lha r5, 0x3022(r31)
/* 8010B138  38 C0 00 00 */	li r6, 0
/* 8010B13C  4B F0 11 65 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8010B140  C0 22 93 48 */	lfs f1, lit_8130(r2)
/* 8010B144  48 00 01 30 */	b lbl_8010B274
lbl_8010B148:
/* 8010B148  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 8010B14C  41 82 00 2C */	beq lbl_8010B178
/* 8010B150  38 7F 38 04 */	addi r3, r31, 0x3804
/* 8010B154  4B F0 1C 11 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8010B158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B15C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B160  38 80 00 00 */	li r4, 0
/* 8010B164  A8 BF 30 22 */	lha r5, 0x3022(r31)
/* 8010B168  38 C0 00 00 */	li r6, 0
/* 8010B16C  4B F0 11 35 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8010B170  C0 22 93 48 */	lfs f1, lit_8130(r2)
/* 8010B174  48 00 01 00 */	b lbl_8010B274
lbl_8010B178:
/* 8010B178  A8 1F 30 24 */	lha r0, 0x3024(r31)
/* 8010B17C  2C 00 00 00 */	cmpwi r0, 0
/* 8010B180  41 82 00 94 */	beq lbl_8010B214
/* 8010B184  38 7F 38 04 */	addi r3, r31, 0x3804
/* 8010B188  38 9F 38 10 */	addi r4, r31, 0x3810
/* 8010B18C  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8010B190  EC 20 07 F2 */	fmuls f1, f0, f31
/* 8010B194  48 16 56 19 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8010B198  38 61 00 68 */	addi r3, r1, 0x68
/* 8010B19C  38 9F 38 04 */	addi r4, r31, 0x3804
/* 8010B1A0  38 BF 38 10 */	addi r5, r31, 0x3810
/* 8010B1A4  48 15 B9 91 */	bl __mi__4cXyzCFRC3Vec
/* 8010B1A8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8010B1AC  D0 01 01 58 */	stfs f0, 0x158(r1)
/* 8010B1B0  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8010B1B4  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 8010B1B8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8010B1BC  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 8010B1C0  38 61 01 58 */	addi r3, r1, 0x158
/* 8010B1C4  48 23 BF 75 */	bl PSVECSquareMag
/* 8010B1C8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010B1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010B1D0  40 80 00 10 */	bge lbl_8010B1E0
/* 8010B1D4  38 00 00 00 */	li r0, 0
/* 8010B1D8  B0 1F 30 24 */	sth r0, 0x3024(r31)
/* 8010B1DC  48 00 00 38 */	b lbl_8010B214
lbl_8010B1E0:
/* 8010B1E0  38 7F 38 04 */	addi r3, r31, 0x3804
/* 8010B1E4  4B F0 1B 81 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8010B1E8  38 61 01 58 */	addi r3, r1, 0x158
/* 8010B1EC  48 15 BF 3D */	bl atan2sX_Z__4cXyzCFv
/* 8010B1F0  7C 7A 1B 78 */	mr r26, r3
/* 8010B1F4  38 61 01 58 */	addi r3, r1, 0x158
/* 8010B1F8  48 15 BF 59 */	bl atan2sY_XZ__4cXyzCFv
/* 8010B1FC  7C 64 1B 78 */	mr r4, r3
/* 8010B200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B208  7F 45 D3 78 */	mr r5, r26
/* 8010B20C  38 C0 00 00 */	li r6, 0
/* 8010B210  4B F0 10 91 */	bl mDoMtx_ZXYrotM__FPA4_fsss
lbl_8010B214:
/* 8010B214  A8 1F 30 24 */	lha r0, 0x3024(r31)
/* 8010B218  2C 00 00 00 */	cmpwi r0, 0
/* 8010B21C  40 82 00 54 */	bne lbl_8010B270
/* 8010B220  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 8010B224  38 63 00 24 */	addi r3, r3, 0x24
/* 8010B228  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8010B22C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8010B230  48 23 B2 81 */	bl PSMTXCopy
/* 8010B234  3C 60 80 39 */	lis r3, hookRoot@ha
/* 8010B238  C4 03 1A 08 */	lfsu f0, hookRoot@l(r3)
/* 8010B23C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8010B240  C0 03 00 04 */	lfs f0, 4(r3)
/* 8010B244  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8010B248  C0 03 00 08 */	lfs f0, 8(r3)
/* 8010B24C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8010B250  38 61 00 5C */	addi r3, r1, 0x5c
/* 8010B254  4B F0 1B 81 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8010B258  C0 1F 38 10 */	lfs f0, 0x3810(r31)
/* 8010B25C  D0 1F 38 04 */	stfs f0, 0x3804(r31)
/* 8010B260  C0 1F 38 14 */	lfs f0, 0x3814(r31)
/* 8010B264  D0 1F 38 08 */	stfs f0, 0x3808(r31)
/* 8010B268  C0 1F 38 18 */	lfs f0, 0x3818(r31)
/* 8010B26C  D0 1F 38 0C */	stfs f0, 0x380c(r31)
lbl_8010B270:
/* 8010B270  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_8010B274:
/* 8010B274  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 8010B278  80 83 00 04 */	lwz r4, 4(r3)
/* 8010B27C  38 7F 07 4C */	addi r3, r31, 0x74c
/* 8010B280  4B F0 27 4D */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 8010B284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8010B288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8010B28C  80 9F 07 14 */	lwz r4, 0x714(r31)
/* 8010B290  38 84 00 24 */	addi r4, r4, 0x24
/* 8010B294  48 23 B2 1D */	bl PSMTXCopy
/* 8010B298  80 7F 07 14 */	lwz r3, 0x714(r31)
/* 8010B29C  81 83 00 00 */	lwz r12, 0(r3)
/* 8010B2A0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8010B2A4  7D 89 03 A6 */	mtctr r12
/* 8010B2A8  4E 80 04 21 */	bctrl 
/* 8010B2AC  E3 E1 02 38 */	psq_l f31, 568(r1), 0, 0 /* qr0 */
/* 8010B2B0  CB E1 02 30 */	lfd f31, 0x230(r1)
/* 8010B2B4  E3 C1 02 28 */	psq_l f30, 552(r1), 0, 0 /* qr0 */
/* 8010B2B8  CB C1 02 20 */	lfd f30, 0x220(r1)
/* 8010B2BC  E3 A1 02 18 */	psq_l f29, 536(r1), 0, 0 /* qr0 */
/* 8010B2C0  CB A1 02 10 */	lfd f29, 0x210(r1)
/* 8010B2C4  39 61 02 10 */	addi r11, r1, 0x210
/* 8010B2C8  48 25 6F 51 */	bl _restgpr_25
/* 8010B2CC  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8010B2D0  7C 08 03 A6 */	mtlr r0
/* 8010B2D4  38 21 02 40 */	addi r1, r1, 0x240
/* 8010B2D8  4E 80 00 20 */	blr 
