lbl_801F09AC:
/* 801F09AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F09B0  7C 08 02 A6 */	mflr r0
/* 801F09B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F09B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F09BC  7C 7F 1B 78 */	mr r31, r3
/* 801F09C0  38 00 00 01 */	li r0, 1
/* 801F09C4  98 03 01 BF */	stb r0, 0x1bf(r3)
/* 801F09C8  88 03 01 BC */	lbz r0, 0x1bc(r3)
/* 801F09CC  28 00 00 01 */	cmplwi r0, 1
/* 801F09D0  41 82 00 14 */	beq lbl_801F09E4
/* 801F09D4  28 00 00 03 */	cmplwi r0, 3
/* 801F09D8  41 82 00 0C */	beq lbl_801F09E4
/* 801F09DC  28 00 00 04 */	cmplwi r0, 4
/* 801F09E0  40 82 00 88 */	bne lbl_801F0A68
lbl_801F09E4:
/* 801F09E4  80 7F 00 08 */	lwz r3, 8(r31)
/* 801F09E8  88 03 00 0C */	lbz r0, 0xc(r3)
/* 801F09EC  2C 00 00 00 */	cmpwi r0, 0
/* 801F09F0  40 82 00 0C */	bne lbl_801F09FC
/* 801F09F4  38 60 00 00 */	li r3, 0
/* 801F09F8  48 00 01 04 */	b lbl_801F0AFC
lbl_801F09FC:
/* 801F09FC  80 1F 00 04 */	lwz r0, 4(r31)
/* 801F0A00  28 00 00 00 */	cmplwi r0, 0
/* 801F0A04  40 82 00 64 */	bne lbl_801F0A68
/* 801F0A08  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 801F0A0C  90 1F 00 04 */	stw r0, 4(r31)
/* 801F0A10  7F E3 FB 78 */	mr r3, r31
/* 801F0A14  4B FF EE F1 */	bl screenSet__12dMenu_save_cFv
/* 801F0A18  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F0A1C  28 00 00 01 */	cmplwi r0, 1
/* 801F0A20  40 82 00 14 */	bne lbl_801F0A34
/* 801F0A24  38 00 00 01 */	li r0, 1
/* 801F0A28  98 1F 01 B0 */	stb r0, 0x1b0(r31)
/* 801F0A2C  38 00 00 00 */	li r0, 0
/* 801F0A30  98 1F 01 BF */	stb r0, 0x1bf(r31)
lbl_801F0A34:
/* 801F0A34  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F0A38  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F0A3C  4B E2 66 7D */	bl command_attach__15mDoMemCd_Ctrl_cFv
/* 801F0A40  80 7F 00 08 */	lwz r3, 8(r31)
/* 801F0A44  28 03 00 00 */	cmplwi r3, 0
/* 801F0A48  41 82 00 18 */	beq lbl_801F0A60
/* 801F0A4C  38 80 00 01 */	li r4, 1
/* 801F0A50  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801F0A54  81 8C 00 08 */	lwz r12, 8(r12)
/* 801F0A58  7D 89 03 A6 */	mtctr r12
/* 801F0A5C  4E 80 04 21 */	bctrl 
lbl_801F0A60:
/* 801F0A60  38 00 00 00 */	li r0, 0
/* 801F0A64  90 1F 00 08 */	stw r0, 8(r31)
lbl_801F0A68:
/* 801F0A68  38 00 00 00 */	li r0, 0
/* 801F0A6C  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F0A70  38 60 00 01 */	li r3, 1
/* 801F0A74  98 7F 21 90 */	stb r3, 0x2190(r31)
/* 801F0A78  88 1F 01 BC */	lbz r0, 0x1bc(r31)
/* 801F0A7C  2C 00 00 02 */	cmpwi r0, 2
/* 801F0A80  41 82 00 4C */	beq lbl_801F0ACC
/* 801F0A84  40 80 00 10 */	bge lbl_801F0A94
/* 801F0A88  2C 00 00 01 */	cmpwi r0, 1
/* 801F0A8C  40 80 00 14 */	bge lbl_801F0AA0
/* 801F0A90  48 00 00 44 */	b lbl_801F0AD4
lbl_801F0A94:
/* 801F0A94  2C 00 00 05 */	cmpwi r0, 5
/* 801F0A98  40 80 00 3C */	bge lbl_801F0AD4
/* 801F0A9C  48 00 00 10 */	b lbl_801F0AAC
lbl_801F0AA0:
/* 801F0AA0  38 00 00 06 */	li r0, 6
/* 801F0AA4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F0AA8  48 00 00 2C */	b lbl_801F0AD4
lbl_801F0AAC:
/* 801F0AAC  98 7F 01 B6 */	stb r3, 0x1b6(r31)
/* 801F0AB0  7F E3 FB 78 */	mr r3, r31
/* 801F0AB4  38 80 03 CE */	li r4, 0x3ce
/* 801F0AB8  38 A0 00 01 */	li r5, 1
/* 801F0ABC  48 00 2A 01 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F0AC0  38 00 00 00 */	li r0, 0
/* 801F0AC4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F0AC8  48 00 00 0C */	b lbl_801F0AD4
lbl_801F0ACC:
/* 801F0ACC  38 00 00 2B */	li r0, 0x2b
/* 801F0AD0  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F0AD4:
/* 801F0AD4  38 00 00 02 */	li r0, 2
/* 801F0AD8  98 1F 01 BA */	stb r0, 0x1ba(r31)
/* 801F0ADC  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801F0AE0  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801F0AE4  88 03 00 DD */	lbz r0, 0xdd(r3)
/* 801F0AE8  28 00 00 00 */	cmplwi r0, 0
/* 801F0AEC  41 82 00 0C */	beq lbl_801F0AF8
/* 801F0AF0  38 80 00 01 */	li r4, 1
/* 801F0AF4  48 02 D5 D1 */	bl resetMiniGameItem__13dMeter2Info_cFb
lbl_801F0AF8:
/* 801F0AF8  38 60 00 01 */	li r3, 1
lbl_801F0AFC:
/* 801F0AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F0B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F0B04  7C 08 03 A6 */	mtlr r0
/* 801F0B08  38 21 00 10 */	addi r1, r1, 0x10
/* 801F0B0C  4E 80 00 20 */	blr 
