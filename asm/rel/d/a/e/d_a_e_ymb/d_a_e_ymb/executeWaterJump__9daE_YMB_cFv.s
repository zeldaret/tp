lbl_8081B78C:
/* 8081B78C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8081B790  7C 08 02 A6 */	mflr r0
/* 8081B794  90 01 00 44 */	stw r0, 0x44(r1)
/* 8081B798  39 61 00 40 */	addi r11, r1, 0x40
/* 8081B79C  4B B4 6A 41 */	bl _savegpr_29
/* 8081B7A0  7C 7E 1B 78 */	mr r30, r3
/* 8081B7A4  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 8081B7A8  3B E4 18 AC */	addi r31, r4, lit_3791@l /* 0x808218AC@l */
/* 8081B7AC  80 03 06 B8 */	lwz r0, 0x6b8(r3)
/* 8081B7B0  2C 00 00 03 */	cmpwi r0, 3
/* 8081B7B4  41 82 02 0C */	beq lbl_8081B9C0
/* 8081B7B8  40 80 00 1C */	bge lbl_8081B7D4
/* 8081B7BC  2C 00 00 01 */	cmpwi r0, 1
/* 8081B7C0  41 82 00 64 */	beq lbl_8081B824
/* 8081B7C4  40 80 00 F0 */	bge lbl_8081B8B4
/* 8081B7C8  2C 00 00 00 */	cmpwi r0, 0
/* 8081B7CC  40 80 00 18 */	bge lbl_8081B7E4
/* 8081B7D0  48 00 04 28 */	b lbl_8081BBF8
lbl_8081B7D4:
/* 8081B7D4  2C 00 00 05 */	cmpwi r0, 5
/* 8081B7D8  41 82 03 90 */	beq lbl_8081BB68
/* 8081B7DC  40 80 04 1C */	bge lbl_8081BBF8
/* 8081B7E0  48 00 03 30 */	b lbl_8081BB10
lbl_8081B7E4:
/* 8081B7E4  38 80 00 14 */	li r4, 0x14
/* 8081B7E8  38 A0 00 02 */	li r5, 2
/* 8081B7EC  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8081B7F0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081B7F4  4B FF B1 89 */	bl setBck__9daE_YMB_cFiUcff
/* 8081B7F8  38 00 00 01 */	li r0, 1
/* 8081B7FC  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 8081B800  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8081B804  38 03 01 00 */	addi r0, r3, 0x100
/* 8081B808  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8081B80C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8081B810  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8081B814  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8081B818  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 8081B81C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8081B820  D0 1E 06 B0 */	stfs f0, 0x6b0(r30)
lbl_8081B824:
/* 8081B824  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081B828  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081B82C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8081B830  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081B834  38 81 00 24 */	addi r4, r1, 0x24
/* 8081B838  38 A0 00 00 */	li r5, 0
/* 8081B83C  38 C0 FF FF */	li r6, -1
/* 8081B840  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081B844  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B848  7D 89 03 A6 */	mtctr r12
/* 8081B84C  4E 80 04 21 */	bctrl 
/* 8081B850  38 7E 06 EA */	addi r3, r30, 0x6ea
/* 8081B854  38 80 40 00 */	li r4, 0x4000
/* 8081B858  38 A0 00 08 */	li r5, 8
/* 8081B85C  38 C0 04 00 */	li r6, 0x400
/* 8081B860  38 E0 01 00 */	li r7, 0x100
/* 8081B864  4B A5 4C DD */	bl cLib_addCalcAngleS__FPsssss
/* 8081B868  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8081B86C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 8081B870  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081B874  4B A5 4E CD */	bl cLib_chaseF__FPfff
/* 8081B878  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8081B87C  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 8081B880  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081B884  EC 21 00 28 */	fsubs f1, f1, f0
/* 8081B888  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8081B88C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081B890  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081B894  40 80 03 64 */	bge lbl_8081BBF8
/* 8081B898  38 00 00 02 */	li r0, 2
/* 8081B89C  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 8081B8A0  38 00 00 3C */	li r0, 0x3c
/* 8081B8A4  90 1E 06 FC */	stw r0, 0x6fc(r30)
/* 8081B8A8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8081B8AC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8081B8B0  48 00 03 48 */	b lbl_8081BBF8
lbl_8081B8B4:
/* 8081B8B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081B8B8  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081B8BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8081B8C0  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081B8C4  38 81 00 20 */	addi r4, r1, 0x20
/* 8081B8C8  38 A0 00 00 */	li r5, 0
/* 8081B8CC  38 C0 FF FF */	li r6, -1
/* 8081B8D0  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081B8D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081B8D8  7D 89 03 A6 */	mtctr r12
/* 8081B8DC  4E 80 04 21 */	bctrl 
/* 8081B8E0  38 7E 06 EA */	addi r3, r30, 0x6ea
/* 8081B8E4  38 80 C0 00 */	li r4, -16384
/* 8081B8E8  38 A0 00 08 */	li r5, 8
/* 8081B8EC  38 C0 04 00 */	li r6, 0x400
/* 8081B8F0  38 E0 01 00 */	li r7, 0x100
/* 8081B8F4  4B A5 4C 4D */	bl cLib_addCalcAngleS__FPsssss
/* 8081B8F8  7F C3 F3 78 */	mr r3, r30
/* 8081B8FC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8081B900  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8081B904  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8081B908  4B 7F EE 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B90C  7C 64 1B 78 */	mr r4, r3
/* 8081B910  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8081B914  38 A0 00 08 */	li r5, 8
/* 8081B918  38 C0 10 00 */	li r6, 0x1000
/* 8081B91C  38 E0 01 00 */	li r7, 0x100
/* 8081B920  4B A5 4C 21 */	bl cLib_addCalcAngleS__FPsssss
/* 8081B924  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8081B928  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8081B92C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8081B930  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8081B934  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 8081B938  4B A5 4E 09 */	bl cLib_chaseF__FPfff
/* 8081B93C  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 8081B940  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8081B944  40 80 00 0C */	bge lbl_8081B950
/* 8081B948  7F C3 F3 78 */	mr r3, r30
/* 8081B94C  4B FF BA 65 */	bl setElecEffect1__9daE_YMB_cFv
lbl_8081B950:
/* 8081B950  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8081B954  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 8081B958  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8081B95C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081B960  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081B964  40 81 02 94 */	ble lbl_8081BBF8
/* 8081B968  7F C3 F3 78 */	mr r3, r30
/* 8081B96C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8081B970  4B 7F ED A1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081B974  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 8081B978  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8081B97C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8081B980  38 60 00 00 */	li r3, 0
/* 8081B984  B0 7E 06 EA */	sth r3, 0x6ea(r30)
/* 8081B988  38 00 00 03 */	li r0, 3
/* 8081B98C  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 8081B990  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8081B994  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8081B998  90 7E 06 F0 */	stw r3, 0x6f0(r30)
/* 8081B99C  38 00 00 19 */	li r0, 0x19
/* 8081B9A0  90 1E 06 FC */	stw r0, 0x6fc(r30)
/* 8081B9A4  7F C3 F3 78 */	mr r3, r30
/* 8081B9A8  38 80 00 13 */	li r4, 0x13
/* 8081B9AC  38 A0 00 02 */	li r5, 2
/* 8081B9B0  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081B9B4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081B9B8  4B FF AF C5 */	bl setBck__9daE_YMB_cFiUcff
/* 8081B9BC  48 00 02 3C */	b lbl_8081BBF8
lbl_8081B9C0:
/* 8081B9C0  4B FF BB AD */	bl setElecEffect2__9daE_YMB_cFv
/* 8081B9C4  80 1E 06 F0 */	lwz r0, 0x6f0(r30)
/* 8081B9C8  2C 00 00 00 */	cmpwi r0, 0
/* 8081B9CC  40 82 00 88 */	bne lbl_8081BA54
/* 8081B9D0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8081B9D4  C0 3E 06 CC */	lfs f1, 0x6cc(r30)
/* 8081B9D8  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8081B9DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8081B9E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081B9E4  40 81 00 70 */	ble lbl_8081BA54
/* 8081B9E8  38 00 00 01 */	li r0, 1
/* 8081B9EC  90 1E 06 F0 */	stw r0, 0x6f0(r30)
/* 8081B9F0  7F C3 F3 78 */	mr r3, r30
/* 8081B9F4  4B FF BD 51 */	bl setWaterEffect1__9daE_YMB_cFv
/* 8081B9F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029D@ha */
/* 8081B9FC  38 03 02 9D */	addi r0, r3, 0x029D /* 0x0007029D@l */
/* 8081BA00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8081BA04  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BA08  38 81 00 1C */	addi r4, r1, 0x1c
/* 8081BA0C  38 A0 00 00 */	li r5, 0
/* 8081BA10  38 C0 FF FF */	li r6, -1
/* 8081BA14  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BA18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8081BA1C  7D 89 03 A6 */	mtctr r12
/* 8081BA20  4E 80 04 21 */	bctrl 
/* 8081BA24  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C0@ha */
/* 8081BA28  38 03 02 C0 */	addi r0, r3, 0x02C0 /* 0x000702C0@l */
/* 8081BA2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8081BA30  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BA34  38 81 00 18 */	addi r4, r1, 0x18
/* 8081BA38  38 A0 FF FF */	li r5, -1
/* 8081BA3C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BA40  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8081BA44  7D 89 03 A6 */	mtctr r12
/* 8081BA48  4E 80 04 21 */	bctrl 
/* 8081BA4C  38 00 00 00 */	li r0, 0
/* 8081BA50  98 1E 07 14 */	stb r0, 0x714(r30)
lbl_8081BA54:
/* 8081BA54  88 1E 07 15 */	lbz r0, 0x715(r30)
/* 8081BA58  28 00 00 00 */	cmplwi r0, 0
/* 8081BA5C  41 82 00 34 */	beq lbl_8081BA90
/* 8081BA60  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C2@ha */
/* 8081BA64  38 03 02 C2 */	addi r0, r3, 0x02C2 /* 0x000702C2@l */
/* 8081BA68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081BA6C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BA70  38 81 00 14 */	addi r4, r1, 0x14
/* 8081BA74  38 A0 00 00 */	li r5, 0
/* 8081BA78  38 C0 FF FF */	li r6, -1
/* 8081BA7C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BA80  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081BA84  7D 89 03 A6 */	mtctr r12
/* 8081BA88  4E 80 04 21 */	bctrl 
/* 8081BA8C  48 00 01 6C */	b lbl_8081BBF8
lbl_8081BA90:
/* 8081BA90  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081BA94  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081BA98  90 01 00 10 */	stw r0, 0x10(r1)
/* 8081BA9C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BAA0  38 81 00 10 */	addi r4, r1, 0x10
/* 8081BAA4  38 A0 00 00 */	li r5, 0
/* 8081BAA8  38 C0 FF FF */	li r6, -1
/* 8081BAAC  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BAB0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081BAB4  7D 89 03 A6 */	mtctr r12
/* 8081BAB8  4E 80 04 21 */	bctrl 
/* 8081BABC  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 8081BAC0  2C 00 00 00 */	cmpwi r0, 0
/* 8081BAC4  40 82 01 34 */	bne lbl_8081BBF8
/* 8081BAC8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8081BACC  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8081BAD0  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8081BAD4  4B A5 4C 6D */	bl cLib_chaseF__FPfff
/* 8081BAD8  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8081BADC  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8081BAE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081BAE4  4C 40 13 82 */	cror 2, 0, 2
/* 8081BAE8  40 82 01 10 */	bne lbl_8081BBF8
/* 8081BAEC  7F C3 F3 78 */	mr r3, r30
/* 8081BAF0  38 80 00 16 */	li r4, 0x16
/* 8081BAF4  38 A0 00 00 */	li r5, 0
/* 8081BAF8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8081BAFC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8081BB00  4B FF AE 7D */	bl setBck__9daE_YMB_cFiUcff
/* 8081BB04  38 00 00 04 */	li r0, 4
/* 8081BB08  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 8081BB0C  48 00 00 EC */	b lbl_8081BBF8
lbl_8081BB10:
/* 8081BB10  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081BB14  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081BB18  90 01 00 0C */	stw r0, 0xc(r1)
/* 8081BB1C  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BB20  38 81 00 0C */	addi r4, r1, 0xc
/* 8081BB24  38 A0 00 00 */	li r5, 0
/* 8081BB28  38 C0 FF FF */	li r6, -1
/* 8081BB2C  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BB30  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081BB34  7D 89 03 A6 */	mtctr r12
/* 8081BB38  4E 80 04 21 */	bctrl 
/* 8081BB3C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8081BB40  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8081BB44  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8081BB48  4B A5 4B F9 */	bl cLib_chaseF__FPfff
/* 8081BB4C  2C 03 00 00 */	cmpwi r3, 0
/* 8081BB50  41 82 00 A8 */	beq lbl_8081BBF8
/* 8081BB54  38 00 00 0A */	li r0, 0xa
/* 8081BB58  90 1E 06 FC */	stw r0, 0x6fc(r30)
/* 8081BB5C  38 00 00 05 */	li r0, 5
/* 8081BB60  90 1E 06 B8 */	stw r0, 0x6b8(r30)
/* 8081BB64  48 00 00 94 */	b lbl_8081BBF8
lbl_8081BB68:
/* 8081BB68  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081BB6C  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081BB70  90 01 00 08 */	stw r0, 8(r1)
/* 8081BB74  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 8081BB78  38 81 00 08 */	addi r4, r1, 8
/* 8081BB7C  38 A0 00 00 */	li r5, 0
/* 8081BB80  38 C0 FF FF */	li r6, -1
/* 8081BB84  81 9E 05 C4 */	lwz r12, 0x5c4(r30)
/* 8081BB88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081BB8C  7D 89 03 A6 */	mtctr r12
/* 8081BB90  4E 80 04 21 */	bctrl 
/* 8081BB94  80 1E 06 FC */	lwz r0, 0x6fc(r30)
/* 8081BB98  2C 00 00 00 */	cmpwi r0, 0
/* 8081BB9C  40 82 00 5C */	bne lbl_8081BBF8
/* 8081BBA0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8081BBA4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081BBA8  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 8081BBAC  4B A5 4B 95 */	bl cLib_chaseF__FPfff
/* 8081BBB0  2C 03 00 00 */	cmpwi r3, 0
/* 8081BBB4  41 82 00 44 */	beq lbl_8081BBF8
/* 8081BBB8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8081BBBC  38 80 00 01 */	li r4, 1
/* 8081BBC0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8081BBC4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8081BBC8  40 82 00 18 */	bne lbl_8081BBE0
/* 8081BBCC  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8081BBD0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8081BBD4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8081BBD8  41 82 00 08 */	beq lbl_8081BBE0
/* 8081BBDC  38 80 00 00 */	li r4, 0
lbl_8081BBE0:
/* 8081BBE0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8081BBE4  41 82 00 14 */	beq lbl_8081BBF8
/* 8081BBE8  7F C3 F3 78 */	mr r3, r30
/* 8081BBEC  38 80 00 01 */	li r4, 1
/* 8081BBF0  38 A0 00 01 */	li r5, 1
/* 8081BBF4  4B FF AE 89 */	bl setActionMode__9daE_YMB_cFii
lbl_8081BBF8:
/* 8081BBF8  39 61 00 40 */	addi r11, r1, 0x40
/* 8081BBFC  4B B4 66 2D */	bl _restgpr_29
/* 8081BC00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8081BC04  7C 08 03 A6 */	mtlr r0
/* 8081BC08  38 21 00 40 */	addi r1, r1, 0x40
/* 8081BC0C  4E 80 00 20 */	blr 
