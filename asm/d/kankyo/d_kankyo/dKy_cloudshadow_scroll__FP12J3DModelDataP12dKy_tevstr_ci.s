lbl_801A4C10:
/* 801A4C10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A4C14  7C 08 02 A6 */	mflr r0
/* 801A4C18  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A4C1C  39 61 00 30 */	addi r11, r1, 0x30
/* 801A4C20  48 1B D5 AD */	bl _savegpr_25
/* 801A4C24  7C 79 1B 78 */	mr r25, r3
/* 801A4C28  7C 9A 23 78 */	mr r26, r4
/* 801A4C2C  7C BB 2B 78 */	mr r27, r5
/* 801A4C30  83 C3 00 64 */	lwz r30, 0x64(r3)
/* 801A4C34  A0 63 00 5C */	lhz r3, 0x5c(r3)
/* 801A4C38  3B 83 FF FF */	addi r28, r3, -1
/* 801A4C3C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A4C40  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A4C44  48 00 01 3C */	b lbl_801A4D80
lbl_801A4C48:
/* 801A4C48  80 79 00 60 */	lwz r3, 0x60(r25)
/* 801A4C4C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 801A4C50  7F A3 00 2E */	lwzx r29, r3, r0
/* 801A4C54  7F 65 DB 78 */	mr r5, r27
/* 801A4C58  A0 1A 03 78 */	lhz r0, 0x378(r26)
/* 801A4C5C  28 00 00 00 */	cmplwi r0, 0
/* 801A4C60  41 82 00 10 */	beq lbl_801A4C70
/* 801A4C64  7C 00 E0 00 */	cmpw r0, r28
/* 801A4C68  40 82 00 08 */	bne lbl_801A4C70
/* 801A4C6C  38 A0 00 02 */	li r5, 2
lbl_801A4C70:
/* 801A4C70  7F A3 EB 78 */	mr r3, r29
/* 801A4C74  7F 44 D3 78 */	mr r4, r26
/* 801A4C78  4B FF F7 A9 */	bl setLightTevColorType_MAJI_sub__FP11J3DMaterialP12dKy_tevstr_ci
/* 801A4C7C  7F C3 F3 78 */	mr r3, r30
/* 801A4C80  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 801A4C84  48 13 9E 75 */	bl getName__10JUTNameTabCFUs
/* 801A4C88  88 03 00 03 */	lbz r0, 3(r3)
/* 801A4C8C  2C 00 00 4D */	cmpwi r0, 0x4d
/* 801A4C90  40 82 00 34 */	bne lbl_801A4CC4
/* 801A4C94  88 03 00 04 */	lbz r0, 4(r3)
/* 801A4C98  2C 00 00 41 */	cmpwi r0, 0x41
/* 801A4C9C  40 82 00 28 */	bne lbl_801A4CC4
/* 801A4CA0  88 03 00 05 */	lbz r0, 5(r3)
/* 801A4CA4  2C 00 00 30 */	cmpwi r0, 0x30
/* 801A4CA8  40 82 00 1C */	bne lbl_801A4CC4
/* 801A4CAC  88 03 00 06 */	lbz r0, 6(r3)
/* 801A4CB0  7C 00 07 74 */	extsb r0, r0
/* 801A4CB4  2C 00 00 30 */	cmpwi r0, 0x30
/* 801A4CB8  41 82 00 24 */	beq lbl_801A4CDC
/* 801A4CBC  2C 00 00 31 */	cmpwi r0, 0x31
/* 801A4CC0  41 82 00 1C */	beq lbl_801A4CDC
lbl_801A4CC4:
/* 801A4CC4  88 03 00 05 */	lbz r0, 5(r3)
/* 801A4CC8  2C 00 00 31 */	cmpwi r0, 0x31
/* 801A4CCC  40 82 00 B0 */	bne lbl_801A4D7C
/* 801A4CD0  88 03 00 06 */	lbz r0, 6(r3)
/* 801A4CD4  2C 00 00 36 */	cmpwi r0, 0x36
/* 801A4CD8  40 82 00 A4 */	bne lbl_801A4D7C
lbl_801A4CDC:
/* 801A4CDC  88 03 00 06 */	lbz r0, 6(r3)
/* 801A4CE0  2C 00 00 30 */	cmpwi r0, 0x30
/* 801A4CE4  40 82 00 38 */	bne lbl_801A4D1C
/* 801A4CE8  88 1F 12 F8 */	lbz r0, 0x12f8(r31)
/* 801A4CEC  98 01 00 08 */	stb r0, 8(r1)
/* 801A4CF0  38 00 00 00 */	li r0, 0
/* 801A4CF4  98 01 00 09 */	stb r0, 9(r1)
/* 801A4CF8  98 01 00 0A */	stb r0, 0xa(r1)
/* 801A4CFC  98 01 00 0B */	stb r0, 0xb(r1)
/* 801A4D00  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 801A4D04  38 80 00 01 */	li r4, 1
/* 801A4D08  38 A1 00 08 */	addi r5, r1, 8
/* 801A4D0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4D10  81 8C 00 6C */	lwz r12, 0x6c(r12)
/* 801A4D14  7D 89 03 A6 */	mtctr r12
/* 801A4D18  4E 80 04 21 */	bctrl 
lbl_801A4D1C:
/* 801A4D1C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 801A4D20  38 80 00 01 */	li r4, 1
/* 801A4D24  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4D28  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801A4D2C  7D 89 03 A6 */	mtctr r12
/* 801A4D30  4E 80 04 21 */	bctrl 
/* 801A4D34  28 03 00 00 */	cmplwi r3, 0
/* 801A4D38  41 82 00 44 */	beq lbl_801A4D7C
/* 801A4D3C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 801A4D40  38 80 00 01 */	li r4, 1
/* 801A4D44  81 83 00 00 */	lwz r12, 0(r3)
/* 801A4D48  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 801A4D4C  7D 89 03 A6 */	mtctr r12
/* 801A4D50  4E 80 04 21 */	bctrl 
/* 801A4D54  28 03 00 00 */	cmplwi r3, 0
/* 801A4D58  41 82 00 24 */	beq lbl_801A4D7C
/* 801A4D5C  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 801A4D60  28 04 00 00 */	cmplwi r4, 0
/* 801A4D64  41 82 00 18 */	beq lbl_801A4D7C
/* 801A4D68  C0 04 11 50 */	lfs f0, 0x1150(r4)
/* 801A4D6C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801A4D70  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 801A4D74  C0 04 11 54 */	lfs f0, 0x1154(r4)
/* 801A4D78  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_801A4D7C:
/* 801A4D7C  3B 9C FF FF */	addi r28, r28, -1
lbl_801A4D80:
/* 801A4D80  2C 1C 00 00 */	cmpwi r28, 0
/* 801A4D84  40 80 FE C4 */	bge lbl_801A4C48
/* 801A4D88  39 61 00 30 */	addi r11, r1, 0x30
/* 801A4D8C  48 1B D4 8D */	bl _restgpr_25
/* 801A4D90  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A4D94  7C 08 03 A6 */	mtlr r0
/* 801A4D98  38 21 00 30 */	addi r1, r1, 0x30
/* 801A4D9C  4E 80 00 20 */	blr 
