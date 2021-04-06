lbl_80109AAC:
/* 80109AAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80109AB0  7C 08 02 A6 */	mflr r0
/* 80109AB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80109AB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80109ABC  48 25 87 21 */	bl _savegpr_29
/* 80109AC0  7C 7F 1B 78 */	mr r31, r3
/* 80109AC4  83 C3 28 50 */	lwz r30, 0x2850(r3)
/* 80109AC8  A8 03 30 1A */	lha r0, 0x301a(r3)
/* 80109ACC  2C 00 00 05 */	cmpwi r0, 5
/* 80109AD0  40 82 00 4C */	bne lbl_80109B1C
/* 80109AD4  28 1E 00 00 */	cmplwi r30, 0
/* 80109AD8  41 82 00 38 */	beq lbl_80109B10
/* 80109ADC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80109AE0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80109AE4  41 82 00 2C */	beq lbl_80109B10
/* 80109AE8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80109AEC  4B F0 32 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80109AF0  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 80109AF4  4B F0 34 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80109AF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80109AFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80109B00  38 9F 37 F8 */	addi r4, r31, 0x37f8
/* 80109B04  38 BF 37 EC */	addi r5, r31, 0x37ec
/* 80109B08  48 23 D2 65 */	bl PSMTXMultVec
/* 80109B0C  48 00 00 B8 */	b lbl_80109BC4
lbl_80109B10:
/* 80109B10  38 00 00 06 */	li r0, 6
/* 80109B14  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80109B18  48 00 00 AC */	b lbl_80109BC4
lbl_80109B1C:
/* 80109B1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80109B20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80109B24  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80109B28  7F A3 EB 78 */	mr r3, r29
/* 80109B2C  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 80109B30  4B F6 AB 31 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80109B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109B38  41 82 00 2C */	beq lbl_80109B64
/* 80109B3C  7F E3 FB 78 */	mr r3, r31
/* 80109B40  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 80109B44  4B FF EC 6D */	bl checkHookshotStickBG__9daAlink_cFR13cBgS_PolyInfo
/* 80109B48  2C 03 00 00 */	cmpwi r3, 0
/* 80109B4C  41 82 00 18 */	beq lbl_80109B64
/* 80109B50  28 1E 00 00 */	cmplwi r30, 0
/* 80109B54  41 82 00 1C */	beq lbl_80109B70
/* 80109B58  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80109B5C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80109B60  40 82 00 10 */	bne lbl_80109B70
lbl_80109B64:
/* 80109B64  38 00 00 06 */	li r0, 6
/* 80109B68  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 80109B6C  48 00 00 58 */	b lbl_80109BC4
lbl_80109B70:
/* 80109B70  7F A3 EB 78 */	mr r3, r29
/* 80109B74  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 80109B78  4B F6 AF 45 */	bl ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80109B7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80109B80  41 82 00 44 */	beq lbl_80109BC4
/* 80109B84  38 61 00 08 */	addi r3, r1, 8
/* 80109B88  A8 9F 30 1C */	lha r4, 0x301c(r31)
/* 80109B8C  A8 BF 30 1E */	lha r5, 0x301e(r31)
/* 80109B90  38 C0 00 00 */	li r6, 0
/* 80109B94  48 15 D8 61 */	bl __ct__5csXyzFsss
/* 80109B98  7F A3 EB 78 */	mr r3, r29
/* 80109B9C  38 9F 1E 2C */	addi r4, r31, 0x1e2c
/* 80109BA0  38 A0 00 01 */	li r5, 1
/* 80109BA4  38 DF 37 EC */	addi r6, r31, 0x37ec
/* 80109BA8  38 E0 00 00 */	li r7, 0
/* 80109BAC  39 01 00 08 */	addi r8, r1, 8
/* 80109BB0  4B F6 BC D1 */	bl MoveBgTransPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
/* 80109BB4  A8 01 00 08 */	lha r0, 8(r1)
/* 80109BB8  B0 1F 30 1C */	sth r0, 0x301c(r31)
/* 80109BBC  A8 01 00 0A */	lha r0, 0xa(r1)
/* 80109BC0  B0 1F 30 1E */	sth r0, 0x301e(r31)
lbl_80109BC4:
/* 80109BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80109BC8  48 25 86 61 */	bl _restgpr_29
/* 80109BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80109BD0  7C 08 03 A6 */	mtlr r0
/* 80109BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80109BD8  4E 80 00 20 */	blr 
