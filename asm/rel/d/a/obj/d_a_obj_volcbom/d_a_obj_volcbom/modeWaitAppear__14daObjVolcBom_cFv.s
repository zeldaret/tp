lbl_80D24B6C:
/* 80D24B6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D24B70  7C 08 02 A6 */	mflr r0
/* 80D24B74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D24B78  39 61 00 20 */	addi r11, r1, 0x20
/* 80D24B7C  4B 63 D6 5C */	b _savegpr_28
/* 80D24B80  7C 7F 1B 78 */	mr r31, r3
/* 80D24B84  3C 60 80 D2 */	lis r3, l_midna_offset@ha
/* 80D24B88  3B C3 6B 5C */	addi r30, r3, l_midna_offset@l
/* 80D24B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D24B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D24B94  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80D24B98  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D24B9C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D24BA0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80D24BA4  83 A3 00 00 */	lwz r29, 0(r3)
/* 80D24BA8  88 1F 09 5D */	lbz r0, 0x95d(r31)
/* 80D24BAC  2C 00 00 01 */	cmpwi r0, 1
/* 80D24BB0  41 82 00 38 */	beq lbl_80D24BE8
/* 80D24BB4  40 80 00 10 */	bge lbl_80D24BC4
/* 80D24BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80D24BBC  40 80 00 14 */	bge lbl_80D24BD0
/* 80D24BC0  48 00 01 88 */	b lbl_80D24D48
lbl_80D24BC4:
/* 80D24BC4  2C 00 00 03 */	cmpwi r0, 3
/* 80D24BC8  40 80 01 80 */	bge lbl_80D24D48
/* 80D24BCC  48 00 01 10 */	b lbl_80D24CDC
lbl_80D24BD0:
/* 80D24BD0  88 1F 09 60 */	lbz r0, 0x960(r31)
/* 80D24BD4  28 00 00 00 */	cmplwi r0, 0
/* 80D24BD8  41 82 01 70 */	beq lbl_80D24D48
/* 80D24BDC  38 00 00 01 */	li r0, 1
/* 80D24BE0  98 1F 09 5D */	stb r0, 0x95d(r31)
/* 80D24BE4  48 00 01 64 */	b lbl_80D24D48
lbl_80D24BE8:
/* 80D24BE8  38 7F 09 78 */	addi r3, r31, 0x978
/* 80D24BEC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D24BF0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80D24BF4  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80D24BF8  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80D24BFC  4B 54 AD 80 */	b cLib_addCalc__FPfffff
/* 80D24C00  38 7F 09 7C */	addi r3, r31, 0x97c
/* 80D24C04  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D24C08  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 80D24C0C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80D24C10  C0 9E 00 40 */	lfs f4, 0x40(r30)
/* 80D24C14  4B 54 AD 68 */	b cLib_addCalc__FPfffff
/* 80D24C18  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80D24C1C  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 80D24C20  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D24C24  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80D24C28  EC 01 00 2A */	fadds f0, f1, f0
/* 80D24C2C  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 80D24C30  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80D24C34  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80D24C38  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80D24C3C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D24C40  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D24C44  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80D24C48  EC 01 00 2A */	fadds f0, f1, f0
/* 80D24C4C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D24C50  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80D24C54  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80D24C58  7F E3 FB 78 */	mr r3, r31
/* 80D24C5C  48 00 05 C9 */	bl appear__14daObjVolcBom_cFv
/* 80D24C60  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D24C64  D0 1F 09 8C */	stfs f0, 0x98c(r31)
/* 80D24C68  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D24C6C  D0 1F 09 90 */	stfs f0, 0x990(r31)
/* 80D24C70  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D24C74  D0 1F 09 94 */	stfs f0, 0x994(r31)
/* 80D24C78  C0 1F 06 64 */	lfs f0, 0x664(r31)
/* 80D24C7C  D0 1F 09 90 */	stfs f0, 0x990(r31)
/* 80D24C80  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080257@ha */
/* 80D24C84  38 03 02 57 */	addi r0, r3, 0x0257 /* 0x00080257@l */
/* 80D24C88  90 01 00 08 */	stw r0, 8(r1)
/* 80D24C8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D24C90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D24C94  80 63 00 00 */	lwz r3, 0(r3)
/* 80D24C98  38 81 00 08 */	addi r4, r1, 8
/* 80D24C9C  38 BF 09 8C */	addi r5, r31, 0x98c
/* 80D24CA0  38 C0 00 00 */	li r6, 0
/* 80D24CA4  38 E0 00 00 */	li r7, 0
/* 80D24CA8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80D24CAC  FC 40 08 90 */	fmr f2, f1
/* 80D24CB0  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80D24CB4  FC 80 18 90 */	fmr f4, f3
/* 80D24CB8  39 00 00 00 */	li r8, 0
/* 80D24CBC  4B 58 78 50 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D24CC0  88 1F 09 5F */	lbz r0, 0x95f(r31)
/* 80D24CC4  28 00 00 00 */	cmplwi r0, 0
/* 80D24CC8  41 82 00 80 */	beq lbl_80D24D48
/* 80D24CCC  38 00 00 00 */	li r0, 0
/* 80D24CD0  98 1F 09 60 */	stb r0, 0x960(r31)
/* 80D24CD4  38 00 00 02 */	li r0, 2
/* 80D24CD8  98 1F 09 5D */	stb r0, 0x95d(r31)
lbl_80D24CDC:
/* 80D24CDC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D24CE0  D0 1F 09 78 */	stfs f0, 0x978(r31)
/* 80D24CE4  D0 1F 09 7C */	stfs f0, 0x97c(r31)
/* 80D24CE8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80D24CEC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80D24CF0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80D24CF4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80D24CF8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80D24CFC  C0 1F 06 64 */	lfs f0, 0x664(r31)
/* 80D24D00  EC 01 00 2A */	fadds f0, f1, f0
/* 80D24D04  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80D24D08  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D24D0C  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 80D24D10  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D24D14  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 80D24D18  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D24D1C  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80D24D20  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80D24D24  C0 1F 06 64 */	lfs f0, 0x664(r31)
/* 80D24D28  EC 21 00 2A */	fadds f1, f1, f0
/* 80D24D2C  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80D24D30  EC 01 00 2A */	fadds f0, f1, f0
/* 80D24D34  D0 1F 09 6C */	stfs f0, 0x96c(r31)
/* 80D24D38  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D24D3C  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 80D24D40  7F E3 FB 78 */	mr r3, r31
/* 80D24D44  48 00 00 3D */	bl init_modeFall__14daObjVolcBom_cFv
lbl_80D24D48:
/* 80D24D48  88 1F 09 5F */	lbz r0, 0x95f(r31)
/* 80D24D4C  28 00 00 00 */	cmplwi r0, 0
/* 80D24D50  40 82 00 18 */	bne lbl_80D24D68
/* 80D24D54  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D24D58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D24D5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D24D60  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D24D64  4B 35 1D 48 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80D24D68:
/* 80D24D68  39 61 00 20 */	addi r11, r1, 0x20
/* 80D24D6C  4B 63 D4 B8 */	b _restgpr_28
/* 80D24D70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D24D74  7C 08 03 A6 */	mtlr r0
/* 80D24D78  38 21 00 20 */	addi r1, r1, 0x20
/* 80D24D7C  4E 80 00 20 */	blr 
