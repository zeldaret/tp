lbl_804F9614:
/* 804F9614  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804F9618  7C 08 02 A6 */	mflr r0
/* 804F961C  90 01 00 84 */	stw r0, 0x84(r1)
/* 804F9620  39 61 00 80 */	addi r11, r1, 0x80
/* 804F9624  4B E6 8B 99 */	bl _savegpr_21
/* 804F9628  7C 7C 1B 78 */	mr r28, r3
/* 804F962C  3C 80 80 50 */	lis r4, cNullVec__6Z2Calc@ha /* 0x804FA950@ha */
/* 804F9630  3B A4 A9 50 */	addi r29, r4, cNullVec__6Z2Calc@l /* 0x804FA950@l */
/* 804F9634  3C 80 80 50 */	lis r4, lit_1109@ha /* 0x804FAE58@ha */
/* 804F9638  3B C4 AE 58 */	addi r30, r4, lit_1109@l /* 0x804FAE58@l */
/* 804F963C  3C 80 80 50 */	lis r4, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F9640  3B E4 A6 BC */	addi r31, r4, lit_3777@l /* 0x804FA6BC@l */
/* 804F9644  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804F9648  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804F964C  40 82 00 1C */	bne lbl_804F9668
/* 804F9650  28 1C 00 00 */	cmplwi r28, 0
/* 804F9654  41 82 00 08 */	beq lbl_804F965C
/* 804F9658  48 00 05 0D */	bl __ct__10e_fm_classFv
lbl_804F965C:
/* 804F965C  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 804F9660  60 00 00 08 */	ori r0, r0, 8
/* 804F9664  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_804F9668:
/* 804F9668  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 804F966C  3C 80 80 50 */	lis r4, d_a_e_fm__stringBase0@ha /* 0x804FA948@ha */
/* 804F9670  38 84 A9 48 */	addi r4, r4, d_a_e_fm__stringBase0@l /* 0x804FA948@l */
/* 804F9674  4B B3 38 49 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 804F9678  7C 7B 1B 78 */	mr r27, r3
/* 804F967C  2C 1B 00 04 */	cmpwi r27, 4
/* 804F9680  40 82 04 C8 */	bne lbl_804F9B48
/* 804F9684  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F9688  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F968C  3A E3 09 58 */	addi r23, r3, 0x958
/* 804F9690  7E E3 BB 78 */	mr r3, r23
/* 804F9694  38 80 00 03 */	li r4, 3
/* 804F9698  4B B3 B2 9D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 804F969C  2C 03 00 00 */	cmpwi r3, 0
/* 804F96A0  41 82 00 D8 */	beq lbl_804F9778
/* 804F96A4  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 804F96A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F96AC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F96B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804F96B4  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 804F96B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F96BC  38 61 00 20 */	addi r3, r1, 0x20
/* 804F96C0  38 80 00 00 */	li r4, 0
/* 804F96C4  38 A0 00 00 */	li r5, 0
/* 804F96C8  38 C0 00 00 */	li r6, 0
/* 804F96CC  4B D6 DD 29 */	bl __ct__5csXyzFsss
/* 804F96D0  38 61 00 34 */	addi r3, r1, 0x34
/* 804F96D4  38 81 00 20 */	addi r4, r1, 0x20
/* 804F96D8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804F96DC  7C 05 07 74 */	extsb r5, r0
/* 804F96E0  38 C0 00 00 */	li r6, 0
/* 804F96E4  38 E0 00 00 */	li r7, 0
/* 804F96E8  39 00 00 FF */	li r8, 0xff
/* 804F96EC  4B B2 32 71 */	bl fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 804F96F0  7E E3 BB 78 */	mr r3, r23
/* 804F96F4  38 80 00 04 */	li r4, 4
/* 804F96F8  4B B3 B2 3D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 804F96FC  2C 03 00 00 */	cmpwi r3, 0
/* 804F9700  40 82 00 50 */	bne lbl_804F9750
/* 804F9704  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F9708  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804F970C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804F9710  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804F9714  C0 1F 02 80 */	lfs f0, 0x280(r31)
/* 804F9718  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804F971C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 804F9720  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 804F9724  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 804F9728  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804F972C  38 61 00 34 */	addi r3, r1, 0x34
/* 804F9730  38 80 00 22 */	li r4, 0x22
/* 804F9734  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804F9738  7C 05 07 74 */	extsb r5, r0
/* 804F973C  38 DC 04 E4 */	addi r6, r28, 0x4e4
/* 804F9740  38 E1 00 28 */	addi r7, r1, 0x28
/* 804F9744  FC 40 08 90 */	fmr f2, f1
/* 804F9748  39 00 FF FF */	li r8, -1
/* 804F974C  4B B2 29 89 */	bl fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_804F9750:
/* 804F9750  38 00 00 02 */	li r0, 2
/* 804F9754  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 804F9758  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 804F975C  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 804F9760  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 804F9764  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 804F9768  38 60 00 00 */	li r3, 0
/* 804F976C  4B B3 41 91 */	bl dComIfGs_BossLife_public_Set__FSc
/* 804F9770  38 60 00 05 */	li r3, 5
/* 804F9774  48 00 03 D8 */	b lbl_804F9B4C
lbl_804F9778:
/* 804F9778  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804F977C  98 1C 05 B4 */	stb r0, 0x5b4(r28)
/* 804F9780  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 804F9784  28 00 00 FF */	cmplwi r0, 0xff
/* 804F9788  40 82 00 0C */	bne lbl_804F9794
/* 804F978C  38 00 00 00 */	li r0, 0
/* 804F9790  98 1C 05 B4 */	stb r0, 0x5b4(r28)
lbl_804F9794:
/* 804F9794  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804F9798  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 804F979C  98 1C 05 B5 */	stb r0, 0x5b5(r28)
/* 804F97A0  88 1C 05 B5 */	lbz r0, 0x5b5(r28)
/* 804F97A4  28 00 00 FF */	cmplwi r0, 0xff
/* 804F97A8  40 82 00 0C */	bne lbl_804F97B4
/* 804F97AC  38 00 00 01 */	li r0, 1
/* 804F97B0  98 1C 05 B5 */	stb r0, 0x5b5(r28)
lbl_804F97B4:
/* 804F97B4  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804F97B8  54 00 46 3E */	srwi r0, r0, 0x18
/* 804F97BC  98 1C 05 B6 */	stb r0, 0x5b6(r28)
/* 804F97C0  7F 83 E3 78 */	mr r3, r28
/* 804F97C4  3C 80 80 50 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x804F8CE8@ha */
/* 804F97C8  38 84 8C E8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x804F8CE8@l */
/* 804F97CC  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 804F97D0  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 804F97D4  4B B2 0C DD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 804F97D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804F97DC  40 82 00 0C */	bne lbl_804F97E8
/* 804F97E0  38 60 00 05 */	li r3, 5
/* 804F97E4  48 00 03 68 */	b lbl_804F9B4C
lbl_804F97E8:
/* 804F97E8  88 1E 00 3D */	lbz r0, 0x3d(r30)
/* 804F97EC  28 00 00 00 */	cmplwi r0, 0
/* 804F97F0  40 82 00 20 */	bne lbl_804F9810
/* 804F97F4  38 00 00 01 */	li r0, 1
/* 804F97F8  3C 7C 00 02 */	addis r3, r28, 2
/* 804F97FC  98 03 B0 81 */	stb r0, -0x4f7f(r3)
/* 804F9800  98 1E 00 3D */	stb r0, 0x3d(r30)
/* 804F9804  38 00 FF FF */	li r0, -1
/* 804F9808  38 7E 00 4C */	addi r3, r30, 0x4c
/* 804F980C  98 03 00 04 */	stb r0, 4(r3)
lbl_804F9810:
/* 804F9810  38 00 00 04 */	li r0, 4
/* 804F9814  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 804F9818  80 7C 05 D0 */	lwz r3, 0x5d0(r28)
/* 804F981C  80 63 00 04 */	lwz r3, 4(r3)
/* 804F9820  38 03 00 24 */	addi r0, r3, 0x24
/* 804F9824  90 1C 05 04 */	stw r0, 0x504(r28)
/* 804F9828  7F 83 E3 78 */	mr r3, r28
/* 804F982C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 804F9830  FC 40 08 90 */	fmr f2, f1
/* 804F9834  FC 60 08 90 */	fmr f3, f1
/* 804F9838  4B B2 0C F1 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 804F983C  7F 83 E3 78 */	mr r3, r28
/* 804F9840  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 804F9844  FC 40 08 90 */	fmr f2, f1
/* 804F9848  FC 60 08 90 */	fmr f3, f1
/* 804F984C  4B B2 0C ED */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 804F9850  38 00 00 00 */	li r0, 0
/* 804F9854  90 01 00 08 */	stw r0, 8(r1)
/* 804F9858  38 7C 08 4C */	addi r3, r28, 0x84c
/* 804F985C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804F9860  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 804F9864  7F 86 E3 78 */	mr r6, r28
/* 804F9868  38 E0 00 01 */	li r7, 1
/* 804F986C  39 1C 08 0C */	addi r8, r28, 0x80c
/* 804F9870  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 804F9874  39 40 00 00 */	li r10, 0
/* 804F9878  4B B7 C9 D1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804F987C  38 7C 08 0C */	addi r3, r28, 0x80c
/* 804F9880  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 804F9884  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 804F9888  4B B7 C6 D1 */	bl SetWall__12dBgS_AcchCirFff
/* 804F988C  38 00 00 32 */	li r0, 0x32
/* 804F9890  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 804F9894  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 804F9898  38 7C 0A 24 */	addi r3, r28, 0xa24
/* 804F989C  38 80 00 FA */	li r4, 0xfa
/* 804F98A0  38 A0 00 00 */	li r5, 0
/* 804F98A4  7F 86 E3 78 */	mr r6, r28
/* 804F98A8  4B B8 9F B9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804F98AC  3A A0 00 00 */	li r21, 0
/* 804F98B0  3B 40 00 00 */	li r26, 0
/* 804F98B4  3B 3C 0A 24 */	addi r25, r28, 0xa24
/* 804F98B8  3B 00 01 00 */	li r24, 0x100
/* 804F98BC  3A E0 00 01 */	li r23, 1
lbl_804F98C0:
/* 804F98C0  7E DC D2 14 */	add r22, r28, r26
/* 804F98C4  38 76 0A 9C */	addi r3, r22, 0xa9c
/* 804F98C8  38 9D 02 78 */	addi r4, r29, 0x278
/* 804F98CC  4B B8 B1 69 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F98D0  93 36 0A E0 */	stw r25, 0xae0(r22)
/* 804F98D4  93 16 0A AC */	stw r24, 0xaac(r22)
/* 804F98D8  9A F6 0B 11 */	stb r23, 0xb11(r22)
/* 804F98DC  3A B5 00 01 */	addi r21, r21, 1
/* 804F98E0  2C 15 00 07 */	cmpwi r21, 7
/* 804F98E4  3B 5A 01 38 */	addi r26, r26, 0x138
/* 804F98E8  40 81 FF D8 */	ble lbl_804F98C0
/* 804F98EC  38 7C 14 5C */	addi r3, r28, 0x145c
/* 804F98F0  38 9D 02 B8 */	addi r4, r29, 0x2b8
/* 804F98F4  4B B8 B1 41 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F98F8  38 1C 0A 24 */	addi r0, r28, 0xa24
/* 804F98FC  90 1C 14 A0 */	stw r0, 0x14a0(r28)
/* 804F9900  38 00 01 00 */	li r0, 0x100
/* 804F9904  90 1C 14 6C */	stw r0, 0x146c(r28)
/* 804F9908  38 00 00 01 */	li r0, 1
/* 804F990C  98 1C 14 D1 */	stb r0, 0x14d1(r28)
/* 804F9910  38 7C 0A 60 */	addi r3, r28, 0xa60
/* 804F9914  38 80 00 0A */	li r4, 0xa
/* 804F9918  38 A0 00 00 */	li r5, 0
/* 804F991C  7F 86 E3 78 */	mr r6, r28
/* 804F9920  4B B8 9F 41 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 804F9924  38 7C 15 94 */	addi r3, r28, 0x1594
/* 804F9928  38 9D 02 F8 */	addi r4, r29, 0x2f8
/* 804F992C  4B B8 B1 09 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F9930  38 1C 0A 60 */	addi r0, r28, 0xa60
/* 804F9934  90 1C 15 D8 */	stw r0, 0x15d8(r28)
/* 804F9938  38 7C 16 CC */	addi r3, r28, 0x16cc
/* 804F993C  38 9D 03 38 */	addi r4, r29, 0x338
/* 804F9940  4B B8 B0 F5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F9944  3A FC 0A 24 */	addi r23, r28, 0xa24
/* 804F9948  92 FC 17 10 */	stw r23, 0x1710(r28)
/* 804F994C  3B 00 01 00 */	li r24, 0x100
/* 804F9950  93 1C 16 DC */	stw r24, 0x16dc(r28)
/* 804F9954  3B 20 00 01 */	li r25, 1
/* 804F9958  9B 3C 17 41 */	stb r25, 0x1741(r28)
/* 804F995C  3A A0 00 00 */	li r21, 0
/* 804F9960  3B 40 00 00 */	li r26, 0
lbl_804F9964:
/* 804F9964  7E DC D2 14 */	add r22, r28, r26
/* 804F9968  38 76 19 90 */	addi r3, r22, 0x1990
/* 804F996C  38 9D 03 78 */	addi r4, r29, 0x378
/* 804F9970  4B B8 B0 C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F9974  92 F6 19 D4 */	stw r23, 0x19d4(r22)
/* 804F9978  93 16 19 A0 */	stw r24, 0x19a0(r22)
/* 804F997C  9B 36 1A 05 */	stb r25, 0x1a05(r22)
/* 804F9980  3A B5 00 01 */	addi r21, r21, 1
/* 804F9984  2C 15 00 08 */	cmpwi r21, 8
/* 804F9988  3B 5A 01 38 */	addi r26, r26, 0x138
/* 804F998C  41 80 FF D8 */	blt lbl_804F9964
/* 804F9990  3A A0 00 00 */	li r21, 0
/* 804F9994  3B 40 00 00 */	li r26, 0
/* 804F9998  3B 3C 0A 24 */	addi r25, r28, 0xa24
lbl_804F999C:
/* 804F999C  7E DC D2 14 */	add r22, r28, r26
/* 804F99A0  3C 76 00 02 */	addis r3, r22, 2
/* 804F99A4  38 63 AB 10 */	addi r3, r3, -21744
/* 804F99A8  38 9D 03 B8 */	addi r4, r29, 0x3b8
/* 804F99AC  4B B8 B0 89 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 804F99B0  3C 76 00 02 */	addis r3, r22, 2
/* 804F99B4  93 23 AB 54 */	stw r25, -0x54ac(r3)
/* 804F99B8  3A B5 00 01 */	addi r21, r21, 1
/* 804F99BC  2C 15 00 04 */	cmpwi r21, 4
/* 804F99C0  3B 5A 01 38 */	addi r26, r26, 0x138
/* 804F99C4  41 80 FF D8 */	blt lbl_804F999C
/* 804F99C8  C0 3F 02 88 */	lfs f1, 0x288(r31)
/* 804F99CC  4B D6 DF 89 */	bl cM_rndF__Ff
/* 804F99D0  FC 00 08 1E */	fctiwz f0, f1
/* 804F99D4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 804F99D8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804F99DC  B0 1C 07 A0 */	sth r0, 0x7a0(r28)
/* 804F99E0  38 7C 23 9C */	addi r3, r28, 0x239c
/* 804F99E4  4B CA DD AD */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 804F99E8  38 00 00 4B */	li r0, 0x4b
/* 804F99EC  98 1C 05 46 */	stb r0, 0x546(r28)
/* 804F99F0  38 00 00 01 */	li r0, 1
/* 804F99F4  90 01 00 08 */	stw r0, 8(r1)
/* 804F99F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F99FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F9A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F9A04  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F9A08  38 7C 06 3C */	addi r3, r28, 0x63c
/* 804F9A0C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804F9A10  38 BC 05 38 */	addi r5, r28, 0x538
/* 804F9A14  3C DC 00 01 */	addis r6, r28, 1
/* 804F9A18  7C C7 33 78 */	mr r7, r6
/* 804F9A1C  7C C8 33 78 */	mr r8, r6
/* 804F9A20  3D 3C 00 02 */	addis r9, r28, 2
/* 804F9A24  39 40 00 06 */	li r10, 6
/* 804F9A28  38 C6 84 44 */	addi r6, r6, -31676
/* 804F9A2C  38 E7 E6 18 */	addi r7, r7, -6632
/* 804F9A30  39 08 47 EC */	addi r8, r8, 0x47ec
/* 804F9A34  39 29 A9 C0 */	addi r9, r9, -22080
/* 804F9A38  4B DC 85 C5 */	bl init__12Z2CreatureFMFP3VecP3VecP3VecP3VecP3VecP3VecUcUcUcUcUcUc
/* 804F9A3C  38 1C 06 3C */	addi r0, r28, 0x63c
/* 804F9A40  90 1C 18 0C */	stw r0, 0x180c(r28)
/* 804F9A44  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 804F9A48  8C 03 0C 98 */	lbzu r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 804F9A4C  28 00 00 00 */	cmplwi r0, 0
/* 804F9A50  41 82 00 78 */	beq lbl_804F9AC8
/* 804F9A54  38 00 00 00 */	li r0, 0
/* 804F9A58  98 03 00 00 */	stb r0, 0(r3)
/* 804F9A5C  B0 1C 07 A2 */	sth r0, 0x7a2(r28)
/* 804F9A60  38 00 FF F6 */	li r0, -10
/* 804F9A64  B0 1C 07 A4 */	sth r0, 0x7a4(r28)
/* 804F9A68  38 00 00 14 */	li r0, 0x14
/* 804F9A6C  B0 1C 07 AC */	sth r0, 0x7ac(r28)
/* 804F9A70  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F9A74  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F9A78  80 63 00 00 */	lwz r3, 0(r3)
/* 804F9A7C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804F9A80  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000025@ha */
/* 804F9A84  38 84 00 25 */	addi r4, r4, 0x0025 /* 0x01000025@l */
/* 804F9A88  38 A0 00 00 */	li r5, 0
/* 804F9A8C  38 C0 00 00 */	li r6, 0
/* 804F9A90  4B DB 55 81 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 804F9A94  38 00 00 02 */	li r0, 2
/* 804F9A98  90 1C 05 C8 */	stw r0, 0x5c8(r28)
/* 804F9A9C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804F9AA0  D0 1C 05 CC */	stfs f0, 0x5cc(r28)
/* 804F9AA4  38 00 00 01 */	li r0, 1
/* 804F9AA8  98 1C 07 92 */	stb r0, 0x792(r28)
/* 804F9AAC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F9AB0  80 7C 07 64 */	lwz r3, 0x764(r28)
/* 804F9AB4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804F9AB8  B0 1C 07 70 */	sth r0, 0x770(r28)
/* 804F9ABC  3C 7C 00 02 */	addis r3, r28, 2
/* 804F9AC0  98 03 B0 80 */	stb r0, -0x4f80(r3)
/* 804F9AC4  48 00 00 0C */	b lbl_804F9AD0
lbl_804F9AC8:
/* 804F9AC8  38 00 00 0B */	li r0, 0xb
/* 804F9ACC  B0 1C 07 A2 */	sth r0, 0x7a2(r28)
lbl_804F9AD0:
/* 804F9AD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804F9AD4  D0 1C 07 94 */	stfs f0, 0x794(r28)
/* 804F9AD8  D0 1C 07 78 */	stfs f0, 0x778(r28)
/* 804F9ADC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F9AE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F9AE4  3A C3 07 F0 */	addi r22, r3, 0x7f0
/* 804F9AE8  7E C3 B3 78 */	mr r3, r22
/* 804F9AEC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F9AF0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F9AF4  A0 84 01 FC */	lhz r4, 0x1fc(r4)
/* 804F9AF8  4B B3 AE AD */	bl offEventBit__11dSv_event_cFUs
/* 804F9AFC  7E C3 B3 78 */	mr r3, r22
/* 804F9B00  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F9B04  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F9B08  A0 84 02 00 */	lhz r4, 0x200(r4)
/* 804F9B0C  4B B3 AE 99 */	bl offEventBit__11dSv_event_cFUs
/* 804F9B10  7E C3 B3 78 */	mr r3, r22
/* 804F9B14  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F9B18  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F9B1C  A0 84 05 3A */	lhz r4, 0x53a(r4)
/* 804F9B20  4B B3 AE 85 */	bl offEventBit__11dSv_event_cFUs
/* 804F9B24  7E C3 B3 78 */	mr r3, r22
/* 804F9B28  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804F9B2C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804F9B30  A0 84 05 3C */	lhz r4, 0x53c(r4)
/* 804F9B34  4B B3 AE 71 */	bl offEventBit__11dSv_event_cFUs
/* 804F9B38  38 00 00 00 */	li r0, 0
/* 804F9B3C  90 1E 01 24 */	stw r0, 0x124(r30)
/* 804F9B40  7F 83 E3 78 */	mr r3, r28
/* 804F9B44  4B FF D7 8D */	bl daE_FM_Execute__FP10e_fm_class
lbl_804F9B48:
/* 804F9B48  7F 63 DB 78 */	mr r3, r27
lbl_804F9B4C:
/* 804F9B4C  39 61 00 80 */	addi r11, r1, 0x80
/* 804F9B50  4B E6 86 B9 */	bl _restgpr_21
/* 804F9B54  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804F9B58  7C 08 03 A6 */	mtlr r0
/* 804F9B5C  38 21 00 80 */	addi r1, r1, 0x80
/* 804F9B60  4E 80 00 20 */	blr 
