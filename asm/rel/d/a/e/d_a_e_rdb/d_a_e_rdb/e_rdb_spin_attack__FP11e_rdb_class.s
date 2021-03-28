lbl_80765E70:
/* 80765E70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80765E74  7C 08 02 A6 */	mflr r0
/* 80765E78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80765E7C  39 61 00 70 */	addi r11, r1, 0x70
/* 80765E80  4B BF C3 4C */	b _savegpr_25
/* 80765E84  7C 7C 1B 78 */	mr r28, r3
/* 80765E88  3C 80 80 77 */	lis r4, lit_4007@ha
/* 80765E8C  3B C4 B4 5C */	addi r30, r4, lit_4007@l
/* 80765E90  80 83 05 C8 */	lwz r4, 0x5c8(r3)
/* 80765E94  3B E0 00 00 */	li r31, 0
/* 80765E98  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 80765E9C  2C 00 00 02 */	cmpwi r0, 2
/* 80765EA0  41 82 00 C0 */	beq lbl_80765F60
/* 80765EA4  40 80 00 14 */	bge lbl_80765EB8
/* 80765EA8  2C 00 00 00 */	cmpwi r0, 0
/* 80765EAC  41 82 00 18 */	beq lbl_80765EC4
/* 80765EB0  40 80 00 5C */	bge lbl_80765F0C
/* 80765EB4  48 00 01 7C */	b lbl_80766030
lbl_80765EB8:
/* 80765EB8  2C 00 00 04 */	cmpwi r0, 4
/* 80765EBC  40 80 01 74 */	bge lbl_80766030
/* 80765EC0  48 00 01 34 */	b lbl_80765FF4
lbl_80765EC4:
/* 80765EC4  38 80 00 0B */	li r4, 0xb
/* 80765EC8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80765ECC  38 A0 00 00 */	li r5, 0
/* 80765ED0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80765ED4  4B FF F2 1D */	bl anm_init__FP11e_rdb_classifUcf
/* 80765ED8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070577@ha */
/* 80765EDC  38 03 05 77 */	addi r0, r3, 0x0577 /* 0x00070577@l */
/* 80765EE0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80765EE4  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80765EE8  38 81 00 28 */	addi r4, r1, 0x28
/* 80765EEC  38 A0 FF FF */	li r5, -1
/* 80765EF0  81 9C 05 D0 */	lwz r12, 0x5d0(r28)
/* 80765EF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80765EF8  7D 89 03 A6 */	mtctr r12
/* 80765EFC  4E 80 04 21 */	bctrl 
/* 80765F00  38 00 00 01 */	li r0, 1
/* 80765F04  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80765F08  48 00 01 28 */	b lbl_80766030
lbl_80765F0C:
/* 80765F0C  38 60 00 01 */	li r3, 1
/* 80765F10  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80765F14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80765F18  40 82 00 18 */	bne lbl_80765F30
/* 80765F1C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80765F20  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80765F24  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80765F28  41 82 00 08 */	beq lbl_80765F30
/* 80765F2C  38 60 00 00 */	li r3, 0
lbl_80765F30:
/* 80765F30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80765F34  41 82 00 FC */	beq lbl_80766030
/* 80765F38  7F 83 E3 78 */	mr r3, r28
/* 80765F3C  38 80 00 0A */	li r4, 0xa
/* 80765F40  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80765F44  38 A0 00 02 */	li r5, 2
/* 80765F48  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80765F4C  4B FF F1 A5 */	bl anm_init__FP11e_rdb_classifUcf
/* 80765F50  38 00 00 02 */	li r0, 2
/* 80765F54  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80765F58  38 00 00 66 */	li r0, 0x66
/* 80765F5C  B0 1C 06 B8 */	sth r0, 0x6b8(r28)
lbl_80765F60:
/* 80765F60  38 00 00 02 */	li r0, 2
/* 80765F64  98 1C 06 C4 */	stb r0, 0x6c4(r28)
/* 80765F68  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007057C@ha */
/* 80765F6C  38 03 05 7C */	addi r0, r3, 0x057C /* 0x0007057C@l */
/* 80765F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80765F74  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80765F78  38 81 00 24 */	addi r4, r1, 0x24
/* 80765F7C  38 A0 00 00 */	li r5, 0
/* 80765F80  38 C0 FF FF */	li r6, -1
/* 80765F84  81 9C 05 D0 */	lwz r12, 0x5d0(r28)
/* 80765F88  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80765F8C  7D 89 03 A6 */	mtctr r12
/* 80765F90  4E 80 04 21 */	bctrl 
/* 80765F94  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80765F98  38 03 1B 58 */	addi r0, r3, 0x1b58
/* 80765F9C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80765FA0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80765FA4  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80765FA8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80765FAC  D0 1C 06 E4 */	stfs f0, 0x6e4(r28)
/* 80765FB0  A8 7C 06 B0 */	lha r3, 0x6b0(r28)
/* 80765FB4  3C 63 00 01 */	addis r3, r3, 1
/* 80765FB8  38 03 80 00 */	addi r0, r3, -32768
/* 80765FBC  B0 1C 06 E8 */	sth r0, 0x6e8(r28)
/* 80765FC0  3B E0 00 01 */	li r31, 1
/* 80765FC4  A8 1C 06 B8 */	lha r0, 0x6b8(r28)
/* 80765FC8  2C 00 00 00 */	cmpwi r0, 0
/* 80765FCC  40 82 00 64 */	bne lbl_80766030
/* 80765FD0  7F 83 E3 78 */	mr r3, r28
/* 80765FD4  38 80 00 09 */	li r4, 9
/* 80765FD8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80765FDC  38 A0 00 00 */	li r5, 0
/* 80765FE0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80765FE4  4B FF F1 0D */	bl anm_init__FP11e_rdb_classifUcf
/* 80765FE8  38 00 00 03 */	li r0, 3
/* 80765FEC  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80765FF0  48 00 00 40 */	b lbl_80766030
lbl_80765FF4:
/* 80765FF4  38 60 00 01 */	li r3, 1
/* 80765FF8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80765FFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80766000  40 82 00 18 */	bne lbl_80766018
/* 80766004  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80766008  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8076600C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80766010  41 82 00 08 */	beq lbl_80766018
/* 80766014  38 60 00 00 */	li r3, 0
lbl_80766018:
/* 80766018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8076601C  41 82 00 14 */	beq lbl_80766030
/* 80766020  38 00 00 01 */	li r0, 1
/* 80766024  B0 1C 06 7E */	sth r0, 0x67e(r28)
/* 80766028  38 00 00 00 */	li r0, 0
/* 8076602C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
lbl_80766030:
/* 80766030  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80766034  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80766038  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8076603C  4B B0 9A 44 */	b cLib_addCalc0__FPfff
/* 80766040  2C 1F 00 00 */	cmpwi r31, 0
/* 80766044  41 82 01 2C */	beq lbl_80766170
/* 80766048  38 7C 08 20 */	addi r3, r28, 0x820
/* 8076604C  38 80 00 00 */	li r4, 0
/* 80766050  38 A1 00 30 */	addi r5, r1, 0x30
/* 80766054  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80766058  38 E1 00 20 */	addi r7, r1, 0x20
/* 8076605C  39 01 00 34 */	addi r8, r1, 0x34
/* 80766060  4B FF FA 39 */	bl getPolyColor__FR13cBgS_PolyInfoiP8_GXColorP8_GXColorPUcPf
/* 80766064  2C 03 00 00 */	cmpwi r3, 0
/* 80766068  41 82 01 08 */	beq lbl_80766170
/* 8076606C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80766070  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80766074  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80766078  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8076607C  3B A0 00 00 */	li r29, 0
/* 80766080  3B 60 00 00 */	li r27, 0
/* 80766084  3B 40 00 00 */	li r26, 0
/* 80766088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076608C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_80766090:
/* 80766090  2C 1D 00 00 */	cmpwi r29, 0
/* 80766094  40 82 00 6C */	bne lbl_80766100
/* 80766098  3B 3A 0F D0 */	addi r25, r26, 0xfd0
/* 8076609C  7C 9C C8 2E */	lwzx r4, r28, r25
/* 807660A0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 807660A4  88 01 00 20 */	lbz r0, 0x20(r1)
/* 807660A8  90 01 00 08 */	stw r0, 8(r1)
/* 807660AC  38 A0 00 00 */	li r5, 0
/* 807660B0  90 A1 00 0C */	stw r5, 0xc(r1)
/* 807660B4  38 00 FF FF */	li r0, -1
/* 807660B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807660BC  38 01 00 30 */	addi r0, r1, 0x30
/* 807660C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807660C4  38 01 00 2C */	addi r0, r1, 0x2c
/* 807660C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 807660CC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 807660D0  38 A0 00 00 */	li r5, 0
/* 807660D4  3C C0 80 77 */	lis r6, ap_name_4373@ha
/* 807660D8  38 C6 B7 38 */	addi r6, r6, ap_name_4373@l
/* 807660DC  7C C6 DA 2E */	lhzx r6, r6, r27
/* 807660E0  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 807660E4  39 1C 01 0C */	addi r8, r28, 0x10c
/* 807660E8  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 807660EC  39 41 00 38 */	addi r10, r1, 0x38
/* 807660F0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807660F4  4B 8E 73 D8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807660F8  7C 7C C9 2E */	stwx r3, r28, r25
/* 807660FC  48 00 00 60 */	b lbl_8076615C
lbl_80766100:
/* 80766100  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80766104  38 00 00 FF */	li r0, 0xff
/* 80766108  90 01 00 08 */	stw r0, 8(r1)
/* 8076610C  38 80 00 00 */	li r4, 0
/* 80766110  90 81 00 0C */	stw r4, 0xc(r1)
/* 80766114  38 00 FF FF */	li r0, -1
/* 80766118  90 01 00 10 */	stw r0, 0x10(r1)
/* 8076611C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80766120  90 81 00 18 */	stw r4, 0x18(r1)
/* 80766124  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80766128  3B 3A 0F D0 */	addi r25, r26, 0xfd0
/* 8076612C  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80766130  38 A0 00 00 */	li r5, 0
/* 80766134  3C C0 80 77 */	lis r6, ap_name_4373@ha
/* 80766138  38 C6 B7 38 */	addi r6, r6, ap_name_4373@l
/* 8076613C  7C C6 DA 2E */	lhzx r6, r6, r27
/* 80766140  38 FC 04 D0 */	addi r7, r28, 0x4d0
/* 80766144  39 00 00 00 */	li r8, 0
/* 80766148  39 3C 04 E4 */	addi r9, r28, 0x4e4
/* 8076614C  39 41 00 38 */	addi r10, r1, 0x38
/* 80766150  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80766154  4B 8E 73 78 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80766158  7C 7C C9 2E */	stwx r3, r28, r25
lbl_8076615C:
/* 8076615C  3B BD 00 01 */	addi r29, r29, 1
/* 80766160  2C 1D 00 01 */	cmpwi r29, 1
/* 80766164  3B 7B 00 02 */	addi r27, r27, 2
/* 80766168  3B 5A 00 04 */	addi r26, r26, 4
/* 8076616C  40 81 FF 24 */	ble lbl_80766090
lbl_80766170:
/* 80766170  39 61 00 70 */	addi r11, r1, 0x70
/* 80766174  4B BF C0 A4 */	b _restgpr_25
/* 80766178  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8076617C  7C 08 03 A6 */	mtlr r0
/* 80766180  38 21 00 70 */	addi r1, r1, 0x70
/* 80766184  4E 80 00 20 */	blr 
