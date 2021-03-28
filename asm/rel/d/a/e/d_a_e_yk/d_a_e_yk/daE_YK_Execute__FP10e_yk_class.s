lbl_80806B78:
/* 80806B78  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80806B7C  7C 08 02 A6 */	mflr r0
/* 80806B80  90 01 00 84 */	stw r0, 0x84(r1)
/* 80806B84  39 61 00 80 */	addi r11, r1, 0x80
/* 80806B88  4B B5 B6 3C */	b _savegpr_23
/* 80806B8C  7C 7F 1B 78 */	mr r31, r3
/* 80806B90  3C 60 80 80 */	lis r3, lit_3941@ha
/* 80806B94  3B 83 7C 9C */	addi r28, r3, lit_3941@l
/* 80806B98  4B 81 17 10 */	b cDmrNowMidnaTalk__Fv
/* 80806B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80806BA0  41 82 00 0C */	beq lbl_80806BAC
/* 80806BA4  38 60 00 01 */	li r3, 1
/* 80806BA8  48 00 04 CC */	b lbl_80807074
lbl_80806BAC:
/* 80806BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80806BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80806BB4  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80806BB8  A8 7F 06 6C */	lha r3, 0x66c(r31)
/* 80806BBC  38 03 00 01 */	addi r0, r3, 1
/* 80806BC0  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 80806BC4  38 60 00 00 */	li r3, 0
/* 80806BC8  38 00 00 04 */	li r0, 4
/* 80806BCC  7C 09 03 A6 */	mtctr r0
lbl_80806BD0:
/* 80806BD0  38 A3 06 A2 */	addi r5, r3, 0x6a2
/* 80806BD4  7C 9F 2A AE */	lhax r4, r31, r5
/* 80806BD8  2C 04 00 00 */	cmpwi r4, 0
/* 80806BDC  41 82 00 0C */	beq lbl_80806BE8
/* 80806BE0  38 04 FF FF */	addi r0, r4, -1
/* 80806BE4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80806BE8:
/* 80806BE8  38 63 00 02 */	addi r3, r3, 2
/* 80806BEC  42 00 FF E4 */	bdnz lbl_80806BD0
/* 80806BF0  A8 7F 06 AA */	lha r3, 0x6aa(r31)
/* 80806BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80806BF8  41 82 00 0C */	beq lbl_80806C04
/* 80806BFC  38 03 FF FF */	addi r0, r3, -1
/* 80806C00  B0 1F 06 AA */	sth r0, 0x6aa(r31)
lbl_80806C04:
/* 80806C04  7F E3 FB 78 */	mr r3, r31
/* 80806C08  4B FF FC DD */	bl action__FP10e_yk_class
/* 80806C0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80806C10  7C 03 07 74 */	extsb r3, r0
/* 80806C14  4B 82 64 58 */	b dComIfGp_getReverb__Fi
/* 80806C18  7C 65 1B 78 */	mr r5, r3
/* 80806C1C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80806C20  38 80 00 00 */	li r4, 0
/* 80806C24  4B 80 A4 8C */	b play__16mDoExt_McaMorfSOFUlSc
/* 80806C28  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80806C2C  83 63 00 04 */	lwz r27, 4(r3)
/* 80806C30  A8 1F 06 6E */	lha r0, 0x66e(r31)
/* 80806C34  2C 00 00 0D */	cmpwi r0, 0xd
/* 80806C38  40 82 00 80 */	bne lbl_80806CB8
/* 80806C3C  A8 1F 06 70 */	lha r0, 0x670(r31)
/* 80806C40  2C 00 00 02 */	cmpwi r0, 2
/* 80806C44  40 80 00 74 */	bge lbl_80806CB8
/* 80806C48  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80806C4C  54 00 00 3E */	slwi r0, r0, 0
/* 80806C50  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80806C54  38 00 00 00 */	li r0, 0
/* 80806C58  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80806C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80806C60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80806C64  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80806C68  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80806C6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80806C70  7D 89 03 A6 */	mtctr r12
/* 80806C74  4E 80 04 21 */	bctrl 
/* 80806C78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80806C7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80806C80  4B B3 F8 30 */	b PSMTXCopy
/* 80806C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806C8C  38 9B 00 24 */	addi r4, r27, 0x24
/* 80806C90  4B B3 F8 20 */	b PSMTXCopy
/* 80806C94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806C98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806C9C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80806CA0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80806CA4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80806CA8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80806CAC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80806CB0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80806CB4  48 00 00 AC */	b lbl_80806D60
lbl_80806CB8:
/* 80806CB8  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80806CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80806CC0  40 81 00 2C */	ble lbl_80806CEC
/* 80806CC4  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 80806CC8  7C 00 07 75 */	extsb. r0, r0
/* 80806CCC  40 82 00 20 */	bne lbl_80806CEC
/* 80806CD0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80806CD4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80806CD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80806CDC  40 80 00 10 */	bge lbl_80806CEC
/* 80806CE0  38 00 00 04 */	li r0, 4
/* 80806CE4  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80806CE8  48 00 00 18 */	b lbl_80806D00
lbl_80806CEC:
/* 80806CEC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 80806CF0  54 00 00 3E */	slwi r0, r0, 0
/* 80806CF4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 80806CF8  38 00 00 00 */	li r0, 0
/* 80806CFC  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80806D00:
/* 80806D00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806D04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806D08  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80806D0C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80806D10  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80806D14  4B B3 FB D4 */	b PSMTXTrans
/* 80806D18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806D1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806D20  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80806D24  4B 80 57 10 */	b mDoMtx_YrotM__FPA4_fs
/* 80806D28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806D2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806D30  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80806D34  4B 80 57 98 */	b mDoMtx_ZrotM__FPA4_fs
/* 80806D38  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80806D3C  38 63 7F 08 */	addi r3, r3, l_HIO@l
/* 80806D40  C0 23 00 08 */	lfs f1, 8(r3)
/* 80806D44  FC 40 08 90 */	fmr f2, f1
/* 80806D48  FC 60 08 90 */	fmr f3, f1
/* 80806D4C  4B 80 60 EC */	b scaleM__14mDoMtx_stack_cFfff
/* 80806D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80806D54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80806D58  38 9B 00 24 */	addi r4, r27, 0x24
/* 80806D5C  4B B3 F7 54 */	b PSMTXCopy
lbl_80806D60:
/* 80806D60  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80806D64  4B 80 A4 88 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80806D68  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80806D6C  2C 00 00 08 */	cmpwi r0, 8
/* 80806D70  41 82 00 0C */	beq lbl_80806D7C
/* 80806D74  2C 00 00 05 */	cmpwi r0, 5
/* 80806D78  40 82 00 88 */	bne lbl_80806E00
lbl_80806D7C:
/* 80806D7C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80806D80  38 63 00 0C */	addi r3, r3, 0xc
/* 80806D84  C0 3C 00 9C */	lfs f1, 0x9c(r28)
/* 80806D88  4B B2 16 A4 */	b checkPass__12J3DFrameCtrlFf
/* 80806D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80806D90  41 82 00 B8 */	beq lbl_80806E48
/* 80806D94  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80806D98  2C 00 00 08 */	cmpwi r0, 8
/* 80806D9C  40 82 00 34 */	bne lbl_80806DD0
/* 80806DA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C7@ha */
/* 80806DA4  38 03 01 C7 */	addi r0, r3, 0x01C7 /* 0x000701C7@l */
/* 80806DA8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80806DAC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80806DB0  38 81 00 28 */	addi r4, r1, 0x28
/* 80806DB4  38 A0 00 00 */	li r5, 0
/* 80806DB8  38 C0 FF FF */	li r6, -1
/* 80806DBC  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80806DC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80806DC4  7D 89 03 A6 */	mtctr r12
/* 80806DC8  4E 80 04 21 */	bctrl 
/* 80806DCC  48 00 00 7C */	b lbl_80806E48
lbl_80806DD0:
/* 80806DD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701C7@ha */
/* 80806DD4  38 03 01 C7 */	addi r0, r3, 0x01C7 /* 0x000701C7@l */
/* 80806DD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80806DDC  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80806DE0  38 81 00 24 */	addi r4, r1, 0x24
/* 80806DE4  38 A0 00 00 */	li r5, 0
/* 80806DE8  38 C0 FF FF */	li r6, -1
/* 80806DEC  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80806DF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80806DF4  7D 89 03 A6 */	mtctr r12
/* 80806DF8  4E 80 04 21 */	bctrl 
/* 80806DFC  48 00 00 4C */	b lbl_80806E48
lbl_80806E00:
/* 80806E00  2C 00 00 06 */	cmpwi r0, 6
/* 80806E04  40 82 00 44 */	bne lbl_80806E48
/* 80806E08  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80806E0C  38 63 00 0C */	addi r3, r3, 0xc
/* 80806E10  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80806E14  4B B2 16 18 */	b checkPass__12J3DFrameCtrlFf
/* 80806E18  2C 03 00 00 */	cmpwi r3, 0
/* 80806E1C  41 82 00 2C */	beq lbl_80806E48
/* 80806E20  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701CD@ha */
/* 80806E24  38 03 01 CD */	addi r0, r3, 0x01CD /* 0x000701CD@l */
/* 80806E28  90 01 00 20 */	stw r0, 0x20(r1)
/* 80806E2C  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80806E30  38 81 00 20 */	addi r4, r1, 0x20
/* 80806E34  38 A0 FF FF */	li r5, -1
/* 80806E38  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80806E3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80806E40  7D 89 03 A6 */	mtctr r12
/* 80806E44  4E 80 04 21 */	bctrl 
lbl_80806E48:
/* 80806E48  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80806E4C  2C 00 00 04 */	cmpwi r0, 4
/* 80806E50  41 82 01 28 */	beq lbl_80806F78
/* 80806E54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80806E58  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80806E5C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80806E60  38 00 00 FF */	li r0, 0xff
/* 80806E64  90 01 00 08 */	stw r0, 8(r1)
/* 80806E68  38 80 00 00 */	li r4, 0
/* 80806E6C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80806E70  38 00 FF FF */	li r0, -1
/* 80806E74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80806E78  90 81 00 14 */	stw r4, 0x14(r1)
/* 80806E7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80806E80  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80806E84  80 9F 0A 80 */	lwz r4, 0xa80(r31)
/* 80806E88  38 A0 00 00 */	li r5, 0
/* 80806E8C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008434@ha */
/* 80806E90  38 C6 84 34 */	addi r6, r6, 0x8434 /* 0x00008434@l */
/* 80806E94  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80806E98  39 00 00 00 */	li r8, 0
/* 80806E9C  39 20 00 00 */	li r9, 0
/* 80806EA0  39 40 00 00 */	li r10, 0
/* 80806EA4  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80806EA8  4B 84 66 24 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80806EAC  90 7F 0A 80 */	stw r3, 0xa80(r31)
/* 80806EB0  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80806EB4  2C 00 00 09 */	cmpwi r0, 9
/* 80806EB8  41 82 00 C0 */	beq lbl_80806F78
/* 80806EBC  3B 40 00 00 */	li r26, 0
/* 80806EC0  3B 20 00 00 */	li r25, 0
/* 80806EC4  3B 00 00 00 */	li r24, 0
/* 80806EC8  3C 60 80 80 */	lis r3, e_name@ha
/* 80806ECC  3B C3 7D E4 */	addi r30, r3, e_name@l
lbl_80806ED0:
/* 80806ED0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80806ED4  38 00 00 FF */	li r0, 0xff
/* 80806ED8  90 01 00 08 */	stw r0, 8(r1)
/* 80806EDC  38 80 00 00 */	li r4, 0
/* 80806EE0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80806EE4  38 00 FF FF */	li r0, -1
/* 80806EE8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80806EEC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80806EF0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80806EF4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80806EF8  3A F8 0A 84 */	addi r23, r24, 0xa84
/* 80806EFC  7C 9F B8 2E */	lwzx r4, r31, r23
/* 80806F00  38 A0 00 00 */	li r5, 0
/* 80806F04  7C DE CA 2E */	lhzx r6, r30, r25
/* 80806F08  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80806F0C  39 00 00 00 */	li r8, 0
/* 80806F10  39 20 00 00 */	li r9, 0
/* 80806F14  39 40 00 00 */	li r10, 0
/* 80806F18  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80806F1C  4B 84 65 B0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80806F20  7C 7F B9 2E */	stwx r3, r31, r23
/* 80806F24  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80806F28  38 63 02 10 */	addi r3, r3, 0x210
/* 80806F2C  7C 9F B8 2E */	lwzx r4, r31, r23
/* 80806F30  4B 84 49 E8 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80806F34  7C 65 1B 79 */	or. r5, r3, r3
/* 80806F38  41 82 00 2C */	beq lbl_80806F64
/* 80806F3C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80806F40  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80806F44  3C 60 80 80 */	lis r3, e_idx@ha
/* 80806F48  38 63 7D E8 */	addi r3, r3, e_idx@l
/* 80806F4C  7C 03 C0 2E */	lwzx r0, r3, r24
/* 80806F50  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80806F54  7C 64 02 14 */	add r3, r4, r0
/* 80806F58  38 85 00 68 */	addi r4, r5, 0x68
/* 80806F5C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80806F60  4B A7 98 80 */	b func_802807E0
lbl_80806F64:
/* 80806F64  3B 5A 00 01 */	addi r26, r26, 1
/* 80806F68  2C 1A 00 02 */	cmpwi r26, 2
/* 80806F6C  3B 39 00 02 */	addi r25, r25, 2
/* 80806F70  3B 18 00 04 */	addi r24, r24, 4
/* 80806F74  41 80 FF 5C */	blt lbl_80806ED0
lbl_80806F78:
/* 80806F78  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80806F7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80806F80  38 63 00 60 */	addi r3, r3, 0x60
/* 80806F84  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80806F88  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80806F8C  80 84 00 00 */	lwz r4, 0(r4)
/* 80806F90  4B B3 F5 20 */	b PSMTXCopy
/* 80806F94  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80806F98  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80806F9C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80806FA0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80806FA4  38 61 00 44 */	addi r3, r1, 0x44
/* 80806FA8  38 9F 05 38 */	addi r4, r31, 0x538
/* 80806FAC  4B A6 9F 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 80806FB0  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80806FB4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80806FB8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80806FBC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80806FC0  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80806FC4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80806FC8  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80806FCC  C0 1C 00 AC */	lfs f0, 0xac(r28)
/* 80806FD0  EC 01 00 2A */	fadds f0, f1, f0
/* 80806FD4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80806FD8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80806FDC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80806FE0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80806FE4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80806FE8  38 61 00 44 */	addi r3, r1, 0x44
/* 80806FEC  38 81 00 38 */	addi r4, r1, 0x38
/* 80806FF0  4B A6 9E FC */	b MtxPosition__FP4cXyzP4cXyz
/* 80806FF4  A8 1F 06 AA */	lha r0, 0x6aa(r31)
/* 80806FF8  2C 00 00 00 */	cmpwi r0, 0
/* 80806FFC  41 82 00 14 */	beq lbl_80807010
/* 80807000  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80807004  C0 1C 00 B0 */	lfs f0, 0xb0(r28)
/* 80807008  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080700C  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_80807010:
/* 80807010  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80807014  38 81 00 38 */	addi r4, r1, 0x38
/* 80807018  4B A6 86 30 */	b SetC__8cM3dGSphFRC4cXyz
/* 8080701C  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80807020  C0 3C 00 74 */	lfs f1, 0x74(r28)
/* 80807024  3C 80 80 80 */	lis r4, l_HIO@ha
/* 80807028  38 84 7F 08 */	addi r4, r4, l_HIO@l
/* 8080702C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80807030  EC 21 00 32 */	fmuls f1, f1, f0
/* 80807034  4B A6 86 D4 */	b SetR__8cM3dGSphFf
/* 80807038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8080703C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80807040  38 63 23 3C */	addi r3, r3, 0x233c
/* 80807044  38 9F 09 1C */	addi r4, r31, 0x91c
/* 80807048  4B A5 DB 60 */	b Set__4cCcSFP8cCcD_Obj
/* 8080704C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 80807050  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80807054  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80807058  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8080705C  7F E3 FB 78 */	mr r3, r31
/* 80807060  38 9F 05 C4 */	addi r4, r31, 0x5c4
/* 80807064  38 BF 05 38 */	addi r5, r31, 0x538
/* 80807068  38 C1 00 2C */	addi r6, r1, 0x2c
/* 8080706C  48 00 08 09 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80807070  38 60 00 01 */	li r3, 1
lbl_80807074:
/* 80807074  39 61 00 80 */	addi r11, r1, 0x80
/* 80807078  4B B5 B1 98 */	b _restgpr_23
/* 8080707C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80807080  7C 08 03 A6 */	mtlr r0
/* 80807084  38 21 00 80 */	addi r1, r1, 0x80
/* 80807088  4E 80 00 20 */	blr 
