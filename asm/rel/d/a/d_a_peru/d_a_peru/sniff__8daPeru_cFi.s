lbl_80D48E34:
/* 80D48E34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D48E38  7C 08 02 A6 */	mflr r0
/* 80D48E3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D48E40  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48E44  4B 61 93 99 */	bl _savegpr_29
/* 80D48E48  7C 7F 1B 78 */	mr r31, r3
/* 80D48E4C  3C 60 80 D5 */	lis r3, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D48E50  3B C3 C0 60 */	addi r30, r3, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D48E54  A0 1F 0E 22 */	lhz r0, 0xe22(r31)
/* 80D48E58  2C 00 00 02 */	cmpwi r0, 2
/* 80D48E5C  41 82 00 90 */	beq lbl_80D48EEC
/* 80D48E60  40 80 01 2C */	bge lbl_80D48F8C
/* 80D48E64  2C 00 FF FF */	cmpwi r0, -1
/* 80D48E68  41 82 01 24 */	beq lbl_80D48F8C
/* 80D48E6C  40 80 00 08 */	bge lbl_80D48E74
/* 80D48E70  48 00 01 1C */	b lbl_80D48F8C
lbl_80D48E74:
/* 80D48E74  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80D48E78  2C 00 00 03 */	cmpwi r0, 3
/* 80D48E7C  41 82 00 24 */	beq lbl_80D48EA0
/* 80D48E80  83 BF 0B 5C */	lwz r29, 0xb5c(r31)
/* 80D48E84  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D48E88  4B 3F CA 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48E8C  93 BF 0B 5C */	stw r29, 0xb5c(r31)
/* 80D48E90  38 00 00 03 */	li r0, 3
/* 80D48E94  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80D48E98  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48E9C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80D48EA0:
/* 80D48EA0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80D48EA4  2C 00 00 04 */	cmpwi r0, 4
/* 80D48EA8  41 82 00 24 */	beq lbl_80D48ECC
/* 80D48EAC  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80D48EB0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D48EB4  4B 3F C9 E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D48EB8  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80D48EBC  38 00 00 04 */	li r0, 4
/* 80D48EC0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80D48EC4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80D48EC8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80D48ECC:
/* 80D48ECC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D48ED0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80D48ED4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80D48ED8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80D48EDC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80D48EE0  38 00 00 02 */	li r0, 2
/* 80D48EE4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80D48EE8  48 00 00 A4 */	b lbl_80D48F8C
lbl_80D48EEC:
/* 80D48EEC  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80D48EF0  38 60 00 01 */	li r3, 1
/* 80D48EF4  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80D48EF8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D48EFC  40 82 00 18 */	bne lbl_80D48F14
/* 80D48F00  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80D48F04  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80D48F08  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D48F0C  41 82 00 08 */	beq lbl_80D48F14
/* 80D48F10  38 60 00 00 */	li r3, 0
lbl_80D48F14:
/* 80D48F14  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D48F18  41 82 00 3C */	beq lbl_80D48F54
/* 80D48F1C  3C 60 80 D5 */	lis r3, lit_5131@ha /* 0x80D4C580@ha */
/* 80D48F20  38 83 C5 80 */	addi r4, r3, lit_5131@l /* 0x80D4C580@l */
/* 80D48F24  80 64 00 00 */	lwz r3, 0(r4)
/* 80D48F28  80 04 00 04 */	lwz r0, 4(r4)
/* 80D48F2C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D48F30  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D48F34  80 04 00 08 */	lwz r0, 8(r4)
/* 80D48F38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D48F3C  7F E3 FB 78 */	mr r3, r31
/* 80D48F40  38 81 00 0C */	addi r4, r1, 0xc
/* 80D48F44  38 A0 00 00 */	li r5, 0
/* 80D48F48  4B FF F4 1D */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
/* 80D48F4C  38 60 00 01 */	li r3, 1
/* 80D48F50  48 00 00 40 */	b lbl_80D48F90
lbl_80D48F54:
/* 80D48F54  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80D48F58  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80D48F5C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D48F60  40 82 00 2C */	bne lbl_80D48F8C
/* 80D48F64  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600B4@ha */
/* 80D48F68  38 03 00 B4 */	addi r0, r3, 0x00B4 /* 0x000600B4@l */
/* 80D48F6C  90 01 00 08 */	stw r0, 8(r1)
/* 80D48F70  38 7F 05 80 */	addi r3, r31, 0x580
/* 80D48F74  38 81 00 08 */	addi r4, r1, 8
/* 80D48F78  38 A0 FF FF */	li r5, -1
/* 80D48F7C  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80D48F80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80D48F84  7D 89 03 A6 */	mtctr r12
/* 80D48F88  4E 80 04 21 */	bctrl 
lbl_80D48F8C:
/* 80D48F8C  38 60 00 00 */	li r3, 0
lbl_80D48F90:
/* 80D48F90  39 61 00 30 */	addi r11, r1, 0x30
/* 80D48F94  4B 61 92 95 */	bl _restgpr_29
/* 80D48F98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D48F9C  7C 08 03 A6 */	mtlr r0
/* 80D48FA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80D48FA4  4E 80 00 20 */	blr 
