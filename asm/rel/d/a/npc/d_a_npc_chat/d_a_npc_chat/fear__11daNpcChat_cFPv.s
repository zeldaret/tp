lbl_8098552C:
/* 8098552C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985530  7C 08 02 A6 */	mflr r0
/* 80985534  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985538  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098553C  93 C1 00 08 */	stw r30, 8(r1)
/* 80985540  7C 7F 1B 78 */	mr r31, r3
/* 80985544  3C 80 80 98 */	lis r4, l_resMANa@ha
/* 80985548  3B C4 69 9C */	addi r30, r4, l_resMANa@l
/* 8098554C  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80985550  2C 00 00 02 */	cmpwi r0, 2
/* 80985554  41 82 00 7C */	beq lbl_809855D0
/* 80985558  40 80 01 54 */	bge lbl_809856AC
/* 8098555C  2C 00 00 00 */	cmpwi r0, 0
/* 80985560  41 82 00 0C */	beq lbl_8098556C
/* 80985564  48 00 01 48 */	b lbl_809856AC
/* 80985568  48 00 01 44 */	b lbl_809856AC
lbl_8098556C:
/* 8098556C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80985570  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80985574  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80985578  4B 69 51 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8098557C  7C 64 1B 78 */	mr r4, r3
/* 80985580  7F E3 FB 78 */	mr r3, r31
/* 80985584  4B 7C EC CC */	b setAngle__8daNpcF_cFs
/* 80985588  7F E3 FB 78 */	mr r3, r31
/* 8098558C  38 80 00 26 */	li r4, 0x26
/* 80985590  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 80985594  38 A0 00 00 */	li r5, 0
/* 80985598  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 8098559C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809855A0  7D 89 03 A6 */	mtctr r12
/* 809855A4  4E 80 04 21 */	bctrl 
/* 809855A8  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 809855AC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809855B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809855B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809855B8  38 63 09 78 */	addi r3, r3, 0x978
/* 809855BC  38 80 00 3C */	li r4, 0x3c
/* 809855C0  4B 6A F5 D8 */	b onSwitch__12dSv_danBit_cFi
/* 809855C4  38 00 00 02 */	li r0, 2
/* 809855C8  B0 1F 0E 1E */	sth r0, 0xe1e(r31)
/* 809855CC  48 00 00 E0 */	b lbl_809856AC
lbl_809855D0:
/* 809855D0  88 1F 0E 4C */	lbz r0, 0xe4c(r31)
/* 809855D4  28 00 00 29 */	cmplwi r0, 0x29
/* 809855D8  40 82 00 78 */	bne lbl_80985650
/* 809855DC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809855E0  38 80 00 01 */	li r4, 1
/* 809855E4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 809855E8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809855EC  40 82 00 18 */	bne lbl_80985604
/* 809855F0  C0 3E 05 78 */	lfs f1, 0x578(r30)
/* 809855F4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 809855F8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809855FC  41 82 00 08 */	beq lbl_80985604
/* 80985600  38 80 00 00 */	li r4, 0
lbl_80985604:
/* 80985604  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80985608  41 82 00 A4 */	beq lbl_809856AC
/* 8098560C  7F E3 FB 78 */	mr r3, r31
/* 80985610  38 80 00 27 */	li r4, 0x27
/* 80985614  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 80985618  38 A0 00 00 */	li r5, 0
/* 8098561C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80985620  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985624  7D 89 03 A6 */	mtctr r12
/* 80985628  4E 80 04 21 */	bctrl 
/* 8098562C  7F E3 FB 78 */	mr r3, r31
/* 80985630  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80985634  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80985638  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8098563C  4B 69 50 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80985640  3C 63 00 01 */	addis r3, r3, 1
/* 80985644  38 03 80 00 */	addi r0, r3, -32768
/* 80985648  B0 1F 0E 4A */	sth r0, 0xe4a(r31)
/* 8098564C  48 00 00 60 */	b lbl_809856AC
lbl_80985650:
/* 80985650  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80985654  A8 9F 0E 4A */	lha r4, 0xe4a(r31)
/* 80985658  7C 00 20 00 */	cmpw r0, r4
/* 8098565C  41 82 00 20 */	beq lbl_8098567C
/* 80985660  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80985664  38 A0 00 03 */	li r5, 3
/* 80985668  38 C0 06 00 */	li r6, 0x600
/* 8098566C  4B 8E AF 9C */	b cLib_addCalcAngleS2__FPssss
/* 80985670  7F E3 FB 78 */	mr r3, r31
/* 80985674  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80985678  4B 7C EB D8 */	b setAngle__8daNpcF_cFs
lbl_8098567C:
/* 8098567C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80985680  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80985684  C0 1E 05 74 */	lfs f0, 0x574(r30)
/* 80985688  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8098568C  4C 41 13 82 */	cror 2, 1, 2
/* 80985690  40 82 00 1C */	bne lbl_809856AC
/* 80985694  C0 1E 0D A0 */	lfs f0, 0xda0(r30)
/* 80985698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8098569C  40 80 00 10 */	bge lbl_809856AC
/* 809856A0  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809856A4  38 80 00 02 */	li r4, 2
/* 809856A8  4B 93 B7 70 */	b playVoice__17Z2CreatureCitizenFi
lbl_809856AC:
/* 809856AC  38 60 00 01 */	li r3, 1
/* 809856B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809856B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809856B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809856BC  7C 08 03 A6 */	mtlr r0
/* 809856C0  38 21 00 10 */	addi r1, r1, 0x10
/* 809856C4  4E 80 00 20 */	blr 
