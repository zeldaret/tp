lbl_801B2EE4:
/* 801B2EE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B2EE8  7C 08 02 A6 */	mflr r0
/* 801B2EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B2EF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B2EF4  7C 7F 1B 78 */	mr r31, r3
/* 801B2EF8  88 03 02 57 */	lbz r0, 0x257(r3)
/* 801B2EFC  2C 00 00 04 */	cmpwi r0, 4
/* 801B2F00  41 82 00 A8 */	beq lbl_801B2FA8
/* 801B2F04  40 80 00 10 */	bge lbl_801B2F14
/* 801B2F08  2C 00 00 03 */	cmpwi r0, 3
/* 801B2F0C  40 80 00 14 */	bge lbl_801B2F20
/* 801B2F10  48 00 01 A4 */	b lbl_801B30B4
lbl_801B2F14:
/* 801B2F14  2C 00 00 06 */	cmpwi r0, 6
/* 801B2F18  40 80 01 9C */	bge lbl_801B30B4
/* 801B2F1C  48 00 01 14 */	b lbl_801B3030
lbl_801B2F20:
/* 801B2F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2F28  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801B2F2C  28 00 00 2F */	cmplwi r0, 0x2f
/* 801B2F30  41 82 01 84 */	beq lbl_801B30B4
/* 801B2F34  38 60 00 2F */	li r3, 0x2f
/* 801B2F38  38 80 00 00 */	li r4, 0
/* 801B2F3C  48 06 B5 75 */	bl dMeter2Info_setCloth__FUcb
/* 801B2F40  7F E3 FB 78 */	mr r3, r31
/* 801B2F44  38 80 00 00 */	li r4, 0
/* 801B2F48  48 00 10 95 */	bl setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi
/* 801B2F4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2F50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2F54  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B2F58  38 80 00 00 */	li r4, 0
/* 801B2F5C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B2F60  81 8C 01 50 */	lwz r12, 0x150(r12)
/* 801B2F64  7D 89 03 A6 */	mtctr r12
/* 801B2F68  4E 80 04 21 */	bctrl 
/* 801B2F6C  38 00 00 4F */	li r0, 0x4f
/* 801B2F70  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B2F74  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B2F78  38 81 00 10 */	addi r4, r1, 0x10
/* 801B2F7C  38 A0 00 00 */	li r5, 0
/* 801B2F80  38 C0 00 00 */	li r6, 0
/* 801B2F84  38 E0 00 00 */	li r7, 0
/* 801B2F88  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B2F8C  FC 40 08 90 */	fmr f2, f1
/* 801B2F90  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B2F94  FC 80 18 90 */	fmr f4, f3
/* 801B2F98  39 00 00 00 */	li r8, 0
/* 801B2F9C  48 0F 89 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B2FA0  48 06 BA 31 */	bl dMeter2Info_set2DVibration__Fv
/* 801B2FA4  48 00 01 10 */	b lbl_801B30B4
lbl_801B2FA8:
/* 801B2FA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2FAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2FB0  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801B2FB4  28 00 00 31 */	cmplwi r0, 0x31
/* 801B2FB8  41 82 00 FC */	beq lbl_801B30B4
/* 801B2FBC  38 60 00 31 */	li r3, 0x31
/* 801B2FC0  38 80 00 00 */	li r4, 0
/* 801B2FC4  48 06 B4 ED */	bl dMeter2Info_setCloth__FUcb
/* 801B2FC8  7F E3 FB 78 */	mr r3, r31
/* 801B2FCC  38 80 00 01 */	li r4, 1
/* 801B2FD0  48 00 10 0D */	bl setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi
/* 801B2FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B2FD8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B2FDC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B2FE0  38 80 00 00 */	li r4, 0
/* 801B2FE4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B2FE8  81 8C 01 50 */	lwz r12, 0x150(r12)
/* 801B2FEC  7D 89 03 A6 */	mtctr r12
/* 801B2FF0  4E 80 04 21 */	bctrl 
/* 801B2FF4  38 00 00 4F */	li r0, 0x4f
/* 801B2FF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B2FFC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B3000  38 81 00 0C */	addi r4, r1, 0xc
/* 801B3004  38 A0 00 00 */	li r5, 0
/* 801B3008  38 C0 00 00 */	li r6, 0
/* 801B300C  38 E0 00 00 */	li r7, 0
/* 801B3010  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B3014  FC 40 08 90 */	fmr f2, f1
/* 801B3018  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B301C  FC 80 18 90 */	fmr f4, f3
/* 801B3020  39 00 00 00 */	li r8, 0
/* 801B3024  48 0F 89 61 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B3028  48 06 B9 A9 */	bl dMeter2Info_set2DVibration__Fv
/* 801B302C  48 00 00 88 */	b lbl_801B30B4
lbl_801B3030:
/* 801B3030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B3034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B3038  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801B303C  28 00 00 30 */	cmplwi r0, 0x30
/* 801B3040  41 82 00 74 */	beq lbl_801B30B4
/* 801B3044  38 60 00 30 */	li r3, 0x30
/* 801B3048  38 80 00 00 */	li r4, 0
/* 801B304C  48 06 B4 65 */	bl dMeter2Info_setCloth__FUcb
/* 801B3050  7F E3 FB 78 */	mr r3, r31
/* 801B3054  38 80 00 02 */	li r4, 2
/* 801B3058  48 00 0F 85 */	bl setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi
/* 801B305C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B3060  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B3064  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801B3068  38 80 00 00 */	li r4, 0
/* 801B306C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801B3070  81 8C 01 50 */	lwz r12, 0x150(r12)
/* 801B3074  7D 89 03 A6 */	mtctr r12
/* 801B3078  4E 80 04 21 */	bctrl 
/* 801B307C  38 00 00 4F */	li r0, 0x4f
/* 801B3080  90 01 00 08 */	stw r0, 8(r1)
/* 801B3084  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B3088  38 81 00 08 */	addi r4, r1, 8
/* 801B308C  38 A0 00 00 */	li r5, 0
/* 801B3090  38 C0 00 00 */	li r6, 0
/* 801B3094  38 E0 00 00 */	li r7, 0
/* 801B3098  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B309C  FC 40 08 90 */	fmr f2, f1
/* 801B30A0  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B30A4  FC 80 18 90 */	fmr f4, f3
/* 801B30A8  39 00 00 00 */	li r8, 0
/* 801B30AC  48 0F 88 D9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B30B0  48 06 B9 21 */	bl dMeter2Info_set2DVibration__Fv
lbl_801B30B4:
/* 801B30B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B30B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B30BC  7C 08 03 A6 */	mtlr r0
/* 801B30C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801B30C4  4E 80 00 20 */	blr 
