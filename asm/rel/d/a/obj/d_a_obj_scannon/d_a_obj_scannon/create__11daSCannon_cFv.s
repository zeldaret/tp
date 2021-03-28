lbl_80CC6D10:
/* 80CC6D10  94 21 FD B0 */	stwu r1, -0x250(r1)
/* 80CC6D14  7C 08 02 A6 */	mflr r0
/* 80CC6D18  90 01 02 54 */	stw r0, 0x254(r1)
/* 80CC6D1C  39 61 02 50 */	addi r11, r1, 0x250
/* 80CC6D20  4B 69 B4 AC */	b _savegpr_25
/* 80CC6D24  7C 7A 1B 78 */	mr r26, r3
/* 80CC6D28  3C 80 80 CD */	lis r4, TKS_SET_POS@ha
/* 80CC6D2C  3B A4 91 88 */	addi r29, r4, TKS_SET_POS@l
/* 80CC6D30  3C 80 80 CD */	lis r4, cNullVec__6Z2Calc@ha
/* 80CC6D34  3B C4 93 04 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80CC6D38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC6D3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC6D40  40 82 00 1C */	bne lbl_80CC6D5C
/* 80CC6D44  28 1A 00 00 */	cmplwi r26, 0
/* 80CC6D48  41 82 00 08 */	beq lbl_80CC6D50
/* 80CC6D4C  4B FF FD C1 */	bl __ct__11daSCannon_cFv
lbl_80CC6D50:
/* 80CC6D50  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80CC6D54  60 00 00 08 */	ori r0, r0, 8
/* 80CC6D58  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80CC6D5C:
/* 80CC6D5C  38 60 00 00 */	li r3, 0
/* 80CC6D60  4B 36 5C 1C */	b getLayerNo__14dComIfG_play_cFi
/* 80CC6D64  7C 7F 1B 78 */	mr r31, r3
/* 80CC6D68  2C 1F 00 01 */	cmpwi r31, 1
/* 80CC6D6C  41 82 00 1C */	beq lbl_80CC6D88
/* 80CC6D70  2C 1F 00 03 */	cmpwi r31, 3
/* 80CC6D74  41 82 00 14 */	beq lbl_80CC6D88
/* 80CC6D78  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80CC6D7C  41 82 00 0C */	beq lbl_80CC6D88
/* 80CC6D80  38 60 00 05 */	li r3, 5
/* 80CC6D84  48 00 03 88 */	b lbl_80CC710C
lbl_80CC6D88:
/* 80CC6D88  83 7E 00 20 */	lwz r27, 0x20(r30)
/* 80CC6D8C  3B 80 00 04 */	li r28, 4
/* 80CC6D90  2C 1F 00 01 */	cmpwi r31, 1
/* 80CC6D94  40 82 00 64 */	bne lbl_80CC6DF8
/* 80CC6D98  83 7E 00 24 */	lwz r27, 0x24(r30)
/* 80CC6D9C  38 00 00 00 */	li r0, 0
/* 80CC6DA0  98 1A 06 1A */	stb r0, 0x61a(r26)
/* 80CC6DA4  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80CC6DA8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CC6DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC6DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC6DB4  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 80CC6DB8  7C 05 07 74 */	extsb r5, r0
/* 80CC6DBC  4B 36 E5 A4 */	b isSwitch__10dSv_info_cCFii
/* 80CC6DC0  2C 03 00 00 */	cmpwi r3, 0
/* 80CC6DC4  40 82 00 34 */	bne lbl_80CC6DF8
/* 80CC6DC8  38 00 00 01 */	li r0, 1
/* 80CC6DCC  98 1A 06 1A */	stb r0, 0x61a(r26)
/* 80CC6DD0  38 7A 05 7C */	addi r3, r26, 0x57c
/* 80CC6DD4  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 80CC6DD8  4B 36 60 E4 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC6DDC  7C 7C 1B 78 */	mr r28, r3
/* 80CC6DE0  2C 1C 00 05 */	cmpwi r28, 5
/* 80CC6DE4  41 82 00 0C */	beq lbl_80CC6DF0
/* 80CC6DE8  2C 1C 00 03 */	cmpwi r28, 3
/* 80CC6DEC  40 82 00 0C */	bne lbl_80CC6DF8
lbl_80CC6DF0:
/* 80CC6DF0  38 60 00 05 */	li r3, 5
/* 80CC6DF4  48 00 03 18 */	b lbl_80CC710C
lbl_80CC6DF8:
/* 80CC6DF8  7F 43 D3 78 */	mr r3, r26
/* 80CC6DFC  28 1A 00 00 */	cmplwi r26, 0
/* 80CC6E00  41 82 00 08 */	beq lbl_80CC6E08
/* 80CC6E04  38 7A 05 68 */	addi r3, r26, 0x568
lbl_80CC6E08:
/* 80CC6E08  7F 64 DB 78 */	mr r4, r27
/* 80CC6E0C  4B 36 60 B0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC6E10  7C 7B 1B 78 */	mr r27, r3
/* 80CC6E14  2C 1B 00 05 */	cmpwi r27, 5
/* 80CC6E18  41 82 00 0C */	beq lbl_80CC6E24
/* 80CC6E1C  2C 1B 00 03 */	cmpwi r27, 3
/* 80CC6E20  40 82 00 0C */	bne lbl_80CC6E2C
lbl_80CC6E24:
/* 80CC6E24  38 60 00 05 */	li r3, 5
/* 80CC6E28  48 00 02 E4 */	b lbl_80CC710C
lbl_80CC6E2C:
/* 80CC6E2C  38 7A 05 74 */	addi r3, r26, 0x574
/* 80CC6E30  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 80CC6E34  4B 36 60 88 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CC6E38  2C 03 00 05 */	cmpwi r3, 5
/* 80CC6E3C  41 82 00 0C */	beq lbl_80CC6E48
/* 80CC6E40  2C 03 00 03 */	cmpwi r3, 3
/* 80CC6E44  40 82 00 0C */	bne lbl_80CC6E50
lbl_80CC6E48:
/* 80CC6E48  38 60 00 05 */	li r3, 5
/* 80CC6E4C  48 00 02 C0 */	b lbl_80CC710C
lbl_80CC6E50:
/* 80CC6E50  2C 1B 00 04 */	cmpwi r27, 4
/* 80CC6E54  40 82 02 B4 */	bne lbl_80CC7108
/* 80CC6E58  2C 03 00 04 */	cmpwi r3, 4
/* 80CC6E5C  40 82 02 AC */	bne lbl_80CC7108
/* 80CC6E60  2C 1C 00 04 */	cmpwi r28, 4
/* 80CC6E64  40 82 02 A4 */	bne lbl_80CC7108
/* 80CC6E68  93 FA 06 0C */	stw r31, 0x60c(r26)
/* 80CC6E6C  2C 1F 00 03 */	cmpwi r31, 3
/* 80CC6E70  41 82 00 0C */	beq lbl_80CC6E7C
/* 80CC6E74  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80CC6E78  40 82 00 10 */	bne lbl_80CC6E88
lbl_80CC6E7C:
/* 80CC6E7C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00009000@ha */
/* 80CC6E80  38 A3 90 00 */	addi r5, r3, 0x9000 /* 0x00009000@l */
/* 80CC6E84  48 00 00 24 */	b lbl_80CC6EA8
lbl_80CC6E88:
/* 80CC6E88  88 1A 06 1A */	lbz r0, 0x61a(r26)
/* 80CC6E8C  28 00 00 00 */	cmplwi r0, 0
/* 80CC6E90  41 82 00 10 */	beq lbl_80CC6EA0
/* 80CC6E94  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000F000@ha */
/* 80CC6E98  38 A3 F0 00 */	addi r5, r3, 0xF000 /* 0x0000F000@l */
/* 80CC6E9C  48 00 00 0C */	b lbl_80CC6EA8
lbl_80CC6EA0:
/* 80CC6EA0  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000D500@ha */
/* 80CC6EA4  38 A3 D5 00 */	addi r5, r3, 0xD500 /* 0x0000D500@l */
lbl_80CC6EA8:
/* 80CC6EA8  7F 43 D3 78 */	mr r3, r26
/* 80CC6EAC  3C 80 80 CC */	lis r4, daSCannon_c_createHeap__FP10fopAc_ac_c@ha
/* 80CC6EB0  38 84 6A EC */	addi r4, r4, daSCannon_c_createHeap__FP10fopAc_ac_c@l
/* 80CC6EB4  4B 35 35 FC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CC6EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC6EBC  40 82 00 0C */	bne lbl_80CC6EC8
/* 80CC6EC0  38 60 00 05 */	li r3, 5
/* 80CC6EC4  48 00 02 48 */	b lbl_80CC710C
lbl_80CC6EC8:
/* 80CC6EC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC6ECC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC6ED0  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80CC6ED4  7F C3 F3 78 */	mr r3, r30
/* 80CC6ED8  80 9A 05 E0 */	lwz r4, 0x5e0(r26)
/* 80CC6EDC  7F 45 D3 78 */	mr r5, r26
/* 80CC6EE0  4B 3A DB 28 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CC6EE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC6EE8  41 82 00 0C */	beq lbl_80CC6EF4
/* 80CC6EEC  38 60 00 05 */	li r3, 5
/* 80CC6EF0  48 00 02 1C */	b lbl_80CC710C
lbl_80CC6EF4:
/* 80CC6EF4  7F 43 D3 78 */	mr r3, r26
/* 80CC6EF8  48 00 1A A1 */	bl init__11daSCannon_cFv
/* 80CC6EFC  7F 43 D3 78 */	mr r3, r26
/* 80CC6F00  48 00 06 09 */	bl setModelMtx__11daSCannon_cFv
/* 80CC6F04  88 1A 06 17 */	lbz r0, 0x617(r26)
/* 80CC6F08  54 00 10 3A */	slwi r0, r0, 2
/* 80CC6F0C  7C 7A 02 14 */	add r3, r26, r0
/* 80CC6F10  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC6F14  38 03 00 24 */	addi r0, r3, 0x24
/* 80CC6F18  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80CC6F1C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80CC6F20  D0 1A 05 20 */	stfs f0, 0x520(r26)
/* 80CC6F24  88 1A 06 17 */	lbz r0, 0x617(r26)
/* 80CC6F28  54 00 10 3A */	slwi r0, r0, 2
/* 80CC6F2C  7C 7A 02 14 */	add r3, r26, r0
/* 80CC6F30  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC6F34  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC6F38  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80CC6F3C  80 83 00 00 */	lwz r4, 0(r3)
/* 80CC6F40  28 04 00 00 */	cmplwi r4, 0
/* 80CC6F44  41 82 00 38 */	beq lbl_80CC6F7C
/* 80CC6F48  7F 43 D3 78 */	mr r3, r26
/* 80CC6F4C  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80CC6F50  C0 DD 00 20 */	lfs f6, 0x20(r29)
/* 80CC6F54  EC 20 30 28 */	fsubs f1, f0, f6
/* 80CC6F58  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80CC6F5C  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80CC6F60  EC 60 30 28 */	fsubs f3, f0, f6
/* 80CC6F64  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80CC6F68  EC 86 00 2A */	fadds f4, f6, f0
/* 80CC6F6C  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80CC6F70  C0 04 00 50 */	lfs f0, 0x50(r4)
/* 80CC6F74  EC C6 00 2A */	fadds f6, f6, f0
/* 80CC6F78  4B 35 35 D0 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
lbl_80CC6F7C:
/* 80CC6F7C  38 61 00 10 */	addi r3, r1, 0x10
/* 80CC6F80  4B 3A EF 2C */	b __ct__12dBgS_AcchCirFv
/* 80CC6F84  3B 21 00 50 */	addi r25, r1, 0x50
/* 80CC6F88  7F 23 CB 78 */	mr r3, r25
/* 80CC6F8C  4B 3A F1 14 */	b __ct__9dBgS_AcchFv
/* 80CC6F90  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CC6F94  38 63 95 C4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CC6F98  90 61 00 60 */	stw r3, 0x60(r1)
/* 80CC6F9C  3B 83 00 0C */	addi r28, r3, 0xc
/* 80CC6FA0  93 81 00 64 */	stw r28, 0x64(r1)
/* 80CC6FA4  3B 63 00 18 */	addi r27, r3, 0x18
/* 80CC6FA8  93 61 00 74 */	stw r27, 0x74(r1)
/* 80CC6FAC  38 79 00 14 */	addi r3, r25, 0x14
/* 80CC6FB0  4B 3B 1E B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80CC6FB4  38 61 00 10 */	addi r3, r1, 0x10
/* 80CC6FB8  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 80CC6FBC  C0 5D 00 28 */	lfs f2, 0x28(r29)
/* 80CC6FC0  4B 3A EF 98 */	b SetWall__12dBgS_AcchCirFff
/* 80CC6FC4  38 00 00 00 */	li r0, 0
/* 80CC6FC8  90 01 00 08 */	stw r0, 8(r1)
/* 80CC6FCC  7F 23 CB 78 */	mr r3, r25
/* 80CC6FD0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80CC6FD4  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80CC6FD8  7F 46 D3 78 */	mr r6, r26
/* 80CC6FDC  38 E0 00 01 */	li r7, 1
/* 80CC6FE0  39 01 00 10 */	addi r8, r1, 0x10
/* 80CC6FE4  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80CC6FE8  39 40 00 00 */	li r10, 0
/* 80CC6FEC  4B 3A F2 5C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CC6FF0  7F 23 CB 78 */	mr r3, r25
/* 80CC6FF4  7F C4 F3 78 */	mr r4, r30
/* 80CC6FF8  4B 3A FA B4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80CC6FFC  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 80CC7000  D0 1A 05 F8 */	stfs f0, 0x5f8(r26)
/* 80CC7004  A0 01 01 40 */	lhz r0, 0x140(r1)
/* 80CC7008  B0 1A 05 A0 */	sth r0, 0x5a0(r26)
/* 80CC700C  A0 01 01 42 */	lhz r0, 0x142(r1)
/* 80CC7010  B0 1A 05 A2 */	sth r0, 0x5a2(r26)
/* 80CC7014  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80CC7018  90 1A 05 A4 */	stw r0, 0x5a4(r26)
/* 80CC701C  80 01 01 48 */	lwz r0, 0x148(r1)
/* 80CC7020  90 1A 05 A8 */	stw r0, 0x5a8(r26)
/* 80CC7024  2C 1F 00 03 */	cmpwi r31, 3
/* 80CC7028  41 82 00 0C */	beq lbl_80CC7034
/* 80CC702C  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80CC7030  40 82 00 78 */	bne lbl_80CC70A8
lbl_80CC7034:
/* 80CC7034  88 1A 06 17 */	lbz r0, 0x617(r26)
/* 80CC7038  54 00 10 3A */	slwi r0, r0, 2
/* 80CC703C  7C 7A 02 14 */	add r3, r26, r0
/* 80CC7040  80 63 05 E4 */	lwz r3, 0x5e4(r3)
/* 80CC7044  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC7048  83 C3 00 54 */	lwz r30, 0x54(r3)
/* 80CC704C  3B E0 00 00 */	li r31, 0
/* 80CC7050  3C 60 80 CD */	lis r3, struct_80CC9224+0x0@ha
/* 80CC7054  3B A3 92 24 */	addi r29, r3, struct_80CC9224+0x0@l
/* 80CC7058  48 00 00 2C */	b lbl_80CC7084
lbl_80CC705C:
/* 80CC705C  7F C3 F3 78 */	mr r3, r30
/* 80CC7060  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 80CC7064  4B 61 7A 94 */	b getName__10JUTNameTabCFUs
/* 80CC7068  38 9D 00 7F */	addi r4, r29, 0x7f
/* 80CC706C  4B 6A 19 28 */	b strcmp
/* 80CC7070  2C 03 00 00 */	cmpwi r3, 0
/* 80CC7074  40 82 00 0C */	bne lbl_80CC7080
/* 80CC7078  B3 FA 06 12 */	sth r31, 0x612(r26)
/* 80CC707C  48 00 00 40 */	b lbl_80CC70BC
lbl_80CC7080:
/* 80CC7080  3B FF 00 01 */	addi r31, r31, 1
lbl_80CC7084:
/* 80CC7084  88 1A 06 17 */	lbz r0, 0x617(r26)
/* 80CC7088  54 03 10 3A */	slwi r3, r0, 2
/* 80CC708C  38 03 05 E4 */	addi r0, r3, 0x5e4
/* 80CC7090  7C 7A 00 2E */	lwzx r3, r26, r0
/* 80CC7094  80 63 00 04 */	lwz r3, 4(r3)
/* 80CC7098  A0 03 00 2C */	lhz r0, 0x2c(r3)
/* 80CC709C  7C 1F 00 00 */	cmpw r31, r0
/* 80CC70A0  41 80 FF BC */	blt lbl_80CC705C
/* 80CC70A4  48 00 00 18 */	b lbl_80CC70BC
lbl_80CC70A8:
/* 80CC70A8  80 1A 06 0C */	lwz r0, 0x60c(r26)
/* 80CC70AC  2C 00 00 01 */	cmpwi r0, 1
/* 80CC70B0  40 82 00 0C */	bne lbl_80CC70BC
/* 80CC70B4  7F 43 D3 78 */	mr r3, r26
/* 80CC70B8  48 00 01 4D */	bl execute__11daSCannon_cFv
lbl_80CC70BC:
/* 80CC70BC  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CC70C0  38 03 95 C4 */	addi r0, r3, __vt__12dBgS_ObjAcch@l
/* 80CC70C4  90 01 00 60 */	stw r0, 0x60(r1)
/* 80CC70C8  93 81 00 64 */	stw r28, 0x64(r1)
/* 80CC70CC  93 61 00 74 */	stw r27, 0x74(r1)
/* 80CC70D0  38 61 00 50 */	addi r3, r1, 0x50
/* 80CC70D4  38 80 00 00 */	li r4, 0
/* 80CC70D8  4B 3A EE BC */	b __dt__9dBgS_AcchFv
/* 80CC70DC  3C 60 80 CD */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CC70E0  38 03 95 B8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CC70E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CC70E8  38 61 00 24 */	addi r3, r1, 0x24
/* 80CC70EC  38 80 FF FF */	li r4, -1
/* 80CC70F0  4B 5A 7E 28 */	b __dt__8cM3dGCirFv
/* 80CC70F4  38 61 00 10 */	addi r3, r1, 0x10
/* 80CC70F8  38 80 00 00 */	li r4, 0
/* 80CC70FC  4B 5A 0F B4 */	b __dt__13cBgS_PolyInfoFv
/* 80CC7100  38 60 00 04 */	li r3, 4
/* 80CC7104  48 00 00 08 */	b lbl_80CC710C
lbl_80CC7108:
/* 80CC7108  38 60 00 00 */	li r3, 0
lbl_80CC710C:
/* 80CC710C  39 61 02 50 */	addi r11, r1, 0x250
/* 80CC7110  4B 69 B1 08 */	b _restgpr_25
/* 80CC7114  80 01 02 54 */	lwz r0, 0x254(r1)
/* 80CC7118  7C 08 03 A6 */	mtlr r0
/* 80CC711C  38 21 02 50 */	addi r1, r1, 0x250
/* 80CC7120  4E 80 00 20 */	blr 
