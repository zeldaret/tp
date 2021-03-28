lbl_806C4CC4:
/* 806C4CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C4CC8  7C 08 02 A6 */	mflr r0
/* 806C4CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C4CD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C4CD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C4CD8  7C 7E 1B 78 */	mr r30, r3
/* 806C4CDC  4B FF FD D9 */	bl damage_check2__FP10e_gb_class
/* 806C4CE0  3B E0 00 01 */	li r31, 1
/* 806C4CE4  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 806C4CE8  2C 00 00 03 */	cmpwi r0, 3
/* 806C4CEC  41 82 00 38 */	beq lbl_806C4D24
/* 806C4CF0  40 80 00 1C */	bge lbl_806C4D0C
/* 806C4CF4  2C 00 00 01 */	cmpwi r0, 1
/* 806C4CF8  41 82 00 58 */	beq lbl_806C4D50
/* 806C4CFC  40 80 00 38 */	bge lbl_806C4D34
/* 806C4D00  2C 00 00 00 */	cmpwi r0, 0
/* 806C4D04  40 80 00 14 */	bge lbl_806C4D18
/* 806C4D08  48 00 00 48 */	b lbl_806C4D50
lbl_806C4D0C:
/* 806C4D0C  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C4D10  41 82 00 34 */	beq lbl_806C4D44
/* 806C4D14  48 00 00 3C */	b lbl_806C4D50
lbl_806C4D18:
/* 806C4D18  7F C3 F3 78 */	mr r3, r30
/* 806C4D1C  4B FF F7 DD */	bl e_gf_wait__FP10e_gb_class
/* 806C4D20  48 00 00 30 */	b lbl_806C4D50
lbl_806C4D24:
/* 806C4D24  7F C3 F3 78 */	mr r3, r30
/* 806C4D28  4B FF F7 F5 */	bl e_gf_chance__FP10e_gb_class
/* 806C4D2C  3B E0 00 00 */	li r31, 0
/* 806C4D30  48 00 00 20 */	b lbl_806C4D50
lbl_806C4D34:
/* 806C4D34  7F C3 F3 78 */	mr r3, r30
/* 806C4D38  4B FF F9 51 */	bl e_gf_eatbomb__FP10e_gb_class
/* 806C4D3C  3B E0 00 00 */	li r31, 0
/* 806C4D40  48 00 00 10 */	b lbl_806C4D50
lbl_806C4D44:
/* 806C4D44  7F C3 F3 78 */	mr r3, r30
/* 806C4D48  4B FF FB A5 */	bl e_gf_end__FP10e_gb_class
/* 806C4D4C  3B E0 00 00 */	li r31, 0
lbl_806C4D50:
/* 806C4D50  7F E0 07 75 */	extsb. r0, r31
/* 806C4D54  41 82 00 1C */	beq lbl_806C4D70
/* 806C4D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C4D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806C4D60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806C4D64  80 03 05 88 */	lwz r0, 0x588(r3)
/* 806C4D68  64 00 02 00 */	oris r0, r0, 0x200
/* 806C4D6C  90 03 05 88 */	stw r0, 0x588(r3)
lbl_806C4D70:
/* 806C4D70  88 1E 09 55 */	lbz r0, 0x955(r30)
/* 806C4D74  7C 00 07 75 */	extsb. r0, r0
/* 806C4D78  41 82 00 98 */	beq lbl_806C4E10
/* 806C4D7C  38 00 02 19 */	li r0, 0x219
/* 806C4D80  B0 01 00 08 */	sth r0, 8(r1)
/* 806C4D84  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 806C4D88  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 806C4D8C  38 81 00 08 */	addi r4, r1, 8
/* 806C4D90  4B 95 4A 68 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806C4D94  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C4D98  41 82 00 78 */	beq lbl_806C4E10
/* 806C4D9C  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 806C4DA0  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 806C4DA4  C0 1E 06 78 */	lfs f0, 0x678(r30)
/* 806C4DA8  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 806C4DAC  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 806C4DB0  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 806C4DB4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806C4DB8  7C 03 07 74 */	extsb r3, r0
/* 806C4DBC  4B 96 82 B0 */	b dComIfGp_getReverb__Fi
/* 806C4DC0  7C 67 1B 78 */	mr r7, r3
/* 806C4DC4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C5@ha */
/* 806C4DC8  38 03 00 C5 */	addi r0, r3, 0x00C5 /* 0x000800C5@l */
/* 806C4DCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C4DD0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806C4DD4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806C4DD8  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4DDC  38 81 00 0C */	addi r4, r1, 0xc
/* 806C4DE0  38 BF 09 78 */	addi r5, r31, 0x978
/* 806C4DE4  38 C0 00 00 */	li r6, 0
/* 806C4DE8  3D 00 80 6C */	lis r8, lit_3908@ha
/* 806C4DEC  C0 28 74 F0 */	lfs f1, lit_3908@l(r8)
/* 806C4DF0  FC 40 08 90 */	fmr f2, f1
/* 806C4DF4  3D 00 80 6C */	lis r8, lit_3941@ha
/* 806C4DF8  C0 68 75 18 */	lfs f3, lit_3941@l(r8)
/* 806C4DFC  FC 80 18 90 */	fmr f4, f3
/* 806C4E00  39 00 00 00 */	li r8, 0
/* 806C4E04  4B BE 77 08 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806C4E08  38 00 00 01 */	li r0, 1
/* 806C4E0C  98 1F 09 84 */	stb r0, 0x984(r31)
lbl_806C4E10:
/* 806C4E10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C4E14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C4E18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C4E1C  7C 08 03 A6 */	mtlr r0
/* 806C4E20  38 21 00 20 */	addi r1, r1, 0x20
/* 806C4E24  4E 80 00 20 */	blr 
