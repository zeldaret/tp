lbl_808589E0:
/* 808589E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 808589E4  7C 08 02 A6 */	mflr r0
/* 808589E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 808589EC  39 61 00 60 */	addi r11, r1, 0x60
/* 808589F0  4B B0 97 D5 */	bl _savegpr_23
/* 808589F4  7C 7D 1B 78 */	mr r29, r3
/* 808589F8  3C 80 80 86 */	lis r4, lit_1109@ha /* 0x8085A130@ha */
/* 808589FC  3B C4 A1 30 */	addi r30, r4, lit_1109@l /* 0x8085A130@l */
/* 80858A00  3C 80 80 86 */	lis r4, lit_3740@ha /* 0x80859E78@ha */
/* 80858A04  3B E4 9E 78 */	addi r31, r4, lit_3740@l /* 0x80859E78@l */
/* 80858A08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80858A0C  3B 24 61 C0 */	addi r25, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80858A10  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 80858A14  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 80858A18  88 84 12 CC */	lbz r4, 0x12cc(r4)
/* 80858A1C  4B FF FA 99 */	bl daKytag06_wether_proc__FP13kytag06_classUc
/* 80858A20  C0 39 00 34 */	lfs f1, 0x34(r25)
/* 80858A24  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80858A28  2C 00 00 00 */	cmpwi r0, 0
/* 80858A2C  40 82 00 30 */	bne lbl_80858A5C
/* 80858A30  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80858A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858A38  41 81 00 10 */	bgt lbl_80858A48
/* 80858A3C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80858A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858A44  40 80 00 10 */	bge lbl_80858A54
lbl_80858A48:
/* 80858A48  38 00 00 01 */	li r0, 1
/* 80858A4C  98 1D 05 91 */	stb r0, 0x591(r29)
/* 80858A50  48 00 00 0C */	b lbl_80858A5C
lbl_80858A54:
/* 80858A54  38 00 00 00 */	li r0, 0
/* 80858A58  98 1D 05 91 */	stb r0, 0x591(r29)
lbl_80858A5C:
/* 80858A5C  88 1D 05 90 */	lbz r0, 0x590(r29)
/* 80858A60  2C 00 00 02 */	cmpwi r0, 2
/* 80858A64  41 82 00 A0 */	beq lbl_80858B04
/* 80858A68  40 80 00 14 */	bge lbl_80858A7C
/* 80858A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80858A70  41 82 00 18 */	beq lbl_80858A88
/* 80858A74  40 80 00 58 */	bge lbl_80858ACC
/* 80858A78  48 00 01 10 */	b lbl_80858B88
lbl_80858A7C:
/* 80858A7C  2C 00 00 04 */	cmpwi r0, 4
/* 80858A80  40 80 01 08 */	bge lbl_80858B88
/* 80858A84  48 00 00 C0 */	b lbl_80858B44
lbl_80858A88:
/* 80858A88  88 1D 05 91 */	lbz r0, 0x591(r29)
/* 80858A8C  28 00 00 00 */	cmplwi r0, 0
/* 80858A90  41 82 00 F8 */	beq lbl_80858B88
/* 80858A94  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858A98  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80858A9C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858AA0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80858AA4  C0 9F 00 6C */	lfs f4, 0x6c(r31)
/* 80858AA8  4B A1 6E D5 */	bl cLib_addCalc__FPfffff
/* 80858AAC  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 80858AB0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80858AB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858AB8  40 81 00 D0 */	ble lbl_80858B88
/* 80858ABC  88 7D 05 90 */	lbz r3, 0x590(r29)
/* 80858AC0  38 03 00 01 */	addi r0, r3, 1
/* 80858AC4  98 1D 05 90 */	stb r0, 0x590(r29)
/* 80858AC8  48 00 00 C0 */	b lbl_80858B88
lbl_80858ACC:
/* 80858ACC  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858AD0  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80858AD4  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858AD8  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80858ADC  C0 9F 00 6C */	lfs f4, 0x6c(r31)
/* 80858AE0  4B A1 6E 9D */	bl cLib_addCalc__FPfffff
/* 80858AE4  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 80858AE8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80858AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858AF0  40 80 00 98 */	bge lbl_80858B88
/* 80858AF4  88 7D 05 90 */	lbz r3, 0x590(r29)
/* 80858AF8  38 03 00 01 */	addi r0, r3, 1
/* 80858AFC  98 1D 05 90 */	stb r0, 0x590(r29)
/* 80858B00  48 00 00 88 */	b lbl_80858B88
lbl_80858B04:
/* 80858B04  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858B08  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80858B0C  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858B10  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80858B14  C0 9F 00 6C */	lfs f4, 0x6c(r31)
/* 80858B18  4B A1 6E 65 */	bl cLib_addCalc__FPfffff
/* 80858B1C  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 80858B20  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80858B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858B28  40 81 00 60 */	ble lbl_80858B88
/* 80858B2C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80858B30  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 80858B34  88 7D 05 90 */	lbz r3, 0x590(r29)
/* 80858B38  38 03 00 01 */	addi r0, r3, 1
/* 80858B3C  98 1D 05 90 */	stb r0, 0x590(r29)
/* 80858B40  48 00 00 48 */	b lbl_80858B88
lbl_80858B44:
/* 80858B44  88 1D 05 91 */	lbz r0, 0x591(r29)
/* 80858B48  28 00 00 00 */	cmplwi r0, 0
/* 80858B4C  40 82 00 3C */	bne lbl_80858B88
/* 80858B50  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80858B54  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80858B58  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 80858B5C  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80858B60  C0 9F 00 6C */	lfs f4, 0x6c(r31)
/* 80858B64  4B A1 6E 19 */	bl cLib_addCalc__FPfffff
/* 80858B68  C0 3D 05 6C */	lfs f1, 0x56c(r29)
/* 80858B6C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80858B70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80858B74  40 80 00 14 */	bge lbl_80858B88
/* 80858B78  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80858B7C  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 80858B80  38 00 00 00 */	li r0, 0
/* 80858B84  98 1D 05 90 */	stb r0, 0x590(r29)
lbl_80858B88:
/* 80858B88  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80858B8C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80858B90  C0 5D 05 6C */	lfs f2, 0x56c(r29)
/* 80858B94  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80858B98  EC 01 00 2A */	fadds f0, f1, f0
/* 80858B9C  FC 00 00 1E */	fctiwz f0, f0
/* 80858BA0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80858BA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80858BA8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80858BAC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80858BB0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80858BB4  B0 03 11 20 */	sth r0, 0x1120(r3)
/* 80858BB8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80858BBC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80858BC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80858BC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80858BC8  FC 00 00 1E */	fctiwz f0, f0
/* 80858BCC  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80858BD0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80858BD4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80858BD8  B0 03 11 22 */	sth r0, 0x1122(r3)
/* 80858BDC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80858BE0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80858BE4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80858BE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80858BEC  FC 00 00 1E */	fctiwz f0, f0
/* 80858BF0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80858BF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80858BF8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80858BFC  B0 03 11 24 */	sth r0, 0x1124(r3)
/* 80858C00  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 80858C04  7C 00 07 75 */	extsb. r0, r0
/* 80858C08  40 82 00 30 */	bne lbl_80858C38
/* 80858C0C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80858C10  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 80858C14  38 7E 00 50 */	addi r3, r30, 0x50
/* 80858C18  D0 03 00 04 */	stfs f0, 4(r3)
/* 80858C1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80858C20  3C 80 80 86 */	lis r4, __dt__4cXyzFv@ha /* 0x808589A4@ha */
/* 80858C24  38 84 89 A4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x808589A4@l */
/* 80858C28  38 BE 00 40 */	addi r5, r30, 0x40
/* 80858C2C  4B FF EB CD */	bl __register_global_object
/* 80858C30  38 00 00 01 */	li r0, 1
/* 80858C34  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_80858C38:
/* 80858C38  3A E0 00 00 */	li r23, 0
/* 80858C3C  3B 80 00 00 */	li r28, 0
/* 80858C40  3B 60 00 00 */	li r27, 0
/* 80858C44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80858C48  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80858C4C  3C 60 80 86 */	lis r3, w_eff_name@ha /* 0x8085A06C@ha */
/* 80858C50  3B 43 A0 6C */	addi r26, r3, w_eff_name@l /* 0x8085A06C@l */
lbl_80858C54:
/* 80858C54  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80858C58  38 00 00 FF */	li r0, 0xff
/* 80858C5C  90 01 00 08 */	stw r0, 8(r1)
/* 80858C60  38 80 00 00 */	li r4, 0
/* 80858C64  90 81 00 0C */	stw r4, 0xc(r1)
/* 80858C68  38 00 FF FF */	li r0, -1
/* 80858C6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80858C70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80858C74  90 81 00 18 */	stw r4, 0x18(r1)
/* 80858C78  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80858C7C  3B 1B 05 80 */	addi r24, r27, 0x580
/* 80858C80  7C 9D C0 2E */	lwzx r4, r29, r24
/* 80858C84  38 A0 00 00 */	li r5, 0
/* 80858C88  7C DA E2 2E */	lhzx r6, r26, r28
/* 80858C8C  38 FE 00 50 */	addi r7, r30, 0x50
/* 80858C90  39 00 00 00 */	li r8, 0
/* 80858C94  39 20 00 00 */	li r9, 0
/* 80858C98  39 40 00 00 */	li r10, 0
/* 80858C9C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80858CA0  4B 7F 48 2D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80858CA4  7C 7D C1 2E */	stwx r3, r29, r24
/* 80858CA8  3A F7 00 01 */	addi r23, r23, 1
/* 80858CAC  2C 17 00 04 */	cmpwi r23, 4
/* 80858CB0  3B 9C 00 02 */	addi r28, r28, 2
/* 80858CB4  3B 7B 00 04 */	addi r27, r27, 4
/* 80858CB8  41 80 FF 9C */	blt lbl_80858C54
/* 80858CBC  39 61 00 60 */	addi r11, r1, 0x60
/* 80858CC0  4B B0 95 51 */	bl _restgpr_23
/* 80858CC4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80858CC8  7C 08 03 A6 */	mtlr r0
/* 80858CCC  38 21 00 60 */	addi r1, r1, 0x60
/* 80858CD0  4E 80 00 20 */	blr 
