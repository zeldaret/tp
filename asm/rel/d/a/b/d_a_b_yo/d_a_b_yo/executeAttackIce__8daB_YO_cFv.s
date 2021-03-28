lbl_80634548:
/* 80634548  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8063454C  7C 08 02 A6 */	mflr r0
/* 80634550  90 01 00 44 */	stw r0, 0x44(r1)
/* 80634554  39 61 00 40 */	addi r11, r1, 0x40
/* 80634558  4B D2 DC 84 */	b _savegpr_29
/* 8063455C  7C 7E 1B 78 */	mr r30, r3
/* 80634560  3C 60 80 64 */	lis r3, lit_3788@ha
/* 80634564  3B E3 97 F4 */	addi r31, r3, lit_3788@l
/* 80634568  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070305@ha */
/* 8063456C  38 03 03 05 */	addi r0, r3, 0x0305 /* 0x00070305@l */
/* 80634570  90 01 00 08 */	stw r0, 8(r1)
/* 80634574  38 7E 06 34 */	addi r3, r30, 0x634
/* 80634578  38 81 00 08 */	addi r4, r1, 8
/* 8063457C  38 A0 00 00 */	li r5, 0
/* 80634580  38 C0 FF FF */	li r6, -1
/* 80634584  81 9E 06 34 */	lwz r12, 0x634(r30)
/* 80634588  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063458C  7D 89 03 A6 */	mtctr r12
/* 80634590  4E 80 04 21 */	bctrl 
/* 80634594  A8 7E 0F 5C */	lha r3, 0xf5c(r30)
/* 80634598  A8 1E 0F 5E */	lha r0, 0xf5e(r30)
/* 8063459C  7C 03 02 14 */	add r0, r3, r0
/* 806345A0  B0 1E 0F 5C */	sth r0, 0xf5c(r30)
/* 806345A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806345A8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806345AC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806345B0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806345B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806345B8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806345BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806345C0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806345C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806345C8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806345CC  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 806345D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806345D4  40 80 00 18 */	bge lbl_806345EC
/* 806345D8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806345DC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806345E0  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806345E4  4B C3 C1 5C */	b cLib_chaseF__FPfff
/* 806345E8  48 00 00 14 */	b lbl_806345FC
lbl_806345EC:
/* 806345EC  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 806345F0  C0 3F 01 B8 */	lfs f1, 0x1b8(r31)
/* 806345F4  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806345F8  4B C3 C1 48 */	b cLib_chaseF__FPfff
lbl_806345FC:
/* 806345FC  80 1E 0F 74 */	lwz r0, 0xf74(r30)
/* 80634600  2C 00 00 01 */	cmpwi r0, 1
/* 80634604  41 82 00 54 */	beq lbl_80634658
/* 80634608  40 80 01 4C */	bge lbl_80634754
/* 8063460C  2C 00 00 00 */	cmpwi r0, 0
/* 80634610  40 80 00 08 */	bge lbl_80634618
/* 80634614  48 00 01 40 */	b lbl_80634754
lbl_80634618:
/* 80634618  80 1E 18 2C */	lwz r0, 0x182c(r30)
/* 8063461C  60 00 00 01 */	ori r0, r0, 1
/* 80634620  90 1E 18 2C */	stw r0, 0x182c(r30)
/* 80634624  80 1E 19 64 */	lwz r0, 0x1964(r30)
/* 80634628  60 00 00 01 */	ori r0, r0, 1
/* 8063462C  90 1E 19 64 */	stw r0, 0x1964(r30)
/* 80634630  80 1E 1A 9C */	lwz r0, 0x1a9c(r30)
/* 80634634  60 00 00 01 */	ori r0, r0, 1
/* 80634638  90 1E 1A 9C */	stw r0, 0x1a9c(r30)
/* 8063463C  38 00 00 00 */	li r0, 0
/* 80634640  B0 1E 0F 6C */	sth r0, 0xf6c(r30)
/* 80634644  7F C3 F3 78 */	mr r3, r30
/* 80634648  38 80 00 00 */	li r4, 0
/* 8063464C  4B FF BB E1 */	bl setIcicleOperate__8daB_YO_cFi
/* 80634650  38 00 00 01 */	li r0, 1
/* 80634654  90 1E 0F 74 */	stw r0, 0xf74(r30)
lbl_80634658:
/* 80634658  7F C3 F3 78 */	mr r3, r30
/* 8063465C  4B FF BC 59 */	bl setIcicleSubNumber__8daB_YO_cFv
/* 80634660  38 7E 0F 5E */	addi r3, r30, 0xf5e
/* 80634664  38 80 00 00 */	li r4, 0
/* 80634668  38 A0 00 08 */	li r5, 8
/* 8063466C  4B C3 C5 24 */	b cLib_chaseAngleS__FPsss
/* 80634670  7F C3 F3 78 */	mr r3, r30
/* 80634674  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80634678  4B 9E 60 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063467C  7C 64 1B 78 */	mr r4, r3
/* 80634680  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80634684  38 A0 00 20 */	li r5, 0x20
/* 80634688  38 C0 00 40 */	li r6, 0x40
/* 8063468C  38 E0 00 04 */	li r7, 4
/* 80634690  4B C3 BE B0 */	b cLib_addCalcAngleS__FPsssss
/* 80634694  7F C3 F3 78 */	mr r3, r30
/* 80634698  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8063469C  4B FF DF C5 */	bl calcFreeMove__8daB_YO_cFf
/* 806346A0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806346A4  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 806346A8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806346AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806346B0  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 806346B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806346B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806346BC  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 806346C0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806346C4  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806346C8  4B C3 C0 78 */	b cLib_chaseF__FPfff
/* 806346CC  38 7E 0F 34 */	addi r3, r30, 0xf34
/* 806346D0  38 81 00 0C */	addi r4, r1, 0xc
/* 806346D4  C0 3E 0F 50 */	lfs f1, 0xf50(r30)
/* 806346D8  4B C3 C0 D4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806346DC  7F C3 F3 78 */	mr r3, r30
/* 806346E0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 806346E4  4B 9E 60 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806346E8  7C 64 1B 78 */	mr r4, r3
/* 806346EC  38 7E 04 DE */	addi r3, r30, 0x4de
/* 806346F0  38 A0 00 20 */	li r5, 0x20
/* 806346F4  38 C0 00 40 */	li r6, 0x40
/* 806346F8  38 E0 00 04 */	li r7, 4
/* 806346FC  4B C3 BE 44 */	b cLib_addCalcAngleS__FPsssss
/* 80634700  7F C3 F3 78 */	mr r3, r30
/* 80634704  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80634708  4B 9E 60 08 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063470C  7C 64 1B 78 */	mr r4, r3
/* 80634710  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80634714  38 A0 00 10 */	li r5, 0x10
/* 80634718  A8 DE 0F 82 */	lha r6, 0xf82(r30)
/* 8063471C  38 E0 00 10 */	li r7, 0x10
/* 80634720  4B C3 BE 20 */	b cLib_addCalcAngleS__FPsssss
/* 80634724  A0 7E 0F 6C */	lhz r3, 0xf6c(r30)
/* 80634728  A0 1E 0F 6E */	lhz r0, 0xf6e(r30)
/* 8063472C  7C 60 03 78 */	or r0, r3, r0
/* 80634730  2C 00 03 FF */	cmpwi r0, 0x3ff
/* 80634734  40 82 00 20 */	bne lbl_80634754
/* 80634738  7F C3 F3 78 */	mr r3, r30
/* 8063473C  38 80 00 05 */	li r4, 5
/* 80634740  38 A0 00 00 */	li r5, 0
/* 80634744  4B FF B6 C9 */	bl setActionMode__8daB_YO_cFii
/* 80634748  7F C3 F3 78 */	mr r3, r30
/* 8063474C  38 80 00 05 */	li r4, 5
/* 80634750  4B FF BA DD */	bl setIcicleOperate__8daB_YO_cFi
lbl_80634754:
/* 80634754  39 61 00 40 */	addi r11, r1, 0x40
/* 80634758  4B D2 DA D0 */	b _restgpr_29
/* 8063475C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80634760  7C 08 03 A6 */	mtlr r0
/* 80634764  38 21 00 40 */	addi r1, r1, 0x40
/* 80634768  4E 80 00 20 */	blr 
