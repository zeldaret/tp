lbl_80711CB8:
/* 80711CB8  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80711CBC  7C 08 02 A6 */	mflr r0
/* 80711CC0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80711CC4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80711CC8  4B C5 05 05 */	bl _savegpr_25
/* 80711CCC  7C 7F 1B 78 */	mr r31, r3
/* 80711CD0  3C 60 80 71 */	lis r3, lit_3828@ha /* 0x80713974@ha */
/* 80711CD4  3B C3 39 74 */	addi r30, r3, lit_3828@l /* 0x80713974@l */
/* 80711CD8  88 1F 07 28 */	lbz r0, 0x728(r31)
/* 80711CDC  28 00 00 00 */	cmplwi r0, 0
/* 80711CE0  41 82 00 0C */	beq lbl_80711CEC
/* 80711CE4  38 60 00 01 */	li r3, 1
/* 80711CE8  48 00 0C 98 */	b lbl_80712980
lbl_80711CEC:
/* 80711CEC  3C 60 80 71 */	lis r3, c_start@ha /* 0x80713FC4@ha */
/* 80711CF0  80 03 3F C4 */	lwz r0, c_start@l(r3)  /* 0x80713FC4@l */
/* 80711CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80711CF8  40 82 00 50 */	bne lbl_80711D48
/* 80711CFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80711D00  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80711D04  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80711D08  28 00 00 00 */	cmplwi r0, 0
/* 80711D0C  41 82 00 3C */	beq lbl_80711D48
/* 80711D10  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80711D14  83 23 10 18 */	lwz r25, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80711D18  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80711D1C  4B 90 9D F9 */	bl fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 80711D20  7C 03 C8 40 */	cmplw r3, r25
/* 80711D24  41 82 00 1C */	beq lbl_80711D40
/* 80711D28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80711D2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80711D30  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80711D34  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80711D38  28 00 00 03 */	cmplwi r0, 3
/* 80711D3C  40 82 00 0C */	bne lbl_80711D48
lbl_80711D40:
/* 80711D40  38 60 00 01 */	li r3, 1
/* 80711D44  48 00 0C 3C */	b lbl_80712980
lbl_80711D48:
/* 80711D48  A8 7F 06 AC */	lha r3, 0x6ac(r31)
/* 80711D4C  38 03 00 01 */	addi r0, r3, 1
/* 80711D50  B0 1F 06 AC */	sth r0, 0x6ac(r31)
/* 80711D54  38 60 00 00 */	li r3, 0
/* 80711D58  38 00 00 04 */	li r0, 4
/* 80711D5C  7C 09 03 A6 */	mtctr r0
lbl_80711D60:
/* 80711D60  38 A3 06 C0 */	addi r5, r3, 0x6c0
/* 80711D64  7C 9F 2A AE */	lhax r4, r31, r5
/* 80711D68  2C 04 00 00 */	cmpwi r4, 0
/* 80711D6C  41 82 00 0C */	beq lbl_80711D78
/* 80711D70  38 04 FF FF */	addi r0, r4, -1
/* 80711D74  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80711D78:
/* 80711D78  38 63 00 02 */	addi r3, r3, 2
/* 80711D7C  42 00 FF E4 */	bdnz lbl_80711D60
/* 80711D80  A8 7F 06 C8 */	lha r3, 0x6c8(r31)
/* 80711D84  2C 03 00 00 */	cmpwi r3, 0
/* 80711D88  41 82 00 0C */	beq lbl_80711D94
/* 80711D8C  38 03 FF FF */	addi r0, r3, -1
/* 80711D90  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
lbl_80711D94:
/* 80711D94  A8 7F 06 CC */	lha r3, 0x6cc(r31)
/* 80711D98  2C 03 00 00 */	cmpwi r3, 0
/* 80711D9C  41 82 00 0C */	beq lbl_80711DA8
/* 80711DA0  38 03 FF FF */	addi r0, r3, -1
/* 80711DA4  B0 1F 06 CC */	sth r0, 0x6cc(r31)
lbl_80711DA8:
/* 80711DA8  A8 7F 08 20 */	lha r3, 0x820(r31)
/* 80711DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80711DB0  41 82 00 0C */	beq lbl_80711DBC
/* 80711DB4  38 03 FF FF */	addi r0, r3, -1
/* 80711DB8  B0 1F 08 20 */	sth r0, 0x820(r31)
lbl_80711DBC:
/* 80711DBC  A8 7F 06 CA */	lha r3, 0x6ca(r31)
/* 80711DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80711DC4  41 82 00 0C */	beq lbl_80711DD0
/* 80711DC8  38 03 FF FF */	addi r0, r3, -1
/* 80711DCC  B0 1F 06 CA */	sth r0, 0x6ca(r31)
lbl_80711DD0:
/* 80711DD0  38 00 00 01 */	li r0, 1
/* 80711DD4  98 1F 06 D2 */	stb r0, 0x6d2(r31)
/* 80711DD8  7F E3 FB 78 */	mr r3, r31
/* 80711DDC  4B FF E7 11 */	bl action__FP10e_mf_class
/* 80711DE0  A8 1F 08 20 */	lha r0, 0x820(r31)
/* 80711DE4  2C 00 00 00 */	cmpwi r0, 0
/* 80711DE8  40 82 01 98 */	bne lbl_80711F80
/* 80711DEC  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 80711DF0  7C 00 07 75 */	extsb. r0, r0
/* 80711DF4  40 82 01 8C */	bne lbl_80711F80
/* 80711DF8  C0 3F 06 E4 */	lfs f1, 0x6e4(r31)
/* 80711DFC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711E00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80711E04  41 82 00 78 */	beq lbl_80711E7C
/* 80711E08  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80711E0C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80711E10  80 63 00 00 */	lwz r3, 0(r3)
/* 80711E14  A8 9F 07 06 */	lha r4, 0x706(r31)
/* 80711E18  4B 8F A5 C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80711E1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711E20  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80711E24  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80711E28  C0 1F 08 1C */	lfs f0, 0x81c(r31)
/* 80711E2C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80711E30  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80711E34  38 81 00 AC */	addi r4, r1, 0xac
/* 80711E38  4B B5 F0 B5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80711E3C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80711E40  38 81 00 AC */	addi r4, r1, 0xac
/* 80711E44  7C 65 1B 78 */	mr r5, r3
/* 80711E48  4B C3 52 49 */	bl PSVECAdd
/* 80711E4C  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 80711E50  38 81 00 AC */	addi r4, r1, 0xac
/* 80711E54  7C 65 1B 78 */	mr r5, r3
/* 80711E58  4B C3 52 39 */	bl PSVECAdd
/* 80711E5C  38 7F 08 1C */	addi r3, r31, 0x81c
/* 80711E60  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80711E64  C0 1F 06 E4 */	lfs f0, 0x6e4(r31)
/* 80711E68  EC 21 00 32 */	fmuls f1, f1, f0
/* 80711E6C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80711E70  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80711E74  4B B5 DB C9 */	bl cLib_addCalc2__FPffff
/* 80711E78  48 00 00 14 */	b lbl_80711E8C
lbl_80711E7C:
/* 80711E7C  38 7F 08 1C */	addi r3, r31, 0x81c
/* 80711E80  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80711E84  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80711E88  4B B5 DB F9 */	bl cLib_addCalc0__FPfff
lbl_80711E8C:
/* 80711E8C  38 7F 08 64 */	addi r3, r31, 0x864
/* 80711E90  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80711E94  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80711E98  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80711E9C  4B 96 4C 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80711EA0  C0 3F 06 E4 */	lfs f1, 0x6e4(r31)
/* 80711EA4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711EA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80711EAC  41 82 00 24 */	beq lbl_80711ED0
/* 80711EB0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80711EB4  38 81 00 AC */	addi r4, r1, 0xac
/* 80711EB8  7C 65 1B 78 */	mr r5, r3
/* 80711EBC  4B C3 51 F9 */	bl PSVECSubtract
/* 80711EC0  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 80711EC4  38 81 00 AC */	addi r4, r1, 0xac
/* 80711EC8  7C 65 1B 78 */	mr r5, r3
/* 80711ECC  4B C3 51 E9 */	bl PSVECSubtract
lbl_80711ED0:
/* 80711ED0  80 1F 08 90 */	lwz r0, 0x890(r31)
/* 80711ED4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80711ED8  40 82 00 58 */	bne lbl_80711F30
/* 80711EDC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80711EE0  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80711EE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80711EE8  40 80 00 98 */	bge lbl_80711F80
/* 80711EEC  A8 7F 08 22 */	lha r3, 0x822(r31)
/* 80711EF0  38 03 00 01 */	addi r0, r3, 1
/* 80711EF4  B0 1F 08 22 */	sth r0, 0x822(r31)
/* 80711EF8  A8 1F 08 22 */	lha r0, 0x822(r31)
/* 80711EFC  2C 00 00 0D */	cmpwi r0, 0xd
/* 80711F00  40 82 00 80 */	bne lbl_80711F80
/* 80711F04  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CA@ha */
/* 80711F08  38 03 03 CA */	addi r0, r3, 0x03CA /* 0x000703CA@l */
/* 80711F0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80711F10  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80711F14  38 81 00 0C */	addi r4, r1, 0xc
/* 80711F18  38 A0 FF FF */	li r5, -1
/* 80711F1C  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 80711F20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80711F24  7D 89 03 A6 */	mtctr r12
/* 80711F28  4E 80 04 21 */	bctrl 
/* 80711F2C  48 00 00 54 */	b lbl_80711F80
lbl_80711F30:
/* 80711F30  A8 1F 08 22 */	lha r0, 0x822(r31)
/* 80711F34  2C 00 00 0D */	cmpwi r0, 0xd
/* 80711F38  41 80 00 40 */	blt lbl_80711F78
/* 80711F3C  38 00 00 15 */	li r0, 0x15
/* 80711F40  B0 1F 06 AE */	sth r0, 0x6ae(r31)
/* 80711F44  38 60 00 00 */	li r3, 0
/* 80711F48  B0 7F 05 B4 */	sth r3, 0x5b4(r31)
/* 80711F4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80711F50  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80711F54  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80711F58  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 80711F5C  38 00 D0 00 */	li r0, -12288
/* 80711F60  B0 1F 07 04 */	sth r0, 0x704(r31)
/* 80711F64  38 00 00 32 */	li r0, 0x32
/* 80711F68  B0 1F 08 08 */	sth r0, 0x808(r31)
/* 80711F6C  38 00 03 E8 */	li r0, 0x3e8
/* 80711F70  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
/* 80711F74  B0 7F 05 62 */	sth r3, 0x562(r31)
lbl_80711F78:
/* 80711F78  38 00 00 00 */	li r0, 0
/* 80711F7C  B0 1F 08 22 */	sth r0, 0x822(r31)
lbl_80711F80:
/* 80711F80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711F84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711F88  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80711F8C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80711F90  C0 1F 07 00 */	lfs f0, 0x700(r31)
/* 80711F94  EC 42 00 2A */	fadds f2, f2, f0
/* 80711F98  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80711F9C  4B C3 49 4D */	bl PSMTXTrans
/* 80711FA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711FA8  A8 9F 07 0A */	lha r4, 0x70a(r31)
/* 80711FAC  4B 8F A3 F1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80711FB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711FB8  A8 9F 07 0E */	lha r4, 0x70e(r31)
/* 80711FBC  4B 8F A5 11 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80711FC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711FC8  A8 9F 07 06 */	lha r4, 0x706(r31)
/* 80711FCC  4B 8F A4 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80711FD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711FD8  A8 9F 07 04 */	lha r4, 0x704(r31)
/* 80711FDC  4B 8F A3 C1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80711FE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80711FE8  A8 1F 07 06 */	lha r0, 0x706(r31)
/* 80711FEC  7C 00 00 D0 */	neg r0, r0
/* 80711FF0  7C 04 07 34 */	extsh r4, r0
/* 80711FF4  4B 8F A4 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 80711FF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80711FFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80712000  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80712004  4B 8F A4 31 */	bl mDoMtx_YrotM__FPA4_fs
/* 80712008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071200C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80712010  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80712014  4B 8F A3 89 */	bl mDoMtx_XrotM__FPA4_fs
/* 80712018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8071201C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80712020  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80712024  4B 8F A4 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80712028  3C 60 80 71 */	lis r3, l_HIO@ha /* 0x80713F74@ha */
/* 8071202C  3B 83 3F 74 */	addi r28, r3, l_HIO@l /* 0x80713F74@l */
/* 80712030  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80712034  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80712038  EC 21 00 32 */	fmuls f1, f1, f0
/* 8071203C  FC 40 08 90 */	fmr f2, f1
/* 80712040  FC 60 08 90 */	fmr f3, f1
/* 80712044  4B 8F AD F5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80712048  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071204C  83 63 00 04 */	lwz r27, 4(r3)
/* 80712050  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80712054  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80712058  38 9B 00 24 */	addi r4, r27, 0x24
/* 8071205C  4B C3 44 55 */	bl PSMTXCopy
/* 80712060  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80712064  38 80 00 00 */	li r4, 0
/* 80712068  38 A0 00 00 */	li r5, 0
/* 8071206C  4B 8F F0 45 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80712070  7F E3 FB 78 */	mr r3, r31
/* 80712074  4B FF F9 49 */	bl anm_se_set__FP10e_mf_class
/* 80712078  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071207C  4B 8F F1 71 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80712080  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80712084  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80712088  38 63 00 60 */	addi r3, r3, 0x60
/* 8071208C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712090  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80712094  80 84 00 00 */	lwz r4, 0(r4)
/* 80712098  4B C3 44 19 */	bl PSMTXCopy
/* 8071209C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807120A0  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807120A4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807120A8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807120AC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807120B0  38 81 00 AC */	addi r4, r1, 0xac
/* 807120B4  4B B5 EE 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807120B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807120BC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807120C0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807120C4  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 807120C8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807120CC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807120D0  38 81 00 A0 */	addi r4, r1, 0xa0
/* 807120D4  4B B5 EE 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807120D8  C0 21 00 B0 */	lfs f1, 0xb0(r1)
/* 807120DC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 807120E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807120E4  40 80 00 10 */	bge lbl_807120F4
/* 807120E8  38 00 00 00 */	li r0, 0
/* 807120EC  98 1F 07 17 */	stb r0, 0x717(r31)
/* 807120F0  48 00 00 0C */	b lbl_807120FC
lbl_807120F4:
/* 807120F4  38 00 00 01 */	li r0, 1
/* 807120F8  98 1F 07 17 */	stb r0, 0x717(r31)
lbl_807120FC:
/* 807120FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80712100  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80712104  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80712108  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8071210C  A8 1F 06 C8 */	lha r0, 0x6c8(r31)
/* 80712110  2C 00 00 00 */	cmpwi r0, 0
/* 80712114  41 82 00 1C */	beq lbl_80712130
/* 80712118  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8071211C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80712120  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80712124  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80712128  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8071212C  D0 01 00 9C */	stfs f0, 0x9c(r1)
lbl_80712130:
/* 80712130  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80712134  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80712138  38 63 01 20 */	addi r3, r3, 0x120
/* 8071213C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712140  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80712144  80 84 00 00 */	lwz r4, 0(r4)
/* 80712148  4B C3 43 69 */	bl PSMTXCopy
/* 8071214C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80712150  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80712154  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80712158  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8071215C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80712160  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80712164  38 9F 05 38 */	addi r4, r31, 0x538
/* 80712168  4B B5 ED 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8071216C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80712170  38 9F 05 38 */	addi r4, r31, 0x538
/* 80712174  38 A1 00 94 */	addi r5, r1, 0x94
/* 80712178  4B B5 49 6D */	bl __pl__4cXyzCFRC3Vec
/* 8071217C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80712180  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80712184  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80712188  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8071218C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80712190  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80712194  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80712198  EC 01 00 2A */	fadds f0, f1, f0
/* 8071219C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807121A0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 807121A4  38 81 00 88 */	addi r4, r1, 0x88
/* 807121A8  4B B5 D4 A1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807121AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807121B0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807121B4  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807121B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807121BC  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807121C0  7D 89 03 A6 */	mtctr r12
/* 807121C4  4E 80 04 21 */	bctrl 
/* 807121C8  28 03 00 00 */	cmplwi r3, 0
/* 807121CC  41 82 00 14 */	beq lbl_807121E0
/* 807121D0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 807121D4  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807121D8  4B B5 D5 31 */	bl SetR__8cM3dGSphFf
/* 807121DC  48 00 00 10 */	b lbl_807121EC
lbl_807121E0:
/* 807121E0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 807121E4  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 807121E8  4B B5 D5 21 */	bl SetR__8cM3dGSphFf
lbl_807121EC:
/* 807121EC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 807121F0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 807121F4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 807121F8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 807121FC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80712200  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80712204  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80712208  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8071220C  EC 01 00 2A */	fadds f0, f1, f0
/* 80712210  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80712214  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80712218  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8071221C  38 63 00 30 */	addi r3, r3, 0x30
/* 80712220  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712224  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80712228  80 84 00 00 */	lwz r4, 0(r4)
/* 8071222C  4B C3 42 85 */	bl PSMTXCopy
/* 80712230  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80712234  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80712238  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8071223C  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80712240  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80712244  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80712248  38 81 00 AC */	addi r4, r1, 0xac
/* 8071224C  4B B5 EC A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80712250  38 61 00 40 */	addi r3, r1, 0x40
/* 80712254  38 81 00 AC */	addi r4, r1, 0xac
/* 80712258  38 A1 00 94 */	addi r5, r1, 0x94
/* 8071225C  4B B5 48 89 */	bl __pl__4cXyzCFRC3Vec
/* 80712260  38 7F 0C D8 */	addi r3, r31, 0xcd8
/* 80712264  38 81 00 40 */	addi r4, r1, 0x40
/* 80712268  4B B5 D3 E1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8071226C  38 7F 0C D8 */	addi r3, r31, 0xcd8
/* 80712270  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80712274  4B B5 D4 95 */	bl SetR__8cM3dGSphFf
/* 80712278  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 8071227C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80712280  38 63 00 60 */	addi r3, r3, 0x60
/* 80712284  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712288  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8071228C  80 84 00 00 */	lwz r4, 0(r4)
/* 80712290  4B C3 42 21 */	bl PSMTXCopy
/* 80712294  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80712298  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8071229C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807122A0  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807122A4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807122A8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807122AC  38 81 00 AC */	addi r4, r1, 0xac
/* 807122B0  4B B5 EC 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807122B4  38 61 00 34 */	addi r3, r1, 0x34
/* 807122B8  38 81 00 AC */	addi r4, r1, 0xac
/* 807122BC  38 A1 00 94 */	addi r5, r1, 0x94
/* 807122C0  4B B5 48 25 */	bl __pl__4cXyzCFRC3Vec
/* 807122C4  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 807122C8  38 81 00 34 */	addi r4, r1, 0x34
/* 807122CC  4B B5 D3 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 807122D0  38 7F 0E 10 */	addi r3, r31, 0xe10
/* 807122D4  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 807122D8  4B B5 D4 31 */	bl SetR__8cM3dGSphFf
/* 807122DC  3B 40 00 00 */	li r26, 0
/* 807122E0  3B 20 00 00 */	li r25, 0
/* 807122E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807122E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807122EC  3B 63 23 3C */	addi r27, r3, 0x233c
lbl_807122F0:
/* 807122F0  88 1F 06 D2 */	lbz r0, 0x6d2(r31)
/* 807122F4  7C 00 07 75 */	extsb. r0, r0
/* 807122F8  41 82 00 18 */	beq lbl_80712310
/* 807122FC  38 79 0A A8 */	addi r3, r25, 0xaa8
/* 80712300  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80712304  60 00 00 01 */	ori r0, r0, 1
/* 80712308  7C 1F 19 2E */	stwx r0, r31, r3
/* 8071230C  48 00 00 14 */	b lbl_80712320
lbl_80712310:
/* 80712310  38 79 0A A8 */	addi r3, r25, 0xaa8
/* 80712314  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80712318  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8071231C  7C 1F 19 2E */	stwx r0, r31, r3
lbl_80712320:
/* 80712320  7F 63 DB 78 */	mr r3, r27
/* 80712324  38 99 0A 7C */	addi r4, r25, 0xa7c
/* 80712328  7C 9F 22 14 */	add r4, r31, r4
/* 8071232C  4B B5 28 7D */	bl Set__4cCcSFP8cCcD_Obj
/* 80712330  3B 5A 00 01 */	addi r26, r26, 1
/* 80712334  2C 1A 00 02 */	cmpwi r26, 2
/* 80712338  3B 39 01 38 */	addi r25, r25, 0x138
/* 8071233C  40 81 FF B4 */	ble lbl_807122F0
/* 80712340  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80712344  80 63 00 04 */	lwz r3, 4(r3)
/* 80712348  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8071234C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80712350  38 63 03 90 */	addi r3, r3, 0x390
/* 80712354  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712358  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8071235C  80 84 00 00 */	lwz r4, 0(r4)
/* 80712360  4B C3 41 51 */	bl PSMTXCopy
/* 80712364  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80712368  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071236C  80 63 00 00 */	lwz r3, 0(r3)
/* 80712370  80 9F 05 E4 */	lwz r4, 0x5e4(r31)
/* 80712374  38 84 00 24 */	addi r4, r4, 0x24
/* 80712378  4B C3 41 39 */	bl PSMTXCopy
/* 8071237C  88 1F 06 CF */	lbz r0, 0x6cf(r31)
/* 80712380  7C 00 07 75 */	extsb. r0, r0
/* 80712384  41 82 00 C4 */	beq lbl_80712448
/* 80712388  88 1F 06 CE */	lbz r0, 0x6ce(r31)
/* 8071238C  7C 00 07 74 */	extsb r0, r0
/* 80712390  2C 00 00 01 */	cmpwi r0, 1
/* 80712394  41 81 00 B4 */	bgt lbl_80712448
/* 80712398  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8071239C  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 807123A0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807123A4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807123A8  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 807123AC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807123B0  38 81 00 AC */	addi r4, r1, 0xac
/* 807123B4  4B B5 EB 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807123B8  88 1F 06 D0 */	lbz r0, 0x6d0(r31)
/* 807123BC  7C 00 07 75 */	extsb. r0, r0
/* 807123C0  40 82 00 1C */	bne lbl_807123DC
/* 807123C4  38 00 00 01 */	li r0, 1
/* 807123C8  98 1F 06 D0 */	stb r0, 0x6d0(r31)
/* 807123CC  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 807123D0  38 81 00 AC */	addi r4, r1, 0xac
/* 807123D4  4B 97 26 A5 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807123D8  48 00 00 10 */	b lbl_807123E8
lbl_807123DC:
/* 807123DC  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 807123E0  38 81 00 AC */	addi r4, r1, 0xac
/* 807123E4  4B 97 26 E1 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_807123E8:
/* 807123E8  88 1F 06 CE */	lbz r0, 0x6ce(r31)
/* 807123EC  2C 00 00 01 */	cmpwi r0, 1
/* 807123F0  40 82 00 1C */	bne lbl_8071240C
/* 807123F4  38 7F 0F 48 */	addi r3, r31, 0xf48
/* 807123F8  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 807123FC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80712400  EC 21 00 32 */	fmuls f1, f1, f0
/* 80712404  4B B5 D3 05 */	bl SetR__8cM3dGSphFf
/* 80712408  48 00 00 18 */	b lbl_80712420
lbl_8071240C:
/* 8071240C  38 7F 0F 48 */	addi r3, r31, 0xf48
/* 80712410  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80712414  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80712418  EC 21 00 32 */	fmuls f1, f1, f0
/* 8071241C  4B B5 D2 ED */	bl SetR__8cM3dGSphFf
lbl_80712420:
/* 80712420  38 00 00 02 */	li r0, 2
/* 80712424  98 1F 0E 38 */	stb r0, 0xe38(r31)
/* 80712428  A8 1F 06 C2 */	lha r0, 0x6c2(r31)
/* 8071242C  2C 00 00 00 */	cmpwi r0, 0
/* 80712430  41 82 00 10 */	beq lbl_80712440
/* 80712434  38 00 00 01 */	li r0, 1
/* 80712438  98 1F 0E 9B */	stb r0, 0xe9b(r31)
/* 8071243C  48 00 00 0C */	b lbl_80712448
lbl_80712440:
/* 80712440  38 00 00 00 */	li r0, 0
/* 80712444  98 1F 0E 9B */	stb r0, 0xe9b(r31)
lbl_80712448:
/* 80712448  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8071244C  80 63 00 04 */	lwz r3, 4(r3)
/* 80712450  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80712454  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80712458  38 63 02 40 */	addi r3, r3, 0x240
/* 8071245C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80712460  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80712464  80 84 00 00 */	lwz r4, 0(r4)
/* 80712468  4B C3 40 49 */	bl PSMTXCopy
/* 8071246C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80712470  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80712474  80 63 00 00 */	lwz r3, 0(r3)
/* 80712478  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 8071247C  38 84 00 24 */	addi r4, r4, 0x24
/* 80712480  4B C3 40 31 */	bl PSMTXCopy
/* 80712484  88 1F 06 CF */	lbz r0, 0x6cf(r31)
/* 80712488  7C 00 07 75 */	extsb. r0, r0
/* 8071248C  41 82 00 A4 */	beq lbl_80712530
/* 80712490  88 1F 06 CE */	lbz r0, 0x6ce(r31)
/* 80712494  2C 00 00 02 */	cmpwi r0, 2
/* 80712498  40 82 00 98 */	bne lbl_80712530
/* 8071249C  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 807124A0  80 63 00 04 */	lwz r3, 4(r3)
/* 807124A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807124A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807124AC  38 63 06 60 */	addi r3, r3, 0x660
/* 807124B0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807124B4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807124B8  80 84 00 00 */	lwz r4, 0(r4)
/* 807124BC  4B C3 3F F5 */	bl PSMTXCopy
/* 807124C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807124C4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807124C8  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807124CC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807124D0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807124D4  38 81 00 AC */	addi r4, r1, 0xac
/* 807124D8  4B B5 EA 15 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807124DC  88 1F 06 D0 */	lbz r0, 0x6d0(r31)
/* 807124E0  7C 00 07 75 */	extsb. r0, r0
/* 807124E4  40 82 00 1C */	bne lbl_80712500
/* 807124E8  38 00 00 01 */	li r0, 1
/* 807124EC  98 1F 06 D0 */	stb r0, 0x6d0(r31)
/* 807124F0  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 807124F4  38 81 00 AC */	addi r4, r1, 0xac
/* 807124F8  4B 97 25 81 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 807124FC  48 00 00 10 */	b lbl_8071250C
lbl_80712500:
/* 80712500  38 7F 0E 24 */	addi r3, r31, 0xe24
/* 80712504  38 81 00 AC */	addi r4, r1, 0xac
/* 80712508  4B 97 25 BD */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_8071250C:
/* 8071250C  38 7F 0F 48 */	addi r3, r31, 0xf48
/* 80712510  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80712514  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80712518  EC 21 00 32 */	fmuls f1, f1, f0
/* 8071251C  4B B5 D1 ED */	bl SetR__8cM3dGSphFf
/* 80712520  38 00 00 03 */	li r0, 3
/* 80712524  98 1F 0E 38 */	stb r0, 0xe38(r31)
/* 80712528  38 00 00 0A */	li r0, 0xa
/* 8071252C  98 1F 0E 9B */	stb r0, 0xe9b(r31)
lbl_80712530:
/* 80712530  88 1F 06 CF */	lbz r0, 0x6cf(r31)
/* 80712534  7C 00 07 75 */	extsb. r0, r0
/* 80712538  40 82 00 44 */	bne lbl_8071257C
/* 8071253C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80712540  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80712544  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80712548  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8071254C  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80712550  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80712554  38 61 00 28 */	addi r3, r1, 0x28
/* 80712558  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8071255C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80712560  4B B5 45 85 */	bl __pl__4cXyzCFRC3Vec
/* 80712564  38 7F 0F 48 */	addi r3, r31, 0xf48
/* 80712568  38 81 00 28 */	addi r4, r1, 0x28
/* 8071256C  4B B5 D0 DD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80712570  38 00 00 00 */	li r0, 0
/* 80712574  98 1F 06 D0 */	stb r0, 0x6d0(r31)
/* 80712578  48 00 00 0C */	b lbl_80712584
lbl_8071257C:
/* 8071257C  38 00 00 00 */	li r0, 0
/* 80712580  98 1F 06 CF */	stb r0, 0x6cf(r31)
lbl_80712584:
/* 80712584  7F 63 DB 78 */	mr r3, r27
/* 80712588  38 9F 0E 24 */	addi r4, r31, 0xe24
/* 8071258C  4B B5 26 1D */	bl Set__4cCcSFP8cCcD_Obj
/* 80712590  88 1F 06 D1 */	lbz r0, 0x6d1(r31)
/* 80712594  7C 00 07 75 */	extsb. r0, r0
/* 80712598  41 82 01 A8 */	beq lbl_80712740
/* 8071259C  A8 1F 06 CC */	lha r0, 0x6cc(r31)
/* 807125A0  2C 00 00 00 */	cmpwi r0, 0
/* 807125A4  40 82 01 9C */	bne lbl_80712740
/* 807125A8  83 5D 5D AC */	lwz r26, 0x5dac(r29)
/* 807125AC  38 00 00 05 */	li r0, 5
/* 807125B0  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
/* 807125B4  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 807125B8  80 63 00 04 */	lwz r3, 4(r3)
/* 807125BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807125C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807125C4  38 63 02 40 */	addi r3, r3, 0x240
/* 807125C8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807125CC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807125D0  80 84 00 00 */	lwz r4, 0(r4)
/* 807125D4  4B C3 3E DD */	bl PSMTXCopy
/* 807125D8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807125DC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 807125E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807125E4  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 807125E8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807125EC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 807125F0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 807125F4  38 81 00 AC */	addi r4, r1, 0xac
/* 807125F8  4B B5 E8 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807125FC  38 7F 10 80 */	addi r3, r31, 0x1080
/* 80712600  38 81 00 AC */	addi r4, r1, 0xac
/* 80712604  4B B5 D0 45 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80712608  38 7F 10 80 */	addi r3, r31, 0x1080
/* 8071260C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80712610  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80712614  EC 21 00 32 */	fmuls f1, f1, f0
/* 80712618  4B B5 D0 F1 */	bl SetR__8cM3dGSphFf
/* 8071261C  38 7F 0F 5C */	addi r3, r31, 0xf5c
/* 80712620  4B 97 1E 41 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80712624  28 03 00 00 */	cmplwi r3, 0
/* 80712628  41 82 01 4C */	beq lbl_80712774
/* 8071262C  38 7F 0F 5C */	addi r3, r31, 0xf5c
/* 80712630  4B 97 1E C9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80712634  7C 64 1B 78 */	mr r4, r3
/* 80712638  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 8071263C  38 A0 00 28 */	li r5, 0x28
/* 80712640  38 C0 00 00 */	li r6, 0
/* 80712644  4B 97 4E D1 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80712648  3C 60 80 71 */	lis r3, l_HIO@ha /* 0x80713F74@ha */
/* 8071264C  38 63 3F 74 */	addi r3, r3, l_HIO@l /* 0x80713F74@l */
/* 80712650  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80712654  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 80712658  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 8071265C  38 00 00 0A */	li r0, 0xa
/* 80712660  B0 1F 06 CC */	sth r0, 0x6cc(r31)
/* 80712664  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80712668  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8071266C  80 63 00 00 */	lwz r3, 0(r3)
/* 80712670  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80712674  4B 8F 9D 69 */	bl mDoMtx_YrotS__FPA4_fs
/* 80712678  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8071267C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80712680  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80712684  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80712688  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8071268C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80712690  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80712694  38 81 00 AC */	addi r4, r1, 0xac
/* 80712698  4B B5 E8 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8071269C  38 61 00 AC */	addi r3, r1, 0xac
/* 807126A0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807126A4  7C 65 1B 78 */	mr r5, r3
/* 807126A8  4B C3 49 E9 */	bl PSVECAdd
/* 807126AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807126B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807126B4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807126B8  38 80 00 02 */	li r4, 2
/* 807126BC  38 A0 00 00 */	li r5, 0
/* 807126C0  38 C1 00 AC */	addi r6, r1, 0xac
/* 807126C4  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 807126C8  39 00 00 00 */	li r8, 0
/* 807126CC  39 20 00 00 */	li r9, 0
/* 807126D0  4B 93 9B 49 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 807126D4  7F 43 D3 78 */	mr r3, r26
/* 807126D8  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 807126DC  81 8C 02 00 */	lwz r12, 0x200(r12)
/* 807126E0  7D 89 03 A6 */	mtctr r12
/* 807126E4  4E 80 04 21 */	bctrl 
/* 807126E8  28 03 00 00 */	cmplwi r3, 0
/* 807126EC  41 82 00 88 */	beq lbl_80712774
/* 807126F0  38 00 00 0C */	li r0, 0xc
/* 807126F4  B0 1F 06 AE */	sth r0, 0x6ae(r31)
/* 807126F8  38 00 00 00 */	li r0, 0
/* 807126FC  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80712700  88 1F 08 0E */	lbz r0, 0x80e(r31)
/* 80712704  7C 00 07 75 */	extsb. r0, r0
/* 80712708  41 82 00 0C */	beq lbl_80712714
/* 8071270C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80712710  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80712714:
/* 80712714  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703CB@ha */
/* 80712718  38 03 03 CB */	addi r0, r3, 0x03CB /* 0x000703CB@l */
/* 8071271C  90 01 00 08 */	stw r0, 8(r1)
/* 80712720  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80712724  38 81 00 08 */	addi r4, r1, 8
/* 80712728  38 A0 FF FF */	li r5, -1
/* 8071272C  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 80712730  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80712734  7D 89 03 A6 */	mtctr r12
/* 80712738  4E 80 04 21 */	bctrl 
/* 8071273C  48 00 00 38 */	b lbl_80712774
lbl_80712740:
/* 80712740  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 80712744  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80712748  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8071274C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80712750  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80712754  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80712758  38 61 00 1C */	addi r3, r1, 0x1c
/* 8071275C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80712760  38 A1 00 70 */	addi r5, r1, 0x70
/* 80712764  4B B5 43 81 */	bl __pl__4cXyzCFRC3Vec
/* 80712768  38 7F 10 80 */	addi r3, r31, 0x1080
/* 8071276C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80712770  4B B5 CE D9 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_80712774:
/* 80712774  38 00 00 00 */	li r0, 0
/* 80712778  98 1F 06 D1 */	stb r0, 0x6d1(r31)
/* 8071277C  7F 63 DB 78 */	mr r3, r27
/* 80712780  38 9F 0F 5C */	addi r4, r31, 0xf5c
/* 80712784  4B B5 24 25 */	bl Set__4cCcSFP8cCcD_Obj
/* 80712788  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 8071278C  7C 00 07 75 */	extsb. r0, r0
/* 80712790  41 82 00 18 */	beq lbl_807127A8
/* 80712794  38 7F 06 A8 */	addi r3, r31, 0x6a8
/* 80712798  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 8071279C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807127A0  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 807127A4  4B B5 D2 99 */	bl cLib_addCalc2__FPffff
lbl_807127A8:
/* 807127A8  83 3D 5D AC */	lwz r25, 0x5dac(r29)
/* 807127AC  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 807127B0  80 63 00 04 */	lwz r3, 4(r3)
/* 807127B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807127B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807127BC  38 63 00 60 */	addi r3, r3, 0x60
/* 807127C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807127C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807127C8  4B C3 3C E9 */	bl PSMTXCopy
/* 807127CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807127D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807127D4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807127D8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807127DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807127E0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 807127E4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807127E8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 807127EC  38 61 00 10 */	addi r3, r1, 0x10
/* 807127F0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 807127F4  38 A1 00 AC */	addi r5, r1, 0xac
/* 807127F8  4B B5 43 3D */	bl __mi__4cXyzCFRC3Vec
/* 807127FC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80712800  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80712804  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80712808  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8071280C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80712810  D0 41 00 C0 */	stfs f2, 0xc0(r1)
/* 80712814  4B B5 4E 61 */	bl cM_atan2s__Fff
/* 80712818  7C 64 1B 78 */	mr r4, r3
/* 8071281C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80712820  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80712824  80 63 00 00 */	lwz r3, 0(r3)
/* 80712828  4B 8F 9B B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8071282C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80712830  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80712834  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80712838  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8071283C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80712840  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80712844  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80712848  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8071284C  4B B5 E6 A1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80712850  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80712854  38 81 00 AC */	addi r4, r1, 0xac
/* 80712858  7C 65 1B 78 */	mr r5, r3
/* 8071285C  4B C3 48 35 */	bl PSVECAdd
/* 80712860  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80712864  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 80712868  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8071286C  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80712870  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80712874  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80712878  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 8071287C  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80712880  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 80712884  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 80712888  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 8071288C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80712890  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 80712894  EC 02 00 2A */	fadds f0, f2, f0
/* 80712898  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8071289C  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 807128A0  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 807128A4  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 807128A8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807128AC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807128B0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807128B4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807128B8  7F E3 FB 78 */	mr r3, r31
/* 807128BC  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 807128C0  38 BF 05 38 */	addi r5, r31, 0x538
/* 807128C4  38 C1 00 58 */	addi r6, r1, 0x58
/* 807128C8  48 00 0C 49 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807128CC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 807128D0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 807128D4  EC 21 00 28 */	fsubs f1, f1, f0
/* 807128D8  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 807128DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807128E0  40 80 00 30 */	bge lbl_80712910
/* 807128E4  7F E3 FB 78 */	mr r3, r31
/* 807128E8  4B 90 73 95 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 807128EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807128F0  54 04 46 3E */	srwi r4, r0, 0x18
/* 807128F4  2C 04 00 FF */	cmpwi r4, 0xff
/* 807128F8  41 82 00 18 */	beq lbl_80712910
/* 807128FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80712900  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80712904  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80712908  7C 05 07 74 */	extsb r5, r0
/* 8071290C  4B 92 28 F5 */	bl onSwitch__10dSv_info_cFii
lbl_80712910:
/* 80712910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80712914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80712918  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8071291C  3C 80 80 71 */	lis r4, d_a_e_mf__stringBase0@ha /* 0x80713AF4@ha */
/* 80712920  38 84 3A F4 */	addi r4, r4, d_a_e_mf__stringBase0@l /* 0x80713AF4@l */
/* 80712924  38 84 00 05 */	addi r4, r4, 5
/* 80712928  4B C5 60 6D */	bl strcmp
/* 8071292C  2C 03 00 00 */	cmpwi r3, 0
/* 80712930  40 82 00 4C */	bne lbl_8071297C
/* 80712934  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80712938  2C 00 00 08 */	cmpwi r0, 8
/* 8071293C  40 82 00 40 */	bne lbl_8071297C
/* 80712940  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80712944  2C 00 00 00 */	cmpwi r0, 0
/* 80712948  41 82 00 34 */	beq lbl_8071297C
/* 8071294C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80712950  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 80712954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80712958  4C 40 13 82 */	cror 2, 0, 2
/* 8071295C  40 82 00 20 */	bne lbl_8071297C
/* 80712960  38 00 00 15 */	li r0, 0x15
/* 80712964  B0 1F 06 AE */	sth r0, 0x6ae(r31)
/* 80712968  38 00 00 00 */	li r0, 0
/* 8071296C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80712970  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80712974  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 80712978  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_8071297C:
/* 8071297C  38 60 00 01 */	li r3, 1
lbl_80712980:
/* 80712980  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80712984  4B C4 F8 95 */	bl _restgpr_25
/* 80712988  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8071298C  7C 08 03 A6 */	mtlr r0
/* 80712990  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80712994  4E 80 00 20 */	blr 
