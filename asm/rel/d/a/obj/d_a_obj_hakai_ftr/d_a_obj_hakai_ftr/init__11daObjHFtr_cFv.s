lbl_80C17CD0:
/* 80C17CD0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C17CD4  7C 08 02 A6 */	mflr r0
/* 80C17CD8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C17CDC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C17CE0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C17CE4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C17CE8  4B 74 A4 D1 */	bl _savegpr_20
/* 80C17CEC  7C 7E 1B 78 */	mr r30, r3
/* 80C17CF0  3C 60 80 C2 */	lis r3, l_bmdIdx@ha /* 0x80C180B8@ha */
/* 80C17CF4  3B 23 80 B8 */	addi r25, r3, l_bmdIdx@l /* 0x80C180B8@l */
/* 80C17CF8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C17CFC  54 1A 07 3E */	clrlwi r26, r0, 0x1c
/* 80C17D00  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C17D04  38 80 00 FF */	li r4, 0xff
/* 80C17D08  38 A0 00 00 */	li r5, 0
/* 80C17D0C  7F C6 F3 78 */	mr r6, r30
/* 80C17D10  4B 46 BB 51 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C17D14  3B E0 00 00 */	li r31, 0
/* 80C17D18  3B A0 00 00 */	li r29, 0
/* 80C17D1C  3B 80 00 00 */	li r28, 0
/* 80C17D20  57 40 18 38 */	slwi r0, r26, 3
/* 80C17D24  3B 19 00 70 */	addi r24, r25, 0x70
/* 80C17D28  7F 18 02 14 */	add r24, r24, r0
/* 80C17D2C  57 55 10 3A */	slwi r21, r26, 2
/* 80C17D30  3A F9 00 88 */	addi r23, r25, 0x88
/* 80C17D34  3A D9 00 94 */	addi r22, r25, 0x94
/* 80C17D38  3B 5E 05 AC */	addi r26, r30, 0x5ac
/* 80C17D3C  CB F9 00 A0 */	lfd f31, 0xa0(r25)
/* 80C17D40  3F 60 43 30 */	lis r27, 0x4330
lbl_80C17D44:
/* 80C17D44  7E 9E E2 14 */	add r20, r30, r28
/* 80C17D48  38 74 05 E8 */	addi r3, r20, 0x5e8
/* 80C17D4C  38 99 00 24 */	addi r4, r25, 0x24
/* 80C17D50  4B 46 CB 65 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C17D54  93 54 06 2C */	stw r26, 0x62c(r20)
/* 80C17D58  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80C17D5C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80C17D60  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C17D64  7C 18 E8 2E */	lwzx r0, r24, r29
/* 80C17D68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C17D6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C17D70  93 61 00 18 */	stw r27, 0x18(r1)
/* 80C17D74  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C17D78  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C17D7C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C17D80  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C17D84  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C17D88  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C17D8C  3A 94 07 0C */	addi r20, r20, 0x70c
/* 80C17D90  7E 83 A3 78 */	mr r3, r20
/* 80C17D94  38 81 00 08 */	addi r4, r1, 8
/* 80C17D98  4B 65 74 45 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80C17D9C  7E 83 A3 78 */	mr r3, r20
/* 80C17DA0  7C 17 A8 2E */	lwzx r0, r23, r21
/* 80C17DA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C17DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C17DAC  93 61 00 20 */	stw r27, 0x20(r1)
/* 80C17DB0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C17DB4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80C17DB8  4B 65 74 41 */	bl SetH__8cM3dGCylFf
/* 80C17DBC  7E 83 A3 78 */	mr r3, r20
/* 80C17DC0  7C 16 A8 2E */	lwzx r0, r22, r21
/* 80C17DC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C17DC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C17DCC  93 61 00 28 */	stw r27, 0x28(r1)
/* 80C17DD0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C17DD4  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80C17DD8  4B 65 74 29 */	bl SetR__8cM3dGCylFf
/* 80C17DDC  3B FF 00 01 */	addi r31, r31, 1
/* 80C17DE0  2C 1F 00 02 */	cmpwi r31, 2
/* 80C17DE4  3B BD 00 04 */	addi r29, r29, 4
/* 80C17DE8  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 80C17DEC  41 80 FF 58 */	blt lbl_80C17D44
/* 80C17DF0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C17DF4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C17DF8  39 61 00 60 */	addi r11, r1, 0x60
/* 80C17DFC  4B 74 A4 09 */	bl _restgpr_20
/* 80C17E00  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C17E04  7C 08 03 A6 */	mtlr r0
/* 80C17E08  38 21 00 70 */	addi r1, r1, 0x70
/* 80C17E0C  4E 80 00 20 */	blr 
