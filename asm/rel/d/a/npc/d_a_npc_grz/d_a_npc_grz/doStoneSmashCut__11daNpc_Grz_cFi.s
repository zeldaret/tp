lbl_809EDBA4:
/* 809EDBA4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 809EDBA8  7C 08 02 A6 */	mflr r0
/* 809EDBAC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 809EDBB0  39 61 00 D0 */	addi r11, r1, 0xd0
/* 809EDBB4  4B 97 46 14 */	b _savegpr_24
/* 809EDBB8  7C 7F 1B 78 */	mr r31, r3
/* 809EDBBC  7C 98 23 78 */	mr r24, r4
/* 809EDBC0  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha
/* 809EDBC4  3B C3 F1 F4 */	addi r30, r3, m__17daNpc_Grz_Param_c@l
/* 809EDBC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EDBCC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 809EDBD0  3B 3C 4F F8 */	addi r25, r28, 0x4ff8
/* 809EDBD4  3B A0 00 00 */	li r29, 0
/* 809EDBD8  3B 60 FF FF */	li r27, -1
/* 809EDBDC  7F 23 CB 78 */	mr r3, r25
/* 809EDBE0  3C A0 80 9F */	lis r5, struct_809EF638+0x0@ha
/* 809EDBE4  38 A5 F6 38 */	addi r5, r5, struct_809EF638+0x0@l
/* 809EDBE8  38 A5 00 62 */	addi r5, r5, 0x62
/* 809EDBEC  38 C0 00 03 */	li r6, 3
/* 809EDBF0  4B 65 A4 FC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809EDBF4  28 03 00 00 */	cmplwi r3, 0
/* 809EDBF8  41 82 00 08 */	beq lbl_809EDC00
/* 809EDBFC  83 63 00 00 */	lwz r27, 0(r3)
lbl_809EDC00:
/* 809EDC00  7F 23 CB 78 */	mr r3, r25
/* 809EDC04  7F 04 C3 78 */	mr r4, r24
/* 809EDC08  4B 65 A1 44 */	b getIsAddvance__16dEvent_manager_cFi
/* 809EDC0C  2C 03 00 00 */	cmpwi r3, 0
/* 809EDC10  41 82 02 60 */	beq lbl_809EDE70
/* 809EDC14  2C 1B 00 32 */	cmpwi r27, 0x32
/* 809EDC18  41 82 01 B0 */	beq lbl_809EDDC8
/* 809EDC1C  40 80 00 40 */	bge lbl_809EDC5C
/* 809EDC20  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809EDC24  41 82 00 F0 */	beq lbl_809EDD14
/* 809EDC28  40 80 00 1C */	bge lbl_809EDC44
/* 809EDC2C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809EDC30  41 82 02 40 */	beq lbl_809EDE70
/* 809EDC34  40 80 02 3C */	bge lbl_809EDE70
/* 809EDC38  2C 1B 00 00 */	cmpwi r27, 0
/* 809EDC3C  41 82 00 50 */	beq lbl_809EDC8C
/* 809EDC40  48 00 02 30 */	b lbl_809EDE70
lbl_809EDC44:
/* 809EDC44  2C 1B 00 28 */	cmpwi r27, 0x28
/* 809EDC48  41 82 01 5C */	beq lbl_809EDDA4
/* 809EDC4C  40 80 02 24 */	bge lbl_809EDE70
/* 809EDC50  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809EDC54  41 82 02 1C */	beq lbl_809EDE70
/* 809EDC58  48 00 02 18 */	b lbl_809EDE70
lbl_809EDC5C:
/* 809EDC5C  2C 1B 00 4B */	cmpwi r27, 0x4b
/* 809EDC60  41 82 01 CC */	beq lbl_809EDE2C
/* 809EDC64  40 80 00 1C */	bge lbl_809EDC80
/* 809EDC68  2C 1B 00 46 */	cmpwi r27, 0x46
/* 809EDC6C  41 82 01 80 */	beq lbl_809EDDEC
/* 809EDC70  40 80 02 00 */	bge lbl_809EDE70
/* 809EDC74  2C 1B 00 3C */	cmpwi r27, 0x3c
/* 809EDC78  41 82 01 64 */	beq lbl_809EDDDC
/* 809EDC7C  48 00 01 F4 */	b lbl_809EDE70
lbl_809EDC80:
/* 809EDC80  2C 1B 00 50 */	cmpwi r27, 0x50
/* 809EDC84  41 82 01 C4 */	beq lbl_809EDE48
/* 809EDC88  48 00 01 E8 */	b lbl_809EDE70
lbl_809EDC8C:
/* 809EDC8C  38 60 00 06 */	li r3, 6
/* 809EDC90  38 80 00 40 */	li r4, 0x40
/* 809EDC94  4B 63 FA 20 */	b dComIfGs_offStageSwitch__Fii
/* 809EDC98  C0 3E 04 30 */	lfs f1, 0x430(r30)
/* 809EDC9C  D0 21 00 98 */	stfs f1, 0x98(r1)
/* 809EDCA0  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EDCA4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 809EDCA8  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 809EDCAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EDCB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EDCB4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809EDCB8  4B 61 E7 24 */	b mDoMtx_YrotS__FPA4_fs
/* 809EDCBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EDCC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EDCC4  38 81 00 98 */	addi r4, r1, 0x98
/* 809EDCC8  7C 85 23 78 */	mr r5, r4
/* 809EDCCC  4B 95 90 A0 */	b PSMTXMultVec
/* 809EDCD0  38 61 00 98 */	addi r3, r1, 0x98
/* 809EDCD4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809EDCD8  7C 65 1B 78 */	mr r5, r3
/* 809EDCDC  4B 95 93 B4 */	b PSVECAdd
/* 809EDCE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EDCE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EDCE8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809EDCEC  38 81 00 98 */	addi r4, r1, 0x98
/* 809EDCF0  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809EDCF4  38 05 20 00 */	addi r0, r5, 0x2000
/* 809EDCF8  7C 05 07 34 */	extsh r5, r0
/* 809EDCFC  38 C0 00 00 */	li r6, 0
/* 809EDD00  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809EDD04  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809EDD08  7D 89 03 A6 */	mtctr r12
/* 809EDD0C  4E 80 04 21 */	bctrl 
/* 809EDD10  48 00 01 60 */	b lbl_809EDE70
lbl_809EDD14:
/* 809EDD14  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EDD18  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 809EDD1C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EDD20  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809EDD24  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 809EDD28  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 809EDD2C  38 80 00 05 */	li r4, 5
/* 809EDD30  38 A0 00 0F */	li r5, 0xf
/* 809EDD34  38 C1 00 50 */	addi r6, r1, 0x50
/* 809EDD38  4B 68 1D D8 */	b StartQuake__12dVibration_cFii4cXyz
/* 809EDD3C  7F E3 FB 78 */	mr r3, r31
/* 809EDD40  38 80 00 07 */	li r4, 7
/* 809EDD44  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EDD48  38 A0 00 00 */	li r5, 0
/* 809EDD4C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EDD50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EDD54  7D 89 03 A6 */	mtctr r12
/* 809EDD58  4E 80 04 21 */	bctrl 
/* 809EDD5C  7F E3 FB 78 */	mr r3, r31
/* 809EDD60  38 80 00 06 */	li r4, 6
/* 809EDD64  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EDD68  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EDD6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EDD70  7D 89 03 A6 */	mtctr r12
/* 809EDD74  4E 80 04 21 */	bctrl 
/* 809EDD78  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E6@ha */
/* 809EDD7C  38 03 00 E6 */	addi r0, r3, 0x00E6 /* 0x000500E6@l */
/* 809EDD80  90 01 00 30 */	stw r0, 0x30(r1)
/* 809EDD84  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809EDD88  38 81 00 30 */	addi r4, r1, 0x30
/* 809EDD8C  38 A0 FF FF */	li r5, -1
/* 809EDD90  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809EDD94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809EDD98  7D 89 03 A6 */	mtctr r12
/* 809EDD9C  4E 80 04 21 */	bctrl 
/* 809EDDA0  48 00 00 D0 */	b lbl_809EDE70
lbl_809EDDA4:
/* 809EDDA4  7F E3 FB 78 */	mr r3, r31
/* 809EDDA8  38 80 00 03 */	li r4, 3
/* 809EDDAC  4B FF E3 B9 */	bl setLookMode__11daNpc_Grz_cFi
/* 809EDDB0  38 7F 12 A8 */	addi r3, r31, 0x12a8
/* 809EDDB4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809EDDB8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809EDDBC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809EDDC0  4B 76 28 FC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809EDDC4  48 00 00 AC */	b lbl_809EDE70
lbl_809EDDC8:
/* 809EDDC8  7F E3 FB 78 */	mr r3, r31
/* 809EDDCC  80 9F 1A 74 */	lwz r4, 0x1a74(r31)
/* 809EDDD0  38 A0 00 00 */	li r5, 0
/* 809EDDD4  4B 76 5F 48 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809EDDD8  48 00 00 98 */	b lbl_809EDE70
lbl_809EDDDC:
/* 809EDDDC  7F E3 FB 78 */	mr r3, r31
/* 809EDDE0  38 80 00 00 */	li r4, 0
/* 809EDDE4  4B FF E3 81 */	bl setLookMode__11daNpc_Grz_cFi
/* 809EDDE8  48 00 00 88 */	b lbl_809EDE70
lbl_809EDDEC:
/* 809EDDEC  7F E3 FB 78 */	mr r3, r31
/* 809EDDF0  38 80 00 08 */	li r4, 8
/* 809EDDF4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EDDF8  38 A0 00 00 */	li r5, 0
/* 809EDDFC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EDE00  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EDE04  7D 89 03 A6 */	mtctr r12
/* 809EDE08  4E 80 04 21 */	bctrl 
/* 809EDE0C  7F E3 FB 78 */	mr r3, r31
/* 809EDE10  38 80 00 0A */	li r4, 0xa
/* 809EDE14  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EDE18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EDE1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EDE20  7D 89 03 A6 */	mtctr r12
/* 809EDE24  4E 80 04 21 */	bctrl 
/* 809EDE28  48 00 00 48 */	b lbl_809EDE70
lbl_809EDE2C:
/* 809EDE2C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EDE30  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EDE34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809EDE38  38 00 00 0A */	li r0, 0xa
/* 809EDE3C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EDE40  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809EDE44  48 00 00 2C */	b lbl_809EDE70
lbl_809EDE48:
/* 809EDE48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EDE4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EDE50  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809EDE54  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 809EDE58  A8 BF 04 B6 */	lha r5, 0x4b6(r31)
/* 809EDE5C  38 C0 00 00 */	li r6, 0
/* 809EDE60  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809EDE64  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809EDE68  7D 89 03 A6 */	mtctr r12
/* 809EDE6C  4E 80 04 21 */	bctrl 
lbl_809EDE70:
/* 809EDE70  2C 1B 00 32 */	cmpwi r27, 0x32
/* 809EDE74  41 82 03 A8 */	beq lbl_809EE21C
/* 809EDE78  40 80 00 40 */	bge lbl_809EDEB8
/* 809EDE7C  2C 1B 00 14 */	cmpwi r27, 0x14
/* 809EDE80  41 82 02 64 */	beq lbl_809EE0E4
/* 809EDE84  40 80 00 1C */	bge lbl_809EDEA0
/* 809EDE88  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809EDE8C  41 82 01 B4 */	beq lbl_809EE040
/* 809EDE90  40 80 05 E0 */	bge lbl_809EE470
/* 809EDE94  2C 1B 00 00 */	cmpwi r27, 0
/* 809EDE98  41 82 00 50 */	beq lbl_809EDEE8
/* 809EDE9C  48 00 05 D4 */	b lbl_809EE470
lbl_809EDEA0:
/* 809EDEA0  2C 1B 00 28 */	cmpwi r27, 0x28
/* 809EDEA4  41 82 02 D8 */	beq lbl_809EE17C
/* 809EDEA8  40 80 05 C8 */	bge lbl_809EE470
/* 809EDEAC  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 809EDEB0  41 82 02 60 */	beq lbl_809EE110
/* 809EDEB4  48 00 05 BC */	b lbl_809EE470
lbl_809EDEB8:
/* 809EDEB8  2C 1B 00 4B */	cmpwi r27, 0x4b
/* 809EDEBC  41 82 05 0C */	beq lbl_809EE3C8
/* 809EDEC0  40 80 00 1C */	bge lbl_809EDEDC
/* 809EDEC4  2C 1B 00 46 */	cmpwi r27, 0x46
/* 809EDEC8  41 82 04 64 */	beq lbl_809EE32C
/* 809EDECC  40 80 05 A4 */	bge lbl_809EE470
/* 809EDED0  2C 1B 00 3C */	cmpwi r27, 0x3c
/* 809EDED4  41 82 03 D0 */	beq lbl_809EE2A4
/* 809EDED8  48 00 05 98 */	b lbl_809EE470
lbl_809EDEDC:
/* 809EDEDC  2C 1B 00 50 */	cmpwi r27, 0x50
/* 809EDEE0  41 82 04 E8 */	beq lbl_809EE3C8
/* 809EDEE4  48 00 05 8C */	b lbl_809EE470
lbl_809EDEE8:
/* 809EDEE8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EDEEC  A8 03 00 12 */	lha r0, 0x12(r3)
/* 809EDEF0  C8 3E 04 18 */	lfd f1, 0x418(r30)
/* 809EDEF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809EDEF8  90 01 00 AC */	stw r0, 0xac(r1)
/* 809EDEFC  3C 00 43 30 */	lis r0, 0x4330
/* 809EDF00  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 809EDF04  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 809EDF08  EC 00 08 28 */	fsubs f0, f0, f1
/* 809EDF0C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EDF10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809EDF14  40 82 00 10 */	bne lbl_809EDF24
/* 809EDF18  80 7F 1A 9C */	lwz r3, 0x1a9c(r31)
/* 809EDF1C  38 03 00 01 */	addi r0, r3, 1
/* 809EDF20  90 1F 1A 9C */	stw r0, 0x1a9c(r31)
lbl_809EDF24:
/* 809EDF24  80 1F 1A 9C */	lwz r0, 0x1a9c(r31)
/* 809EDF28  2C 00 00 02 */	cmpwi r0, 2
/* 809EDF2C  41 80 00 24 */	blt lbl_809EDF50
/* 809EDF30  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EDF34  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EDF38  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 809EDF3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EDF40  4C 41 13 82 */	cror 2, 1, 2
/* 809EDF44  40 82 00 84 */	bne lbl_809EDFC8
/* 809EDF48  3B A0 00 01 */	li r29, 1
/* 809EDF4C  48 00 00 7C */	b lbl_809EDFC8
lbl_809EDF50:
/* 809EDF50  C0 3E 04 30 */	lfs f1, 0x430(r30)
/* 809EDF54  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 809EDF58  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EDF5C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 809EDF60  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 809EDF64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EDF68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EDF6C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809EDF70  4B 61 E4 6C */	b mDoMtx_YrotS__FPA4_fs
/* 809EDF74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EDF78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EDF7C  38 81 00 8C */	addi r4, r1, 0x8c
/* 809EDF80  7C 85 23 78 */	mr r5, r4
/* 809EDF84  4B 95 8D E8 */	b PSMTXMultVec
/* 809EDF88  38 61 00 8C */	addi r3, r1, 0x8c
/* 809EDF8C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809EDF90  7C 65 1B 78 */	mr r5, r3
/* 809EDF94  4B 95 90 FC */	b PSVECAdd
/* 809EDF98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EDF9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809EDFA0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809EDFA4  38 81 00 8C */	addi r4, r1, 0x8c
/* 809EDFA8  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 809EDFAC  38 05 20 00 */	addi r0, r5, 0x2000
/* 809EDFB0  7C 05 07 34 */	extsh r5, r0
/* 809EDFB4  38 C0 00 00 */	li r6, 0
/* 809EDFB8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809EDFBC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809EDFC0  7D 89 03 A6 */	mtctr r12
/* 809EDFC4  4E 80 04 21 */	bctrl 
lbl_809EDFC8:
/* 809EDFC8  80 1F 1A 80 */	lwz r0, 0x1a80(r31)
/* 809EDFCC  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EDFD0  40 82 04 A4 */	bne lbl_809EE474
/* 809EDFD4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EDFD8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EDFDC  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 809EDFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EDFE4  4C 41 13 82 */	cror 2, 1, 2
/* 809EDFE8  40 82 00 10 */	bne lbl_809EDFF8
/* 809EDFEC  C0 1E 04 08 */	lfs f0, 0x408(r30)
/* 809EDFF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EDFF4  41 80 00 20 */	blt lbl_809EE014
lbl_809EDFF8:
/* 809EDFF8  C0 1E 04 0C */	lfs f0, 0x40c(r30)
/* 809EDFFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE000  4C 41 13 82 */	cror 2, 1, 2
/* 809EE004  40 82 04 70 */	bne lbl_809EE474
/* 809EE008  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 809EE00C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE010  40 80 04 64 */	bge lbl_809EE474
lbl_809EE014:
/* 809EE014  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E5@ha */
/* 809EE018  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000500E5@l */
/* 809EE01C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809EE020  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809EE024  38 81 00 2C */	addi r4, r1, 0x2c
/* 809EE028  38 A0 FF FF */	li r5, -1
/* 809EE02C  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809EE030  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809EE034  7D 89 03 A6 */	mtctr r12
/* 809EE038  4E 80 04 21 */	bctrl 
/* 809EE03C  48 00 04 38 */	b lbl_809EE474
lbl_809EE040:
/* 809EE040  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE044  A8 03 00 12 */	lha r0, 0x12(r3)
/* 809EE048  C8 3E 04 18 */	lfd f1, 0x418(r30)
/* 809EE04C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809EE050  90 01 00 AC */	stw r0, 0xac(r1)
/* 809EE054  3C 00 43 30 */	lis r0, 0x4330
/* 809EE058  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 809EE05C  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 809EE060  EC 00 08 28 */	fsubs f0, f0, f1
/* 809EE064  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EE068  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809EE06C  40 82 00 08 */	bne lbl_809EE074
/* 809EE070  3B A0 00 01 */	li r29, 1
lbl_809EE074:
/* 809EE074  80 1F 1A 80 */	lwz r0, 0x1a80(r31)
/* 809EE078  2C 00 00 20 */	cmpwi r0, 0x20
/* 809EE07C  40 82 03 F8 */	bne lbl_809EE474
/* 809EE080  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 809EE084  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE088  4C 41 13 82 */	cror 2, 1, 2
/* 809EE08C  40 82 00 10 */	bne lbl_809EE09C
/* 809EE090  C0 1E 04 08 */	lfs f0, 0x408(r30)
/* 809EE094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE098  41 80 00 20 */	blt lbl_809EE0B8
lbl_809EE09C:
/* 809EE09C  C0 1E 04 0C */	lfs f0, 0x40c(r30)
/* 809EE0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE0A4  4C 41 13 82 */	cror 2, 1, 2
/* 809EE0A8  40 82 03 CC */	bne lbl_809EE474
/* 809EE0AC  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 809EE0B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE0B4  40 80 03 C0 */	bge lbl_809EE474
lbl_809EE0B8:
/* 809EE0B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E5@ha */
/* 809EE0BC  38 03 00 E5 */	addi r0, r3, 0x00E5 /* 0x000500E5@l */
/* 809EE0C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 809EE0C4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809EE0C8  38 81 00 28 */	addi r4, r1, 0x28
/* 809EE0CC  38 A0 FF FF */	li r5, -1
/* 809EE0D0  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809EE0D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809EE0D8  7D 89 03 A6 */	mtctr r12
/* 809EE0DC  4E 80 04 21 */	bctrl 
/* 809EE0E0  48 00 03 94 */	b lbl_809EE474
lbl_809EE0E4:
/* 809EE0E4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE0E8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EE0EC  C0 1E 04 34 */	lfs f0, 0x434(r30)
/* 809EE0F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE0F4  4C 41 13 82 */	cror 2, 1, 2
/* 809EE0F8  40 82 03 7C */	bne lbl_809EE474
/* 809EE0FC  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 809EE100  38 80 00 1F */	li r4, 0x1f
/* 809EE104  4B 68 1C 90 */	b StopQuake__12dVibration_cFi
/* 809EE108  3B A0 00 01 */	li r29, 1
/* 809EE10C  48 00 03 68 */	b lbl_809EE474
lbl_809EE110:
/* 809EE110  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 809EE114  2C 00 00 00 */	cmpwi r0, 0
/* 809EE118  40 81 00 0C */	ble lbl_809EE124
/* 809EE11C  3B A0 00 01 */	li r29, 1
/* 809EE120  48 00 03 54 */	b lbl_809EE474
lbl_809EE124:
/* 809EE124  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE128  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809EE12C  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809EE130  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 809EE134  40 82 03 40 */	bne lbl_809EE474
/* 809EE138  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 809EE13C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 809EE140  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 809EE144  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809EE148  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 809EE14C  38 7C 5B D4 */	addi r3, r28, 0x5bd4
/* 809EE150  38 80 00 08 */	li r4, 8
/* 809EE154  38 A0 00 0F */	li r5, 0xf
/* 809EE158  38 C1 00 44 */	addi r6, r1, 0x44
/* 809EE15C  4B 68 18 C8 */	b StartShock__12dVibration_cFii4cXyz
/* 809EE160  38 7F 12 C0 */	addi r3, r31, 0x12c0
/* 809EE164  4B 76 25 88 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809EE168  28 03 00 00 */	cmplwi r3, 0
/* 809EE16C  41 82 03 08 */	beq lbl_809EE474
/* 809EE170  38 00 00 01 */	li r0, 1
/* 809EE174  98 03 08 01 */	stb r0, 0x801(r3)
/* 809EE178  48 00 02 FC */	b lbl_809EE474
lbl_809EE17C:
/* 809EE17C  7F E3 FB 78 */	mr r3, r31
/* 809EE180  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809EE184  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l
/* 809EE188  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 809EE18C  4B 62 C5 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809EE190  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809EE194  7C 60 07 34 */	extsh r0, r3
/* 809EE198  7C 04 00 00 */	cmpw r4, r0
/* 809EE19C  40 82 00 0C */	bne lbl_809EE1A8
/* 809EE1A0  3B A0 00 01 */	li r29, 1
/* 809EE1A4  48 00 02 D0 */	b lbl_809EE474
lbl_809EE1A8:
/* 809EE1A8  7F E3 FB 78 */	mr r3, r31
/* 809EE1AC  80 99 5D AC */	lwz r4, 0x5dac(r25)
/* 809EE1B0  4B 62 C5 60 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809EE1B4  7C 64 1B 78 */	mr r4, r3
/* 809EE1B8  7F E3 FB 78 */	mr r3, r31
/* 809EE1BC  38 A0 00 0A */	li r5, 0xa
/* 809EE1C0  38 C0 00 0D */	li r6, 0xd
/* 809EE1C4  38 E0 00 0F */	li r7, 0xf
/* 809EE1C8  4B 76 5E DC */	b step__8daNpcF_cFsiii
/* 809EE1CC  2C 03 00 00 */	cmpwi r3, 0
/* 809EE1D0  41 82 02 A4 */	beq lbl_809EE474
/* 809EE1D4  7F E3 FB 78 */	mr r3, r31
/* 809EE1D8  38 80 00 0A */	li r4, 0xa
/* 809EE1DC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EE1E0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EE1E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EE1E8  7D 89 03 A6 */	mtctr r12
/* 809EE1EC  4E 80 04 21 */	bctrl 
/* 809EE1F0  7F E3 FB 78 */	mr r3, r31
/* 809EE1F4  38 80 00 00 */	li r4, 0
/* 809EE1F8  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EE1FC  38 A0 00 00 */	li r5, 0
/* 809EE200  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EE204  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EE208  7D 89 03 A6 */	mtctr r12
/* 809EE20C  4E 80 04 21 */	bctrl 
/* 809EE210  38 00 00 00 */	li r0, 0
/* 809EE214  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809EE218  48 00 02 5C */	b lbl_809EE474
lbl_809EE21C:
/* 809EE21C  7F E3 FB 78 */	mr r3, r31
/* 809EE220  38 80 00 00 */	li r4, 0
/* 809EE224  38 A0 00 01 */	li r5, 1
/* 809EE228  38 C0 00 00 */	li r6, 0
/* 809EE22C  4B 76 5B 58 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809EE230  2C 03 00 00 */	cmpwi r3, 0
/* 809EE234  41 82 00 0C */	beq lbl_809EE240
/* 809EE238  3B A0 00 01 */	li r29, 1
/* 809EE23C  48 00 02 38 */	b lbl_809EE474
lbl_809EE240:
/* 809EE240  80 1F 1A 80 */	lwz r0, 0x1a80(r31)
/* 809EE244  2C 00 00 1C */	cmpwi r0, 0x1c
/* 809EE248  40 82 00 30 */	bne lbl_809EE278
/* 809EE24C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E8@ha */
/* 809EE250  38 03 00 E8 */	addi r0, r3, 0x00E8 /* 0x000500E8@l */
/* 809EE254  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EE258  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809EE25C  38 81 00 24 */	addi r4, r1, 0x24
/* 809EE260  38 A0 FF FF */	li r5, -1
/* 809EE264  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809EE268  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809EE26C  7D 89 03 A6 */	mtctr r12
/* 809EE270  4E 80 04 21 */	bctrl 
/* 809EE274  48 00 02 00 */	b lbl_809EE474
lbl_809EE278:
/* 809EE278  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500E7@ha */
/* 809EE27C  38 03 00 E7 */	addi r0, r3, 0x00E7 /* 0x000500E7@l */
/* 809EE280  90 01 00 20 */	stw r0, 0x20(r1)
/* 809EE284  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809EE288  38 81 00 20 */	addi r4, r1, 0x20
/* 809EE28C  38 A0 FF FF */	li r5, -1
/* 809EE290  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809EE294  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809EE298  7D 89 03 A6 */	mtctr r12
/* 809EE29C  4E 80 04 21 */	bctrl 
/* 809EE2A0  48 00 01 D4 */	b lbl_809EE474
lbl_809EE2A4:
/* 809EE2A4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809EE2A8  3C 63 00 01 */	addis r3, r3, 1
/* 809EE2AC  38 63 80 00 */	addi r3, r3, -32768
/* 809EE2B0  7C 64 07 34 */	extsh r4, r3
/* 809EE2B4  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809EE2B8  7C 04 00 00 */	cmpw r4, r0
/* 809EE2BC  40 82 00 0C */	bne lbl_809EE2C8
/* 809EE2C0  3B A0 00 01 */	li r29, 1
/* 809EE2C4  48 00 01 B0 */	b lbl_809EE474
lbl_809EE2C8:
/* 809EE2C8  7F E3 FB 78 */	mr r3, r31
/* 809EE2CC  38 A0 00 0A */	li r5, 0xa
/* 809EE2D0  38 C0 00 0D */	li r6, 0xd
/* 809EE2D4  38 E0 00 0F */	li r7, 0xf
/* 809EE2D8  4B 76 5D CC */	b step__8daNpcF_cFsiii
/* 809EE2DC  2C 03 00 00 */	cmpwi r3, 0
/* 809EE2E0  41 82 01 94 */	beq lbl_809EE474
/* 809EE2E4  7F E3 FB 78 */	mr r3, r31
/* 809EE2E8  38 80 00 0A */	li r4, 0xa
/* 809EE2EC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EE2F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EE2F4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809EE2F8  7D 89 03 A6 */	mtctr r12
/* 809EE2FC  4E 80 04 21 */	bctrl 
/* 809EE300  7F E3 FB 78 */	mr r3, r31
/* 809EE304  38 80 00 00 */	li r4, 0
/* 809EE308  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809EE30C  38 A0 00 00 */	li r5, 0
/* 809EE310  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809EE314  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809EE318  7D 89 03 A6 */	mtctr r12
/* 809EE31C  4E 80 04 21 */	bctrl 
/* 809EE320  38 00 00 00 */	li r0, 0
/* 809EE324  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809EE328  48 00 01 4C */	b lbl_809EE474
lbl_809EE32C:
/* 809EE32C  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809EE330  2C 00 00 08 */	cmpwi r0, 8
/* 809EE334  40 82 01 40 */	bne lbl_809EE474
/* 809EE338  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 809EE33C  2C 00 00 00 */	cmpwi r0, 0
/* 809EE340  40 81 00 0C */	ble lbl_809EE34C
/* 809EE344  3B A0 00 01 */	li r29, 1
/* 809EE348  48 00 01 2C */	b lbl_809EE474
lbl_809EE34C:
/* 809EE34C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE350  38 63 00 0C */	addi r3, r3, 0xc
/* 809EE354  C0 3E 04 38 */	lfs f1, 0x438(r30)
/* 809EE358  4B 93 A0 D4 */	b checkPass__12J3DFrameCtrlFf
/* 809EE35C  2C 03 00 00 */	cmpwi r3, 0
/* 809EE360  41 82 01 14 */	beq lbl_809EE474
/* 809EE364  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809EE368  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 809EE36C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 809EE370  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 809EE374  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 809EE378  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809EE37C  4B 61 E9 E8 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809EE380  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EE384  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EE388  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809EE38C  4B 61 E0 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 809EE390  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809EE394  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809EE398  38 81 00 80 */	addi r4, r1, 0x80
/* 809EE39C  38 BF 1A B0 */	addi r5, r31, 0x1ab0
/* 809EE3A0  4B 95 89 CC */	b PSMTXMultVec
/* 809EE3A4  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809EE3A8  B0 1F 1A BC */	sth r0, 0x1abc(r31)
/* 809EE3AC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809EE3B0  B0 1F 1A BE */	sth r0, 0x1abe(r31)
/* 809EE3B4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809EE3B8  B0 1F 1A C0 */	sth r0, 0x1ac0(r31)
/* 809EE3BC  38 00 00 01 */	li r0, 1
/* 809EE3C0  98 1F 1A AC */	stb r0, 0x1aac(r31)
/* 809EE3C4  48 00 00 B0 */	b lbl_809EE474
lbl_809EE3C8:
/* 809EE3C8  80 1F 0C 7C */	lwz r0, 0xc7c(r31)
/* 809EE3CC  28 00 00 00 */	cmplwi r0, 0
/* 809EE3D0  41 82 00 98 */	beq lbl_809EE468
/* 809EE3D4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809EE3D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809EE3DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809EE3E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809EE3E4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809EE3E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809EE3EC  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809EE3F0  38 81 00 38 */	addi r4, r1, 0x38
/* 809EE3F4  38 A1 00 74 */	addi r5, r1, 0x74
/* 809EE3F8  4B 76 29 E8 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 809EE3FC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809EE400  38 81 00 74 */	addi r4, r1, 0x74
/* 809EE404  4B 88 28 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809EE408  7C 64 1B 78 */	mr r4, r3
/* 809EE40C  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 809EE410  38 A0 00 06 */	li r5, 6
/* 809EE414  38 C0 04 00 */	li r6, 0x400
/* 809EE418  4B 88 21 F0 */	b cLib_addCalcAngleS2__FPssss
/* 809EE41C  7F E3 FB 78 */	mr r3, r31
/* 809EE420  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809EE424  4B 76 5E 2C */	b setAngle__8daNpcF_cFs
/* 809EE428  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE42C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809EE430  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809EE434  38 61 00 34 */	addi r3, r1, 0x34
/* 809EE438  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 809EE43C  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 809EE440  FC 60 10 90 */	fmr f3, f2
/* 809EE444  4B 88 15 F8 */	b cLib_addCalc2__FPffff
/* 809EE448  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809EE44C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE450  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809EE454  38 7E 00 00 */	addi r3, r30, 0
/* 809EE458  C0 23 00 78 */	lfs f1, 0x78(r3)
/* 809EE45C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809EE460  EC 01 00 32 */	fmuls f0, f1, f0
/* 809EE464  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_809EE468:
/* 809EE468  3B A0 00 01 */	li r29, 1
/* 809EE46C  48 00 00 08 */	b lbl_809EE474
lbl_809EE470:
/* 809EE470  3B A0 00 01 */	li r29, 1
lbl_809EE474:
/* 809EE474  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809EE478  2C 00 00 08 */	cmpwi r0, 8
/* 809EE47C  40 82 01 58 */	bne lbl_809EE5D4
/* 809EE480  A8 1F 09 DA */	lha r0, 0x9da(r31)
/* 809EE484  2C 00 00 00 */	cmpwi r0, 0
/* 809EE488  40 81 01 4C */	ble lbl_809EE5D4
/* 809EE48C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809EE490  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 809EE494  C0 1E 04 3C */	lfs f0, 0x43c(r30)
/* 809EE498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809EE49C  4C 41 13 82 */	cror 2, 1, 2
/* 809EE4A0  40 82 01 34 */	bne lbl_809EE5D4
/* 809EE4A4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809EE4A8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 809EE4AC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809EE4B0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 809EE4B4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809EE4B8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 809EE4BC  C0 1E 04 40 */	lfs f0, 0x440(r30)
/* 809EE4C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809EE4C4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809EE4C8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 809EE4CC  3B 60 00 00 */	li r27, 0
/* 809EE4D0  3B 40 00 00 */	li r26, 0
/* 809EE4D4  3B 20 00 00 */	li r25, 0
/* 809EE4D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809EE4DC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_809EE4E0:
/* 809EE4E0  2C 1B 00 00 */	cmpwi r27, 0
/* 809EE4E4  40 82 00 60 */	bne lbl_809EE544
/* 809EE4E8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809EE4EC  38 00 00 FF */	li r0, 0xff
/* 809EE4F0  90 01 00 08 */	stw r0, 8(r1)
/* 809EE4F4  38 80 00 00 */	li r4, 0
/* 809EE4F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 809EE4FC  38 00 FF FF */	li r0, -1
/* 809EE500  90 01 00 10 */	stw r0, 0x10(r1)
/* 809EE504  90 81 00 14 */	stw r4, 0x14(r1)
/* 809EE508  90 81 00 18 */	stw r4, 0x18(r1)
/* 809EE50C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809EE510  3B 19 1A A0 */	addi r24, r25, 0x1aa0
/* 809EE514  7C 9F C0 2E */	lwzx r4, r31, r24
/* 809EE518  38 A0 00 00 */	li r5, 0
/* 809EE51C  38 DE 04 28 */	addi r6, r30, 0x428
/* 809EE520  7C C6 D2 2E */	lhzx r6, r6, r26
/* 809EE524  38 E1 00 68 */	addi r7, r1, 0x68
/* 809EE528  39 1F 01 0C */	addi r8, r31, 0x10c
/* 809EE52C  39 3F 04 DC */	addi r9, r31, 0x4dc
/* 809EE530  39 41 00 5C */	addi r10, r1, 0x5c
/* 809EE534  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 809EE538  4B 65 EF 94 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809EE53C  7C 7F C1 2E */	stwx r3, r31, r24
/* 809EE540  48 00 00 4C */	b lbl_809EE58C
lbl_809EE544:
/* 809EE544  38 60 00 00 */	li r3, 0
/* 809EE548  90 61 00 08 */	stw r3, 8(r1)
/* 809EE54C  90 61 00 0C */	stw r3, 0xc(r1)
/* 809EE550  38 00 FF FF */	li r0, -1
/* 809EE554  90 01 00 10 */	stw r0, 0x10(r1)
/* 809EE558  90 61 00 14 */	stw r3, 0x14(r1)
/* 809EE55C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809EE560  3B 19 1A A0 */	addi r24, r25, 0x1aa0
/* 809EE564  7C 9F C0 2E */	lwzx r4, r31, r24
/* 809EE568  38 BE 04 28 */	addi r5, r30, 0x428
/* 809EE56C  7C A5 D2 2E */	lhzx r5, r5, r26
/* 809EE570  38 DF 06 C0 */	addi r6, r31, 0x6c0
/* 809EE574  38 E1 00 68 */	addi r7, r1, 0x68
/* 809EE578  39 1F 01 0C */	addi r8, r31, 0x10c
/* 809EE57C  39 3F 04 DC */	addi r9, r31, 0x4dc
/* 809EE580  39 41 00 5C */	addi r10, r1, 0x5c
/* 809EE584  4B 65 F1 20 */	b setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 809EE588  7C 7F C1 2E */	stwx r3, r31, r24
lbl_809EE58C:
/* 809EE58C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 809EE590  38 63 02 10 */	addi r3, r3, 0x210
/* 809EE594  38 19 1A A0 */	addi r0, r25, 0x1aa0
/* 809EE598  7C 9F 00 2E */	lwzx r4, r31, r0
/* 809EE59C  4B 65 D3 7C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 809EE5A0  28 03 00 00 */	cmplwi r3, 0
/* 809EE5A4  41 82 00 1C */	beq lbl_809EE5C0
/* 809EE5A8  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 809EE5AC  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 809EE5B0  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 809EE5B4  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 809EE5B8  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 809EE5BC  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_809EE5C0:
/* 809EE5C0  3B 7B 00 01 */	addi r27, r27, 1
/* 809EE5C4  2C 1B 00 03 */	cmpwi r27, 3
/* 809EE5C8  3B 5A 00 02 */	addi r26, r26, 2
/* 809EE5CC  3B 39 00 04 */	addi r25, r25, 4
/* 809EE5D0  41 80 FF 10 */	blt lbl_809EE4E0
lbl_809EE5D4:
/* 809EE5D4  7F A3 EB 78 */	mr r3, r29
/* 809EE5D8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 809EE5DC  4B 97 3C 38 */	b _restgpr_24
/* 809EE5E0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 809EE5E4  7C 08 03 A6 */	mtlr r0
/* 809EE5E8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 809EE5EC  4E 80 00 20 */	blr 
