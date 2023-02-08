lbl_80C93928:
/* 80C93928  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C9392C  7C 08 02 A6 */	mflr r0
/* 80C93930  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C93934  39 61 00 50 */	addi r11, r1, 0x50
/* 80C93938  4B 6C E8 95 */	bl _savegpr_25
/* 80C9393C  7C 7B 1B 78 */	mr r27, r3
/* 80C93940  3C 60 80 C9 */	lis r3, l_bmd@ha /* 0x80C93D88@ha */
/* 80C93944  3B C3 3D 88 */	addi r30, r3, l_bmd@l /* 0x80C93D88@l */
/* 80C93948  3B 80 00 00 */	li r28, 0
/* 80C9394C  3B 40 00 00 */	li r26, 0
/* 80C93950  3B 20 00 00 */	li r25, 0
/* 80C93954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C93958  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80C9395C:
/* 80C9395C  3B B9 07 04 */	addi r29, r25, 0x704
/* 80C93960  7C DB E8 2E */	lwzx r6, r27, r29
/* 80C93964  28 06 00 00 */	cmplwi r6, 0
/* 80C93968  40 82 00 B8 */	bne lbl_80C93A20
/* 80C9396C  88 1B 07 02 */	lbz r0, 0x702(r27)
/* 80C93970  28 00 00 00 */	cmplwi r0, 0
/* 80C93974  40 82 00 54 */	bne lbl_80C939C8
/* 80C93978  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C9397C  38 80 00 00 */	li r4, 0
/* 80C93980  90 81 00 08 */	stw r4, 8(r1)
/* 80C93984  38 00 FF FF */	li r0, -1
/* 80C93988  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9398C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C93990  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C93994  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C93998  38 80 00 00 */	li r4, 0
/* 80C9399C  38 BE 00 64 */	addi r5, r30, 0x64
/* 80C939A0  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80C939A4  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 80C939A8  38 E0 00 00 */	li r7, 0
/* 80C939AC  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 80C939B0  39 20 00 00 */	li r9, 0
/* 80C939B4  39 40 00 FF */	li r10, 0xff
/* 80C939B8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C939BC  4B 3B 90 D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C939C0  7C 7B E9 2E */	stwx r3, r27, r29
/* 80C939C4  48 00 00 98 */	b lbl_80C93A5C
lbl_80C939C8:
/* 80C939C8  28 00 00 01 */	cmplwi r0, 1
/* 80C939CC  40 82 00 90 */	bne lbl_80C93A5C
/* 80C939D0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C939D4  38 80 00 00 */	li r4, 0
/* 80C939D8  90 81 00 08 */	stw r4, 8(r1)
/* 80C939DC  38 00 FF FF */	li r0, -1
/* 80C939E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C939E4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C939E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C939EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C939F0  38 80 00 00 */	li r4, 0
/* 80C939F4  38 BE 00 6C */	addi r5, r30, 0x6c
/* 80C939F8  7C A5 D2 2E */	lhzx r5, r5, r26
/* 80C939FC  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 80C93A00  38 E0 00 00 */	li r7, 0
/* 80C93A04  39 1B 04 E4 */	addi r8, r27, 0x4e4
/* 80C93A08  39 20 00 00 */	li r9, 0
/* 80C93A0C  39 40 00 FF */	li r10, 0xff
/* 80C93A10  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C93A14  4B 3B 90 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C93A18  7C 7B E9 2E */	stwx r3, r27, r29
/* 80C93A1C  48 00 00 40 */	b lbl_80C93A5C
lbl_80C93A20:
/* 80C93A20  A8 7B 04 E4 */	lha r3, 0x4e4(r27)
/* 80C93A24  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C93A28  A8 BB 04 E8 */	lha r5, 0x4e8(r27)
/* 80C93A2C  E0 1B 04 D0 */	psq_l f0, 1232(r27), 0, 0 /* qr0 */
/* 80C93A30  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80C93A34  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 80C93A38  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C93A3C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C93A40  D0 06 00 A4 */	stfs f0, 0xa4(r6)
/* 80C93A44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C93A48  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 80C93A4C  D0 26 00 AC */	stfs f1, 0xac(r6)
/* 80C93A50  7C DB E8 2E */	lwzx r6, r27, r29
/* 80C93A54  38 C6 00 68 */	addi r6, r6, 0x68
/* 80C93A58  4B 5E CC DD */	bl JPAGetXYZRotateMtx__FsssPA4_f
lbl_80C93A5C:
/* 80C93A5C  3B 9C 00 01 */	addi r28, r28, 1
/* 80C93A60  2C 1C 00 04 */	cmpwi r28, 4
/* 80C93A64  3B 5A 00 02 */	addi r26, r26, 2
/* 80C93A68  3B 39 00 04 */	addi r25, r25, 4
/* 80C93A6C  41 80 FE F0 */	blt lbl_80C9395C
/* 80C93A70  39 61 00 50 */	addi r11, r1, 0x50
/* 80C93A74  4B 6C E7 A5 */	bl _restgpr_25
/* 80C93A78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C93A7C  7C 08 03 A6 */	mtlr r0
/* 80C93A80  38 21 00 50 */	addi r1, r1, 0x50
/* 80C93A84  4E 80 00 20 */	blr 
