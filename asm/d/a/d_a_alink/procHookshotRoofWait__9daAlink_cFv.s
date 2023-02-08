lbl_8010C9F4:
/* 8010C9F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010C9F8  7C 08 02 A6 */	mflr r0
/* 8010C9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010CA00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010CA04  93 C1 00 08 */	stw r30, 8(r1)
/* 8010CA08  7C 7F 1B 78 */	mr r31, r3
/* 8010CA0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010CA10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010CA14  3B C4 5D 7C */	addi r30, r4, 0x5d7c
/* 8010CA18  80 03 31 7C */	lwz r0, 0x317c(r3)
/* 8010CA1C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8010CA20  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8010CA24  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8010CA28  41 82 00 64 */	beq lbl_8010CA8C
/* 8010CA2C  38 80 00 01 */	li r4, 1
/* 8010CA30  4B FC 21 A9 */	bl checkSubjectEnd__9daAlink_cFi
/* 8010CA34  2C 03 00 00 */	cmpwi r3, 0
/* 8010CA38  41 82 00 34 */	beq lbl_8010CA6C
/* 8010CA3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010CA40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010CA44  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010CA48  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 8010CA4C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010CA50  38 00 00 00 */	li r0, 0
/* 8010CA54  B0 1F 05 9E */	sth r0, 0x59e(r31)
/* 8010CA58  B0 1F 05 9C */	sth r0, 0x59c(r31)
/* 8010CA5C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010CA60  54 00 00 C0 */	rlwinm r0, r0, 0, 3, 0
/* 8010CA64  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8010CA68  48 00 00 7C */	b lbl_8010CAE4
lbl_8010CA6C:
/* 8010CA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010CA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010CA74  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010CA78  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8010CA7C  41 82 00 68 */	beq lbl_8010CAE4
/* 8010CA80  7F E3 FB 78 */	mr r3, r31
/* 8010CA84  4B FC 1E 1D */	bl setBodyAngleToCamera__9daAlink_cFv
/* 8010CA88  48 00 00 5C */	b lbl_8010CAE4
lbl_8010CA8C:
/* 8010CA8C  48 07 4B B5 */	bl dCam_getBody__Fv
/* 8010CA90  38 80 00 04 */	li r4, 4
/* 8010CA94  48 05 4A 61 */	bl ChangeModeOK__9dCamera_cFl
/* 8010CA98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010CA9C  41 82 00 48 */	beq lbl_8010CAE4
/* 8010CAA0  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 8010CAA4  64 00 04 00 */	oris r0, r0, 0x400
/* 8010CAA8  90 1F 05 80 */	stw r0, 0x580(r31)
/* 8010CAAC  80 1F 31 7C */	lwz r0, 0x317c(r31)
/* 8010CAB0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8010CAB4  7C 1E 00 2E */	lwzx r0, r30, r0
/* 8010CAB8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8010CABC  41 82 00 28 */	beq lbl_8010CAE4
/* 8010CAC0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010CAC4  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 8010CAC8  38 00 00 00 */	li r0, 0
/* 8010CACC  B0 1F 31 0A */	sth r0, 0x310a(r31)
/* 8010CAD0  7F E3 FB 78 */	mr r3, r31
/* 8010CAD4  4B FC 20 21 */	bl setSubjectMode__9daAlink_cFv
/* 8010CAD8  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010CADC  64 00 60 00 */	oris r0, r0, 0x6000
/* 8010CAE0  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010CAE4:
/* 8010CAE4  7F E3 FB 78 */	mr r3, r31
/* 8010CAE8  4B FF EE 85 */	bl commonHookshotRoofWait__9daAlink_cFv
/* 8010CAEC  2C 03 00 00 */	cmpwi r3, 0
/* 8010CAF0  41 82 00 0C */	beq lbl_8010CAFC
/* 8010CAF4  38 60 00 01 */	li r3, 1
/* 8010CAF8  48 00 01 70 */	b lbl_8010CC68
lbl_8010CAFC:
/* 8010CAFC  7F E3 FB 78 */	mr r3, r31
/* 8010CB00  4B FF BD A1 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010CB04  2C 03 00 00 */	cmpwi r3, 0
/* 8010CB08  41 82 00 20 */	beq lbl_8010CB28
/* 8010CB0C  7F E3 FB 78 */	mr r3, r31
/* 8010CB10  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8010CB14  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 8010CB18  7D 89 03 A6 */	mtctr r12
/* 8010CB1C  4E 80 04 21 */	bctrl 
/* 8010CB20  2C 03 00 00 */	cmpwi r3, 0
/* 8010CB24  40 82 00 30 */	bne lbl_8010CB54
lbl_8010CB28:
/* 8010CB28  7F E3 FB 78 */	mr r3, r31
/* 8010CB2C  38 80 00 01 */	li r4, 1
/* 8010CB30  4B FA 67 39 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 8010CB34  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 8010CB38  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010CB3C  41 82 00 18 */	beq lbl_8010CB54
/* 8010CB40  7F E3 FB 78 */	mr r3, r31
/* 8010CB44  38 80 00 01 */	li r4, 1
/* 8010CB48  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 8010CB4C  4B FB 9E FD */	bl procFallInit__9daAlink_cFif
/* 8010CB50  48 00 01 18 */	b lbl_8010CC68
lbl_8010CB54:
/* 8010CB54  7F E3 FB 78 */	mr r3, r31
/* 8010CB58  38 80 00 00 */	li r4, 0
/* 8010CB5C  4B FA 6B D9 */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 8010CB60  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8010CB64  2C 00 00 00 */	cmpwi r0, 0
/* 8010CB68  40 82 00 B4 */	bne lbl_8010CC1C
/* 8010CB6C  7F E3 FB 78 */	mr r3, r31
/* 8010CB70  38 80 00 47 */	li r4, 0x47
/* 8010CB74  4B FB 35 F1 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010CB78  2C 03 00 00 */	cmpwi r3, 0
/* 8010CB7C  41 82 00 10 */	beq lbl_8010CB8C
/* 8010CB80  38 00 00 01 */	li r0, 1
/* 8010CB84  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8010CB88  48 00 00 28 */	b lbl_8010CBB0
lbl_8010CB8C:
/* 8010CB8C  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010CB90  2C 00 00 00 */	cmpwi r0, 0
/* 8010CB94  41 82 00 1C */	beq lbl_8010CBB0
/* 8010CB98  7F E3 FB 78 */	mr r3, r31
/* 8010CB9C  4B FA 5A 69 */	bl itemButton__9daAlink_cFv
/* 8010CBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8010CBA4  40 82 00 0C */	bne lbl_8010CBB0
/* 8010CBA8  38 00 00 00 */	li r0, 0
/* 8010CBAC  B0 1F 30 12 */	sth r0, 0x3012(r31)
lbl_8010CBB0:
/* 8010CBB0  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8010CBB4  7F C3 F3 78 */	mr r3, r30
/* 8010CBB8  48 05 19 15 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010CBBC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010CBC0  40 82 00 48 */	bne lbl_8010CC08
/* 8010CBC4  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8010CBC8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 8010CBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010CBD0  41 81 00 20 */	bgt lbl_8010CBF0
/* 8010CBD4  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010CBD8  2C 00 00 00 */	cmpwi r0, 0
/* 8010CBDC  40 82 00 14 */	bne lbl_8010CBF0
/* 8010CBE0  7F E3 FB 78 */	mr r3, r31
/* 8010CBE4  4B FF BC BD */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010CBE8  2C 03 00 00 */	cmpwi r3, 0
/* 8010CBEC  41 82 00 78 */	beq lbl_8010CC64
lbl_8010CBF0:
/* 8010CBF0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8010CBF4  3C 60 80 39 */	lis r3, m__22daAlinkHIO_hookshot_c0@ha /* 0x8038E9C0@ha */
/* 8010CBF8  38 63 E9 C0 */	addi r3, r3, m__22daAlinkHIO_hookshot_c0@l /* 0x8038E9C0@l */
/* 8010CBFC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8010CC00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010CC04  40 81 00 60 */	ble lbl_8010CC64
lbl_8010CC08:
/* 8010CC08  7F E3 FB 78 */	mr r3, r31
/* 8010CC0C  4B FF E6 D1 */	bl setHookshotRoofWaitAnime__9daAlink_cFv
/* 8010CC10  38 00 00 01 */	li r0, 1
/* 8010CC14  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010CC18  48 00 00 4C */	b lbl_8010CC64
lbl_8010CC1C:
/* 8010CC1C  7F E3 FB 78 */	mr r3, r31
/* 8010CC20  4B FF BC 81 */	bl checkHookshotRoofLv7Boss__9daAlink_cFv
/* 8010CC24  2C 03 00 00 */	cmpwi r3, 0
/* 8010CC28  40 82 00 3C */	bne lbl_8010CC64
/* 8010CC2C  7F E3 FB 78 */	mr r3, r31
/* 8010CC30  38 80 00 47 */	li r4, 0x47
/* 8010CC34  4B FB 35 31 */	bl checkSetItemTrigger__9daAlink_cFi
/* 8010CC38  2C 03 00 00 */	cmpwi r3, 0
/* 8010CC3C  40 82 00 10 */	bne lbl_8010CC4C
/* 8010CC40  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 8010CC44  2C 00 00 00 */	cmpwi r0, 0
/* 8010CC48  41 82 00 14 */	beq lbl_8010CC5C
lbl_8010CC4C:
/* 8010CC4C  7F E3 FB 78 */	mr r3, r31
/* 8010CC50  80 9F 28 58 */	lwz r4, 0x2858(r31)
/* 8010CC54  48 00 00 2D */	bl procHookshotRoofShootInit__9daAlink_cFP10fopAc_ac_c
/* 8010CC58  48 00 00 10 */	b lbl_8010CC68
lbl_8010CC5C:
/* 8010CC5C  7F E3 FB 78 */	mr r3, r31
/* 8010CC60  4B FF E7 4D */	bl hookshotRoofTurn__9daAlink_cFv
lbl_8010CC64:
/* 8010CC64  38 60 00 01 */	li r3, 1
lbl_8010CC68:
/* 8010CC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010CC6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010CC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010CC74  7C 08 03 A6 */	mtlr r0
/* 8010CC78  38 21 00 10 */	addi r1, r1, 0x10
/* 8010CC7C  4E 80 00 20 */	blr 
