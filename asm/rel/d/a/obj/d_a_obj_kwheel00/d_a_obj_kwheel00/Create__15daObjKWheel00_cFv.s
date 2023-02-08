lbl_80C4DA38:
/* 80C4DA38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4DA3C  7C 08 02 A6 */	mflr r0
/* 80C4DA40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4DA44  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4DA48  4B 71 47 8D */	bl _savegpr_27
/* 80C4DA4C  7C 7F 1B 78 */	mr r31, r3
/* 80C4DA50  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80C4DA54  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C4DA58  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4DA5C  4B 6F 8A 55 */	bl PSMTXCopy
/* 80C4DA60  38 1F 05 E8 */	addi r0, r31, 0x5e8
/* 80C4DA64  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C4DA68  38 00 00 00 */	li r0, 0
/* 80C4DA6C  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C4DA70  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4DA74  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C4DA78  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C4DA7C  41 82 00 40 */	beq lbl_80C4DABC
/* 80C4DA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C4DA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4DA88  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C4DA8C  7C 05 07 74 */	extsb r5, r0
/* 80C4DA90  4B 3E 78 D1 */	bl isSwitch__10dSv_info_cCFii
/* 80C4DA94  2C 03 00 00 */	cmpwi r3, 0
/* 80C4DA98  41 82 00 24 */	beq lbl_80C4DABC
/* 80C4DA9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4DAA0  54 00 C7 FF */	rlwinm. r0, r0, 0x18, 0x1f, 0x1f
/* 80C4DAA4  41 82 00 10 */	beq lbl_80C4DAB4
/* 80C4DAA8  38 00 00 40 */	li r0, 0x40
/* 80C4DAAC  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C4DAB0  48 00 00 0C */	b lbl_80C4DABC
lbl_80C4DAB4:
/* 80C4DAB4  38 00 FF C0 */	li r0, -64
/* 80C4DAB8  B0 1F 06 1C */	sth r0, 0x61c(r31)
lbl_80C4DABC:
/* 80C4DABC  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C4DAC0  54 06 08 3C */	slwi r6, r0, 1
/* 80C4DAC4  38 06 00 01 */	addi r0, r6, 1
/* 80C4DAC8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C4DACC  3C 60 80 C5 */	lis r3, l_cull_box@ha /* 0x80C4E810@ha */
/* 80C4DAD0  38 83 E8 10 */	addi r4, r3, l_cull_box@l /* 0x80C4E810@l */
/* 80C4DAD4  38 A4 00 08 */	addi r5, r4, 8
/* 80C4DAD8  1C C6 00 0C */	mulli r6, r6, 0xc
/* 80C4DADC  38 E4 00 04 */	addi r7, r4, 4
/* 80C4DAE0  7F E3 FB 78 */	mr r3, r31
/* 80C4DAE4  7C 24 34 2E */	lfsx f1, r4, r6
/* 80C4DAE8  7C 47 34 2E */	lfsx f2, r7, r6
/* 80C4DAEC  7C 65 34 2E */	lfsx f3, r5, r6
/* 80C4DAF0  7C 84 04 2E */	lfsx f4, r4, r0
/* 80C4DAF4  7C A7 04 2E */	lfsx f5, r7, r0
/* 80C4DAF8  7C C5 04 2E */	lfsx f6, r5, r0
/* 80C4DAFC  4B 3C CA 4D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C4DB00  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80C4DB04  2C 00 00 01 */	cmpwi r0, 1
/* 80C4DB08  40 82 00 0C */	bne lbl_80C4DB14
/* 80C4DB0C  38 00 00 00 */	li r0, 0
/* 80C4DB10  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_80C4DB14:
/* 80C4DB14  38 7F 06 24 */	addi r3, r31, 0x624
/* 80C4DB18  38 80 00 FE */	li r4, 0xfe
/* 80C4DB1C  38 A0 00 00 */	li r5, 0
/* 80C4DB20  7F E6 FB 78 */	mr r6, r31
/* 80C4DB24  4B 43 5D 3D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C4DB28  3B 60 00 00 */	li r27, 0
/* 80C4DB2C  3B C0 00 00 */	li r30, 0
/* 80C4DB30  3B 9F 06 24 */	addi r28, r31, 0x624
/* 80C4DB34  3C 60 80 C5 */	lis r3, l_sphSrc@ha /* 0x80C4E878@ha */
/* 80C4DB38  3B A3 E8 78 */	addi r29, r3, l_sphSrc@l /* 0x80C4E878@l */
lbl_80C4DB3C:
/* 80C4DB3C  7C 7F F2 14 */	add r3, r31, r30
/* 80C4DB40  93 83 06 A4 */	stw r28, 0x6a4(r3)
/* 80C4DB44  38 63 06 60 */	addi r3, r3, 0x660
/* 80C4DB48  7F A4 EB 78 */	mr r4, r29
/* 80C4DB4C  4B 43 6E E9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C4DB50  3B 7B 00 01 */	addi r27, r27, 1
/* 80C4DB54  2C 1B 00 04 */	cmpwi r27, 4
/* 80C4DB58  3B DE 01 38 */	addi r30, r30, 0x138
/* 80C4DB5C  41 80 FF E0 */	blt lbl_80C4DB3C
/* 80C4DB60  38 00 FF FF */	li r0, -1
/* 80C4DB64  90 1F 0B 40 */	stw r0, 0xb40(r31)
/* 80C4DB68  38 C0 00 00 */	li r6, 0
/* 80C4DB6C  38 60 00 00 */	li r3, 0
/* 80C4DB70  3C 80 80 C5 */	lis r4, l_se_angle@ha /* 0x80C4E8B8@ha */
/* 80C4DB74  38 84 E8 B8 */	addi r4, r4, l_se_angle@l /* 0x80C4E8B8@l */
/* 80C4DB78  38 00 00 04 */	li r0, 4
/* 80C4DB7C  7C 09 03 A6 */	mtctr r0
lbl_80C4DB80:
/* 80C4DB80  A8 BF 04 E0 */	lha r5, 0x4e0(r31)
/* 80C4DB84  7C 04 1A 2E */	lhzx r0, r4, r3
/* 80C4DB88  7C 05 00 00 */	cmpw r5, r0
/* 80C4DB8C  40 82 00 08 */	bne lbl_80C4DB94
/* 80C4DB90  90 DF 0B 40 */	stw r6, 0xb40(r31)
lbl_80C4DB94:
/* 80C4DB94  38 C6 00 01 */	addi r6, r6, 1
/* 80C4DB98  38 63 00 02 */	addi r3, r3, 2
/* 80C4DB9C  42 00 FF E4 */	bdnz lbl_80C4DB80
/* 80C4DBA0  38 60 00 01 */	li r3, 1
/* 80C4DBA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C4DBA8  4B 71 46 79 */	bl _restgpr_27
/* 80C4DBAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4DBB0  7C 08 03 A6 */	mtlr r0
/* 80C4DBB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C4DBB8  4E 80 00 20 */	blr 
