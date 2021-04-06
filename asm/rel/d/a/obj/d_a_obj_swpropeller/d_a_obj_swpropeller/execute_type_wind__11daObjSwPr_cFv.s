lbl_8059ADCC:
/* 8059ADCC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059ADD0  7C 08 02 A6 */	mflr r0
/* 8059ADD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059ADD8  39 61 00 20 */	addi r11, r1, 0x20
/* 8059ADDC  4B DC 73 FD */	bl _savegpr_28
/* 8059ADE0  7C 7C 1B 78 */	mr r28, r3
/* 8059ADE4  3B C0 00 00 */	li r30, 0
/* 8059ADE8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8059ADEC  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8059ADF0  3B A0 00 00 */	li r29, 0
/* 8059ADF4  38 7C 06 EC */	addi r3, r28, 0x6ec
/* 8059ADF8  4B AE 96 69 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8059ADFC  28 03 00 00 */	cmplwi r3, 0
/* 8059AE00  41 82 00 A0 */	beq lbl_8059AEA0
/* 8059AE04  38 7C 06 EC */	addi r3, r28, 0x6ec
/* 8059AE08  4B AE 97 41 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AE0C  28 03 00 00 */	cmplwi r3, 0
/* 8059AE10  41 82 00 98 */	beq lbl_8059AEA8
/* 8059AE14  38 7C 06 EC */	addi r3, r28, 0x6ec
/* 8059AE18  4B AE 97 31 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AE1C  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8059AE20  28 00 00 03 */	cmplwi r0, 3
/* 8059AE24  40 82 00 84 */	bne lbl_8059AEA8
/* 8059AE28  38 7C 06 EC */	addi r3, r28, 0x6ec
/* 8059AE2C  4B AE 96 CD */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8059AE30  28 03 00 00 */	cmplwi r3, 0
/* 8059AE34  41 82 00 74 */	beq lbl_8059AEA8
/* 8059AE38  3B C0 1B 58 */	li r30, 0x1b58
/* 8059AE3C  38 00 1B 58 */	li r0, 0x1b58
/* 8059AE40  B0 1C 08 2A */	sth r0, 0x82a(r28)
/* 8059AE44  3B A0 00 01 */	li r29, 1
/* 8059AE48  A0 7C 08 34 */	lhz r3, 0x834(r28)
/* 8059AE4C  38 03 00 01 */	addi r0, r3, 1
/* 8059AE50  B0 1C 08 34 */	sth r0, 0x834(r28)
/* 8059AE54  A0 1C 08 34 */	lhz r0, 0x834(r28)
/* 8059AE58  28 00 00 14 */	cmplwi r0, 0x14
/* 8059AE5C  40 82 00 20 */	bne lbl_8059AE7C
/* 8059AE60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AE64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AE68  7F E4 FB 78 */	mr r4, r31
/* 8059AE6C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8059AE70  7C 05 07 74 */	extsb r5, r0
/* 8059AE74  4B A9 A3 8D */	bl onSwitch__10dSv_info_cFii
/* 8059AE78  48 00 00 30 */	b lbl_8059AEA8
lbl_8059AE7C:
/* 8059AE7C  28 00 00 19 */	cmplwi r0, 0x19
/* 8059AE80  40 82 00 28 */	bne lbl_8059AEA8
/* 8059AE84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AE88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AE8C  7F E4 FB 78 */	mr r4, r31
/* 8059AE90  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8059AE94  7C 05 07 74 */	extsb r5, r0
/* 8059AE98  4B A9 A4 19 */	bl offSwitch__10dSv_info_cFii
/* 8059AE9C  48 00 00 0C */	b lbl_8059AEA8
lbl_8059AEA0:
/* 8059AEA0  38 00 00 00 */	li r0, 0
/* 8059AEA4  B0 1C 08 34 */	sth r0, 0x834(r28)
lbl_8059AEA8:
/* 8059AEA8  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8059AEAC  4B AE 95 B5 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8059AEB0  28 03 00 00 */	cmplwi r3, 0
/* 8059AEB4  41 82 00 A4 */	beq lbl_8059AF58
/* 8059AEB8  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8059AEBC  4B AE 96 8D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AEC0  28 03 00 00 */	cmplwi r3, 0
/* 8059AEC4  41 82 00 C8 */	beq lbl_8059AF8C
/* 8059AEC8  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8059AECC  4B AE 96 7D */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8059AED0  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8059AED4  28 00 00 03 */	cmplwi r0, 3
/* 8059AED8  40 82 00 B4 */	bne lbl_8059AF8C
/* 8059AEDC  38 7C 05 B0 */	addi r3, r28, 0x5b0
/* 8059AEE0  4B AE 96 19 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8059AEE4  28 03 00 00 */	cmplwi r3, 0
/* 8059AEE8  41 82 00 A4 */	beq lbl_8059AF8C
/* 8059AEEC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8059AEF0  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8059AEF4  40 82 00 0C */	bne lbl_8059AF00
/* 8059AEF8  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8059AEFC  41 82 00 90 */	beq lbl_8059AF8C
lbl_8059AF00:
/* 8059AF00  38 00 1B 58 */	li r0, 0x1b58
/* 8059AF04  B0 1C 08 28 */	sth r0, 0x828(r28)
/* 8059AF08  A8 1C 08 28 */	lha r0, 0x828(r28)
/* 8059AF0C  B0 1C 08 2A */	sth r0, 0x82a(r28)
/* 8059AF10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AF14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AF18  7F E4 FB 78 */	mr r4, r31
/* 8059AF1C  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8059AF20  7C 05 07 74 */	extsb r5, r0
/* 8059AF24  4B A9 A2 DD */	bl onSwitch__10dSv_info_cFii
/* 8059AF28  38 00 00 0A */	li r0, 0xa
/* 8059AF2C  B0 1C 08 36 */	sth r0, 0x836(r28)
/* 8059AF30  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8059AF34  54 04 46 3E */	srwi r4, r0, 0x18
/* 8059AF38  28 04 00 FF */	cmplwi r4, 0xff
/* 8059AF3C  41 82 00 50 */	beq lbl_8059AF8C
/* 8059AF40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AF44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AF48  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8059AF4C  7C 05 07 74 */	extsb r5, r0
/* 8059AF50  4B A9 A2 B1 */	bl onSwitch__10dSv_info_cFii
/* 8059AF54  48 00 00 38 */	b lbl_8059AF8C
lbl_8059AF58:
/* 8059AF58  A0 1C 08 36 */	lhz r0, 0x836(r28)
/* 8059AF5C  28 00 00 00 */	cmplwi r0, 0
/* 8059AF60  41 82 00 2C */	beq lbl_8059AF8C
/* 8059AF64  38 7C 08 36 */	addi r3, r28, 0x836
/* 8059AF68  48 00 03 05 */	bl func_8059B26C
/* 8059AF6C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8059AF70  40 82 00 1C */	bne lbl_8059AF8C
/* 8059AF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AF7C  7F E4 FB 78 */	mr r4, r31
/* 8059AF80  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8059AF84  7C 05 07 74 */	extsb r5, r0
/* 8059AF88  4B A9 A3 29 */	bl offSwitch__10dSv_info_cFii
lbl_8059AF8C:
/* 8059AF8C  38 7C 08 28 */	addi r3, r28, 0x828
/* 8059AF90  7F C4 F3 78 */	mr r4, r30
/* 8059AF94  38 A0 00 1E */	li r5, 0x1e
/* 8059AF98  38 C0 00 64 */	li r6, 0x64
/* 8059AF9C  38 E0 00 32 */	li r7, 0x32
/* 8059AFA0  4B CD 55 A1 */	bl cLib_addCalcAngleS__FPsssss
/* 8059AFA4  A8 7C 08 2C */	lha r3, 0x82c(r28)
/* 8059AFA8  A8 1C 08 28 */	lha r0, 0x828(r28)
/* 8059AFAC  7C 03 02 14 */	add r0, r3, r0
/* 8059AFB0  B0 1C 08 2C */	sth r0, 0x82c(r28)
/* 8059AFB4  7F 83 E3 78 */	mr r3, r28
/* 8059AFB8  4B FF F6 6D */	bl setBaseMtx__11daObjSwPr_cFv
/* 8059AFBC  38 7C 06 D4 */	addi r3, r28, 0x6d4
/* 8059AFC0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8059AFC4  4B CD 42 19 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8059AFC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059AFCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059AFD0  3B C3 23 3C */	addi r30, r3, 0x233c
/* 8059AFD4  7F C3 F3 78 */	mr r3, r30
/* 8059AFD8  38 9C 05 B0 */	addi r4, r28, 0x5b0
/* 8059AFDC  4B CC 9B CD */	bl Set__4cCcSFP8cCcD_Obj
/* 8059AFE0  38 7C 08 10 */	addi r3, r28, 0x810
/* 8059AFE4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8059AFE8  4B CD 41 F5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8059AFEC  7F C3 F3 78 */	mr r3, r30
/* 8059AFF0  38 9C 06 EC */	addi r4, r28, 0x6ec
/* 8059AFF4  4B CC 9B B5 */	bl Set__4cCcSFP8cCcD_Obj
/* 8059AFF8  9B BC 08 3D */	stb r29, 0x83d(r28)
/* 8059AFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8059B000  4B DC 72 25 */	bl _restgpr_28
/* 8059B004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059B008  7C 08 03 A6 */	mtlr r0
/* 8059B00C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059B010  4E 80 00 20 */	blr 
