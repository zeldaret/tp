lbl_809C6D48:
/* 809C6D48  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809C6D4C  7C 08 02 A6 */	mflr r0
/* 809C6D50  90 01 00 64 */	stw r0, 0x64(r1)
/* 809C6D54  39 61 00 60 */	addi r11, r1, 0x60
/* 809C6D58  4B 99 B4 84 */	b _savegpr_29
/* 809C6D5C  7C 7E 1B 78 */	mr r30, r3
/* 809C6D60  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha
/* 809C6D64  3B E4 9D 98 */	addi r31, r4, m__17daNpc_grA_Param_c@l
/* 809C6D68  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C6D6C  2C 00 00 02 */	cmpwi r0, 2
/* 809C6D70  41 82 00 74 */	beq lbl_809C6DE4
/* 809C6D74  40 80 06 6C */	bge lbl_809C73E0
/* 809C6D78  2C 00 00 00 */	cmpwi r0, 0
/* 809C6D7C  41 82 00 0C */	beq lbl_809C6D88
/* 809C6D80  48 00 06 60 */	b lbl_809C73E0
/* 809C6D84  48 00 06 5C */	b lbl_809C73E0
lbl_809C6D88:
/* 809C6D88  38 80 00 00 */	li r4, 0
/* 809C6D8C  38 A0 00 01 */	li r5, 1
/* 809C6D90  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C6D94  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809C6D98  7D 89 03 A6 */	mtctr r12
/* 809C6D9C  4E 80 04 21 */	bctrl 
/* 809C6DA0  7F C3 F3 78 */	mr r3, r30
/* 809C6DA4  38 80 00 05 */	li r4, 5
/* 809C6DA8  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C6DAC  38 A0 00 00 */	li r5, 0
/* 809C6DB0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C6DB4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6DB8  7D 89 03 A6 */	mtctr r12
/* 809C6DBC  4E 80 04 21 */	bctrl 
/* 809C6DC0  7F C3 F3 78 */	mr r3, r30
/* 809C6DC4  38 80 00 00 */	li r4, 0
/* 809C6DC8  4B FF C2 A9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C6DCC  38 00 00 00 */	li r0, 0
/* 809C6DD0  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809C6DD4  38 00 00 01 */	li r0, 1
/* 809C6DD8  98 1E 09 EA */	stb r0, 0x9ea(r30)
/* 809C6DDC  38 00 00 02 */	li r0, 2
/* 809C6DE0  B0 1E 14 72 */	sth r0, 0x1472(r30)
lbl_809C6DE4:
/* 809C6DE4  88 1E 14 89 */	lbz r0, 0x1489(r30)
/* 809C6DE8  28 00 00 00 */	cmplwi r0, 0
/* 809C6DEC  41 82 00 10 */	beq lbl_809C6DFC
/* 809C6DF0  88 1E 14 9E */	lbz r0, 0x149e(r30)
/* 809C6DF4  28 00 00 00 */	cmplwi r0, 0
/* 809C6DF8  40 82 02 4C */	bne lbl_809C7044
lbl_809C6DFC:
/* 809C6DFC  7F C3 F3 78 */	mr r3, r30
/* 809C6E00  4B FF A3 61 */	bl getMode1__11daNpc_grA_cFv
/* 809C6E04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C6E08  28 00 00 01 */	cmplwi r0, 1
/* 809C6E0C  40 82 00 E8 */	bne lbl_809C6EF4
/* 809C6E10  88 1E 14 9E */	lbz r0, 0x149e(r30)
/* 809C6E14  28 00 00 00 */	cmplwi r0, 0
/* 809C6E18  40 82 00 DC */	bne lbl_809C6EF4
/* 809C6E1C  3C 60 80 9C */	lis r3, s_sub__FPvPv@ha
/* 809C6E20  38 63 FA 88 */	addi r3, r3, s_sub__FPvPv@l
/* 809C6E24  7F C4 F3 78 */	mr r4, r30
/* 809C6E28  4B 65 A5 10 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C6E2C  7C 7D 1B 79 */	or. r29, r3, r3
/* 809C6E30  41 82 00 CC */	beq lbl_809C6EFC
/* 809C6E34  38 61 00 2C */	addi r3, r1, 0x2c
/* 809C6E38  7F A4 EB 78 */	mr r4, r29
/* 809C6E3C  48 00 2E D1 */	bl getGraPos__10daTagGra_cFv
/* 809C6E40  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809C6E44  D0 1E 14 A0 */	stfs f0, 0x14a0(r30)
/* 809C6E48  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 809C6E4C  D0 1E 14 A4 */	stfs f0, 0x14a4(r30)
/* 809C6E50  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809C6E54  D0 1E 14 A8 */	stfs f0, 0x14a8(r30)
/* 809C6E58  38 61 00 0C */	addi r3, r1, 0xc
/* 809C6E5C  7F A4 EB 78 */	mr r4, r29
/* 809C6E60  48 00 2E 99 */	bl getGraAngle__10daTagGra_cFv
/* 809C6E64  A8 01 00 0C */	lha r0, 0xc(r1)
/* 809C6E68  B0 1E 14 AC */	sth r0, 0x14ac(r30)
/* 809C6E6C  A8 01 00 0E */	lha r0, 0xe(r1)
/* 809C6E70  B0 1E 14 AE */	sth r0, 0x14ae(r30)
/* 809C6E74  A8 01 00 10 */	lha r0, 0x10(r1)
/* 809C6E78  B0 1E 14 B0 */	sth r0, 0x14b0(r30)
/* 809C6E7C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 809C6E80  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 809C6E84  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C6E88  D0 1E 14 B4 */	stfs f0, 0x14b4(r30)
/* 809C6E8C  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 809C6E90  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C6E94  D0 1E 14 B8 */	stfs f0, 0x14b8(r30)
/* 809C6E98  7F A3 EB 78 */	mr r3, r29
/* 809C6E9C  4B 65 2D E0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809C6EA0  38 00 00 01 */	li r0, 1
/* 809C6EA4  98 1E 14 9E */	stb r0, 0x149e(r30)
/* 809C6EA8  38 60 00 40 */	li r3, 0x40
/* 809C6EAC  4B 78 E7 88 */	b daNpcF_chkEvtBit__FUl
/* 809C6EB0  2C 03 00 00 */	cmpwi r3, 0
/* 809C6EB4  41 82 00 48 */	beq lbl_809C6EFC
/* 809C6EB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C6EBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C6EC0  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C6EC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C6EC8  7C 05 07 74 */	extsb r5, r0
/* 809C6ECC  4B 66 E4 94 */	b isSwitch__10dSv_info_cCFii
/* 809C6ED0  2C 03 00 00 */	cmpwi r3, 0
/* 809C6ED4  40 82 00 28 */	bne lbl_809C6EFC
/* 809C6ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C6EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C6EE0  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C6EE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C6EE8  7C 05 07 74 */	extsb r5, r0
/* 809C6EEC  4B 66 E3 14 */	b onSwitch__10dSv_info_cFii
/* 809C6EF0  48 00 00 0C */	b lbl_809C6EFC
lbl_809C6EF4:
/* 809C6EF4  38 00 00 01 */	li r0, 1
/* 809C6EF8  98 1E 14 9E */	stb r0, 0x149e(r30)
lbl_809C6EFC:
/* 809C6EFC  88 1E 14 9E */	lbz r0, 0x149e(r30)
/* 809C6F00  28 00 00 01 */	cmplwi r0, 1
/* 809C6F04  40 82 04 2C */	bne lbl_809C7330
/* 809C6F08  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 809C6F0C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809C6F10  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C6F14  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809C6F18  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809C6F1C  88 1E 14 CE */	lbz r0, 0x14ce(r30)
/* 809C6F20  28 00 00 00 */	cmplwi r0, 0
/* 809C6F24  40 82 00 0C */	bne lbl_809C6F30
/* 809C6F28  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 809C6F2C  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_809C6F30:
/* 809C6F30  38 7E 14 8C */	addi r3, r30, 0x148c
/* 809C6F34  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 809C6F38  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 809C6F3C  38 C1 00 44 */	addi r6, r1, 0x44
/* 809C6F40  4B 8A 9E 80 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 809C6F44  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 809C6F48  B0 1E 14 98 */	sth r0, 0x1498(r30)
/* 809C6F4C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 809C6F50  B0 1E 14 9A */	sth r0, 0x149a(r30)
/* 809C6F54  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 809C6F58  B0 1E 14 9C */	sth r0, 0x149c(r30)
/* 809C6F5C  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 809C6F60  D0 1E 14 BC */	stfs f0, 0x14bc(r30)
/* 809C6F64  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 809C6F68  D0 1E 14 C0 */	stfs f0, 0x14c0(r30)
/* 809C6F6C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 809C6F70  D0 1E 14 C4 */	stfs f0, 0x14c4(r30)
/* 809C6F74  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 809C6F78  B0 1E 14 C8 */	sth r0, 0x14c8(r30)
/* 809C6F7C  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 809C6F80  B0 1E 14 CA */	sth r0, 0x14ca(r30)
/* 809C6F84  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 809C6F88  B0 1E 14 CC */	sth r0, 0x14cc(r30)
/* 809C6F8C  38 00 00 01 */	li r0, 1
/* 809C6F90  98 1E 14 89 */	stb r0, 0x1489(r30)
/* 809C6F94  38 60 00 3E */	li r3, 0x3e
/* 809C6F98  4B 78 E6 9C */	b daNpcF_chkEvtBit__FUl
/* 809C6F9C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6FA0  41 82 00 68 */	beq lbl_809C7008
/* 809C6FA4  7F C3 F3 78 */	mr r3, r30
/* 809C6FA8  4B FF A1 B9 */	bl getMode1__11daNpc_grA_cFv
/* 809C6FAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C6FB0  28 00 00 01 */	cmplwi r0, 1
/* 809C6FB4  40 82 00 3C */	bne lbl_809C6FF0
/* 809C6FB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C6FBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C6FC0  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C6FC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C6FC8  7C 05 07 74 */	extsb r5, r0
/* 809C6FCC  4B 66 E3 94 */	b isSwitch__10dSv_info_cCFii
/* 809C6FD0  2C 03 00 00 */	cmpwi r3, 0
/* 809C6FD4  41 82 03 5C */	beq lbl_809C7330
/* 809C6FD8  7F C3 F3 78 */	mr r3, r30
/* 809C6FDC  4B FF 87 C9 */	bl setTagJump__11daNpc_grA_cFv
/* 809C6FE0  38 00 00 01 */	li r0, 1
/* 809C6FE4  98 1E 14 D0 */	stb r0, 0x14d0(r30)
/* 809C6FE8  98 1E 14 D1 */	stb r0, 0x14d1(r30)
/* 809C6FEC  48 00 03 44 */	b lbl_809C7330
lbl_809C6FF0:
/* 809C6FF0  7F C3 F3 78 */	mr r3, r30
/* 809C6FF4  4B FF 87 B1 */	bl setTagJump__11daNpc_grA_cFv
/* 809C6FF8  38 00 00 01 */	li r0, 1
/* 809C6FFC  98 1E 14 D0 */	stb r0, 0x14d0(r30)
/* 809C7000  98 1E 14 D1 */	stb r0, 0x14d1(r30)
/* 809C7004  48 00 03 2C */	b lbl_809C7330
lbl_809C7008:
/* 809C7008  38 60 00 3F */	li r3, 0x3f
/* 809C700C  4B 78 E6 28 */	b daNpcF_chkEvtBit__FUl
/* 809C7010  2C 03 00 00 */	cmpwi r3, 0
/* 809C7014  41 82 03 1C */	beq lbl_809C7330
/* 809C7018  7F C3 F3 78 */	mr r3, r30
/* 809C701C  4B FF A1 45 */	bl getMode1__11daNpc_grA_cFv
/* 809C7020  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C7024  28 00 00 01 */	cmplwi r0, 1
/* 809C7028  41 82 03 08 */	beq lbl_809C7330
/* 809C702C  7F C3 F3 78 */	mr r3, r30
/* 809C7030  4B FF 87 75 */	bl setTagJump__11daNpc_grA_cFv
/* 809C7034  38 00 00 01 */	li r0, 1
/* 809C7038  98 1E 14 D0 */	stb r0, 0x14d0(r30)
/* 809C703C  98 1E 14 D1 */	stb r0, 0x14d1(r30)
/* 809C7040  48 00 02 F0 */	b lbl_809C7330
lbl_809C7044:
/* 809C7044  7F C3 F3 78 */	mr r3, r30
/* 809C7048  4B FF A1 19 */	bl getMode1__11daNpc_grA_cFv
/* 809C704C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C7050  28 00 00 01 */	cmplwi r0, 1
/* 809C7054  40 82 01 7C */	bne lbl_809C71D0
/* 809C7058  38 60 00 3E */	li r3, 0x3e
/* 809C705C  4B 78 E5 D8 */	b daNpcF_chkEvtBit__FUl
/* 809C7060  2C 03 00 00 */	cmpwi r3, 0
/* 809C7064  41 82 01 6C */	beq lbl_809C71D0
/* 809C7068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C706C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C7070  88 9E 14 CF */	lbz r4, 0x14cf(r30)
/* 809C7074  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809C7078  7C 05 07 74 */	extsb r5, r0
/* 809C707C  4B 66 E2 E4 */	b isSwitch__10dSv_info_cCFii
/* 809C7080  2C 03 00 00 */	cmpwi r3, 0
/* 809C7084  40 82 01 4C */	bne lbl_809C71D0
/* 809C7088  38 61 00 20 */	addi r3, r1, 0x20
/* 809C708C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809C7090  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809C7094  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C7098  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 809C709C  38 BE 14 A0 */	addi r5, r30, 0x14a0
/* 809C70A0  4B 89 FA 94 */	b __mi__4cXyzCFRC3Vec
/* 809C70A4  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 809C70A8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 809C70AC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809C70B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809C70B4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 809C70B8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 809C70BC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 809C70C0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C70C4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809C70C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809C70CC  38 61 00 14 */	addi r3, r1, 0x14
/* 809C70D0  4B 98 00 68 */	b PSVECSquareMag
/* 809C70D4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 809C70D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C70DC  40 81 00 58 */	ble lbl_809C7134
/* 809C70E0  FC 00 08 34 */	frsqrte f0, f1
/* 809C70E4  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 809C70E8  FC 44 00 32 */	fmul f2, f4, f0
/* 809C70EC  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 809C70F0  FC 00 00 32 */	fmul f0, f0, f0
/* 809C70F4  FC 01 00 32 */	fmul f0, f1, f0
/* 809C70F8  FC 03 00 28 */	fsub f0, f3, f0
/* 809C70FC  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7100  FC 44 00 32 */	fmul f2, f4, f0
/* 809C7104  FC 00 00 32 */	fmul f0, f0, f0
/* 809C7108  FC 01 00 32 */	fmul f0, f1, f0
/* 809C710C  FC 03 00 28 */	fsub f0, f3, f0
/* 809C7110  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7114  FC 44 00 32 */	fmul f2, f4, f0
/* 809C7118  FC 00 00 32 */	fmul f0, f0, f0
/* 809C711C  FC 01 00 32 */	fmul f0, f1, f0
/* 809C7120  FC 03 00 28 */	fsub f0, f3, f0
/* 809C7124  FC 02 00 32 */	fmul f0, f2, f0
/* 809C7128  FC 21 00 32 */	fmul f1, f1, f0
/* 809C712C  FC 20 08 18 */	frsp f1, f1
/* 809C7130  48 00 00 88 */	b lbl_809C71B8
lbl_809C7134:
/* 809C7134  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 809C7138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C713C  40 80 00 10 */	bge lbl_809C714C
/* 809C7140  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809C7144  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809C7148  48 00 00 70 */	b lbl_809C71B8
lbl_809C714C:
/* 809C714C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809C7150  80 81 00 08 */	lwz r4, 8(r1)
/* 809C7154  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809C7158  3C 00 7F 80 */	lis r0, 0x7f80
/* 809C715C  7C 03 00 00 */	cmpw r3, r0
/* 809C7160  41 82 00 14 */	beq lbl_809C7174
/* 809C7164  40 80 00 40 */	bge lbl_809C71A4
/* 809C7168  2C 03 00 00 */	cmpwi r3, 0
/* 809C716C  41 82 00 20 */	beq lbl_809C718C
/* 809C7170  48 00 00 34 */	b lbl_809C71A4
lbl_809C7174:
/* 809C7174  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C7178  41 82 00 0C */	beq lbl_809C7184
/* 809C717C  38 00 00 01 */	li r0, 1
/* 809C7180  48 00 00 28 */	b lbl_809C71A8
lbl_809C7184:
/* 809C7184  38 00 00 02 */	li r0, 2
/* 809C7188  48 00 00 20 */	b lbl_809C71A8
lbl_809C718C:
/* 809C718C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809C7190  41 82 00 0C */	beq lbl_809C719C
/* 809C7194  38 00 00 05 */	li r0, 5
/* 809C7198  48 00 00 10 */	b lbl_809C71A8
lbl_809C719C:
/* 809C719C  38 00 00 03 */	li r0, 3
/* 809C71A0  48 00 00 08 */	b lbl_809C71A8
lbl_809C71A4:
/* 809C71A4  38 00 00 04 */	li r0, 4
lbl_809C71A8:
/* 809C71A8  2C 00 00 01 */	cmpwi r0, 1
/* 809C71AC  40 82 00 0C */	bne lbl_809C71B8
/* 809C71B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809C71B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809C71B8:
/* 809C71B8  C0 1E 14 B4 */	lfs f0, 0x14b4(r30)
/* 809C71BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C71C0  40 80 00 10 */	bge lbl_809C71D0
/* 809C71C4  38 00 00 02 */	li r0, 2
/* 809C71C8  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809C71CC  48 00 02 14 */	b lbl_809C73E0
lbl_809C71D0:
/* 809C71D0  88 1E 14 D1 */	lbz r0, 0x14d1(r30)
/* 809C71D4  28 00 00 00 */	cmplwi r0, 0
/* 809C71D8  40 82 01 58 */	bne lbl_809C7330
/* 809C71DC  88 1E 14 D0 */	lbz r0, 0x14d0(r30)
/* 809C71E0  28 00 00 01 */	cmplwi r0, 1
/* 809C71E4  40 82 01 4C */	bne lbl_809C7330
/* 809C71E8  A8 1E 09 E0 */	lha r0, 0x9e0(r30)
/* 809C71EC  2C 00 00 05 */	cmpwi r0, 5
/* 809C71F0  40 82 00 60 */	bne lbl_809C7250
/* 809C71F4  88 1E 14 CE */	lbz r0, 0x14ce(r30)
/* 809C71F8  28 00 00 00 */	cmplwi r0, 0
/* 809C71FC  40 82 00 28 */	bne lbl_809C7224
/* 809C7200  7F C3 F3 78 */	mr r3, r30
/* 809C7204  38 80 00 18 */	li r4, 0x18
/* 809C7208  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C720C  38 A0 00 00 */	li r5, 0
/* 809C7210  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7214  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C7218  7D 89 03 A6 */	mtctr r12
/* 809C721C  4E 80 04 21 */	bctrl 
/* 809C7220  48 00 00 24 */	b lbl_809C7244
lbl_809C7224:
/* 809C7224  7F C3 F3 78 */	mr r3, r30
/* 809C7228  38 80 00 17 */	li r4, 0x17
/* 809C722C  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C7230  38 A0 00 00 */	li r5, 0
/* 809C7234  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C7238  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C723C  7D 89 03 A6 */	mtctr r12
/* 809C7240  4E 80 04 21 */	bctrl 
lbl_809C7244:
/* 809C7244  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 809C7248  60 00 00 04 */	ori r0, r0, 4
/* 809C724C  90 1E 05 FC */	stw r0, 0x5fc(r30)
lbl_809C7250:
/* 809C7250  7F C3 F3 78 */	mr r3, r30
/* 809C7254  38 80 00 00 */	li r4, 0
/* 809C7258  4B FF BE 19 */	bl setLookMode__11daNpc_grA_cFi
/* 809C725C  80 1E 14 D8 */	lwz r0, 0x14d8(r30)
/* 809C7260  2C 00 00 17 */	cmpwi r0, 0x17
/* 809C7264  41 82 00 C4 */	beq lbl_809C7328
/* 809C7268  38 7E 04 DE */	addi r3, r30, 0x4de
/* 809C726C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809C7270  38 A0 04 00 */	li r5, 0x400
/* 809C7274  4B 8A 99 1C */	b cLib_chaseAngleS__FPsss
/* 809C7278  7F C3 F3 78 */	mr r3, r30
/* 809C727C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 809C7280  4B 78 CF D0 */	b setAngle__8daNpcF_cFs
/* 809C7284  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809C7288  38 9E 14 8C */	addi r4, r30, 0x148c
/* 809C728C  C0 3F 06 D4 */	lfs f1, 0x6d4(r31)
/* 809C7290  4B 8A 97 00 */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 809C7294  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809C7298  38 80 00 01 */	li r4, 1
/* 809C729C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809C72A0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C72A4  40 82 00 18 */	bne lbl_809C72BC
/* 809C72A8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 809C72AC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809C72B0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C72B4  41 82 00 08 */	beq lbl_809C72BC
/* 809C72B8  38 80 00 00 */	li r4, 0
lbl_809C72BC:
/* 809C72BC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 809C72C0  41 82 00 60 */	beq lbl_809C7320
/* 809C72C4  38 00 00 01 */	li r0, 1
/* 809C72C8  98 1E 14 D1 */	stb r0, 0x14d1(r30)
/* 809C72CC  7F C3 F3 78 */	mr r3, r30
/* 809C72D0  38 80 00 05 */	li r4, 5
/* 809C72D4  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 809C72D8  38 A0 00 00 */	li r5, 0
/* 809C72DC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 809C72E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C72E4  7D 89 03 A6 */	mtctr r12
/* 809C72E8  4E 80 04 21 */	bctrl 
/* 809C72EC  C0 1E 14 8C */	lfs f0, 0x148c(r30)
/* 809C72F0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 809C72F4  C0 1E 14 90 */	lfs f0, 0x1490(r30)
/* 809C72F8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 809C72FC  C0 1E 14 94 */	lfs f0, 0x1494(r30)
/* 809C7300  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 809C7304  A8 1E 14 98 */	lha r0, 0x1498(r30)
/* 809C7308  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 809C730C  A8 1E 14 9A */	lha r0, 0x149a(r30)
/* 809C7310  B0 1E 04 B6 */	sth r0, 0x4b6(r30)
/* 809C7314  A8 1E 14 9C */	lha r0, 0x149c(r30)
/* 809C7318  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 809C731C  48 00 00 14 */	b lbl_809C7330
lbl_809C7320:
/* 809C7320  38 60 00 01 */	li r3, 1
/* 809C7324  48 00 00 C0 */	b lbl_809C73E4
lbl_809C7328:
/* 809C7328  38 60 00 01 */	li r3, 1
/* 809C732C  48 00 00 B8 */	b lbl_809C73E4
lbl_809C7330:
/* 809C7330  80 1E 09 54 */	lwz r0, 0x954(r30)
/* 809C7334  2C 00 00 00 */	cmpwi r0, 0
/* 809C7338  40 82 00 A8 */	bne lbl_809C73E0
/* 809C733C  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809C7340  4B 78 93 AC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C7344  28 03 00 00 */	cmplwi r3, 0
/* 809C7348  41 82 00 20 */	beq lbl_809C7368
/* 809C734C  7F C3 F3 78 */	mr r3, r30
/* 809C7350  4B FF C0 D5 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7354  2C 03 00 00 */	cmpwi r3, 0
/* 809C7358  40 82 00 28 */	bne lbl_809C7380
/* 809C735C  38 00 00 00 */	li r0, 0
/* 809C7360  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809C7364  48 00 00 1C */	b lbl_809C7380
lbl_809C7368:
/* 809C7368  7F C3 F3 78 */	mr r3, r30
/* 809C736C  4B FF C0 B9 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C7370  2C 03 00 00 */	cmpwi r3, 0
/* 809C7374  41 82 00 0C */	beq lbl_809C7380
/* 809C7378  38 00 00 00 */	li r0, 0
/* 809C737C  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_809C7380:
/* 809C7380  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809C7384  4B 78 93 68 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C7388  28 03 00 00 */	cmplwi r3, 0
/* 809C738C  41 82 00 14 */	beq lbl_809C73A0
/* 809C7390  7F C3 F3 78 */	mr r3, r30
/* 809C7394  38 80 00 02 */	li r4, 2
/* 809C7398  4B FF BC D9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C739C  48 00 00 44 */	b lbl_809C73E0
lbl_809C73A0:
/* 809C73A0  7F C3 F3 78 */	mr r3, r30
/* 809C73A4  38 80 00 00 */	li r4, 0
/* 809C73A8  4B FF BC C9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C73AC  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809C73B0  A8 1E 08 F2 */	lha r0, 0x8f2(r30)
/* 809C73B4  7C 04 00 00 */	cmpw r4, r0
/* 809C73B8  41 82 00 28 */	beq lbl_809C73E0
/* 809C73BC  7F C3 F3 78 */	mr r3, r30
/* 809C73C0  38 A0 FF FF */	li r5, -1
/* 809C73C4  38 C0 FF FF */	li r6, -1
/* 809C73C8  38 E0 00 0F */	li r7, 0xf
/* 809C73CC  4B 78 CC D8 */	b step__8daNpcF_cFsiii
/* 809C73D0  2C 03 00 00 */	cmpwi r3, 0
/* 809C73D4  41 82 00 0C */	beq lbl_809C73E0
/* 809C73D8  38 00 00 00 */	li r0, 0
/* 809C73DC  B0 1E 14 72 */	sth r0, 0x1472(r30)
lbl_809C73E0:
/* 809C73E0  38 60 00 01 */	li r3, 1
lbl_809C73E4:
/* 809C73E4  39 61 00 60 */	addi r11, r1, 0x60
/* 809C73E8  4B 99 AE 40 */	b _restgpr_29
/* 809C73EC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809C73F0  7C 08 03 A6 */	mtlr r0
/* 809C73F4  38 21 00 60 */	addi r1, r1, 0x60
/* 809C73F8  4E 80 00 20 */	blr 
