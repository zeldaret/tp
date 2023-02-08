lbl_80D48A7C:
/* 80D48A7C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D48A80  7C 08 02 A6 */	mflr r0
/* 80D48A84  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D48A88  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48A8C  4B 61 97 51 */	bl _savegpr_29
/* 80D48A90  7C 7F 1B 78 */	mr r31, r3
/* 80D48A94  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D48A98  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D48A9C  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80D48AA0  2C 00 00 02 */	cmpwi r0, 2
/* 80D48AA4  41 82 00 B4 */	beq lbl_80D48B58
/* 80D48AA8  40 80 00 1C */	bge lbl_80D48AC4
/* 80D48AAC  2C 00 00 00 */	cmpwi r0, 0
/* 80D48AB0  41 82 00 24 */	beq lbl_80D48AD4
/* 80D48AB4  40 80 00 24 */	bge lbl_80D48AD8
/* 80D48AB8  2C 00 FF FF */	cmpwi r0, -1
/* 80D48ABC  40 80 01 78 */	bge lbl_80D48C34
/* 80D48AC0  48 00 01 7C */	b lbl_80D48C3C
lbl_80D48AC4:
/* 80D48AC4  2C 00 00 04 */	cmpwi r0, 4
/* 80D48AC8  41 82 01 00 */	beq lbl_80D48BC8
/* 80D48ACC  40 80 01 70 */	bge lbl_80D48C3C
/* 80D48AD0  48 00 00 B0 */	b lbl_80D48B80
lbl_80D48AD4:
/* 80D48AD4  90 9F 0E 58 */	stw r4, 0xe58(r31)
lbl_80D48AD8:
/* 80D48AD8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D48ADC  2C 00 00 02 */	cmpwi r0, 2
/* 80D48AE0  41 82 00 24 */	beq lbl_80D48B04
/* 80D48AE4  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D48AE8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D48AEC  4B 3F CD AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48AF0  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D48AF4  38 00 00 02 */	li r0, 2
/* 80D48AF8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D48AFC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48B00  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D48B04:
/* 80D48B04  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D48B08  2C 00 00 06 */	cmpwi r0, 6
/* 80D48B0C  41 82 00 24 */	beq lbl_80D48B30
/* 80D48B10  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D48B14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D48B18  4B 3F CD 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48B1C  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D48B20  38 00 00 06 */	li r0, 6
/* 80D48B24  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D48B28  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48B2C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D48B30:
/* 80D48B30  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D48B34  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D48B38  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D48B3C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D48B40  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D48B44  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80D48B48  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80D48B4C  38 00 00 02 */	li r0, 2
/* 80D48B50  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D48B54  48 00 00 E8 */	b lbl_80D48C3C
lbl_80D48B58:
/* 80D48B58  80 1F 0E 58 */	lwz r0, 0xe58(r31)
/* 80D48B5C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D48B60  2C 00 00 02 */	cmpwi r0, 2
/* 80D48B64  40 82 00 10 */	bne lbl_80D48B74
/* 80D48B68  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80D48B6C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D48B70  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80D48B74:
/* 80D48B74  38 00 00 03 */	li r0, 3
/* 80D48B78  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D48B7C  48 00 00 C0 */	b lbl_80D48C3C
lbl_80D48B80:
/* 80D48B80  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D48B84  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80D48B88  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 80D48B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D48B90  4C 41 13 82 */	cror 2, 1, 2
/* 80D48B94  40 82 00 A8 */	bne lbl_80D48C3C
/* 80D48B98  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80D48B9C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D48BA0  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80D48BA4  D0 3F 04 F8 */	stfs f1, 0x4f8(r31)
/* 80D48BA8  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80D48BAC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D48BB0  D0 3F 05 00 */	stfs f1, 0x500(r31)
/* 80D48BB4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80D48BB8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80D48BBC  38 00 00 04 */	li r0, 4
/* 80D48BC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D48BC4  48 00 00 78 */	b lbl_80D48C3C
lbl_80D48BC8:
/* 80D48BC8  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80D48BCC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D48BD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D48BD4  40 80 00 68 */	bge lbl_80D48C3C
/* 80D48BD8  C0 3F 0D F4 */	lfs f1, 0xdf4(r31)
/* 80D48BDC  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 80D48BE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D48BE4  4C 40 13 82 */	cror 2, 0, 2
/* 80D48BE8  40 82 00 54 */	bne lbl_80D48C3C
/* 80D48BEC  38 A0 00 00 */	li r5, 0
/* 80D48BF0  80 1F 0E 58 */	lwz r0, 0xe58(r31)
/* 80D48BF4  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D48BF8  2C 00 00 01 */	cmpwi r0, 1
/* 80D48BFC  40 82 00 08 */	bne lbl_80D48C04
/* 80D48C00  38 A0 00 01 */	li r5, 1
lbl_80D48C04:
/* 80D48C04  3C 60 80 D5 */	lis r3, lit_5029@ha /* 0x80D4C568@ha */
/* 80D48C08  38 83 C5 68 */	addi r4, r3, lit_5029@l /* 0x80D4C568@l */
/* 80D48C0C  80 64 00 00 */	lwz r3, 0(r4)
/* 80D48C10  80 04 00 04 */	lwz r0, 4(r4)
/* 80D48C14  90 61 00 08 */	stw r3, 8(r1)
/* 80D48C18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D48C1C  80 04 00 08 */	lwz r0, 8(r4)
/* 80D48C20  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D48C24  7F E3 FB 78 */	mr r3, r31
/* 80D48C28  38 81 00 08 */	addi r4, r1, 8
/* 80D48C2C  4B FF F7 39 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D48C30  48 00 00 0C */	b lbl_80D48C3C
lbl_80D48C34:
/* 80D48C34  38 00 00 00 */	li r0, 0
/* 80D48C38  90 1F 0E 58 */	stw r0, 0xe58(r31)
lbl_80D48C3C:
/* 80D48C3C  38 60 00 00 */	li r3, 0
/* 80D48C40  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48C44  4B 61 95 E5 */	bl _restgpr_29
/* 80D48C48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D48C4C  7C 08 03 A6 */	mtlr r0
/* 80D48C50  38 21 00 30 */	addi r1, r1, 0x30
/* 80D48C54  4E 80 00 20 */	blr 
