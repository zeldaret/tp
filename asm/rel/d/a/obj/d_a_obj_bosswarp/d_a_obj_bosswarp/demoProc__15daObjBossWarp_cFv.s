lbl_8057AA94:
/* 8057AA94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8057AA98  7C 08 02 A6 */	mflr r0
/* 8057AA9C  90 01 00 74 */	stw r0, 0x74(r1)
/* 8057AAA0  39 61 00 70 */	addi r11, r1, 0x70
/* 8057AAA4  4B DE 77 25 */	bl _savegpr_24
/* 8057AAA8  7C 7F 1B 78 */	mr r31, r3
/* 8057AAAC  3C 60 80 58 */	lis r3, l_hair_offset@ha /* 0x8057B360@ha */
/* 8057AAB0  3B C3 B3 60 */	addi r30, r3, l_hair_offset@l /* 0x8057B360@l */
/* 8057AAB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057AAB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057AABC  83 23 5D AC */	lwz r25, 0x5dac(r3)
/* 8057AAC0  38 00 02 F2 */	li r0, 0x2f2
/* 8057AAC4  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8057AAC8  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8057AACC  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8057AAD0  38 81 00 0A */	addi r4, r1, 0xa
/* 8057AAD4  4B A9 ED 25 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8057AAD8  7C 7D 1B 78 */	mr r29, r3
/* 8057AADC  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 8057AAE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8057AAE4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057AAE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8057AAEC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8057AAF0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8057AAF4  83 83 10 18 */	lwz r28, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 8057AAF8  38 00 02 1B */	li r0, 0x21b
/* 8057AAFC  B0 01 00 08 */	sth r0, 8(r1)
/* 8057AB00  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 8057AB04  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 8057AB08  38 81 00 08 */	addi r4, r1, 8
/* 8057AB0C  4B A9 EC ED */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8057AB10  7C 78 1B 78 */	mr r24, r3
/* 8057AB14  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 8057AB18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8057AB1C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057AB20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8057AB24  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8057AB28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057AB2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057AB30  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8057AB34  7F 63 DB 78 */	mr r3, r27
/* 8057AB38  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AB3C  3C A0 80 58 */	lis r5, action_table@ha /* 0x8057B7B0@ha */
/* 8057AB40  38 A5 B7 B0 */	addi r5, r5, action_table@l /* 0x8057B7B0@l */
/* 8057AB44  38 C0 00 0F */	li r6, 0xf
/* 8057AB48  38 E0 00 00 */	li r7, 0
/* 8057AB4C  39 00 00 00 */	li r8, 0
/* 8057AB50  4B AC D2 C1 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 8057AB54  7C 7A 1B 78 */	mr r26, r3
/* 8057AB58  7F 63 DB 78 */	mr r3, r27
/* 8057AB5C  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AB60  4B AC D1 ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 8057AB64  2C 03 00 00 */	cmpwi r3, 0
/* 8057AB68  41 82 03 50 */	beq lbl_8057AEB8
/* 8057AB6C  28 1A 00 0E */	cmplwi r26, 0xe
/* 8057AB70  41 81 03 48 */	bgt lbl_8057AEB8
/* 8057AB74  3C 60 80 58 */	lis r3, lit_4502@ha /* 0x8057B834@ha */
/* 8057AB78  38 63 B8 34 */	addi r3, r3, lit_4502@l /* 0x8057B834@l */
/* 8057AB7C  57 40 10 3A */	slwi r0, r26, 2
/* 8057AB80  7C 03 00 2E */	lwzx r0, r3, r0
/* 8057AB84  7C 09 03 A6 */	mtctr r0
/* 8057AB88  4E 80 04 20 */	bctr 
lbl_8057AB8C:
/* 8057AB8C  7F 63 DB 78 */	mr r3, r27
/* 8057AB90  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AB94  3C A0 80 58 */	lis r5, d_a_obj_bosswarp__stringBase0@ha /* 0x8057B4EC@ha */
/* 8057AB98  38 A5 B4 EC */	addi r5, r5, d_a_obj_bosswarp__stringBase0@l /* 0x8057B4EC@l */
/* 8057AB9C  38 A5 01 63 */	addi r5, r5, 0x163
/* 8057ABA0  38 C0 00 03 */	li r6, 3
/* 8057ABA4  4B AC D5 49 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8057ABA8  28 03 00 00 */	cmplwi r3, 0
/* 8057ABAC  40 82 00 10 */	bne lbl_8057ABBC
/* 8057ABB0  38 00 00 01 */	li r0, 1
/* 8057ABB4  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8057ABB8  48 00 03 00 */	b lbl_8057AEB8
lbl_8057ABBC:
/* 8057ABBC  80 03 00 00 */	lwz r0, 0(r3)
/* 8057ABC0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 8057ABC4  48 00 02 F4 */	b lbl_8057AEB8
lbl_8057ABC8:
/* 8057ABC8  4B FF EA 91 */	bl getNowLevel__Fv
/* 8057ABCC  2C 03 00 00 */	cmpwi r3, 0
/* 8057ABD0  41 80 00 40 */	blt lbl_8057AC10
/* 8057ABD4  2C 03 00 0A */	cmpwi r3, 0xa
/* 8057ABD8  40 80 00 38 */	bge lbl_8057AC10
/* 8057ABDC  54 60 10 3A */	slwi r0, r3, 2
/* 8057ABE0  38 7E 01 30 */	addi r3, r30, 0x130
/* 8057ABE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8057ABE8  2C 00 00 00 */	cmpwi r0, 0
/* 8057ABEC  40 81 00 24 */	ble lbl_8057AC10
/* 8057ABF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057ABF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057ABF8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8057ABFC  54 00 08 3C */	slwi r0, r0, 1
/* 8057AC00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8057AC04  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8057AC08  7C 84 02 2E */	lhzx r4, r4, r0
/* 8057AC0C  4B AB 9D 81 */	bl onEventBit__11dSv_event_cFUs
lbl_8057AC10:
/* 8057AC10  7F E3 FB 78 */	mr r3, r31
/* 8057AC14  38 80 00 00 */	li r4, 0
/* 8057AC18  4B FF F0 19 */	bl appear__15daObjBossWarp_cFi
/* 8057AC1C  48 00 02 9C */	b lbl_8057AEB8
lbl_8057AC20:
/* 8057AC20  7F E3 FB 78 */	mr r3, r31
/* 8057AC24  38 80 00 00 */	li r4, 0
/* 8057AC28  4B FF F1 E1 */	bl disappear__15daObjBossWarp_cFi
/* 8057AC2C  48 00 02 8C */	b lbl_8057AEB8
lbl_8057AC30:
/* 8057AC30  80 7F 00 B0 */	lwz r3, 0xb0(r31)
/* 8057AC34  54 60 2F FF */	rlwinm. r0, r3, 5, 0x1f, 0x1f
/* 8057AC38  54 64 C6 3E */	rlwinm r4, r3, 0x18, 0x18, 0x1f
/* 8057AC3C  7F 23 CB 78 */	mr r3, r25
/* 8057AC40  38 A0 00 FF */	li r5, 0xff
/* 8057AC44  38 C0 00 00 */	li r6, 0
/* 8057AC48  81 99 06 28 */	lwz r12, 0x628(r25)
/* 8057AC4C  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8057AC50  7D 89 03 A6 */	mtctr r12
/* 8057AC54  4E 80 04 21 */	bctrl 
/* 8057AC58  48 00 02 60 */	b lbl_8057AEB8
lbl_8057AC5C:
/* 8057AC5C  28 1D 00 00 */	cmplwi r29, 0
/* 8057AC60  41 82 00 98 */	beq lbl_8057ACF8
/* 8057AC64  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8057AC68  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8057AC6C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8057AC70  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 8057AC74  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8057AC78  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 8057AC7C  4B FF E9 DD */	bl getNowLevel__Fv
/* 8057AC80  2C 03 00 03 */	cmpwi r3, 3
/* 8057AC84  40 80 00 18 */	bge lbl_8057AC9C
/* 8057AC88  C0 3F 05 A8 */	lfs f1, 0x5a8(r31)
/* 8057AC8C  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 8057AC90  EC 01 00 2A */	fadds f0, f1, f0
/* 8057AC94  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 8057AC98  48 00 00 60 */	b lbl_8057ACF8
lbl_8057AC9C:
/* 8057AC9C  4B FF E9 BD */	bl getNowLevel__Fv
/* 8057ACA0  2C 03 00 05 */	cmpwi r3, 5
/* 8057ACA4  40 82 00 44 */	bne lbl_8057ACE8
/* 8057ACA8  C0 5E 01 60 */	lfs f2, 0x160(r30)
/* 8057ACAC  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 8057ACB0  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 8057ACB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8057ACB8  EC 02 00 2A */	fadds f0, f2, f0
/* 8057ACBC  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
/* 8057ACC0  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 8057ACC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8057ACC8  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 8057ACCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8057ACD0  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 8057ACD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057ACD8  7F A3 EB 78 */	mr r3, r29
/* 8057ACDC  38 81 00 24 */	addi r4, r1, 0x24
/* 8057ACE0  48 00 06 5D */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 8057ACE4  48 00 00 14 */	b lbl_8057ACF8
lbl_8057ACE8:
/* 8057ACE8  C0 3F 05 A8 */	lfs f1, 0x5a8(r31)
/* 8057ACEC  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 8057ACF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8057ACF4  D0 1F 05 A8 */	stfs f0, 0x5a8(r31)
lbl_8057ACF8:
/* 8057ACF8  4B FF E9 61 */	bl getNowLevel__Fv
/* 8057ACFC  2C 03 00 03 */	cmpwi r3, 3
/* 8057AD00  40 80 00 20 */	bge lbl_8057AD20
/* 8057AD04  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057AD08  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 8057AD0C  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8057AD10  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 8057AD14  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 8057AD18  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
/* 8057AD1C  48 00 00 1C */	b lbl_8057AD38
lbl_8057AD20:
/* 8057AD20  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057AD24  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 8057AD28  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 8057AD2C  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
/* 8057AD30  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 8057AD34  D0 1F 05 B8 */	stfs f0, 0x5b8(r31)
lbl_8057AD38:
/* 8057AD38  38 79 04 D0 */	addi r3, r25, 0x4d0
/* 8057AD3C  4B A9 20 29 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8057AD40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057AD44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057AD48  A8 99 04 E6 */	lha r4, 0x4e6(r25)
/* 8057AD4C  4B A9 16 E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8057AD50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8057AD54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8057AD58  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 8057AD5C  7C 85 23 78 */	mr r5, r4
/* 8057AD60  4B DC C0 0D */	bl PSMTXMultVec
/* 8057AD64  C0 1F 05 B0 */	lfs f0, 0x5b0(r31)
/* 8057AD68  D0 1F 05 A4 */	stfs f0, 0x5a4(r31)
/* 8057AD6C  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 8057AD70  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 8057AD74  4B FF E8 E5 */	bl getNowLevel__Fv
/* 8057AD78  28 03 00 06 */	cmplwi r3, 6
/* 8057AD7C  41 81 00 A8 */	bgt lbl_8057AE24
/* 8057AD80  3C 80 80 58 */	lis r4, lit_4503@ha /* 0x8057B818@ha */
/* 8057AD84  38 84 B8 18 */	addi r4, r4, lit_4503@l /* 0x8057B818@l */
/* 8057AD88  54 60 10 3A */	slwi r0, r3, 2
/* 8057AD8C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8057AD90  7C 09 03 A6 */	mtctr r0
/* 8057AD94  4E 80 04 20 */	bctr 
lbl_8057AD98:
/* 8057AD98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057AD9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057ADA0  38 63 01 00 */	addi r3, r3, 0x100
/* 8057ADA4  38 80 00 00 */	li r4, 0
/* 8057ADA8  4B AB 94 85 */	bl onCollectCrystal__20dSv_player_collect_cFUc
/* 8057ADAC  48 00 00 78 */	b lbl_8057AE24
lbl_8057ADB0:
/* 8057ADB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057ADB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057ADB8  38 63 01 00 */	addi r3, r3, 0x100
/* 8057ADBC  38 80 00 01 */	li r4, 1
/* 8057ADC0  4B AB 94 6D */	bl onCollectCrystal__20dSv_player_collect_cFUc
/* 8057ADC4  48 00 00 60 */	b lbl_8057AE24
lbl_8057ADC8:
/* 8057ADC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057ADCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057ADD0  38 63 01 00 */	addi r3, r3, 0x100
/* 8057ADD4  38 80 00 02 */	li r4, 2
/* 8057ADD8  4B AB 94 55 */	bl onCollectCrystal__20dSv_player_collect_cFUc
/* 8057ADDC  48 00 00 48 */	b lbl_8057AE24
lbl_8057ADE0:
/* 8057ADE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057ADE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057ADE8  38 63 01 00 */	addi r3, r3, 0x100
/* 8057ADEC  38 80 00 01 */	li r4, 1
/* 8057ADF0  4B AB 94 81 */	bl onCollectMirror__20dSv_player_collect_cFUc
/* 8057ADF4  48 00 00 30 */	b lbl_8057AE24
lbl_8057ADF8:
/* 8057ADF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057ADFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057AE00  38 63 01 00 */	addi r3, r3, 0x100
/* 8057AE04  38 80 00 02 */	li r4, 2
/* 8057AE08  4B AB 94 69 */	bl onCollectMirror__20dSv_player_collect_cFUc
/* 8057AE0C  48 00 00 18 */	b lbl_8057AE24
lbl_8057AE10:
/* 8057AE10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8057AE14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8057AE18  38 63 01 00 */	addi r3, r3, 0x100
/* 8057AE1C  38 80 00 03 */	li r4, 3
/* 8057AE20  4B AB 94 51 */	bl onCollectMirror__20dSv_player_collect_cFUc
lbl_8057AE24:
/* 8057AE24  38 00 00 00 */	li r0, 0
/* 8057AE28  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AE2C  48 00 00 8C */	b lbl_8057AEB8
lbl_8057AE30:
/* 8057AE30  38 00 00 00 */	li r0, 0
/* 8057AE34  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AE38  48 00 00 80 */	b lbl_8057AEB8
lbl_8057AE3C:
/* 8057AE3C  38 00 00 00 */	li r0, 0
/* 8057AE40  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AE44  48 00 00 74 */	b lbl_8057AEB8
lbl_8057AE48:
/* 8057AE48  7F 63 DB 78 */	mr r3, r27
/* 8057AE4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8057AE50  4B AC D5 75 */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8057AE54  48 00 00 64 */	b lbl_8057AEB8
lbl_8057AE58:
/* 8057AE58  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8057AE5C  7F E4 FB 78 */	mr r4, r31
/* 8057AE60  38 A0 0B C0 */	li r5, 0xbc0
/* 8057AE64  38 C0 00 00 */	li r6, 0
/* 8057AE68  38 E0 00 00 */	li r7, 0
/* 8057AE6C  4B CC F1 25 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8057AE70  48 00 00 48 */	b lbl_8057AEB8
lbl_8057AE74:
/* 8057AE74  7F E3 FB 78 */	mr r3, r31
/* 8057AE78  48 00 02 61 */	bl setGoal__15daObjBossWarp_cFv
/* 8057AE7C  48 00 00 3C */	b lbl_8057AEB8
lbl_8057AE80:
/* 8057AE80  38 00 00 01 */	li r0, 1
/* 8057AE84  98 1F 06 2C */	stb r0, 0x62c(r31)
/* 8057AE88  48 00 00 30 */	b lbl_8057AEB8
lbl_8057AE8C:
/* 8057AE8C  28 18 00 00 */	cmplwi r24, 0
/* 8057AE90  41 82 00 28 */	beq lbl_8057AEB8
/* 8057AE94  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8057AE98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8057AE9C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8057AEA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8057AEA4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8057AEA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8057AEAC  7F 03 C3 78 */	mr r3, r24
/* 8057AEB0  38 81 00 18 */	addi r4, r1, 0x18
/* 8057AEB4  48 00 04 6D */	bl setPos__11daObjLife_cF4cXyz
lbl_8057AEB8:
/* 8057AEB8  28 1A 00 0A */	cmplwi r26, 0xa
/* 8057AEBC  41 81 01 F4 */	bgt lbl_8057B0B0
/* 8057AEC0  3C 60 80 58 */	lis r3, lit_4504@ha /* 0x8057B7EC@ha */
/* 8057AEC4  38 63 B7 EC */	addi r3, r3, lit_4504@l /* 0x8057B7EC@l */
/* 8057AEC8  57 40 10 3A */	slwi r0, r26, 2
/* 8057AECC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8057AED0  7C 09 03 A6 */	mtctr r0
/* 8057AED4  4E 80 04 20 */	bctr 
lbl_8057AED8:
/* 8057AED8  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 8057AEDC  48 00 04 29 */	bl func_8057B304
/* 8057AEE0  2C 03 00 00 */	cmpwi r3, 0
/* 8057AEE4  40 82 01 D8 */	bne lbl_8057B0BC
/* 8057AEE8  7F 63 DB 78 */	mr r3, r27
/* 8057AEEC  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AEF0  4B AC D2 8D */	bl cutEnd__16dEvent_manager_cFi
/* 8057AEF4  48 00 01 C8 */	b lbl_8057B0BC
lbl_8057AEF8:
/* 8057AEF8  7F 63 DB 78 */	mr r3, r27
/* 8057AEFC  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AF00  4B AC D2 7D */	bl cutEnd__16dEvent_manager_cFi
/* 8057AF04  48 00 01 B8 */	b lbl_8057B0BC
lbl_8057AF08:
/* 8057AF08  7F 63 DB 78 */	mr r3, r27
/* 8057AF0C  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AF10  4B AC D2 6D */	bl cutEnd__16dEvent_manager_cFi
/* 8057AF14  48 00 01 A8 */	b lbl_8057B0BC
lbl_8057AF18:
/* 8057AF18  28 1D 00 00 */	cmplwi r29, 0
/* 8057AF1C  41 82 01 A0 */	beq lbl_8057B0BC
/* 8057AF20  38 7F 05 A8 */	addi r3, r31, 0x5a8
/* 8057AF24  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 8057AF28  C0 5E 01 78 */	lfs f2, 0x178(r30)
/* 8057AF2C  C0 7E 00 D0 */	lfs f3, 0xd0(r30)
/* 8057AF30  C0 9E 01 7C */	lfs f4, 0x17c(r30)
/* 8057AF34  4B CF 4A 49 */	bl cLib_addCalc__FPfffff
/* 8057AF38  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 8057AF3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8057AF40  40 80 00 24 */	bge lbl_8057AF64
/* 8057AF44  A0 7F 05 CA */	lhz r3, 0x5ca(r31)
/* 8057AF48  38 03 00 01 */	addi r0, r3, 1
/* 8057AF4C  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AF50  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 8057AF54  2C 00 00 02 */	cmpwi r0, 2
/* 8057AF58  40 82 00 0C */	bne lbl_8057AF64
/* 8057AF5C  38 00 00 03 */	li r0, 3
/* 8057AF60  90 1D 05 8C */	stw r0, 0x58c(r29)
lbl_8057AF64:
/* 8057AF64  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 8057AF68  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8057AF6C  40 82 00 1C */	bne lbl_8057AF88
/* 8057AF70  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 8057AF74  28 00 00 32 */	cmplwi r0, 0x32
/* 8057AF78  40 81 00 10 */	ble lbl_8057AF88
/* 8057AF7C  7F 63 DB 78 */	mr r3, r27
/* 8057AF80  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AF84  4B AC D1 F9 */	bl cutEnd__16dEvent_manager_cFi
lbl_8057AF88:
/* 8057AF88  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 8057AF8C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8057AF90  C0 1F 05 A8 */	lfs f0, 0x5a8(r31)
/* 8057AF94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057AF98  C0 1F 05 AC */	lfs f0, 0x5ac(r31)
/* 8057AF9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8057AFA0  7F A3 EB 78 */	mr r3, r29
/* 8057AFA4  38 81 00 0C */	addi r4, r1, 0xc
/* 8057AFA8  48 00 03 95 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 8057AFAC  48 00 01 10 */	b lbl_8057B0BC
lbl_8057AFB0:
/* 8057AFB0  A0 7F 05 CA */	lhz r3, 0x5ca(r31)
/* 8057AFB4  38 03 00 01 */	addi r0, r3, 1
/* 8057AFB8  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AFBC  A0 1F 05 CA */	lhz r0, 0x5ca(r31)
/* 8057AFC0  28 00 00 0C */	cmplwi r0, 0xc
/* 8057AFC4  40 82 00 0C */	bne lbl_8057AFD0
/* 8057AFC8  38 00 00 01 */	li r0, 1
/* 8057AFCC  98 1F 05 99 */	stb r0, 0x599(r31)
lbl_8057AFD0:
/* 8057AFD0  7F 63 DB 78 */	mr r3, r27
/* 8057AFD4  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057AFD8  4B AC D1 A5 */	bl cutEnd__16dEvent_manager_cFi
/* 8057AFDC  48 00 00 E0 */	b lbl_8057B0BC
lbl_8057AFE0:
/* 8057AFE0  A0 7F 05 CA */	lhz r3, 0x5ca(r31)
/* 8057AFE4  38 03 00 01 */	addi r0, r3, 1
/* 8057AFE8  B0 1F 05 CA */	sth r0, 0x5ca(r31)
/* 8057AFEC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 8057AFF0  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8057AFF4  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 8057AFF8  4B CF 57 49 */	bl cLib_chaseF__FPfff
/* 8057AFFC  2C 03 00 00 */	cmpwi r3, 0
/* 8057B000  41 82 00 BC */	beq lbl_8057B0BC
/* 8057B004  28 1D 00 00 */	cmplwi r29, 0
/* 8057B008  41 82 00 0C */	beq lbl_8057B014
/* 8057B00C  80 7D 00 04 */	lwz r3, 4(r29)
/* 8057B010  48 00 00 08 */	b lbl_8057B018
lbl_8057B014:
/* 8057B014  38 60 FF FF */	li r3, -1
lbl_8057B018:
/* 8057B018  4B A9 EC A1 */	bl fopAcM_delete__FUi
/* 8057B01C  7F 63 DB 78 */	mr r3, r27
/* 8057B020  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057B024  4B AC D1 59 */	bl cutEnd__16dEvent_manager_cFi
/* 8057B028  48 00 00 94 */	b lbl_8057B0BC
lbl_8057B02C:
/* 8057B02C  38 00 00 01 */	li r0, 1
/* 8057B030  98 1F 05 95 */	stb r0, 0x595(r31)
/* 8057B034  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8057B038  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 8057B03C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8057B040  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 8057B044  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8057B048  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 8057B04C  7F 63 DB 78 */	mr r3, r27
/* 8057B050  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057B054  4B AC D1 29 */	bl cutEnd__16dEvent_manager_cFi
/* 8057B058  48 00 00 64 */	b lbl_8057B0BC
lbl_8057B05C:
/* 8057B05C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8057B060  7F E4 FB 78 */	mr r4, r31
/* 8057B064  38 A0 00 00 */	li r5, 0
/* 8057B068  38 C0 00 00 */	li r6, 0
/* 8057B06C  4B CC F2 6D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8057B070  2C 03 00 00 */	cmpwi r3, 0
/* 8057B074  41 82 00 14 */	beq lbl_8057B088
/* 8057B078  7F 63 DB 78 */	mr r3, r27
/* 8057B07C  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057B080  4B AC D0 FD */	bl cutEnd__16dEvent_manager_cFi
/* 8057B084  48 00 00 38 */	b lbl_8057B0BC
lbl_8057B088:
/* 8057B088  88 1F 05 F4 */	lbz r0, 0x5f4(r31)
/* 8057B08C  28 00 00 00 */	cmplwi r0, 0
/* 8057B090  41 82 00 2C */	beq lbl_8057B0BC
/* 8057B094  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8057B098  38 80 00 00 */	li r4, 0
/* 8057B09C  38 A0 00 00 */	li r5, 0
/* 8057B0A0  38 C0 00 00 */	li r6, 0
/* 8057B0A4  4B CD 02 1D */	bl query005__10dMsgFlow_cFP21mesg_flow_node_branchP10fopAc_ac_ci
/* 8057B0A8  B0 7F 06 1C */	sth r3, 0x61c(r31)
/* 8057B0AC  48 00 00 10 */	b lbl_8057B0BC
lbl_8057B0B0:
/* 8057B0B0  7F 63 DB 78 */	mr r3, r27
/* 8057B0B4  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 8057B0B8  4B AC D0 C5 */	bl cutEnd__16dEvent_manager_cFi
lbl_8057B0BC:
/* 8057B0BC  38 60 00 01 */	li r3, 1
/* 8057B0C0  39 61 00 70 */	addi r11, r1, 0x70
/* 8057B0C4  4B DE 71 51 */	bl _restgpr_24
/* 8057B0C8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8057B0CC  7C 08 03 A6 */	mtlr r0
/* 8057B0D0  38 21 00 70 */	addi r1, r1, 0x70
/* 8057B0D4  4E 80 00 20 */	blr 
