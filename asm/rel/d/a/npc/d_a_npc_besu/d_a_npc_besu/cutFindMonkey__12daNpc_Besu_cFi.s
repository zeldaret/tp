lbl_8053AA6C:
/* 8053AA6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8053AA70  7C 08 02 A6 */	mflr r0
/* 8053AA74  90 01 00 54 */	stw r0, 0x54(r1)
/* 8053AA78  39 61 00 50 */	addi r11, r1, 0x50
/* 8053AA7C  4B E2 77 50 */	b _savegpr_25
/* 8053AA80  7C 7B 1B 78 */	mr r27, r3
/* 8053AA84  7C 99 23 78 */	mr r25, r4
/* 8053AA88  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 8053AA8C  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l
/* 8053AA90  3B C0 00 00 */	li r30, 0
/* 8053AA94  3B A0 FF FF */	li r29, -1
/* 8053AA98  3B 80 00 00 */	li r28, 0
/* 8053AA9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053AAA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053AAA4  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 8053AAA8  7F 43 D3 78 */	mr r3, r26
/* 8053AAAC  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053AAB0  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053AAB4  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053AAB8  38 C0 00 03 */	li r6, 3
/* 8053AABC  4B B0 D6 30 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053AAC0  28 03 00 00 */	cmplwi r3, 0
/* 8053AAC4  41 82 00 08 */	beq lbl_8053AACC
/* 8053AAC8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8053AACC:
/* 8053AACC  7F 43 D3 78 */	mr r3, r26
/* 8053AAD0  7F 24 CB 78 */	mr r4, r25
/* 8053AAD4  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053AAD8  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053AADC  38 A5 02 04 */	addi r5, r5, 0x204
/* 8053AAE0  38 C0 00 03 */	li r6, 3
/* 8053AAE4  4B B0 D6 08 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053AAE8  28 03 00 00 */	cmplwi r3, 0
/* 8053AAEC  41 82 00 08 */	beq lbl_8053AAF4
/* 8053AAF0  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053AAF4:
/* 8053AAF4  7F 43 D3 78 */	mr r3, r26
/* 8053AAF8  7F 24 CB 78 */	mr r4, r25
/* 8053AAFC  4B B0 D2 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 8053AB00  2C 03 00 00 */	cmpwi r3, 0
/* 8053AB04  41 82 01 1C */	beq lbl_8053AC20
/* 8053AB08  2C 1D 00 02 */	cmpwi r29, 2
/* 8053AB0C  41 82 01 14 */	beq lbl_8053AC20
/* 8053AB10  40 80 00 14 */	bge lbl_8053AB24
/* 8053AB14  2C 1D 00 00 */	cmpwi r29, 0
/* 8053AB18  41 82 01 08 */	beq lbl_8053AC20
/* 8053AB1C  40 80 00 18 */	bge lbl_8053AB34
/* 8053AB20  48 00 01 00 */	b lbl_8053AC20
lbl_8053AB24:
/* 8053AB24  2C 1D 00 04 */	cmpwi r29, 4
/* 8053AB28  41 82 00 DC */	beq lbl_8053AC04
/* 8053AB2C  40 80 00 F4 */	bge lbl_8053AC20
/* 8053AB30  48 00 00 34 */	b lbl_8053AB64
lbl_8053AB34:
/* 8053AB34  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 8053AB38  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8053AB3C  41 82 00 E4 */	beq lbl_8053AC20
/* 8053AB40  83 9B 0B 5C */	lwz r28, 0xb5c(r27)
/* 8053AB44  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 8053AB48  4B C0 AD 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053AB4C  93 9B 0B 5C */	stw r28, 0xb5c(r27)
/* 8053AB50  38 00 00 1B */	li r0, 0x1b
/* 8053AB54  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 8053AB58  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053AB5C  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
/* 8053AB60  48 00 00 C0 */	b lbl_8053AC20
lbl_8053AB64:
/* 8053AB64  7F 63 DB 78 */	mr r3, r27
/* 8053AB68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8053AB6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8053AB70  80 84 5D B8 */	lwz r4, 0x5db8(r4)
/* 8053AB74  4B AD FB 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8053AB78  7C 64 1B 78 */	mr r4, r3
/* 8053AB7C  7F 63 DB 78 */	mr r3, r27
/* 8053AB80  4B C0 FE 98 */	b setAngle__8daNpcT_cFs
/* 8053AB84  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053AB88  2C 00 00 00 */	cmpwi r0, 0
/* 8053AB8C  41 82 00 24 */	beq lbl_8053ABB0
/* 8053AB90  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053AB94  4B C0 AB 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053AB98  38 00 00 00 */	li r0, 0
/* 8053AB9C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053ABA0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053ABA4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053ABA8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053ABAC  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053ABB0:
/* 8053ABB0  38 00 00 00 */	li r0, 0
/* 8053ABB4  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 8053ABB8  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 8053ABBC  38 00 00 01 */	li r0, 1
/* 8053ABC0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053ABC4  93 9B 0D C4 */	stw r28, 0xdc4(r27)
/* 8053ABC8  80 1B 0D C4 */	lwz r0, 0xdc4(r27)
/* 8053ABCC  2C 00 00 00 */	cmpwi r0, 0
/* 8053ABD0  40 82 00 50 */	bne lbl_8053AC20
/* 8053ABD4  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8053ABD8  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053ABDC  41 82 00 44 */	beq lbl_8053AC20
/* 8053ABE0  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8053ABE4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8053ABE8  4B C0 AC B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053ABEC  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8053ABF0  38 00 00 1C */	li r0, 0x1c
/* 8053ABF4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8053ABF8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053ABFC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8053AC00  48 00 00 20 */	b lbl_8053AC20
lbl_8053AC04:
/* 8053AC04  38 00 00 01 */	li r0, 1
/* 8053AC08  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 8053AC0C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053AC10  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 8053AC14  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 8053AC18  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 8053AC1C  D0 1B 05 00 */	stfs f0, 0x500(r27)
lbl_8053AC20:
/* 8053AC20  2C 1D 00 02 */	cmpwi r29, 2
/* 8053AC24  41 82 03 1C */	beq lbl_8053AF40
/* 8053AC28  40 80 00 14 */	bge lbl_8053AC3C
/* 8053AC2C  2C 1D 00 00 */	cmpwi r29, 0
/* 8053AC30  41 82 00 1C */	beq lbl_8053AC4C
/* 8053AC34  40 80 00 58 */	bge lbl_8053AC8C
/* 8053AC38  48 00 03 08 */	b lbl_8053AF40
lbl_8053AC3C:
/* 8053AC3C  2C 1D 00 04 */	cmpwi r29, 4
/* 8053AC40  41 82 02 FC */	beq lbl_8053AF3C
/* 8053AC44  40 80 02 FC */	bge lbl_8053AF40
/* 8053AC48  48 00 00 E4 */	b lbl_8053AD2C
lbl_8053AC4C:
/* 8053AC4C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053AC50  2C 00 00 01 */	cmpwi r0, 1
/* 8053AC54  41 82 00 28 */	beq lbl_8053AC7C
/* 8053AC58  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053AC5C  4B C0 AA A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053AC60  38 00 00 00 */	li r0, 0
/* 8053AC64  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053AC68  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053AC6C  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053AC70  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053AC74  38 00 00 01 */	li r0, 1
/* 8053AC78  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053AC7C:
/* 8053AC7C  38 00 00 00 */	li r0, 0
/* 8053AC80  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053AC84  3B C0 00 01 */	li r30, 1
/* 8053AC88  48 00 02 B8 */	b lbl_8053AF40
lbl_8053AC8C:
/* 8053AC8C  38 7B 10 E8 */	addi r3, r27, 0x10e8
/* 8053AC90  4B C0 AA 78 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053AC94  7C 7A 1B 78 */	mr r26, r3
/* 8053AC98  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053AC9C  4B C0 AA 6C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053ACA0  7C 63 D0 50 */	subf r3, r3, r26
/* 8053ACA4  30 03 FF FF */	addic r0, r3, -1
/* 8053ACA8  7C 00 19 10 */	subfe r0, r0, r3
/* 8053ACAC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8053ACB0  40 82 00 10 */	bne lbl_8053ACC0
/* 8053ACB4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053ACB8  2C 00 00 02 */	cmpwi r0, 2
/* 8053ACBC  41 82 00 30 */	beq lbl_8053ACEC
lbl_8053ACC0:
/* 8053ACC0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053ACC4  4B C0 AA 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053ACC8  38 00 00 00 */	li r0, 0
/* 8053ACCC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053ACD0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053ACD4  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053ACD8  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053ACDC  38 00 00 02 */	li r0, 2
/* 8053ACE0  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 8053ACE4  38 00 00 01 */	li r0, 1
/* 8053ACE8  48 00 00 08 */	b lbl_8053ACF0
lbl_8053ACEC:
/* 8053ACEC  38 00 00 00 */	li r0, 0
lbl_8053ACF0:
/* 8053ACF0  2C 00 00 00 */	cmpwi r0, 0
/* 8053ACF4  41 82 00 28 */	beq lbl_8053AD1C
/* 8053ACF8  7F 43 D3 78 */	mr r3, r26
/* 8053ACFC  4B AD DF E4 */	b fopAc_IsActor__FPv
/* 8053AD00  2C 03 00 00 */	cmpwi r3, 0
/* 8053AD04  41 82 00 18 */	beq lbl_8053AD1C
/* 8053AD08  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053AD0C  7F 44 D3 78 */	mr r4, r26
/* 8053AD10  4B C0 A9 D0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8053AD14  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8053AD18  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_8053AD1C:
/* 8053AD1C  38 00 00 00 */	li r0, 0
/* 8053AD20  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053AD24  3B C0 00 01 */	li r30, 1
/* 8053AD28  48 00 02 18 */	b lbl_8053AF40
lbl_8053AD2C:
/* 8053AD2C  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 8053AD30  2C 00 00 00 */	cmpwi r0, 0
/* 8053AD34  41 82 00 24 */	beq lbl_8053AD58
/* 8053AD38  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 8053AD3C  4B C0 A9 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053AD40  38 00 00 00 */	li r0, 0
/* 8053AD44  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 8053AD48  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053AD4C  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 8053AD50  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053AD54  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_8053AD58:
/* 8053AD58  38 00 00 00 */	li r0, 0
/* 8053AD5C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 8053AD60  80 1B 0D C4 */	lwz r0, 0xdc4(r27)
/* 8053AD64  2C 00 00 00 */	cmpwi r0, 0
/* 8053AD68  40 82 01 94 */	bne lbl_8053AEFC
/* 8053AD6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053AD70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053AD74  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8053AD78  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 8053AD7C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8053AD80  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8053AD84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8053AD88  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8053AD8C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8053AD90  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 8053AD94  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8053AD98  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8053AD9C  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053ADA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8053ADA4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8053ADA8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8053ADAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8053ADB0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8053ADB4  38 61 00 0C */	addi r3, r1, 0xc
/* 8053ADB8  38 81 00 18 */	addi r4, r1, 0x18
/* 8053ADBC  4B E0 C5 E0 */	b PSVECSquareDistance
/* 8053ADC0  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053ADC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053ADC8  40 81 00 58 */	ble lbl_8053AE20
/* 8053ADCC  FC 00 08 34 */	frsqrte f0, f1
/* 8053ADD0  C8 9F 01 50 */	lfd f4, 0x150(r31)
/* 8053ADD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8053ADD8  C8 7F 01 58 */	lfd f3, 0x158(r31)
/* 8053ADDC  FC 00 00 32 */	fmul f0, f0, f0
/* 8053ADE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8053ADE4  FC 03 00 28 */	fsub f0, f3, f0
/* 8053ADE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8053ADEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8053ADF0  FC 00 00 32 */	fmul f0, f0, f0
/* 8053ADF4  FC 01 00 32 */	fmul f0, f1, f0
/* 8053ADF8  FC 03 00 28 */	fsub f0, f3, f0
/* 8053ADFC  FC 02 00 32 */	fmul f0, f2, f0
/* 8053AE00  FC 44 00 32 */	fmul f2, f4, f0
/* 8053AE04  FC 00 00 32 */	fmul f0, f0, f0
/* 8053AE08  FC 01 00 32 */	fmul f0, f1, f0
/* 8053AE0C  FC 03 00 28 */	fsub f0, f3, f0
/* 8053AE10  FC 02 00 32 */	fmul f0, f2, f0
/* 8053AE14  FC 21 00 32 */	fmul f1, f1, f0
/* 8053AE18  FC 20 08 18 */	frsp f1, f1
/* 8053AE1C  48 00 00 88 */	b lbl_8053AEA4
lbl_8053AE20:
/* 8053AE20  C8 1F 01 60 */	lfd f0, 0x160(r31)
/* 8053AE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053AE28  40 80 00 10 */	bge lbl_8053AE38
/* 8053AE2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8053AE30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8053AE34  48 00 00 70 */	b lbl_8053AEA4
lbl_8053AE38:
/* 8053AE38  D0 21 00 08 */	stfs f1, 8(r1)
/* 8053AE3C  80 81 00 08 */	lwz r4, 8(r1)
/* 8053AE40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8053AE44  3C 00 7F 80 */	lis r0, 0x7f80
/* 8053AE48  7C 03 00 00 */	cmpw r3, r0
/* 8053AE4C  41 82 00 14 */	beq lbl_8053AE60
/* 8053AE50  40 80 00 40 */	bge lbl_8053AE90
/* 8053AE54  2C 03 00 00 */	cmpwi r3, 0
/* 8053AE58  41 82 00 20 */	beq lbl_8053AE78
/* 8053AE5C  48 00 00 34 */	b lbl_8053AE90
lbl_8053AE60:
/* 8053AE60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8053AE64  41 82 00 0C */	beq lbl_8053AE70
/* 8053AE68  38 00 00 01 */	li r0, 1
/* 8053AE6C  48 00 00 28 */	b lbl_8053AE94
lbl_8053AE70:
/* 8053AE70  38 00 00 02 */	li r0, 2
/* 8053AE74  48 00 00 20 */	b lbl_8053AE94
lbl_8053AE78:
/* 8053AE78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8053AE7C  41 82 00 0C */	beq lbl_8053AE88
/* 8053AE80  38 00 00 05 */	li r0, 5
/* 8053AE84  48 00 00 10 */	b lbl_8053AE94
lbl_8053AE88:
/* 8053AE88  38 00 00 03 */	li r0, 3
/* 8053AE8C  48 00 00 08 */	b lbl_8053AE94
lbl_8053AE90:
/* 8053AE90  38 00 00 04 */	li r0, 4
lbl_8053AE94:
/* 8053AE94  2C 00 00 01 */	cmpwi r0, 1
/* 8053AE98  40 82 00 0C */	bne lbl_8053AEA4
/* 8053AE9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8053AEA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8053AEA4:
/* 8053AEA4  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 8053AEA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8053AEAC  40 80 00 48 */	bge lbl_8053AEF4
/* 8053AEB0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8053AEB4  38 81 00 24 */	addi r4, r1, 0x24
/* 8053AEB8  4B D3 5D 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8053AEBC  7C 64 1B 78 */	mr r4, r3
/* 8053AEC0  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8053AEC4  38 A0 00 04 */	li r5, 4
/* 8053AEC8  38 C0 08 00 */	li r6, 0x800
/* 8053AECC  4B D3 57 3C */	b cLib_addCalcAngleS2__FPssss
/* 8053AED0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8053AED4  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8053AED8  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8053AEDC  B0 1B 0D 7A */	sth r0, 0xd7a(r27)
/* 8053AEE0  38 7B 05 2C */	addi r3, r27, 0x52c
/* 8053AEE4  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8053AEE8  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 8053AEEC  4B D3 58 54 */	b cLib_chaseF__FPfff
/* 8053AEF0  48 00 00 50 */	b lbl_8053AF40
lbl_8053AEF4:
/* 8053AEF4  3B C0 00 01 */	li r30, 1
/* 8053AEF8  48 00 00 48 */	b lbl_8053AF40
lbl_8053AEFC:
/* 8053AEFC  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 8053AF00  48 00 34 35 */	bl func_8053E334
/* 8053AF04  2C 03 00 00 */	cmpwi r3, 0
/* 8053AF08  40 82 00 38 */	bne lbl_8053AF40
/* 8053AF0C  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 8053AF10  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053AF14  41 82 00 2C */	beq lbl_8053AF40
/* 8053AF18  83 9B 0B 80 */	lwz r28, 0xb80(r27)
/* 8053AF1C  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 8053AF20  4B C0 A9 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053AF24  93 9B 0B 80 */	stw r28, 0xb80(r27)
/* 8053AF28  38 00 00 1C */	li r0, 0x1c
/* 8053AF2C  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 8053AF30  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053AF34  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 8053AF38  48 00 00 08 */	b lbl_8053AF40
lbl_8053AF3C:
/* 8053AF3C  3B C0 00 01 */	li r30, 1
lbl_8053AF40:
/* 8053AF40  7F C3 F3 78 */	mr r3, r30
/* 8053AF44  39 61 00 50 */	addi r11, r1, 0x50
/* 8053AF48  4B E2 72 D0 */	b _restgpr_25
/* 8053AF4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8053AF50  7C 08 03 A6 */	mtlr r0
/* 8053AF54  38 21 00 50 */	addi r1, r1, 0x50
/* 8053AF58  4E 80 00 20 */	blr 
