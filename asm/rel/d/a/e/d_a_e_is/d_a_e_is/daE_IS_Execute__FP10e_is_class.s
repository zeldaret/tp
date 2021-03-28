lbl_806F6E58:
/* 806F6E58  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806F6E5C  7C 08 02 A6 */	mflr r0
/* 806F6E60  90 01 00 54 */	stw r0, 0x54(r1)
/* 806F6E64  39 61 00 50 */	addi r11, r1, 0x50
/* 806F6E68  4B C6 B3 70 */	b _savegpr_28
/* 806F6E6C  7C 7C 1B 78 */	mr r28, r3
/* 806F6E70  3C 60 80 6F */	lis r3, lit_3648@ha
/* 806F6E74  3B E3 7B 6C */	addi r31, r3, lit_3648@l
/* 806F6E78  A8 7C 06 90 */	lha r3, 0x690(r28)
/* 806F6E7C  38 03 00 01 */	addi r0, r3, 1
/* 806F6E80  B0 1C 06 90 */	sth r0, 0x690(r28)
/* 806F6E84  38 60 00 00 */	li r3, 0
/* 806F6E88  38 00 00 04 */	li r0, 4
/* 806F6E8C  7C 09 03 A6 */	mtctr r0
lbl_806F6E90:
/* 806F6E90  38 A3 06 B0 */	addi r5, r3, 0x6b0
/* 806F6E94  7C 9C 2A AE */	lhax r4, r28, r5
/* 806F6E98  2C 04 00 00 */	cmpwi r4, 0
/* 806F6E9C  41 82 00 0C */	beq lbl_806F6EA8
/* 806F6EA0  38 04 FF FF */	addi r0, r4, -1
/* 806F6EA4  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_806F6EA8:
/* 806F6EA8  38 63 00 02 */	addi r3, r3, 2
/* 806F6EAC  42 00 FF E4 */	bdnz lbl_806F6E90
/* 806F6EB0  A8 7C 06 B8 */	lha r3, 0x6b8(r28)
/* 806F6EB4  2C 03 00 00 */	cmpwi r3, 0
/* 806F6EB8  41 82 00 0C */	beq lbl_806F6EC4
/* 806F6EBC  38 03 FF FF */	addi r0, r3, -1
/* 806F6EC0  B0 1C 06 B8 */	sth r0, 0x6b8(r28)
lbl_806F6EC4:
/* 806F6EC4  A8 7C 06 BA */	lha r3, 0x6ba(r28)
/* 806F6EC8  2C 03 00 00 */	cmpwi r3, 0
/* 806F6ECC  41 82 00 0C */	beq lbl_806F6ED8
/* 806F6ED0  38 03 FF FF */	addi r0, r3, -1
/* 806F6ED4  B0 1C 06 BA */	sth r0, 0x6ba(r28)
lbl_806F6ED8:
/* 806F6ED8  38 7C 06 7C */	addi r3, r28, 0x67c
/* 806F6EDC  C0 3C 06 78 */	lfs f1, 0x678(r28)
/* 806F6EE0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6EE4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 806F6EE8  4B B7 8B 54 */	b cLib_addCalc2__FPffff
/* 806F6EEC  38 7C 06 84 */	addi r3, r28, 0x684
/* 806F6EF0  C0 3C 06 80 */	lfs f1, 0x680(r28)
/* 806F6EF4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6EF8  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 806F6EFC  4B B7 8B 40 */	b cLib_addCalc2__FPffff
/* 806F6F00  7F 83 E3 78 */	mr r3, r28
/* 806F6F04  4B FF FC 79 */	bl action__FP10e_is_class
/* 806F6F08  7F 83 E3 78 */	mr r3, r28
/* 806F6F0C  4B FF F0 31 */	bl damage_check__FP10e_is_class
/* 806F6F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806F6F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806F6F18  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 806F6F1C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 806F6F20  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 806F6F24  4B C4 F9 C4 */	b PSMTXTrans
/* 806F6F28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806F6F2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806F6F30  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 806F6F34  4B 91 55 00 */	b mDoMtx_YrotM__FPA4_fs
/* 806F6F38  3C 60 80 6F */	lis r3, l_HIO@ha
/* 806F6F3C  38 63 7D E0 */	addi r3, r3, l_HIO@l
/* 806F6F40  C0 23 00 08 */	lfs f1, 8(r3)
/* 806F6F44  FC 40 08 90 */	fmr f2, f1
/* 806F6F48  FC 60 08 90 */	fmr f3, f1
/* 806F6F4C  4B 91 5E EC */	b scaleM__14mDoMtx_stack_cFfff
/* 806F6F50  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806F6F54  83 C3 00 04 */	lwz r30, 4(r3)
/* 806F6F58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806F6F5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806F6F60  38 9E 00 24 */	addi r4, r30, 0x24
/* 806F6F64  4B C4 F5 4C */	b PSMTXCopy
/* 806F6F68  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806F6F6C  7C 03 07 74 */	extsb r3, r0
/* 806F6F70  4B 93 60 FC */	b dComIfGp_getReverb__Fi
/* 806F6F74  7C 65 1B 78 */	mr r5, r3
/* 806F6F78  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806F6F7C  38 80 00 00 */	li r4, 0
/* 806F6F80  4B 91 A1 30 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806F6F84  7F 83 E3 78 */	mr r3, r28
/* 806F6F88  4B FF FE 09 */	bl anm_se_set__FP10e_is_class
/* 806F6F8C  80 7C 05 C8 */	lwz r3, 0x5c8(r28)
/* 806F6F90  4B 91 A2 5C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 806F6F94  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 806F6F98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806F6F9C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 806F6FA0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806F6FA4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 806F6FA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806F6FAC  88 1C 06 BC */	lbz r0, 0x6bc(r28)
/* 806F6FB0  7C 00 07 75 */	extsb. r0, r0
/* 806F6FB4  41 82 00 64 */	beq lbl_806F7018
/* 806F6FB8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806F6FBC  EC 01 00 2A */	fadds f0, f1, f0
/* 806F6FC0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806F6FC4  38 7C 0C AC */	addi r3, r28, 0xcac
/* 806F6FC8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806F6FCC  4B B7 82 34 */	b SetR__8cM3dGCylFf
/* 806F6FD0  7F 83 E3 78 */	mr r3, r28
/* 806F6FD4  38 80 40 00 */	li r4, 0x4000
/* 806F6FD8  4B 92 60 00 */	b fopAcM_plAngleCheck__FPC10fopAc_ac_cs
/* 806F6FDC  2C 03 00 00 */	cmpwi r3, 0
/* 806F6FE0  41 82 00 20 */	beq lbl_806F7000
/* 806F6FE4  A8 1C 06 BA */	lha r0, 0x6ba(r28)
/* 806F6FE8  2C 00 00 00 */	cmpwi r0, 0
/* 806F6FEC  40 82 00 14 */	bne lbl_806F7000
/* 806F6FF0  80 1C 0B A0 */	lwz r0, 0xba0(r28)
/* 806F6FF4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806F6FF8  90 1C 0B A0 */	stw r0, 0xba0(r28)
/* 806F6FFC  48 00 00 28 */	b lbl_806F7024
lbl_806F7000:
/* 806F7000  80 1C 0B A0 */	lwz r0, 0xba0(r28)
/* 806F7004  60 00 00 01 */	ori r0, r0, 1
/* 806F7008  90 1C 0B A0 */	stw r0, 0xba0(r28)
/* 806F700C  38 00 00 01 */	li r0, 1
/* 806F7010  B0 1C 06 BA */	sth r0, 0x6ba(r28)
/* 806F7014  48 00 00 10 */	b lbl_806F7024
lbl_806F7018:
/* 806F7018  38 7C 0C AC */	addi r3, r28, 0xcac
/* 806F701C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806F7020  4B B7 81 E0 */	b SetR__8cM3dGCylFf
lbl_806F7024:
/* 806F7024  A8 1C 06 B8 */	lha r0, 0x6b8(r28)
/* 806F7028  2C 00 00 00 */	cmpwi r0, 0
/* 806F702C  41 82 00 14 */	beq lbl_806F7040
/* 806F7030  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 806F7034  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806F7038  EC 01 00 2A */	fadds f0, f1, f0
/* 806F703C  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_806F7040:
/* 806F7040  38 7C 0C AC */	addi r3, r28, 0xcac
/* 806F7044  38 81 00 20 */	addi r4, r1, 0x20
/* 806F7048  4B B7 81 94 */	b SetC__8cM3dGCylFRC4cXyz
/* 806F704C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806F7050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806F7054  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806F7058  7F A3 EB 78 */	mr r3, r29
/* 806F705C  38 9C 0B 88 */	addi r4, r28, 0xb88
/* 806F7060  4B B6 DB 48 */	b Set__4cCcSFP8cCcD_Obj
/* 806F7064  88 1C 06 88 */	lbz r0, 0x688(r28)
/* 806F7068  7C 00 07 75 */	extsb. r0, r0
/* 806F706C  41 82 00 7C */	beq lbl_806F70E8
/* 806F7070  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806F7074  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F7078  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806F707C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806F7080  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806F7084  80 84 00 00 */	lwz r4, 0(r4)
/* 806F7088  4B C4 F4 28 */	b PSMTXCopy
/* 806F708C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F7090  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F7094  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806F7098  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F709C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F70A0  38 81 00 20 */	addi r4, r1, 0x20
/* 806F70A4  4B B7 9E 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 806F70A8  88 1C 06 88 */	lbz r0, 0x688(r28)
/* 806F70AC  2C 00 00 01 */	cmpwi r0, 1
/* 806F70B0  40 82 00 14 */	bne lbl_806F70C4
/* 806F70B4  38 7C 09 18 */	addi r3, r28, 0x918
/* 806F70B8  38 81 00 20 */	addi r4, r1, 0x20
/* 806F70BC  4B 98 D9 BC */	b StartCAt__8dCcD_SphFR4cXyz
/* 806F70C0  48 00 00 10 */	b lbl_806F70D0
lbl_806F70C4:
/* 806F70C4  38 7C 09 18 */	addi r3, r28, 0x918
/* 806F70C8  38 81 00 20 */	addi r4, r1, 0x20
/* 806F70CC  4B 98 D9 F8 */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_806F70D0:
/* 806F70D0  38 7C 0A 3C */	addi r3, r28, 0xa3c
/* 806F70D4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 806F70D8  4B B7 86 30 */	b SetR__8cM3dGSphFf
/* 806F70DC  38 00 00 00 */	li r0, 0
/* 806F70E0  98 1C 06 88 */	stb r0, 0x688(r28)
/* 806F70E4  48 00 00 38 */	b lbl_806F711C
lbl_806F70E8:
/* 806F70E8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806F70EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806F70F0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806F70F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806F70F8  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 806F70FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806F7100  38 61 00 08 */	addi r3, r1, 8
/* 806F7104  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806F7108  38 A1 00 14 */	addi r5, r1, 0x14
/* 806F710C  4B B6 F9 D8 */	b __pl__4cXyzCFRC3Vec
/* 806F7110  38 7C 0A 3C */	addi r3, r28, 0xa3c
/* 806F7114  38 81 00 08 */	addi r4, r1, 8
/* 806F7118  4B B7 85 30 */	b SetC__8cM3dGSphFRC4cXyz
lbl_806F711C:
/* 806F711C  7F A3 EB 78 */	mr r3, r29
/* 806F7120  38 9C 09 18 */	addi r4, r28, 0x918
/* 806F7124  4B B6 DA 84 */	b Set__4cCcSFP8cCcD_Obj
/* 806F7128  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806F712C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806F7130  38 63 00 60 */	addi r3, r3, 0x60
/* 806F7134  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806F7138  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806F713C  80 84 00 00 */	lwz r4, 0(r4)
/* 806F7140  4B C4 F3 70 */	b PSMTXCopy
/* 806F7144  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806F7148  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806F714C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806F7150  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806F7154  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F7158  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806F715C  38 61 00 2C */	addi r3, r1, 0x2c
/* 806F7160  38 81 00 20 */	addi r4, r1, 0x20
/* 806F7164  4B B7 9D 88 */	b MtxPosition__FP4cXyzP4cXyz
/* 806F7168  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806F716C  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 806F7170  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806F7174  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 806F7178  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806F717C  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 806F7180  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 806F7184  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 806F7188  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 806F718C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806F7190  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 806F7194  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 806F7198  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 806F719C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806F71A0  EC 01 00 2A */	fadds f0, f1, f0
/* 806F71A4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 806F71A8  A8 1C 06 BA */	lha r0, 0x6ba(r28)
/* 806F71AC  2C 00 00 00 */	cmpwi r0, 0
/* 806F71B0  41 82 00 14 */	beq lbl_806F71C4
/* 806F71B4  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806F71B8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 806F71BC  EC 01 00 2A */	fadds f0, f1, f0
/* 806F71C0  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_806F71C4:
/* 806F71C4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 806F71C8  38 81 00 20 */	addi r4, r1, 0x20
/* 806F71CC  4B B7 84 7C */	b SetC__8cM3dGSphFRC4cXyz
/* 806F71D0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 806F71D4  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806F71D8  4B B7 85 30 */	b SetR__8cM3dGSphFf
/* 806F71DC  7F A3 EB 78 */	mr r3, r29
/* 806F71E0  38 9C 0A 50 */	addi r4, r28, 0xa50
/* 806F71E4  4B B6 D9 C4 */	b Set__4cCcSFP8cCcD_Obj
/* 806F71E8  38 60 00 01 */	li r3, 1
/* 806F71EC  39 61 00 50 */	addi r11, r1, 0x50
/* 806F71F0  4B C6 B0 34 */	b _restgpr_28
/* 806F71F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806F71F8  7C 08 03 A6 */	mtlr r0
/* 806F71FC  38 21 00 50 */	addi r1, r1, 0x50
/* 806F7200  4E 80 00 20 */	blr 
