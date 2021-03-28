lbl_80124BA4:
/* 80124BA4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80124BA8  7C 08 02 A6 */	mflr r0
/* 80124BAC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80124BB0  39 61 00 60 */	addi r11, r1, 0x60
/* 80124BB4  48 23 D6 29 */	bl _savegpr_29
/* 80124BB8  7C 7F 1B 78 */	mr r31, r3
/* 80124BBC  3C 80 80 39 */	lis r4, lit_3757@ha
/* 80124BC0  3B C4 D6 58 */	addi r30, r4, lit_3757@l
/* 80124BC4  A0 83 2F DC */	lhz r4, 0x2fdc(r3)
/* 80124BC8  28 04 00 6C */	cmplwi r4, 0x6c
/* 80124BCC  40 82 00 98 */	bne lbl_80124C64
/* 80124BD0  80 9F 07 0C */	lwz r4, 0x70c(r31)
/* 80124BD4  28 04 00 00 */	cmplwi r4, 0
/* 80124BD8  41 82 02 38 */	beq lbl_80124E10
/* 80124BDC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80124BE0  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80124BE4  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80124BE8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80124BEC  C0 04 00 7C */	lfs f0, 0x7c(r4)
/* 80124BF0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80124BF4  C0 04 00 8C */	lfs f0, 0x8c(r4)
/* 80124BF8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80124BFC  38 9F 32 58 */	addi r4, r31, 0x3258
/* 80124C00  38 A0 07 2F */	li r5, 0x72f
/* 80124C04  38 C1 00 44 */	addi r6, r1, 0x44
/* 80124C08  38 E0 00 00 */	li r7, 0
/* 80124C0C  4B FF B9 75 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124C10  28 03 00 00 */	cmplwi r3, 0
/* 80124C14  41 82 00 34 */	beq lbl_80124C48
/* 80124C18  38 9E 47 08 */	addi r4, r30, 0x4708
/* 80124C1C  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80124C20  C0 44 00 08 */	lfs f2, 8(r4)
/* 80124C24  F0 01 00 2C */	psq_st f0, 44(r1), 0, 0 /* qr0 */
/* 80124C28  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80124C2C  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80124C30  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80124C34  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80124C38  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80124C3C  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80124C40  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80124C44  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_80124C48:
/* 80124C48  7F E3 FB 78 */	mr r3, r31
/* 80124C4C  38 9F 32 5C */	addi r4, r31, 0x325c
/* 80124C50  38 A0 07 34 */	li r5, 0x734
/* 80124C54  38 C1 00 44 */	addi r6, r1, 0x44
/* 80124C58  38 E0 00 00 */	li r7, 0
/* 80124C5C  4B FF B9 25 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124C60  48 00 01 B0 */	b lbl_80124E10
lbl_80124C64:
/* 80124C64  28 04 00 77 */	cmplwi r4, 0x77
/* 80124C68  40 82 00 98 */	bne lbl_80124D00
/* 80124C6C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80124C70  28 00 00 B6 */	cmplwi r0, 0xb6
/* 80124C74  40 82 00 8C */	bne lbl_80124D00
/* 80124C78  80 7F 07 2C */	lwz r3, 0x72c(r31)
/* 80124C7C  28 03 00 00 */	cmplwi r3, 0
/* 80124C80  41 82 01 90 */	beq lbl_80124E10
/* 80124C84  C0 23 00 08 */	lfs f1, 8(r3)
/* 80124C88  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80124C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80124C90  40 80 01 80 */	bge lbl_80124E10
/* 80124C94  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 80124C98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80124C9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80124CA0  38 9E 47 14 */	addi r4, r30, 0x4714
/* 80124CA4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80124CA8  48 22 20 C5 */	bl PSMTXMultVec
/* 80124CAC  7F E3 FB 78 */	mr r3, r31
/* 80124CB0  38 9F 32 58 */	addi r4, r31, 0x3258
/* 80124CB4  38 A0 0C 14 */	li r5, 0xc14
/* 80124CB8  38 C1 00 38 */	addi r6, r1, 0x38
/* 80124CBC  38 E0 00 00 */	li r7, 0
/* 80124CC0  4B FF B8 C1 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124CC4  28 03 00 00 */	cmplwi r3, 0
/* 80124CC8  41 82 01 48 */	beq lbl_80124E10
/* 80124CCC  38 9E 47 20 */	addi r4, r30, 0x4720
/* 80124CD0  E0 04 00 00 */	psq_l f0, 0(r4), 0, 0 /* qr0 */
/* 80124CD4  C0 44 00 08 */	lfs f2, 8(r4)
/* 80124CD8  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 80124CDC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80124CE0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80124CE4  D0 23 00 98 */	stfs f1, 0x98(r3)
/* 80124CE8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80124CEC  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 80124CF0  D0 43 00 A0 */	stfs f2, 0xa0(r3)
/* 80124CF4  D0 23 00 B0 */	stfs f1, 0xb0(r3)
/* 80124CF8  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 80124CFC  48 00 01 14 */	b lbl_80124E10
lbl_80124D00:
/* 80124D00  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80124D04  28 00 00 B4 */	cmplwi r0, 0xb4
/* 80124D08  40 82 01 08 */	bne lbl_80124E10
/* 80124D0C  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 80124D10  2C 00 00 00 */	cmpwi r0, 0
/* 80124D14  41 82 00 FC */	beq lbl_80124E10
/* 80124D18  28 04 00 67 */	cmplwi r4, 0x67
/* 80124D1C  40 82 00 F4 */	bne lbl_80124E10
/* 80124D20  7F E3 FB 78 */	mr r3, r31
/* 80124D24  38 9F 32 5C */	addi r4, r31, 0x325c
/* 80124D28  38 A0 03 44 */	li r5, 0x344
/* 80124D2C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80124D30  38 E0 00 00 */	li r7, 0
/* 80124D34  4B FF B8 4D */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124D38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80124D3C  41 82 00 20 */	beq lbl_80124D5C
/* 80124D40  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 80124D44  38 63 00 24 */	addi r3, r3, 0x24
/* 80124D48  38 9E 00 68 */	addi r4, r30, 0x68
/* 80124D4C  38 BE 00 A4 */	addi r5, r30, 0xa4
/* 80124D50  48 15 BA 91 */	bl func_802807E0
/* 80124D54  38 1F 27 C8 */	addi r0, r31, 0x27c8
/* 80124D58  90 1E 00 F0 */	stw r0, 0xf0(r30)
lbl_80124D5C:
/* 80124D5C  A8 1F 27 CE */	lha r0, 0x27ce(r31)
/* 80124D60  7C 00 07 35 */	extsh. r0, r0
/* 80124D64  40 82 00 AC */	bne lbl_80124E10
/* 80124D68  A8 1F 27 CC */	lha r0, 0x27cc(r31)
/* 80124D6C  7C 00 07 35 */	extsh. r0, r0
/* 80124D70  41 82 00 A0 */	beq lbl_80124E10
/* 80124D74  3B BF 27 D4 */	addi r29, r31, 0x27d4
/* 80124D78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80124D7C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80124D80  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80124D84  38 80 00 00 */	li r4, 0
/* 80124D88  90 81 00 08 */	stw r4, 8(r1)
/* 80124D8C  38 00 FF FF */	li r0, -1
/* 80124D90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80124D94  90 81 00 10 */	stw r4, 0x10(r1)
/* 80124D98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80124D9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80124DA0  38 80 00 00 */	li r4, 0
/* 80124DA4  38 A0 03 45 */	li r5, 0x345
/* 80124DA8  7F A6 EB 78 */	mr r6, r29
/* 80124DAC  38 E0 00 00 */	li r7, 0
/* 80124DB0  39 00 00 00 */	li r8, 0
/* 80124DB4  39 20 00 00 */	li r9, 0
/* 80124DB8  39 40 00 FF */	li r10, 0xff
/* 80124DBC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80124DC0  4B F2 7C D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80124DC4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80124DC8  38 80 00 00 */	li r4, 0
/* 80124DCC  90 81 00 08 */	stw r4, 8(r1)
/* 80124DD0  38 00 FF FF */	li r0, -1
/* 80124DD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80124DD8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80124DDC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80124DE0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80124DE4  38 80 00 00 */	li r4, 0
/* 80124DE8  38 A0 03 46 */	li r5, 0x346
/* 80124DEC  7F A6 EB 78 */	mr r6, r29
/* 80124DF0  38 E0 00 00 */	li r7, 0
/* 80124DF4  39 00 00 00 */	li r8, 0
/* 80124DF8  39 20 00 00 */	li r9, 0
/* 80124DFC  39 40 00 FF */	li r10, 0xff
/* 80124E00  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80124E04  4B F2 7C 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80124E08  38 00 00 01 */	li r0, 1
/* 80124E0C  B0 1F 27 CE */	sth r0, 0x27ce(r31)
lbl_80124E10:
/* 80124E10  39 61 00 60 */	addi r11, r1, 0x60
/* 80124E14  48 23 D4 15 */	bl _restgpr_29
/* 80124E18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80124E1C  7C 08 03 A6 */	mtlr r0
/* 80124E20  38 21 00 60 */	addi r1, r1, 0x60
/* 80124E24  4E 80 00 20 */	blr 
