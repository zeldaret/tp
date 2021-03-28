lbl_80C78CB4:
/* 80C78CB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C78CB8  7C 08 02 A6 */	mflr r0
/* 80C78CBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C78CC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C78CC4  4B 6E 95 14 */	b _savegpr_28
/* 80C78CC8  7C 7C 1B 78 */	mr r28, r3
/* 80C78CCC  3C 60 80 C8 */	lis r3, lit_3651@ha
/* 80C78CD0  3B C3 99 E4 */	addi r30, r3, lit_3651@l
/* 80C78CD4  C0 3C 05 D4 */	lfs f1, 0x5d4(r28)
/* 80C78CD8  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C78CDC  3C 80 80 C8 */	lis r4, l_HIO@ha
/* 80C78CE0  38 84 9D 44 */	addi r4, r4, l_HIO@l
/* 80C78CE4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C78CE8  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C78CEC  4B 5F 7A 54 */	b cLib_chaseF__FPfff
/* 80C78CF0  7C 7F 1B 78 */	mr r31, r3
/* 80C78CF4  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C78CF8  38 9C 05 B0 */	addi r4, r28, 0x5b0
/* 80C78CFC  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80C78D00  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80C78D04  C0 7E 00 F0 */	lfs f3, 0xf0(r30)
/* 80C78D08  4B 5F 6D B0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C78D0C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C78D10  7C 03 07 74 */	extsb r3, r0
/* 80C78D14  4B 3B 43 58 */	b dComIfGp_getReverb__Fi
/* 80C78D18  7C 7D 1B 78 */	mr r29, r3
/* 80C78D1C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C78D20  4B 6E 93 8C */	b __cvt_fp2unsigned
/* 80C78D24  7C 66 1B 78 */	mr r6, r3
/* 80C78D28  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E1@ha */
/* 80C78D2C  38 03 01 E1 */	addi r0, r3, 0x01E1 /* 0x000801E1@l */
/* 80C78D30  90 01 00 08 */	stw r0, 8(r1)
/* 80C78D34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C78D38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C78D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C78D40  38 81 00 08 */	addi r4, r1, 8
/* 80C78D44  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80C78D48  7F A7 EB 78 */	mr r7, r29
/* 80C78D4C  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80C78D50  FC 40 08 90 */	fmr f2, f1
/* 80C78D54  C0 7E 00 F4 */	lfs f3, 0xf4(r30)
/* 80C78D58  FC 80 18 90 */	fmr f4, f3
/* 80C78D5C  39 00 00 00 */	li r8, 0
/* 80C78D60  4B 63 37 AC */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C78D64  2C 1F 00 01 */	cmpwi r31, 1
/* 80C78D68  41 82 00 18 */	beq lbl_80C78D80
/* 80C78D6C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C78D70  38 9C 05 B0 */	addi r4, r28, 0x5b0
/* 80C78D74  4B 5E E2 B8 */	b __eq__4cXyzCFRC3Vec
/* 80C78D78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C78D7C  41 82 00 0C */	beq lbl_80C78D88
lbl_80C78D80:
/* 80C78D80  7F 83 E3 78 */	mr r3, r28
/* 80C78D84  48 00 00 1D */	bl init_modeMove__12daTogeRoll_cFv
lbl_80C78D88:
/* 80C78D88  39 61 00 20 */	addi r11, r1, 0x20
/* 80C78D8C  4B 6E 94 98 */	b _restgpr_28
/* 80C78D90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C78D94  7C 08 03 A6 */	mtlr r0
/* 80C78D98  38 21 00 20 */	addi r1, r1, 0x20
/* 80C78D9C  4E 80 00 20 */	blr 
