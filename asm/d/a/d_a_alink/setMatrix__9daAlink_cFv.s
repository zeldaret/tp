lbl_800A8CE4:
/* 800A8CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A8CE8  7C 08 02 A6 */	mflr r0
/* 800A8CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A8CF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A8CF4  7C 7F 1B 78 */	mr r31, r3
/* 800A8CF8  80 03 31 74 */	lwz r0, 0x3174(r3)
/* 800A8CFC  2C 00 00 08 */	cmpwi r0, 8
/* 800A8D00  40 82 00 2C */	bne lbl_800A8D2C
/* 800A8D04  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800A8D08  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800A8D0C  41 82 00 20 */	beq lbl_800A8D2C
/* 800A8D10  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800A8D14  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800A8D18  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800A8D1C  7C 80 00 39 */	and. r0, r4, r0
/* 800A8D20  40 82 00 0C */	bne lbl_800A8D2C
/* 800A8D24  C0 22 93 78 */	lfs f1, lit_8676(r2)
/* 800A8D28  48 00 00 08 */	b lbl_800A8D30
lbl_800A8D2C:
/* 800A8D2C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
lbl_800A8D30:
/* 800A8D30  38 7F 2B A0 */	addi r3, r31, 0x2ba0
/* 800A8D34  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A8D38  C0 62 93 1C */	lfs f3, lit_7448(r2)
/* 800A8D3C  C0 82 92 C4 */	lfs f4, lit_6109(r2)
/* 800A8D40  48 1C 6C 3D */	bl cLib_addCalc__FPfffff
/* 800A8D44  7F E3 FB 78 */	mr r3, r31
/* 800A8D48  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A8D4C  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800A8D50  7D 89 03 A6 */	mtctr r12
/* 800A8D54  4E 80 04 21 */	bctrl 
/* 800A8D58  28 03 00 00 */	cmplwi r3, 0
/* 800A8D5C  41 82 00 0C */	beq lbl_800A8D68
/* 800A8D60  C0 A2 93 84 */	lfs f5, lit_8781(r2)
/* 800A8D64  48 00 00 08 */	b lbl_800A8D6C
lbl_800A8D68:
/* 800A8D68  C0 A2 92 C0 */	lfs f5, lit_6108(r2)
lbl_800A8D6C:
/* 800A8D6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8D70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8D74  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800A8D78  C0 9F 2B A0 */	lfs f4, 0x2ba0(r31)
/* 800A8D7C  C0 7F 2B 9C */	lfs f3, 0x2b9c(r31)
/* 800A8D80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800A8D84  C0 1F 2B 98 */	lfs f0, 0x2b98(r31)
/* 800A8D88  EC 02 00 2A */	fadds f0, f2, f0
/* 800A8D8C  EC 05 00 2A */	fadds f0, f5, f0
/* 800A8D90  EC 03 00 2A */	fadds f0, f3, f0
/* 800A8D94  EC 44 00 2A */	fadds f2, f4, f0
/* 800A8D98  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800A8D9C  48 29 DB 4D */	bl PSMTXTrans
/* 800A8DA0  7F E3 FB 78 */	mr r3, r31
/* 800A8DA4  48 03 96 59 */	bl concatMagneBootMtx__9daAlink_cFv
/* 800A8DA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8DAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8DB0  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800A8DB4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 800A8DB8  A8 1F 30 8C */	lha r0, 0x308c(r31)
/* 800A8DBC  7C 05 02 14 */	add r0, r5, r0
/* 800A8DC0  7C 05 07 34 */	extsh r5, r0
/* 800A8DC4  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 800A8DC8  4B F6 34 D9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800A8DCC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A8DD0  28 00 00 53 */	cmplwi r0, 0x53
/* 800A8DD4  41 82 00 0C */	beq lbl_800A8DE0
/* 800A8DD8  28 00 00 E0 */	cmplwi r0, 0xe0
/* 800A8DDC  40 82 00 6C */	bne lbl_800A8E48
lbl_800A8DE0:
/* 800A8DE0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A8DE4  C0 42 93 00 */	lfs f2, lit_6895(r2)
/* 800A8DE8  C0 62 93 50 */	lfs f3, lit_8247(r2)
/* 800A8DEC  4B F6 3F B1 */	bl transM__14mDoMtx_stack_cFfff
/* 800A8DF0  A8 BF 30 12 */	lha r5, 0x3012(r31)
/* 800A8DF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8DF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8DFC  A8 9F 30 10 */	lha r4, 0x3010(r31)
/* 800A8E00  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 800A8E04  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A8E08  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800A8E0C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800A8E10  3C 00 43 30 */	lis r0, 0x4330
/* 800A8E14  90 01 00 08 */	stw r0, 8(r1)
/* 800A8E18  C8 01 00 08 */	lfd f0, 8(r1)
/* 800A8E1C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A8E20  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A8E24  FC 00 00 1E */	fctiwz f0, f0
/* 800A8E28  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800A8E2C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800A8E30  4B F6 34 71 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800A8E34  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A8E38  C0 42 93 CC */	lfs f2, lit_10532(r2)
/* 800A8E3C  C0 62 94 A0 */	lfs f3, lit_16568(r2)
/* 800A8E40  4B F6 3F 5D */	bl transM__14mDoMtx_stack_cFfff
/* 800A8E44  48 00 00 8C */	b lbl_800A8ED0
lbl_800A8E48:
/* 800A8E48  28 00 00 4F */	cmplwi r0, 0x4f
/* 800A8E4C  40 82 00 6C */	bne lbl_800A8EB8
/* 800A8E50  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A8E54  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 800A8E58  C0 62 93 10 */	lfs f3, lit_7306(r2)
/* 800A8E5C  4B F6 3F 41 */	bl transM__14mDoMtx_stack_cFfff
/* 800A8E60  A8 BF 30 12 */	lha r5, 0x3012(r31)
/* 800A8E64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8E68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8E6C  A8 9F 30 10 */	lha r4, 0x3010(r31)
/* 800A8E70  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800A8E74  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800A8E78  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 800A8E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A8E80  3C 00 43 30 */	lis r0, 0x4330
/* 800A8E84  90 01 00 10 */	stw r0, 0x10(r1)
/* 800A8E88  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800A8E8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800A8E90  EC 02 00 32 */	fmuls f0, f2, f0
/* 800A8E94  FC 00 00 1E */	fctiwz f0, f0
/* 800A8E98  D8 01 00 08 */	stfd f0, 8(r1)
/* 800A8E9C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800A8EA0  4B F6 34 01 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800A8EA4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A8EA8  C0 42 95 90 */	lfs f2, lit_25059(r2)
/* 800A8EAC  C0 62 98 44 */	lfs f3, lit_60413(r2)
/* 800A8EB0  4B F6 3E ED */	bl transM__14mDoMtx_stack_cFfff
/* 800A8EB4  48 00 00 1C */	b lbl_800A8ED0
lbl_800A8EB8:
/* 800A8EB8  28 00 01 31 */	cmplwi r0, 0x131
/* 800A8EBC  40 82 00 14 */	bne lbl_800A8ED0
/* 800A8EC0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800A8EC4  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 800A8EC8  C0 62 94 14 */	lfs f3, lit_14616(r2)
/* 800A8ECC  4B F6 3E D1 */	bl transM__14mDoMtx_stack_cFfff
lbl_800A8ED0:
/* 800A8ED0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800A8ED4  28 00 00 CC */	cmplwi r0, 0xcc
/* 800A8ED8  40 82 00 14 */	bne lbl_800A8EEC
/* 800A8EDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8EE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8EE4  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 800A8EE8  4B F6 35 4D */	bl mDoMtx_YrotM__FPA4_fs
lbl_800A8EEC:
/* 800A8EEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8EF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8EF4  80 9F 06 50 */	lwz r4, 0x650(r31)
/* 800A8EF8  38 84 00 24 */	addi r4, r4, 0x24
/* 800A8EFC  48 29 D5 B5 */	bl PSMTXCopy
/* 800A8F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8F08  38 9F 2B B8 */	addi r4, r31, 0x2bb8
/* 800A8F0C  48 29 D6 A5 */	bl PSMTXInverse
/* 800A8F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8F18  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 800A8F1C  4B F6 34 29 */	bl mDoMtx_XrotS__FPA4_fs
/* 800A8F20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8F24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8F28  38 9F 2B B8 */	addi r4, r31, 0x2bb8
/* 800A8F2C  7C 65 1B 78 */	mr r5, r3
/* 800A8F30  48 29 D5 B5 */	bl PSMTXConcat
/* 800A8F34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A8F38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A8F3C  38 9F 2B E8 */	addi r4, r31, 0x2be8
/* 800A8F40  48 29 D5 71 */	bl PSMTXCopy
/* 800A8F44  38 00 00 00 */	li r0, 0
/* 800A8F48  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A8F4C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800A8F50  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A8F54  40 82 02 E0 */	bne lbl_800A9234
/* 800A8F58  7F E3 FB 78 */	mr r3, r31
/* 800A8F5C  48 06 7D 11 */	bl checkKandelaarEquipAnime__9daAlink_cCFv
/* 800A8F60  2C 03 00 00 */	cmpwi r3, 0
/* 800A8F64  40 82 00 88 */	bne lbl_800A8FEC
/* 800A8F68  7F E3 FB 78 */	mr r3, r31
/* 800A8F6C  48 01 04 61 */	bl checkSwordTwirlAnime__9daAlink_cCFv
/* 800A8F70  2C 03 00 00 */	cmpwi r3, 0
/* 800A8F74  40 82 00 78 */	bne lbl_800A8FEC
/* 800A8F78  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800A8F7C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 800A8F80  40 82 00 6C */	bne lbl_800A8FEC
/* 800A8F84  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A8F88  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800A8F8C  41 82 00 14 */	beq lbl_800A8FA0
/* 800A8F90  7F E3 FB 78 */	mr r3, r31
/* 800A8F94  48 01 03 AD */	bl checkEquipAnime__9daAlink_cCFv
/* 800A8F98  2C 03 00 00 */	cmpwi r3, 0
/* 800A8F9C  40 82 00 50 */	bne lbl_800A8FEC
lbl_800A8FA0:
/* 800A8FA0  7F E3 FB 78 */	mr r3, r31
/* 800A8FA4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800A8FA8  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800A8FAC  7D 89 03 A6 */	mtctr r12
/* 800A8FB0  4E 80 04 21 */	bctrl 
/* 800A8FB4  28 03 00 00 */	cmplwi r3, 0
/* 800A8FB8  41 82 00 14 */	beq lbl_800A8FCC
/* 800A8FBC  7F E3 FB 78 */	mr r3, r31
/* 800A8FC0  48 02 7E D9 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800A8FC4  2C 03 00 00 */	cmpwi r3, 0
/* 800A8FC8  40 82 00 24 */	bne lbl_800A8FEC
lbl_800A8FCC:
/* 800A8FCC  7F E3 FB 78 */	mr r3, r31
/* 800A8FD0  48 03 3E 21 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800A8FD4  2C 03 00 00 */	cmpwi r3, 0
/* 800A8FD8  41 82 00 20 */	beq lbl_800A8FF8
/* 800A8FDC  7F E3 FB 78 */	mr r3, r31
/* 800A8FE0  48 01 03 61 */	bl checkEquipAnime__9daAlink_cCFv
/* 800A8FE4  2C 03 00 00 */	cmpwi r3, 0
/* 800A8FE8  41 82 00 10 */	beq lbl_800A8FF8
lbl_800A8FEC:
/* 800A8FEC  38 00 00 05 */	li r0, 5
/* 800A8FF0  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A8FF4  48 00 02 2C */	b lbl_800A9220
lbl_800A8FF8:
/* 800A8FF8  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A8FFC  28 00 01 FB */	cmplwi r0, 0x1fb
/* 800A9000  40 82 00 10 */	bne lbl_800A9010
/* 800A9004  38 00 00 04 */	li r0, 4
/* 800A9008  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A900C  48 00 02 14 */	b lbl_800A9220
lbl_800A9010:
/* 800A9010  7F E3 FB 78 */	mr r3, r31
/* 800A9014  48 01 03 2D */	bl checkEquipAnime__9daAlink_cCFv
/* 800A9018  2C 03 00 00 */	cmpwi r3, 0
/* 800A901C  41 82 00 4C */	beq lbl_800A9068
/* 800A9020  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A9024  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A9028  40 82 00 40 */	bne lbl_800A9068
/* 800A902C  7F E3 FB 78 */	mr r3, r31
/* 800A9030  48 02 7E 69 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800A9034  2C 03 00 00 */	cmpwi r3, 0
/* 800A9038  41 82 00 24 */	beq lbl_800A905C
/* 800A903C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A9040  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A9044  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800A9048  28 00 00 FF */	cmplwi r0, 0xff
/* 800A904C  40 82 00 10 */	bne lbl_800A905C
/* 800A9050  38 00 00 05 */	li r0, 5
/* 800A9054  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A9058  48 00 01 C8 */	b lbl_800A9220
lbl_800A905C:
/* 800A905C  38 00 00 01 */	li r0, 1
/* 800A9060  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A9064  48 00 01 BC */	b lbl_800A9220
lbl_800A9068:
/* 800A9068  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800A906C  48 0B 54 61 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800A9070  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A9074  41 82 00 4C */	beq lbl_800A90C0
/* 800A9078  7F E3 FB 78 */	mr r3, r31
/* 800A907C  38 80 00 5A */	li r4, 0x5a
/* 800A9080  48 00 34 D9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A9084  2C 03 00 00 */	cmpwi r3, 0
/* 800A9088  40 82 00 2C */	bne lbl_800A90B4
/* 800A908C  7F E3 FB 78 */	mr r3, r31
/* 800A9090  38 80 00 54 */	li r4, 0x54
/* 800A9094  48 00 34 C5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A9098  2C 03 00 00 */	cmpwi r3, 0
/* 800A909C  40 82 00 18 */	bne lbl_800A90B4
/* 800A90A0  7F E3 FB 78 */	mr r3, r31
/* 800A90A4  38 80 00 5B */	li r4, 0x5b
/* 800A90A8  48 00 34 B1 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A90AC  2C 03 00 00 */	cmpwi r3, 0
/* 800A90B0  41 82 00 10 */	beq lbl_800A90C0
lbl_800A90B4:
/* 800A90B4  38 00 00 06 */	li r0, 6
/* 800A90B8  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A90BC  48 00 01 64 */	b lbl_800A9220
lbl_800A90C0:
/* 800A90C0  38 60 00 00 */	li r3, 0
/* 800A90C4  A0 9F 2F E8 */	lhz r4, 0x2fe8(r31)
/* 800A90C8  28 04 00 15 */	cmplwi r4, 0x15
/* 800A90CC  40 82 00 14 */	bne lbl_800A90E0
/* 800A90D0  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800A90D4  2C 00 00 00 */	cmpwi r0, 0
/* 800A90D8  41 82 00 08 */	beq lbl_800A90E0
/* 800A90DC  38 60 00 01 */	li r3, 1
lbl_800A90E0:
/* 800A90E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A90E4  41 82 00 10 */	beq lbl_800A90F4
/* 800A90E8  38 00 00 08 */	li r0, 8
/* 800A90EC  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A90F0  48 00 01 30 */	b lbl_800A9220
lbl_800A90F4:
/* 800A90F4  28 04 00 0C */	cmplwi r4, 0xc
/* 800A90F8  40 82 00 10 */	bne lbl_800A9108
/* 800A90FC  80 1F 31 98 */	lwz r0, 0x3198(r31)
/* 800A9100  2C 00 00 00 */	cmpwi r0, 0
/* 800A9104  40 82 00 44 */	bne lbl_800A9148
lbl_800A9108:
/* 800A9108  7F E3 FB 78 */	mr r3, r31
/* 800A910C  48 01 02 8D */	bl checkWindDashAnime__9daAlink_cCFv
/* 800A9110  2C 03 00 00 */	cmpwi r3, 0
/* 800A9114  41 82 00 40 */	beq lbl_800A9154
/* 800A9118  7F E3 FB 78 */	mr r3, r31
/* 800A911C  38 80 00 0E */	li r4, 0xe
/* 800A9120  48 00 34 95 */	bl checkUnderMove1BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A9124  2C 03 00 00 */	cmpwi r3, 0
/* 800A9128  41 82 00 2C */	beq lbl_800A9154
/* 800A912C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A9130  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800A9134  40 82 00 14 */	bne lbl_800A9148
/* 800A9138  7F E3 FB 78 */	mr r3, r31
/* 800A913C  48 00 A7 C9 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800A9140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A9144  41 82 00 10 */	beq lbl_800A9154
lbl_800A9148:
/* 800A9148  38 00 00 07 */	li r0, 7
/* 800A914C  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A9150  48 00 00 D0 */	b lbl_800A9220
lbl_800A9154:
/* 800A9154  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A9158  28 00 00 96 */	cmplwi r0, 0x96
/* 800A915C  41 82 00 54 */	beq lbl_800A91B0
/* 800A9160  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800A9164  28 00 00 83 */	cmplwi r0, 0x83
/* 800A9168  41 82 00 48 */	beq lbl_800A91B0
/* 800A916C  38 00 00 00 */	li r0, 0
/* 800A9170  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800A9174  28 03 00 01 */	cmplwi r3, 1
/* 800A9178  41 82 00 0C */	beq lbl_800A9184
/* 800A917C  28 03 00 02 */	cmplwi r3, 2
/* 800A9180  40 82 00 08 */	bne lbl_800A9188
lbl_800A9184:
/* 800A9184  38 00 00 01 */	li r0, 1
lbl_800A9188:
/* 800A9188  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800A918C  41 82 00 30 */	beq lbl_800A91BC
/* 800A9190  7F E3 FB 78 */	mr r3, r31
/* 800A9194  48 01 1D ED */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800A9198  2C 03 00 00 */	cmpwi r3, 0
/* 800A919C  40 82 00 14 */	bne lbl_800A91B0
/* 800A91A0  7F E3 FB 78 */	mr r3, r31
/* 800A91A4  48 03 AA C9 */	bl checkGrabAnime__9daAlink_cCFv
/* 800A91A8  2C 03 00 00 */	cmpwi r3, 0
/* 800A91AC  41 82 00 10 */	beq lbl_800A91BC
lbl_800A91B0:
/* 800A91B0  38 00 00 03 */	li r0, 3
/* 800A91B4  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A91B8  48 00 00 68 */	b lbl_800A9220
lbl_800A91BC:
/* 800A91BC  7F E3 FB 78 */	mr r3, r31
/* 800A91C0  48 02 7C D9 */	bl checkSwordEquipAnime__9daAlink_cCFv
/* 800A91C4  2C 03 00 00 */	cmpwi r3, 0
/* 800A91C8  41 82 00 24 */	beq lbl_800A91EC
/* 800A91CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A91D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A91D4  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800A91D8  28 00 00 FF */	cmplwi r0, 0xff
/* 800A91DC  40 82 00 10 */	bne lbl_800A91EC
/* 800A91E0  38 00 00 02 */	li r0, 2
/* 800A91E4  98 1F 2F B6 */	stb r0, 0x2fb6(r31)
/* 800A91E8  48 00 00 38 */	b lbl_800A9220
lbl_800A91EC:
/* 800A91EC  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800A91F0  28 00 01 9C */	cmplwi r0, 0x19c
/* 800A91F4  40 82 00 2C */	bne lbl_800A9220
/* 800A91F8  7F E3 FB 78 */	mr r3, r31
/* 800A91FC  38 80 01 60 */	li r4, 0x160
/* 800A9200  48 00 33 59 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800A9204  2C 03 00 00 */	cmpwi r3, 0
/* 800A9208  41 82 00 10 */	beq lbl_800A9218
/* 800A920C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A9210  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
/* 800A9214  48 00 00 0C */	b lbl_800A9220
lbl_800A9218:
/* 800A9218  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A921C  D0 1F 1F 50 */	stfs f0, 0x1f50(r31)
lbl_800A9220:
/* 800A9220  88 1F 2F B6 */	lbz r0, 0x2fb6(r31)
/* 800A9224  28 00 00 00 */	cmplwi r0, 0
/* 800A9228  41 82 00 0C */	beq lbl_800A9234
/* 800A922C  C0 1F 1F 50 */	lfs f0, 0x1f50(r31)
/* 800A9230  D0 1F 34 44 */	stfs f0, 0x3444(r31)
lbl_800A9234:
/* 800A9234  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A9238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A923C  7C 08 03 A6 */	mtlr r0
/* 800A9240  38 21 00 20 */	addi r1, r1, 0x20
/* 800A9244  4E 80 00 20 */	blr 
