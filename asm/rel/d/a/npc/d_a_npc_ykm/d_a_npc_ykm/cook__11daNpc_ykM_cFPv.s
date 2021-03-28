lbl_80B5ABA8:
/* 80B5ABA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5ABAC  7C 08 02 A6 */	mflr r0
/* 80B5ABB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5ABB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5ABB8  4B 80 76 18 */	b _savegpr_26
/* 80B5ABBC  7C 7B 1B 78 */	mr r27, r3
/* 80B5ABC0  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B5ABC4  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l
/* 80B5ABC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5ABCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B5ABD0  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80B5ABD4  38 7F 00 00 */	addi r3, r31, 0
/* 80B5ABD8  AB A3 00 B8 */	lha r29, 0xb8(r3)
/* 80B5ABDC  3B 80 00 00 */	li r28, 0
/* 80B5ABE0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5ABE4  D0 1B 15 08 */	stfs f0, 0x1508(r27)
/* 80B5ABE8  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80B5ABEC  D0 1B 15 0C */	stfs f0, 0x150c(r27)
/* 80B5ABF0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80B5ABF4  D0 1B 15 10 */	stfs f0, 0x1510(r27)
/* 80B5ABF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B5ABFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B5AC00  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80B5AC04  4B 4B 17 D8 */	b mDoMtx_YrotS__FPA4_fs
/* 80B5AC08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B5AC0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B5AC10  38 9B 15 08 */	addi r4, r27, 0x1508
/* 80B5AC14  7C 85 23 78 */	mr r5, r4
/* 80B5AC18  4B 7E C1 54 */	b PSMTXMultVec
/* 80B5AC1C  38 7B 15 08 */	addi r3, r27, 0x1508
/* 80B5AC20  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B5AC24  7C 65 1B 78 */	mr r5, r3
/* 80B5AC28  4B 7E C4 68 */	b PSVECAdd
/* 80B5AC2C  A0 1B 0E 22 */	lhz r0, 0xe22(r27)
/* 80B5AC30  2C 00 00 02 */	cmpwi r0, 2
/* 80B5AC34  41 82 00 94 */	beq lbl_80B5ACC8
/* 80B5AC38  40 80 06 0C */	bge lbl_80B5B244
/* 80B5AC3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AC40  40 80 00 0C */	bge lbl_80B5AC4C
/* 80B5AC44  48 00 06 00 */	b lbl_80B5B244
/* 80B5AC48  48 00 05 FC */	b lbl_80B5B244
lbl_80B5AC4C:
/* 80B5AC4C  A8 1B 0D 1C */	lha r0, 0xd1c(r27)
/* 80B5AC50  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AC54  40 82 00 74 */	bne lbl_80B5ACC8
/* 80B5AC58  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B5AC5C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5AC60  41 82 00 24 */	beq lbl_80B5AC84
/* 80B5AC64  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B5AC68  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B5AC6C  4B 5E AC 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5AC70  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B5AC74  38 00 00 0F */	li r0, 0xf
/* 80B5AC78  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B5AC7C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5AC80  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B5AC84:
/* 80B5AC84  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B5AC88  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AC8C  41 82 00 24 */	beq lbl_80B5ACB0
/* 80B5AC90  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B5AC94  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B5AC98  4B 5E AC 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5AC9C  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B5ACA0  38 00 00 00 */	li r0, 0
/* 80B5ACA4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B5ACA8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5ACAC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B5ACB0:
/* 80B5ACB0  38 00 00 00 */	li r0, 0
/* 80B5ACB4  90 1B 15 38 */	stw r0, 0x1538(r27)
/* 80B5ACB8  38 00 00 01 */	li r0, 1
/* 80B5ACBC  90 1B 15 3C */	stw r0, 0x153c(r27)
/* 80B5ACC0  38 00 00 02 */	li r0, 2
/* 80B5ACC4  B0 1B 0E 22 */	sth r0, 0xe22(r27)
lbl_80B5ACC8:
/* 80B5ACC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5ACCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B5ACD0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B5ACD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B5ACD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B5ACDC  40 82 00 84 */	bne lbl_80B5AD60
/* 80B5ACE0  38 60 00 F4 */	li r3, 0xf4
/* 80B5ACE4  38 80 00 01 */	li r4, 1
/* 80B5ACE8  4B 53 D1 F8 */	b checkItemGet__FUci
/* 80B5ACEC  2C 03 00 00 */	cmpwi r3, 0
/* 80B5ACF0  40 82 00 70 */	bne lbl_80B5AD60
/* 80B5ACF4  38 60 00 F5 */	li r3, 0xf5
/* 80B5ACF8  38 80 00 01 */	li r4, 1
/* 80B5ACFC  4B 53 D1 E4 */	b checkItemGet__FUci
/* 80B5AD00  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AD04  40 82 00 5C */	bne lbl_80B5AD60
/* 80B5AD08  38 60 00 0A */	li r3, 0xa
/* 80B5AD0C  4B 5F 1D A0 */	b daNpcT_chkEvtBit__FUl
/* 80B5AD10  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AD14  40 82 00 4C */	bne lbl_80B5AD60
/* 80B5AD18  38 7B 14 A8 */	addi r3, r27, 0x14a8
/* 80B5AD1C  4B 5E A9 EC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5AD20  28 03 00 00 */	cmplwi r3, 0
/* 80B5AD24  41 82 00 3C */	beq lbl_80B5AD60
/* 80B5AD28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B5AD2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B5AD30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B5AD34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B5AD38  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B5AD3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B5AD40  38 81 00 0C */	addi r4, r1, 0xc
/* 80B5AD44  48 00 29 DD */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80B5AD48  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AD4C  41 82 00 14 */	beq lbl_80B5AD60
/* 80B5AD50  38 00 00 03 */	li r0, 3
/* 80B5AD54  B0 1B 0E 30 */	sth r0, 0xe30(r27)
/* 80B5AD58  38 00 00 01 */	li r0, 1
/* 80B5AD5C  98 1B 0E 33 */	stb r0, 0xe33(r27)
lbl_80B5AD60:
/* 80B5AD60  A8 1B 0D 1C */	lha r0, 0xd1c(r27)
/* 80B5AD64  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AD68  40 82 04 DC */	bne lbl_80B5B244
/* 80B5AD6C  38 60 00 0A */	li r3, 0xa
/* 80B5AD70  4B 5F 1D 3C */	b daNpcT_chkEvtBit__FUl
/* 80B5AD74  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AD78  41 82 00 30 */	beq lbl_80B5ADA8
/* 80B5AD7C  7F 63 DB 78 */	mr r3, r27
/* 80B5AD80  4B FF BC A9 */	bl chkContinueAttnPlayer__11daNpc_ykM_cFv
/* 80B5AD84  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AD88  40 82 00 0C */	bne lbl_80B5AD94
/* 80B5AD8C  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 80B5AD90  4B 5E A9 6C */	b remove__18daNpcT_ActorMngr_cFv
lbl_80B5AD94:
/* 80B5AD94  38 60 00 03 */	li r3, 3
/* 80B5AD98  4B 5F 1D 14 */	b daNpcT_chkEvtBit__FUl
/* 80B5AD9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5ADA0  40 82 00 08 */	bne lbl_80B5ADA8
/* 80B5ADA4  3B 80 00 01 */	li r28, 1
lbl_80B5ADA8:
/* 80B5ADA8  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 80B5ADAC  4B 5E A9 5C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5ADB0  28 03 00 00 */	cmplwi r3, 0
/* 80B5ADB4  41 82 00 FC */	beq lbl_80B5AEB0
/* 80B5ADB8  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5ADBC  2C 00 00 01 */	cmpwi r0, 1
/* 80B5ADC0  41 82 00 28 */	beq lbl_80B5ADE8
/* 80B5ADC4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5ADC8  4B 5E A9 34 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5ADCC  38 00 00 00 */	li r0, 0
/* 80B5ADD0  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5ADD4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5ADD8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5ADDC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5ADE0  38 00 00 01 */	li r0, 1
/* 80B5ADE4  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B5ADE8:
/* 80B5ADE8  38 00 00 00 */	li r0, 0
/* 80B5ADEC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5ADF0  38 7B 0B 98 */	addi r3, r27, 0xb98
/* 80B5ADF4  4B 5E A9 14 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B5ADF8  7C 64 1B 78 */	mr r4, r3
/* 80B5ADFC  7F 63 DB 78 */	mr r3, r27
/* 80B5AE00  C0 3B 0D F8 */	lfs f1, 0xdf8(r27)
/* 80B5AE04  A8 BB 0D 7A */	lha r5, 0xd7a(r27)
/* 80B5AE08  4B 5E FD C8 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B5AE0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AE10  40 82 00 74 */	bne lbl_80B5AE84
/* 80B5AE14  80 7B 0B C8 */	lwz r3, 0xbc8(r27)
/* 80B5AE18  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5AE1C  7C 63 00 50 */	subf r3, r3, r0
/* 80B5AE20  30 03 FF FF */	addic r0, r3, -1
/* 80B5AE24  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5AE28  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5AE2C  40 82 00 10 */	bne lbl_80B5AE3C
/* 80B5AE30  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5AE34  2C 00 00 03 */	cmpwi r0, 3
/* 80B5AE38  41 82 00 30 */	beq lbl_80B5AE68
lbl_80B5AE3C:
/* 80B5AE3C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5AE40  4B 5E A8 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5AE44  38 00 00 00 */	li r0, 0
/* 80B5AE48  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5AE4C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5AE50  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5AE54  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5AE58  38 00 00 03 */	li r0, 3
/* 80B5AE5C  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80B5AE60  38 00 00 01 */	li r0, 1
/* 80B5AE64  48 00 00 08 */	b lbl_80B5AE6C
lbl_80B5AE68:
/* 80B5AE68  38 00 00 00 */	li r0, 0
lbl_80B5AE6C:
/* 80B5AE6C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AE70  41 82 00 0C */	beq lbl_80B5AE7C
/* 80B5AE74  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5AE78  90 1B 0B C8 */	stw r0, 0xbc8(r27)
lbl_80B5AE7C:
/* 80B5AE7C  38 00 00 00 */	li r0, 0
/* 80B5AE80  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80B5AE84:
/* 80B5AE84  7F 63 DB 78 */	mr r3, r27
/* 80B5AE88  4B 5F 04 B0 */	b srchPlayerActor__8daNpcT_cFv
/* 80B5AE8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AE90  40 82 03 64 */	bne lbl_80B5B1F4
/* 80B5AE94  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 80B5AE98  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 80B5AE9C  7C 03 00 00 */	cmpw r3, r0
/* 80B5AEA0  40 82 03 54 */	bne lbl_80B5B1F4
/* 80B5AEA4  38 00 00 01 */	li r0, 1
/* 80B5AEA8  B0 1B 0E 22 */	sth r0, 0xe22(r27)
/* 80B5AEAC  48 00 03 48 */	b lbl_80B5B1F4
lbl_80B5AEB0:
/* 80B5AEB0  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B5AEB4  2C 00 00 05 */	cmpwi r0, 5
/* 80B5AEB8  40 82 00 80 */	bne lbl_80B5AF38
/* 80B5AEBC  80 1B 0B 84 */	lwz r0, 0xb84(r27)
/* 80B5AEC0  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AEC4  40 81 00 74 */	ble lbl_80B5AF38
/* 80B5AEC8  80 7B 0B C8 */	lwz r3, 0xbc8(r27)
/* 80B5AECC  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5AED0  7C 63 00 50 */	subf r3, r3, r0
/* 80B5AED4  30 03 FF FF */	addic r0, r3, -1
/* 80B5AED8  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5AEDC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5AEE0  40 82 00 10 */	bne lbl_80B5AEF0
/* 80B5AEE4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5AEE8  2C 00 00 03 */	cmpwi r0, 3
/* 80B5AEEC  41 82 00 30 */	beq lbl_80B5AF1C
lbl_80B5AEF0:
/* 80B5AEF0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5AEF4  4B 5E A8 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5AEF8  38 00 00 00 */	li r0, 0
/* 80B5AEFC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5AF00  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5AF04  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5AF08  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5AF0C  38 00 00 03 */	li r0, 3
/* 80B5AF10  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80B5AF14  38 00 00 01 */	li r0, 1
/* 80B5AF18  48 00 00 08 */	b lbl_80B5AF20
lbl_80B5AF1C:
/* 80B5AF1C  38 00 00 00 */	li r0, 0
lbl_80B5AF20:
/* 80B5AF20  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AF24  41 82 00 0C */	beq lbl_80B5AF30
/* 80B5AF28  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5AF2C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
lbl_80B5AF30:
/* 80B5AF30  38 00 00 00 */	li r0, 0
/* 80B5AF34  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80B5AF38:
/* 80B5AF38  38 7B 15 38 */	addi r3, r27, 0x1538
/* 80B5AF3C  48 00 24 3D */	bl func_80B5D378
/* 80B5AF40  2C 03 00 00 */	cmpwi r3, 0
/* 80B5AF44  40 82 02 B0 */	bne lbl_80B5B1F4
/* 80B5AF48  80 1B 15 3C */	lwz r0, 0x153c(r27)
/* 80B5AF4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AF50  41 82 00 F0 */	beq lbl_80B5B040
/* 80B5AF54  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B5AF58  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5AF5C  41 82 00 24 */	beq lbl_80B5AF80
/* 80B5AF60  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B5AF64  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B5AF68  4B 5E A9 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5AF6C  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B5AF70  38 00 00 0F */	li r0, 0xf
/* 80B5AF74  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B5AF78  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5AF7C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B5AF80:
/* 80B5AF80  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B5AF84  2C 00 00 00 */	cmpwi r0, 0
/* 80B5AF88  41 82 00 24 */	beq lbl_80B5AFAC
/* 80B5AF8C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B5AF90  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B5AF94  4B 5E A9 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5AF98  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B5AF9C  38 00 00 00 */	li r0, 0
/* 80B5AFA0  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B5AFA4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5AFA8  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B5AFAC:
/* 80B5AFAC  80 7B 0B C8 */	lwz r3, 0xbc8(r27)
/* 80B5AFB0  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5AFB4  7C 63 00 50 */	subf r3, r3, r0
/* 80B5AFB8  30 03 FF FF */	addic r0, r3, -1
/* 80B5AFBC  7C 00 19 10 */	subfe r0, r0, r3
/* 80B5AFC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B5AFC4  40 82 00 10 */	bne lbl_80B5AFD4
/* 80B5AFC8  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5AFCC  2C 00 00 03 */	cmpwi r0, 3
/* 80B5AFD0  41 82 00 30 */	beq lbl_80B5B000
lbl_80B5AFD4:
/* 80B5AFD4  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5AFD8  4B 5E A7 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5AFDC  38 00 00 00 */	li r0, 0
/* 80B5AFE0  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5AFE4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5AFE8  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5AFEC  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5AFF0  38 00 00 03 */	li r0, 3
/* 80B5AFF4  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80B5AFF8  38 00 00 01 */	li r0, 1
/* 80B5AFFC  48 00 00 08 */	b lbl_80B5B004
lbl_80B5B000:
/* 80B5B000  38 00 00 00 */	li r0, 0
lbl_80B5B004:
/* 80B5B004  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B008  41 82 00 0C */	beq lbl_80B5B014
/* 80B5B00C  38 1B 15 08 */	addi r0, r27, 0x1508
/* 80B5B010  90 1B 0B C8 */	stw r0, 0xbc8(r27)
lbl_80B5B014:
/* 80B5B014  38 00 00 00 */	li r0, 0
/* 80B5B018  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B01C  7F A0 0E 70 */	srawi r0, r29, 1
/* 80B5B020  7C 60 01 94 */	addze r3, r0
/* 80B5B024  7F A4 EB 78 */	mr r4, r29
/* 80B5B028  48 00 23 6D */	bl func_80B5D394
/* 80B5B02C  90 7B 15 38 */	stw r3, 0x1538(r27)
/* 80B5B030  80 1B 15 38 */	lwz r0, 0x1538(r27)
/* 80B5B034  54 00 08 3C */	slwi r0, r0, 1
/* 80B5B038  90 1B 15 38 */	stw r0, 0x1538(r27)
/* 80B5B03C  48 00 01 AC */	b lbl_80B5B1E8
lbl_80B5B040:
/* 80B5B040  4B 70 C8 2C */	b cM_rnd__Fv
/* 80B5B044  2C 1C 00 00 */	cmpwi r28, 0
/* 80B5B048  41 82 00 70 */	beq lbl_80B5B0B8
/* 80B5B04C  C0 1F 02 8C */	lfs f0, 0x28c(r31)
/* 80B5B050  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B5B054  40 80 00 64 */	bge lbl_80B5B0B8
/* 80B5B058  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5B05C  2C 00 00 08 */	cmpwi r0, 8
/* 80B5B060  41 82 00 30 */	beq lbl_80B5B090
/* 80B5B064  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5B068  4B 5E A6 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5B06C  38 00 00 00 */	li r0, 0
/* 80B5B070  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5B074  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5B078  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5B07C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B080  38 00 00 08 */	li r0, 8
/* 80B5B084  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80B5B088  38 00 00 01 */	li r0, 1
/* 80B5B08C  48 00 00 08 */	b lbl_80B5B094
lbl_80B5B090:
/* 80B5B090  38 00 00 00 */	li r0, 0
lbl_80B5B094:
/* 80B5B094  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B098  41 82 00 0C */	beq lbl_80B5B0A4
/* 80B5B09C  38 00 00 00 */	li r0, 0
/* 80B5B0A0  90 1B 0C EC */	stw r0, 0xcec(r27)
lbl_80B5B0A4:
/* 80B5B0A4  38 00 00 2D */	li r0, 0x2d
/* 80B5B0A8  90 1B 0C E8 */	stw r0, 0xce8(r27)
/* 80B5B0AC  38 00 00 00 */	li r0, 0
/* 80B5B0B0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B0B4  48 00 01 30 */	b lbl_80B5B1E4
lbl_80B5B0B8:
/* 80B5B0B8  4B 70 C7 B4 */	b cM_rnd__Fv
/* 80B5B0BC  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 80B5B0C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B5B0C4  40 80 00 94 */	bge lbl_80B5B158
/* 80B5B0C8  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B5B0CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5B0D0  41 82 00 24 */	beq lbl_80B5B0F4
/* 80B5B0D4  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B5B0D8  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B5B0DC  4B 5E A7 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B0E0  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B5B0E4  38 00 00 0F */	li r0, 0xf
/* 80B5B0E8  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B5B0EC  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5B0F0  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B5B0F4:
/* 80B5B0F4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B5B0F8  2C 00 00 05 */	cmpwi r0, 5
/* 80B5B0FC  41 82 00 24 */	beq lbl_80B5B120
/* 80B5B100  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B5B104  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B5B108  4B 5E A7 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B10C  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B5B110  38 00 00 05 */	li r0, 5
/* 80B5B114  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B5B118  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5B11C  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B5B120:
/* 80B5B120  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5B124  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B128  41 82 00 24 */	beq lbl_80B5B14C
/* 80B5B12C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5B130  4B 5E A5 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5B134  38 00 00 00 */	li r0, 0
/* 80B5B138  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5B13C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5B140  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5B144  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B148  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B5B14C:
/* 80B5B14C  38 00 00 00 */	li r0, 0
/* 80B5B150  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B154  48 00 00 90 */	b lbl_80B5B1E4
lbl_80B5B158:
/* 80B5B158  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80B5B15C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5B160  41 82 00 24 */	beq lbl_80B5B184
/* 80B5B164  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80B5B168  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80B5B16C  4B 5E A7 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B170  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80B5B174  38 00 00 0F */	li r0, 0xf
/* 80B5B178  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80B5B17C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5B180  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80B5B184:
/* 80B5B184  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B5B188  2C 00 00 04 */	cmpwi r0, 4
/* 80B5B18C  41 82 00 24 */	beq lbl_80B5B1B0
/* 80B5B190  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B5B194  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B5B198  4B 5E A7 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B19C  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B5B1A0  38 00 00 04 */	li r0, 4
/* 80B5B1A4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B5B1A8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5B1AC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B5B1B0:
/* 80B5B1B0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5B1B4  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B1B8  41 82 00 24 */	beq lbl_80B5B1DC
/* 80B5B1BC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B5B1C0  4B 5E A5 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5B1C4  38 00 00 00 */	li r0, 0
/* 80B5B1C8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B5B1CC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5B1D0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B5B1D4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B5B1D8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B5B1DC:
/* 80B5B1DC  38 00 00 00 */	li r0, 0
/* 80B5B1E0  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80B5B1E4:
/* 80B5B1E4  93 BB 15 38 */	stw r29, 0x1538(r27)
lbl_80B5B1E8:
/* 80B5B1E8  80 1B 15 3C */	lwz r0, 0x153c(r27)
/* 80B5B1EC  68 00 00 01 */	xori r0, r0, 1
/* 80B5B1F0  90 1B 15 3C */	stw r0, 0x153c(r27)
lbl_80B5B1F4:
/* 80B5B1F4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B5B1F8  2C 00 00 03 */	cmpwi r0, 3
/* 80B5B1FC  41 82 00 20 */	beq lbl_80B5B21C
/* 80B5B200  40 80 00 10 */	bge lbl_80B5B210
/* 80B5B204  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B208  41 82 00 3C */	beq lbl_80B5B244
/* 80B5B20C  48 00 00 38 */	b lbl_80B5B244
lbl_80B5B210:
/* 80B5B210  2C 00 00 08 */	cmpwi r0, 8
/* 80B5B214  41 82 00 08 */	beq lbl_80B5B21C
/* 80B5B218  48 00 00 2C */	b lbl_80B5B244
lbl_80B5B21C:
/* 80B5B21C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D6@ha */
/* 80B5B220  38 03 01 D6 */	addi r0, r3, 0x01D6 /* 0x000501D6@l */
/* 80B5B224  90 01 00 08 */	stw r0, 8(r1)
/* 80B5B228  38 7B 05 80 */	addi r3, r27, 0x580
/* 80B5B22C  38 81 00 08 */	addi r4, r1, 8
/* 80B5B230  38 A0 FF FF */	li r5, -1
/* 80B5B234  81 9B 05 80 */	lwz r12, 0x580(r27)
/* 80B5B238  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B5B23C  7D 89 03 A6 */	mtctr r12
/* 80B5B240  4E 80 04 21 */	bctrl 
lbl_80B5B244:
/* 80B5B244  38 60 00 01 */	li r3, 1
/* 80B5B248  39 61 00 30 */	addi r11, r1, 0x30
/* 80B5B24C  4B 80 6F D0 */	b _restgpr_26
/* 80B5B250  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5B254  7C 08 03 A6 */	mtlr r0
/* 80B5B258  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5B25C  4E 80 00 20 */	blr 
