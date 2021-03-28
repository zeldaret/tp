lbl_80ADF8DC:
/* 80ADF8DC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ADF8E0  7C 08 02 A6 */	mflr r0
/* 80ADF8E4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ADF8E8  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADF8EC  4B 88 28 E8 */	b _savegpr_27
/* 80ADF8F0  7C 7F 1B 78 */	mr r31, r3
/* 80ADF8F4  7C 9B 23 78 */	mr r27, r4
/* 80ADF8F8  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80ADF8FC  3B A3 1F DC */	addi r29, r3, m__17daNpcShad_Param_c@l
/* 80ADF900  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADF904  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADF908  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80ADF90C  7F 83 E3 78 */	mr r3, r28
/* 80ADF910  4B 56 86 4C */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADF914  7C 7E 1B 78 */	mr r30, r3
/* 80ADF918  7F 83 E3 78 */	mr r3, r28
/* 80ADF91C  7F 64 DB 78 */	mr r4, r27
/* 80ADF920  4B 56 84 2C */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADF924  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF928  41 82 00 98 */	beq lbl_80ADF9C0
/* 80ADF92C  80 9E 00 00 */	lwz r4, 0(r30)
/* 80ADF930  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80ADF934  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80ADF938  7C 04 00 00 */	cmpw r4, r0
/* 80ADF93C  41 82 00 74 */	beq lbl_80ADF9B0
/* 80ADF940  40 80 00 80 */	bge lbl_80ADF9C0
/* 80ADF944  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADF948  7C 04 00 00 */	cmpw r4, r0
/* 80ADF94C  40 80 00 08 */	bge lbl_80ADF954
/* 80ADF950  48 00 00 70 */	b lbl_80ADF9C0
lbl_80ADF954:
/* 80ADF954  C0 1D 04 B8 */	lfs f0, 0x4b8(r29)
/* 80ADF958  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ADF95C  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 80ADF960  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ADF964  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80ADF968  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80ADF96C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80ADF970  38 81 00 10 */	addi r4, r1, 0x10
/* 80ADF974  4B 79 12 90 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADF978  7C 64 1B 78 */	mr r4, r3
/* 80ADF97C  7F E3 FB 78 */	mr r3, r31
/* 80ADF980  4B 67 48 D0 */	b setAngle__8daNpcF_cFs
/* 80ADF984  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80ADF988  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF98C  40 82 00 10 */	bne lbl_80ADF99C
/* 80ADF990  80 1F 0C A8 */	lwz r0, 0xca8(r31)
/* 80ADF994  28 00 00 00 */	cmplwi r0, 0
/* 80ADF998  41 82 00 28 */	beq lbl_80ADF9C0
lbl_80ADF99C:
/* 80ADF99C  38 00 00 01 */	li r0, 1
/* 80ADF9A0  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80ADF9A4  38 00 00 00 */	li r0, 0
/* 80ADF9A8  90 1F 0C A8 */	stw r0, 0xca8(r31)
/* 80ADF9AC  48 00 00 14 */	b lbl_80ADF9C0
lbl_80ADF9B0:
/* 80ADF9B0  7F E3 FB 78 */	mr r3, r31
/* 80ADF9B4  38 80 00 45 */	li r4, 0x45
/* 80ADF9B8  38 A0 00 00 */	li r5, 0
/* 80ADF9BC  4B 67 43 60 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_80ADF9C0:
/* 80ADF9C0  83 9F 09 50 */	lwz r28, 0x950(r31)
/* 80ADF9C4  7F E3 FB 78 */	mr r3, r31
/* 80ADF9C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADF9CC  38 A1 00 08 */	addi r5, r1, 8
/* 80ADF9D0  7F E6 FB 78 */	mr r6, r31
/* 80ADF9D4  38 E0 00 00 */	li r7, 0
/* 80ADF9D8  4B 67 3D 40 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADF9DC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF9E0  41 82 00 44 */	beq lbl_80ADFA24
/* 80ADF9E4  7F E3 FB 78 */	mr r3, r31
/* 80ADF9E8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADF9EC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF9F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADF9F4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF9F8  7D 89 03 A6 */	mtctr r12
/* 80ADF9FC  4E 80 04 21 */	bctrl 
/* 80ADFA00  7F E3 FB 78 */	mr r3, r31
/* 80ADFA04  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADFA08  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFA0C  38 A0 00 00 */	li r5, 0
/* 80ADFA10  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFA14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADFA18  7D 89 03 A6 */	mtctr r12
/* 80ADFA1C  4E 80 04 21 */	bctrl 
/* 80ADFA20  48 00 00 E0 */	b lbl_80ADFB00
lbl_80ADFA24:
/* 80ADFA24  2C 1C 00 00 */	cmpwi r28, 0
/* 80ADFA28  41 82 00 D8 */	beq lbl_80ADFB00
/* 80ADFA2C  80 1F 09 50 */	lwz r0, 0x950(r31)
/* 80ADFA30  2C 00 00 00 */	cmpwi r0, 0
/* 80ADFA34  40 82 00 CC */	bne lbl_80ADFB00
/* 80ADFA38  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80ADFA3C  2C 00 00 03 */	cmpwi r0, 3
/* 80ADFA40  41 82 00 64 */	beq lbl_80ADFAA4
/* 80ADFA44  40 80 00 14 */	bge lbl_80ADFA58
/* 80ADFA48  2C 00 00 01 */	cmpwi r0, 1
/* 80ADFA4C  41 82 00 18 */	beq lbl_80ADFA64
/* 80ADFA50  40 80 00 34 */	bge lbl_80ADFA84
/* 80ADFA54  48 00 00 90 */	b lbl_80ADFAE4
lbl_80ADFA58:
/* 80ADFA58  2C 00 00 05 */	cmpwi r0, 5
/* 80ADFA5C  40 80 00 88 */	bge lbl_80ADFAE4
/* 80ADFA60  48 00 00 64 */	b lbl_80ADFAC4
lbl_80ADFA64:
/* 80ADFA64  7F E3 FB 78 */	mr r3, r31
/* 80ADFA68  38 80 00 08 */	li r4, 8
/* 80ADFA6C  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFA70  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFA74  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFA78  7D 89 03 A6 */	mtctr r12
/* 80ADFA7C  4E 80 04 21 */	bctrl 
/* 80ADFA80  48 00 00 80 */	b lbl_80ADFB00
lbl_80ADFA84:
/* 80ADFA84  7F E3 FB 78 */	mr r3, r31
/* 80ADFA88  38 80 00 09 */	li r4, 9
/* 80ADFA8C  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFA90  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFA94  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFA98  7D 89 03 A6 */	mtctr r12
/* 80ADFA9C  4E 80 04 21 */	bctrl 
/* 80ADFAA0  48 00 00 60 */	b lbl_80ADFB00
lbl_80ADFAA4:
/* 80ADFAA4  7F E3 FB 78 */	mr r3, r31
/* 80ADFAA8  38 80 00 0A */	li r4, 0xa
/* 80ADFAAC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFAB0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFAB4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFAB8  7D 89 03 A6 */	mtctr r12
/* 80ADFABC  4E 80 04 21 */	bctrl 
/* 80ADFAC0  48 00 00 40 */	b lbl_80ADFB00
lbl_80ADFAC4:
/* 80ADFAC4  7F E3 FB 78 */	mr r3, r31
/* 80ADFAC8  38 80 00 07 */	li r4, 7
/* 80ADFACC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFAD0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFAD4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFAD8  7D 89 03 A6 */	mtctr r12
/* 80ADFADC  4E 80 04 21 */	bctrl 
/* 80ADFAE0  48 00 00 20 */	b lbl_80ADFB00
lbl_80ADFAE4:
/* 80ADFAE4  7F E3 FB 78 */	mr r3, r31
/* 80ADFAE8  38 80 00 0C */	li r4, 0xc
/* 80ADFAEC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADFAF0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADFAF4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADFAF8  7D 89 03 A6 */	mtctr r12
/* 80ADFAFC  4E 80 04 21 */	bctrl 
lbl_80ADFB00:
/* 80ADFB00  80 9E 00 00 */	lwz r4, 0(r30)
/* 80ADFB04  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80ADFB08  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80ADFB0C  7C 04 00 00 */	cmpw r4, r0
/* 80ADFB10  41 82 00 20 */	beq lbl_80ADFB30
/* 80ADFB14  40 80 00 40 */	bge lbl_80ADFB54
/* 80ADFB18  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADFB1C  7C 04 00 00 */	cmpw r4, r0
/* 80ADFB20  40 80 00 08 */	bge lbl_80ADFB28
/* 80ADFB24  48 00 00 30 */	b lbl_80ADFB54
lbl_80ADFB28:
/* 80ADFB28  38 60 00 01 */	li r3, 1
/* 80ADFB2C  48 00 00 2C */	b lbl_80ADFB58
lbl_80ADFB30:
/* 80ADFB30  7F E3 FB 78 */	mr r3, r31
/* 80ADFB34  38 80 00 00 */	li r4, 0
/* 80ADFB38  38 A0 00 01 */	li r5, 1
/* 80ADFB3C  38 C0 00 00 */	li r6, 0
/* 80ADFB40  4B 67 42 44 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADFB44  2C 03 00 00 */	cmpwi r3, 0
/* 80ADFB48  41 82 00 0C */	beq lbl_80ADFB54
/* 80ADFB4C  38 60 00 01 */	li r3, 1
/* 80ADFB50  48 00 00 08 */	b lbl_80ADFB58
lbl_80ADFB54:
/* 80ADFB54  38 60 00 00 */	li r3, 0
lbl_80ADFB58:
/* 80ADFB58  39 61 00 40 */	addi r11, r1, 0x40
/* 80ADFB5C  4B 88 26 C4 */	b _restgpr_27
/* 80ADFB60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ADFB64  7C 08 03 A6 */	mtlr r0
/* 80ADFB68  38 21 00 40 */	addi r1, r1, 0x40
/* 80ADFB6C  4E 80 00 20 */	blr 
