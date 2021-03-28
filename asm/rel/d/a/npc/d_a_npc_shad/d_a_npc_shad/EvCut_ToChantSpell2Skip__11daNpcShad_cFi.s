lbl_80ADE47C:
/* 80ADE47C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ADE480  7C 08 02 A6 */	mflr r0
/* 80ADE484  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADE488  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADE48C  4B 88 3D 4C */	b _savegpr_28
/* 80ADE490  7C 7F 1B 78 */	mr r31, r3
/* 80ADE494  7C 9C 23 78 */	mr r28, r4
/* 80ADE498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADE49C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADE4A0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80ADE4A4  7F A3 EB 78 */	mr r3, r29
/* 80ADE4A8  4B 56 9A B4 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADE4AC  7C 7E 1B 78 */	mr r30, r3
/* 80ADE4B0  7F A3 EB 78 */	mr r3, r29
/* 80ADE4B4  7F 84 E3 78 */	mr r4, r28
/* 80ADE4B8  4B 56 98 94 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADE4BC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADE4C0  41 82 01 1C */	beq lbl_80ADE5DC
/* 80ADE4C4  80 9E 00 00 */	lwz r4, 0(r30)
/* 80ADE4C8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 80ADE4CC  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 80ADE4D0  7C 04 00 00 */	cmpw r4, r0
/* 80ADE4D4  41 82 00 20 */	beq lbl_80ADE4F4
/* 80ADE4D8  40 80 01 04 */	bge lbl_80ADE5DC
/* 80ADE4DC  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADE4E0  7C 04 00 00 */	cmpw r4, r0
/* 80ADE4E4  40 80 00 08 */	bge lbl_80ADE4EC
/* 80ADE4E8  48 00 00 F4 */	b lbl_80ADE5DC
lbl_80ADE4EC:
/* 80ADE4EC  38 60 00 01 */	li r3, 1
/* 80ADE4F0  48 00 00 F0 */	b lbl_80ADE5E0
lbl_80ADE4F4:
/* 80ADE4F4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80ADE4F8  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80ADE4FC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80ADE500  7C 04 07 74 */	extsb r4, r0
/* 80ADE504  4B 57 32 E8 */	b dPath_GetRoomPath__Fii
/* 80ADE508  28 03 00 00 */	cmplwi r3, 0
/* 80ADE50C  40 82 00 0C */	bne lbl_80ADE518
/* 80ADE510  38 00 00 00 */	li r0, 0
/* 80ADE514  48 00 00 38 */	b lbl_80ADE54C
lbl_80ADE518:
/* 80ADE518  38 80 00 01 */	li r4, 1
/* 80ADE51C  4B 57 32 94 */	b dPath_GetPnt__FPC5dPathi
/* 80ADE520  28 03 00 00 */	cmplwi r3, 0
/* 80ADE524  40 82 00 0C */	bne lbl_80ADE530
/* 80ADE528  38 00 00 00 */	li r0, 0
/* 80ADE52C  48 00 00 20 */	b lbl_80ADE54C
lbl_80ADE530:
/* 80ADE530  C0 03 00 04 */	lfs f0, 4(r3)
/* 80ADE534  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80ADE538  C0 03 00 08 */	lfs f0, 8(r3)
/* 80ADE53C  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80ADE540  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80ADE544  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80ADE548  38 00 00 01 */	li r0, 1
lbl_80ADE54C:
/* 80ADE54C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADE550  41 82 00 84 */	beq lbl_80ADE5D4
/* 80ADE554  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80ADE558  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80ADE55C  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80ADE560  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80ADE564  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80ADE568  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80ADE56C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80ADE570  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 80ADE574  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80ADE578  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80ADE57C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80ADE580  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 80ADE584  3C 60 80 AE */	lis r3, lit_4498@ha
/* 80ADE588  C0 03 20 6C */	lfs f0, lit_4498@l(r3)
/* 80ADE58C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80ADE590  7F E3 FB 78 */	mr r3, r31
/* 80ADE594  38 80 00 0A */	li r4, 0xa
/* 80ADE598  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADE59C  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADE5A0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADE5A4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADE5A8  7D 89 03 A6 */	mtctr r12
/* 80ADE5AC  4E 80 04 21 */	bctrl 
/* 80ADE5B0  7F E3 FB 78 */	mr r3, r31
/* 80ADE5B4  38 80 00 07 */	li r4, 7
/* 80ADE5B8  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADE5BC  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADE5C0  38 A0 00 00 */	li r5, 0
/* 80ADE5C4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80ADE5C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADE5CC  7D 89 03 A6 */	mtctr r12
/* 80ADE5D0  4E 80 04 21 */	bctrl 
lbl_80ADE5D4:
/* 80ADE5D4  38 60 00 01 */	li r3, 1
/* 80ADE5D8  48 00 00 08 */	b lbl_80ADE5E0
lbl_80ADE5DC:
/* 80ADE5DC  38 60 00 00 */	li r3, 0
lbl_80ADE5E0:
/* 80ADE5E0  39 61 00 20 */	addi r11, r1, 0x20
/* 80ADE5E4  4B 88 3C 40 */	b _restgpr_28
/* 80ADE5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADE5EC  7C 08 03 A6 */	mtlr r0
/* 80ADE5F0  38 21 00 20 */	addi r1, r1, 0x20
/* 80ADE5F4  4E 80 00 20 */	blr 
