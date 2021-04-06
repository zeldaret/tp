lbl_80C31D5C:
/* 80C31D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C31D60  7C 08 02 A6 */	mflr r0
/* 80C31D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C31D68  39 61 00 30 */	addi r11, r1, 0x30
/* 80C31D6C  4B 73 04 69 */	bl _savegpr_27
/* 80C31D70  7C 7C 1B 78 */	mr r28, r3
/* 80C31D74  3C 80 80 C3 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C33DA0@ha */
/* 80C31D78  3B C4 3D A0 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80C33DA0@l */
/* 80C31D7C  3C 80 80 C3 */	lis r4, m__18daObj_Kago_Param_c@ha /* 0x80C33C80@ha */
/* 80C31D80  3B E4 3C 80 */	addi r31, r4, m__18daObj_Kago_Param_c@l /* 0x80C33C80@l */
/* 80C31D84  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C31D88  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C31D8C  40 82 00 C8 */	bne lbl_80C31E54
/* 80C31D90  7F 80 E3 79 */	or. r0, r28, r28
/* 80C31D94  41 82 00 B4 */	beq lbl_80C31E48
/* 80C31D98  7C 1D 03 78 */	mr r29, r0
/* 80C31D9C  4B 3E 6D C9 */	bl __ct__10fopAc_ac_cFv
/* 80C31DA0  3C 60 80 C3 */	lis r3, __vt__12daObj_Kago_c@ha /* 0x80C33EE0@ha */
/* 80C31DA4  38 03 3E E0 */	addi r0, r3, __vt__12daObj_Kago_c@l /* 0x80C33EE0@l */
/* 80C31DA8  90 1D 0B A4 */	stw r0, 0xba4(r29)
/* 80C31DAC  3B 7D 05 78 */	addi r27, r29, 0x578
/* 80C31DB0  7F 63 DB 78 */	mr r3, r27
/* 80C31DB4  4B 44 42 ED */	bl __ct__9dBgS_AcchFv
/* 80C31DB8  3C 60 80 C3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80C33E8C@ha */
/* 80C31DBC  38 63 3E 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80C33E8C@l */
/* 80C31DC0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80C31DC4  38 03 00 0C */	addi r0, r3, 0xc
/* 80C31DC8  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80C31DCC  38 03 00 18 */	addi r0, r3, 0x18
/* 80C31DD0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80C31DD4  38 7B 00 14 */	addi r3, r27, 0x14
/* 80C31DD8  4B 44 70 91 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C31DDC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C31DE0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C31DE4  90 1D 07 68 */	stw r0, 0x768(r29)
/* 80C31DE8  38 7D 07 6C */	addi r3, r29, 0x76c
/* 80C31DEC  4B 45 19 75 */	bl __ct__10dCcD_GSttsFv
/* 80C31DF0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C31DF4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C31DF8  90 7D 07 68 */	stw r3, 0x768(r29)
/* 80C31DFC  38 03 00 20 */	addi r0, r3, 0x20
/* 80C31E00  90 1D 07 6C */	stw r0, 0x76c(r29)
/* 80C31E04  38 7D 07 8C */	addi r3, r29, 0x78c
/* 80C31E08  4B 44 40 A5 */	bl __ct__12dBgS_AcchCirFv
/* 80C31E0C  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 80C31E10  4B 63 5E 0D */	bl __ct__11cBgS_GndChkFv
/* 80C31E14  38 7D 08 08 */	addi r3, r29, 0x808
/* 80C31E18  3C 80 80 C3 */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80C32144@ha */
/* 80C31E1C  38 84 21 44 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80C32144@l */
/* 80C31E20  3C A0 80 C3 */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80C31C90@ha */
/* 80C31E24  38 A5 1C 90 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80C31C90@l */
/* 80C31E28  38 C0 01 3C */	li r6, 0x13c
/* 80C31E2C  38 E0 00 02 */	li r7, 2
/* 80C31E30  4B 72 FF 31 */	bl __construct_array
/* 80C31E34  3C 60 80 C3 */	lis r3, __vt__8cM3dGLin@ha /* 0x80C33ED4@ha */
/* 80C31E38  38 03 3E D4 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80C33ED4@l */
/* 80C31E3C  90 1D 0A 98 */	stw r0, 0xa98(r29)
/* 80C31E40  38 7D 0A 9C */	addi r3, r29, 0xa9c
/* 80C31E44  4B 44 5E 25 */	bl __ct__11dBgS_LinChkFv
lbl_80C31E48:
/* 80C31E48  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80C31E4C  60 00 00 08 */	ori r0, r0, 8
/* 80C31E50  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80C31E54:
/* 80C31E54  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80C31E58  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C31E5C  88 1C 04 99 */	lbz r0, 0x499(r28)
/* 80C31E60  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 80C31E64  2C 00 00 01 */	cmpwi r0, 1
/* 80C31E68  41 82 00 28 */	beq lbl_80C31E90
/* 80C31E6C  40 80 00 60 */	bge lbl_80C31ECC
/* 80C31E70  2C 00 00 00 */	cmpwi r0, 0
/* 80C31E74  40 80 00 08 */	bge lbl_80C31E7C
/* 80C31E78  48 00 00 54 */	b lbl_80C31ECC
lbl_80C31E7C:
/* 80C31E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80C31E80  41 82 00 08 */	beq lbl_80C31E88
/* 80C31E84  48 00 00 48 */	b lbl_80C31ECC
lbl_80C31E88:
/* 80C31E88  38 00 00 00 */	li r0, 0
/* 80C31E8C  48 00 00 44 */	b lbl_80C31ED0
lbl_80C31E90:
/* 80C31E90  2C 03 00 01 */	cmpwi r3, 1
/* 80C31E94  41 82 00 28 */	beq lbl_80C31EBC
/* 80C31E98  40 80 00 10 */	bge lbl_80C31EA8
/* 80C31E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C31EA0  40 80 00 14 */	bge lbl_80C31EB4
/* 80C31EA4  48 00 00 28 */	b lbl_80C31ECC
lbl_80C31EA8:
/* 80C31EA8  2C 03 00 03 */	cmpwi r3, 3
/* 80C31EAC  40 80 00 20 */	bge lbl_80C31ECC
/* 80C31EB0  48 00 00 14 */	b lbl_80C31EC4
lbl_80C31EB4:
/* 80C31EB4  38 00 00 01 */	li r0, 1
/* 80C31EB8  48 00 00 18 */	b lbl_80C31ED0
lbl_80C31EBC:
/* 80C31EBC  38 00 00 02 */	li r0, 2
/* 80C31EC0  48 00 00 10 */	b lbl_80C31ED0
lbl_80C31EC4:
/* 80C31EC4  38 00 00 03 */	li r0, 3
/* 80C31EC8  48 00 00 08 */	b lbl_80C31ED0
lbl_80C31ECC:
/* 80C31ECC  38 00 00 04 */	li r0, 4
lbl_80C31ED0:
/* 80C31ED0  98 1C 0B 10 */	stb r0, 0xb10(r28)
/* 80C31ED4  38 7C 05 6C */	addi r3, r28, 0x56c
/* 80C31ED8  38 9E 00 20 */	addi r4, r30, 0x20
/* 80C31EDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80C31EE0  54 00 10 3A */	slwi r0, r0, 2
/* 80C31EE4  38 9E 00 30 */	addi r4, r30, 0x30
/* 80C31EE8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C31EEC  4B 3F AF D1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C31EF0  7C 7D 1B 78 */	mr r29, r3
/* 80C31EF4  2C 1D 00 04 */	cmpwi r29, 4
/* 80C31EF8  40 82 01 E8 */	bne lbl_80C320E0
/* 80C31EFC  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C31F00  28 00 00 00 */	cmplwi r0, 0
/* 80C31F04  40 82 00 1C */	bne lbl_80C31F20
/* 80C31F08  7F 83 E3 78 */	mr r3, r28
/* 80C31F0C  48 00 15 05 */	bl isDelete__12daObj_Kago_cFv
/* 80C31F10  2C 03 00 00 */	cmpwi r3, 0
/* 80C31F14  41 82 00 0C */	beq lbl_80C31F20
/* 80C31F18  38 60 00 05 */	li r3, 5
/* 80C31F1C  48 00 01 C8 */	b lbl_80C320E4
lbl_80C31F20:
/* 80C31F20  7F 83 E3 78 */	mr r3, r28
/* 80C31F24  3C 80 80 C3 */	lis r4, createHeapCallBack__12daObj_Kago_cFP10fopAc_ac_c@ha /* 0x80C333F0@ha */
/* 80C31F28  38 84 33 F0 */	addi r4, r4, createHeapCallBack__12daObj_Kago_cFP10fopAc_ac_c@l /* 0x80C333F0@l */
/* 80C31F2C  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C31F30  54 00 10 3A */	slwi r0, r0, 2
/* 80C31F34  38 BF 00 5C */	addi r5, r31, 0x5c
/* 80C31F38  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C31F3C  4B 3E 85 75 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C31F40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C31F44  40 82 00 0C */	bne lbl_80C31F50
/* 80C31F48  38 60 00 05 */	li r3, 5
/* 80C31F4C  48 00 01 98 */	b lbl_80C320E4
lbl_80C31F50:
/* 80C31F50  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C31F54  38 03 00 24 */	addi r0, r3, 0x24
/* 80C31F58  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80C31F5C  7F 83 E3 78 */	mr r3, r28
/* 80C31F60  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C31F64  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80C31F68  FC 60 08 90 */	fmr f3, f1
/* 80C31F6C  C0 9F 00 78 */	lfs f4, 0x78(r31)
/* 80C31F70  FC A0 20 90 */	fmr f5, f4
/* 80C31F74  FC C0 20 90 */	fmr f6, f4
/* 80C31F78  4B 3E 85 D1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C31F7C  7F 83 E3 78 */	mr r3, r28
/* 80C31F80  48 00 15 D5 */	bl reset__12daObj_Kago_cFv
/* 80C31F84  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C31F88  28 00 00 00 */	cmplwi r0, 0
/* 80C31F8C  40 82 00 14 */	bne lbl_80C31FA0
/* 80C31F90  7F 83 E3 78 */	mr r3, r28
/* 80C31F94  48 00 18 1D */	bl setGoalPosAndAngle__12daObj_Kago_cFv
/* 80C31F98  38 00 00 01 */	li r0, 1
/* 80C31F9C  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_80C31FA0:
/* 80C31FA0  38 7C 07 8C */	addi r3, r28, 0x78c
/* 80C31FA4  38 9F 00 00 */	addi r4, r31, 0
/* 80C31FA8  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80C31FAC  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80C31FB0  4B 44 3F A9 */	bl SetWall__12dBgS_AcchCirFff
/* 80C31FB4  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80C31FB8  90 01 00 08 */	stw r0, 8(r1)
/* 80C31FBC  38 7C 05 78 */	addi r3, r28, 0x578
/* 80C31FC0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C31FC4  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80C31FC8  7F 86 E3 78 */	mr r6, r28
/* 80C31FCC  38 E0 00 01 */	li r7, 1
/* 80C31FD0  39 1C 07 8C */	addi r8, r28, 0x78c
/* 80C31FD4  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80C31FD8  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80C31FDC  4B 44 42 6D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C31FE0  38 7C 07 50 */	addi r3, r28, 0x750
/* 80C31FE4  38 9F 00 00 */	addi r4, r31, 0
/* 80C31FE8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80C31FEC  FC 00 00 1E */	fctiwz f0, f0
/* 80C31FF0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C31FF4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C31FF8  38 A0 00 00 */	li r5, 0
/* 80C31FFC  7F 86 E3 78 */	mr r6, r28
/* 80C32000  4B 45 18 61 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C32004  38 7C 08 08 */	addi r3, r28, 0x808
/* 80C32008  38 9E 00 38 */	addi r4, r30, 0x38
/* 80C3200C  4B 45 28 A9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C32010  38 1C 07 50 */	addi r0, r28, 0x750
/* 80C32014  90 1C 08 4C */	stw r0, 0x84c(r28)
/* 80C32018  38 7C 09 44 */	addi r3, r28, 0x944
/* 80C3201C  38 9E 00 38 */	addi r4, r30, 0x38
/* 80C32020  4B 45 28 95 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C32024  38 1C 07 50 */	addi r0, r28, 0x750
/* 80C32028  90 1C 09 88 */	stw r0, 0x988(r28)
/* 80C3202C  38 7C 05 78 */	addi r3, r28, 0x578
/* 80C32030  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C32034  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C32038  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C3203C  4B 44 4A 71 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C32040  80 1C 06 54 */	lwz r0, 0x654(r28)
/* 80C32044  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 80C32048  80 1C 06 58 */	lwz r0, 0x658(r28)
/* 80C3204C  90 1C 07 D0 */	stw r0, 0x7d0(r28)
/* 80C32050  80 1C 06 5C */	lwz r0, 0x65c(r28)
/* 80C32054  90 1C 07 D4 */	stw r0, 0x7d4(r28)
/* 80C32058  88 1C 06 60 */	lbz r0, 0x660(r28)
/* 80C3205C  98 1C 07 D8 */	stb r0, 0x7d8(r28)
/* 80C32060  A0 1C 06 68 */	lhz r0, 0x668(r28)
/* 80C32064  B0 1C 07 E0 */	sth r0, 0x7e0(r28)
/* 80C32068  A0 1C 06 6A */	lhz r0, 0x66a(r28)
/* 80C3206C  B0 1C 07 E2 */	sth r0, 0x7e2(r28)
/* 80C32070  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 80C32074  90 1C 07 E4 */	stw r0, 0x7e4(r28)
/* 80C32078  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 80C3207C  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 80C32080  C0 1C 06 78 */	lfs f0, 0x678(r28)
/* 80C32084  D0 1C 07 F0 */	stfs f0, 0x7f0(r28)
/* 80C32088  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80C3208C  D0 1C 07 F4 */	stfs f0, 0x7f4(r28)
/* 80C32090  C0 1C 06 80 */	lfs f0, 0x680(r28)
/* 80C32094  D0 1C 07 F8 */	stfs f0, 0x7f8(r28)
/* 80C32098  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80C3209C  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 80C320A0  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 80C320A4  D0 1C 08 00 */	stfs f0, 0x800(r28)
/* 80C320A8  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80C320AC  90 1C 08 04 */	stw r0, 0x804(r28)
/* 80C320B0  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 80C320B4  D0 1C 0B 54 */	stfs f0, 0xb54(r28)
/* 80C320B8  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C320BC  C0 1C 0B 54 */	lfs f0, 0xb54(r28)
/* 80C320C0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C320C4  41 82 00 14 */	beq lbl_80C320D8
/* 80C320C8  7F 83 E3 78 */	mr r3, r28
/* 80C320CC  48 00 13 E9 */	bl setEnvTevColor__12daObj_Kago_cFv
/* 80C320D0  7F 83 E3 78 */	mr r3, r28
/* 80C320D4  48 00 14 3D */	bl setRoomNo__12daObj_Kago_cFv
lbl_80C320D8:
/* 80C320D8  7F 83 E3 78 */	mr r3, r28
/* 80C320DC  48 00 04 09 */	bl Execute__12daObj_Kago_cFv
lbl_80C320E0:
/* 80C320E0  7F A3 EB 78 */	mr r3, r29
lbl_80C320E4:
/* 80C320E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C320E8  4B 73 01 39 */	bl _restgpr_27
/* 80C320EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C320F0  7C 08 03 A6 */	mtlr r0
/* 80C320F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80C320F8  4E 80 00 20 */	blr 
