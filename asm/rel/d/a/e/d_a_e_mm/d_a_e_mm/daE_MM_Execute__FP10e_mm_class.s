lbl_80721D44:
/* 80721D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80721D48  7C 08 02 A6 */	mflr r0
/* 80721D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80721D50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80721D54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80721D58  7C 7F 1B 78 */	mr r31, r3
/* 80721D5C  88 03 04 99 */	lbz r0, 0x499(r3)
/* 80721D60  2C 00 00 01 */	cmpwi r0, 1
/* 80721D64  40 82 00 54 */	bne lbl_80721DB8
/* 80721D68  3C 60 80 72 */	lis r3, l_HIO@ha
/* 80721D6C  3B C3 2E C0 */	addi r30, r3, l_HIO@l
/* 80721D70  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80721D74  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80721D78  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80721D7C  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80721D80  80 7F 06 68 */	lwz r3, 0x668(r31)
/* 80721D84  28 03 00 00 */	cmplwi r3, 0
/* 80721D88  41 82 00 30 */	beq lbl_80721DB8
/* 80721D8C  38 81 00 08 */	addi r4, r1, 8
/* 80721D90  4B 8F 7C 2C */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80721D94  2C 03 00 00 */	cmpwi r3, 0
/* 80721D98  41 82 00 20 */	beq lbl_80721DB8
/* 80721D9C  80 61 00 08 */	lwz r3, 8(r1)
/* 80721DA0  28 03 00 00 */	cmplwi r3, 0
/* 80721DA4  41 82 00 14 */	beq lbl_80721DB8
/* 80721DA8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80721DAC  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80721DB0  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80721DB4  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
lbl_80721DB8:
/* 80721DB8  A8 7F 06 6C */	lha r3, 0x66c(r31)
/* 80721DBC  38 03 00 01 */	addi r0, r3, 1
/* 80721DC0  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 80721DC4  38 60 00 00 */	li r3, 0
/* 80721DC8  38 00 00 04 */	li r0, 4
/* 80721DCC  7C 09 03 A6 */	mtctr r0
lbl_80721DD0:
/* 80721DD0  38 A3 06 9C */	addi r5, r3, 0x69c
/* 80721DD4  7C 9F 2A AE */	lhax r4, r31, r5
/* 80721DD8  2C 04 00 00 */	cmpwi r4, 0
/* 80721DDC  41 82 00 0C */	beq lbl_80721DE8
/* 80721DE0  38 04 FF FF */	addi r0, r4, -1
/* 80721DE4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80721DE8:
/* 80721DE8  38 63 00 02 */	addi r3, r3, 2
/* 80721DEC  42 00 FF E4 */	bdnz lbl_80721DD0
/* 80721DF0  A8 7F 06 A4 */	lha r3, 0x6a4(r31)
/* 80721DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80721DF8  41 82 00 0C */	beq lbl_80721E04
/* 80721DFC  38 03 FF FF */	addi r0, r3, -1
/* 80721E00  B0 1F 06 A4 */	sth r0, 0x6a4(r31)
lbl_80721E04:
/* 80721E04  7F E3 FB 78 */	mr r3, r31
/* 80721E08  4B FF F9 ED */	bl action__FP10e_mm_class
/* 80721E0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80721E10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80721E14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80721E18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80721E1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80721E20  4B C2 4A C8 */	b PSMTXTrans
/* 80721E24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80721E28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80721E2C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80721E30  4B 8E A6 04 */	b mDoMtx_YrotM__FPA4_fs
/* 80721E34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80721E38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80721E3C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80721E40  4B 8E A5 5C */	b mDoMtx_XrotM__FPA4_fs
/* 80721E44  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80721E48  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80721E4C  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80721E50  4B 8E AF E8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80721E54  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80721E58  80 83 00 04 */	lwz r4, 4(r3)
/* 80721E5C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80721E60  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80721E64  38 84 00 24 */	addi r4, r4, 0x24
/* 80721E68  4B C2 46 48 */	b PSMTXCopy
/* 80721E6C  3B C0 00 00 */	li r30, 0
/* 80721E70  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 80721E74  2C 00 00 01 */	cmpwi r0, 1
/* 80721E78  40 82 00 08 */	bne lbl_80721E80
/* 80721E7C  3B C0 00 03 */	li r30, 3
lbl_80721E80:
/* 80721E80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80721E84  7C 03 07 74 */	extsb r3, r0
/* 80721E88  4B 90 B1 E4 */	b dComIfGp_getReverb__Fi
/* 80721E8C  7C 65 1B 78 */	mr r5, r3
/* 80721E90  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80721E94  7F C4 F3 78 */	mr r4, r30
/* 80721E98  4B 8E F2 18 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80721E9C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80721EA0  4B 8E F3 4C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80721EA4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80721EA8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80721EAC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80721EB0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80721EB4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80721EB8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80721EBC  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 80721EC0  3C 60 80 72 */	lis r3, lit_3995@ha
/* 80721EC4  C0 63 2C A0 */	lfs f3, lit_3995@l(r3)
/* 80721EC8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80721ECC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80721ED0  EC 01 00 2A */	fadds f0, f1, f0
/* 80721ED4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80721ED8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80721EDC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80721EE0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80721EE4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80721EE8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80721EEC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80721EF0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80721EF4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80721EF8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80721EFC  EC 01 00 2A */	fadds f0, f1, f0
/* 80721F00  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80721F04  88 1F 06 72 */	lbz r0, 0x672(r31)
/* 80721F08  7C 00 07 75 */	extsb. r0, r0
/* 80721F0C  40 82 00 DC */	bne lbl_80721FE8
/* 80721F10  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 80721F14  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80721F18  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80721F1C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80721F20  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80721F24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80721F28  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80721F2C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80721F30  EC 01 00 2A */	fadds f0, f1, f0
/* 80721F34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80721F38  A8 1F 06 A4 */	lha r0, 0x6a4(r31)
/* 80721F3C  2C 00 00 00 */	cmpwi r0, 0
/* 80721F40  41 82 00 14 */	beq lbl_80721F54
/* 80721F44  3C 60 80 72 */	lis r3, lit_4701@ha
/* 80721F48  C0 03 2C E0 */	lfs f0, lit_4701@l(r3)
/* 80721F4C  EC 02 00 2A */	fadds f0, f2, f0
/* 80721F50  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80721F54:
/* 80721F54  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 80721F58  38 81 00 0C */	addi r4, r1, 0xc
/* 80721F5C  4B B4 D6 EC */	b SetC__8cM3dGSphFRC4cXyz
/* 80721F60  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 80721F64  3C 80 80 72 */	lis r4, lit_3995@ha
/* 80721F68  C0 24 2C A0 */	lfs f1, lit_3995@l(r4)
/* 80721F6C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80721F70  EC 21 00 32 */	fmuls f1, f1, f0
/* 80721F74  4B B4 D7 94 */	b SetR__8cM3dGSphFf
/* 80721F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80721F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80721F80  3B C3 23 3C */	addi r30, r3, 0x233c
/* 80721F84  7F C3 F3 78 */	mr r3, r30
/* 80721F88  38 9F 09 04 */	addi r4, r31, 0x904
/* 80721F8C  4B B4 2C 1C */	b Set__4cCcSFP8cCcD_Obj
/* 80721F90  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80721F94  38 81 00 0C */	addi r4, r1, 0xc
/* 80721F98  4B B4 D6 B0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80721F9C  38 7F 0B 60 */	addi r3, r31, 0xb60
/* 80721FA0  3C 80 80 72 */	lis r4, lit_3995@ha
/* 80721FA4  C0 24 2C A0 */	lfs f1, lit_3995@l(r4)
/* 80721FA8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80721FAC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80721FB0  4B B4 D7 58 */	b SetR__8cM3dGSphFf
/* 80721FB4  7F C3 F3 78 */	mr r3, r30
/* 80721FB8  38 9F 0A 3C */	addi r4, r31, 0xa3c
/* 80721FBC  4B B4 2B EC */	b Set__4cCcSFP8cCcD_Obj
/* 80721FC0  88 1F 0B 98 */	lbz r0, 0xb98(r31)
/* 80721FC4  7C 00 07 75 */	extsb. r0, r0
/* 80721FC8  41 82 00 14 */	beq lbl_80721FDC
/* 80721FCC  80 1F 09 04 */	lwz r0, 0x904(r31)
/* 80721FD0  60 00 00 01 */	ori r0, r0, 1
/* 80721FD4  90 1F 09 04 */	stw r0, 0x904(r31)
/* 80721FD8  48 00 00 10 */	b lbl_80721FE8
lbl_80721FDC:
/* 80721FDC  80 1F 09 04 */	lwz r0, 0x904(r31)
/* 80721FE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80721FE4  90 1F 09 04 */	stw r0, 0x904(r31)
lbl_80721FE8:
/* 80721FE8  38 60 00 01 */	li r3, 1
/* 80721FEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80721FF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80721FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80721FF8  7C 08 03 A6 */	mtlr r0
/* 80721FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80722000  4E 80 00 20 */	blr 
