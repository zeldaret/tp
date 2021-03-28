lbl_80D18A5C:
/* 80D18A5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D18A60  7C 08 02 A6 */	mflr r0
/* 80D18A64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D18A68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D18A6C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D18A70  7C 7E 1B 78 */	mr r30, r3
/* 80D18A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D18A78  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D18A7C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D18A80  38 80 00 00 */	li r4, 0
/* 80D18A84  90 81 00 08 */	stw r4, 8(r1)
/* 80D18A88  38 00 FF FF */	li r0, -1
/* 80D18A8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D18A90  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D18A94  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D18A98  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D18A9C  38 80 00 00 */	li r4, 0
/* 80D18AA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ADA@ha */
/* 80D18AA4  38 A5 8A DA */	addi r5, r5, 0x8ADA /* 0x00008ADA@l */
/* 80D18AA8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D18AAC  38 E0 00 00 */	li r7, 0
/* 80D18AB0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D18AB4  39 20 00 00 */	li r9, 0
/* 80D18AB8  39 40 00 FF */	li r10, 0xff
/* 80D18ABC  3D 60 80 D2 */	lis r11, lit_4006@ha
/* 80D18AC0  C0 2B 8E FC */	lfs f1, lit_4006@l(r11)
/* 80D18AC4  4B 33 3F CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D18AC8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D18ACC  38 80 00 00 */	li r4, 0
/* 80D18AD0  90 81 00 08 */	stw r4, 8(r1)
/* 80D18AD4  38 00 FF FF */	li r0, -1
/* 80D18AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D18ADC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D18AE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D18AE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D18AE8  38 80 00 00 */	li r4, 0
/* 80D18AEC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ADB@ha */
/* 80D18AF0  38 A5 8A DB */	addi r5, r5, 0x8ADB /* 0x00008ADB@l */
/* 80D18AF4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D18AF8  38 E0 00 00 */	li r7, 0
/* 80D18AFC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D18B00  39 20 00 00 */	li r9, 0
/* 80D18B04  39 40 00 FF */	li r10, 0xff
/* 80D18B08  3D 60 80 D2 */	lis r11, lit_4006@ha
/* 80D18B0C  C0 2B 8E FC */	lfs f1, lit_4006@l(r11)
/* 80D18B10  4B 33 3F 80 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D18B14  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D18B18  38 80 00 00 */	li r4, 0
/* 80D18B1C  90 81 00 08 */	stw r4, 8(r1)
/* 80D18B20  38 00 FF FF */	li r0, -1
/* 80D18B24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D18B28  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D18B2C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D18B30  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D18B34  38 80 00 00 */	li r4, 0
/* 80D18B38  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ADC@ha */
/* 80D18B3C  38 A5 8A DC */	addi r5, r5, 0x8ADC /* 0x00008ADC@l */
/* 80D18B40  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D18B44  38 E0 00 00 */	li r7, 0
/* 80D18B48  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D18B4C  39 20 00 00 */	li r9, 0
/* 80D18B50  39 40 00 FF */	li r10, 0xff
/* 80D18B54  3D 60 80 D2 */	lis r11, lit_4006@ha
/* 80D18B58  C0 2B 8E FC */	lfs f1, lit_4006@l(r11)
/* 80D18B5C  4B 33 3F 34 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D18B60  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D18B64  38 80 00 00 */	li r4, 0
/* 80D18B68  90 81 00 08 */	stw r4, 8(r1)
/* 80D18B6C  38 00 FF FF */	li r0, -1
/* 80D18B70  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D18B74  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D18B78  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D18B7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D18B80  38 80 00 00 */	li r4, 0
/* 80D18B84  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ADD@ha */
/* 80D18B88  38 A5 8A DD */	addi r5, r5, 0x8ADD /* 0x00008ADD@l */
/* 80D18B8C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80D18B90  38 E0 00 00 */	li r7, 0
/* 80D18B94  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80D18B98  39 20 00 00 */	li r9, 0
/* 80D18B9C  39 40 00 FF */	li r10, 0xff
/* 80D18BA0  3D 60 80 D2 */	lis r11, lit_4006@ha
/* 80D18BA4  C0 2B 8E FC */	lfs f1, lit_4006@l(r11)
/* 80D18BA8  4B 33 3E E8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D18BAC  88 9E 0A DE */	lbz r4, 0xade(r30)
/* 80D18BB0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D18BB4  41 82 00 18 */	beq lbl_80D18BCC
/* 80D18BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D18BBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D18BC0  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80D18BC4  7C 05 07 74 */	extsb r5, r0
/* 80D18BC8  4B 31 C6 38 */	b onSwitch__10dSv_info_cFii
lbl_80D18BCC:
/* 80D18BCC  7F C3 F3 78 */	mr r3, r30
/* 80D18BD0  4B 30 10 AC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D18BD4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D18BD8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D18BDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D18BE0  7C 08 03 A6 */	mtlr r0
/* 80D18BE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D18BE8  4E 80 00 20 */	blr 
