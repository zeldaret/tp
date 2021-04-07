lbl_8046CB58:
/* 8046CB58  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8046CB5C  7C 08 02 A6 */	mflr r0
/* 8046CB60  90 01 00 94 */	stw r0, 0x94(r1)
/* 8046CB64  39 61 00 90 */	addi r11, r1, 0x90
/* 8046CB68  4B EF 56 75 */	bl _savegpr_29
/* 8046CB6C  7C 7D 1B 78 */	mr r29, r3
/* 8046CB70  3C 60 80 47 */	lis r3, lit_3960@ha /* 0x8046DA18@ha */
/* 8046CB74  3B E3 DA 18 */	addi r31, r3, lit_3960@l /* 0x8046DA18@l */
/* 8046CB78  3B C0 00 00 */	li r30, 0
/* 8046CB7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8046CB80  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8046CB84  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8046CB88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8046CB8C  C0 5D 04 D0 */	lfs f2, 0x4d0(r29)
/* 8046CB90  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8046CB94  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8046CB98  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8046CB9C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8046CBA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8046CBA4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8046CBA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8046CBAC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8046CBB0  D0 5D 05 50 */	stfs f2, 0x550(r29)
/* 8046CBB4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8046CBB8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 8046CBBC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8046CBC0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8046CBC4  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 8046CBC8  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 8046CBCC  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 8046CBD0  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 8046CBD4  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 8046CBD8  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 8046CBDC  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 8046CBE0  28 00 00 04 */	cmplwi r0, 4
/* 8046CBE4  41 82 00 0C */	beq lbl_8046CBF0
/* 8046CBE8  28 00 00 05 */	cmplwi r0, 5
/* 8046CBEC  40 82 03 E0 */	bne lbl_8046CFCC
lbl_8046CBF0:
/* 8046CBF0  28 00 00 04 */	cmplwi r0, 4
/* 8046CBF4  40 82 00 44 */	bne lbl_8046CC38
/* 8046CBF8  88 9D 05 B5 */	lbz r4, 0x5b5(r29)
/* 8046CBFC  28 04 00 FF */	cmplwi r4, 0xff
/* 8046CC00  41 82 00 78 */	beq lbl_8046CC78
/* 8046CC04  88 1D 05 D1 */	lbz r0, 0x5d1(r29)
/* 8046CC08  28 00 00 01 */	cmplwi r0, 1
/* 8046CC0C  40 82 00 6C */	bne lbl_8046CC78
/* 8046CC10  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8046CC14  88 A3 0D 64 */	lbz r5, struct_80450D64+0x0@l(r3)  /* 0x80450D64@l */
/* 8046CC18  7C A5 07 74 */	extsb r5, r5
/* 8046CC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CC24  4B BC 87 3D */	bl isSwitch__10dSv_info_cCFii
/* 8046CC28  2C 03 00 00 */	cmpwi r3, 0
/* 8046CC2C  41 82 00 4C */	beq lbl_8046CC78
/* 8046CC30  3B C0 00 01 */	li r30, 1
/* 8046CC34  48 00 00 44 */	b lbl_8046CC78
lbl_8046CC38:
/* 8046CC38  88 9D 05 B5 */	lbz r4, 0x5b5(r29)
/* 8046CC3C  28 04 00 FF */	cmplwi r4, 0xff
/* 8046CC40  41 82 00 38 */	beq lbl_8046CC78
/* 8046CC44  88 1D 05 D1 */	lbz r0, 0x5d1(r29)
/* 8046CC48  28 00 00 01 */	cmplwi r0, 1
/* 8046CC4C  40 82 00 2C */	bne lbl_8046CC78
/* 8046CC50  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 8046CC54  54 05 28 34 */	slwi r5, r0, 5
/* 8046CC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CC5C  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CC60  7C 60 2A 14 */	add r3, r0, r5
/* 8046CC64  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8046CC68  4B BC 7B F9 */	bl isSwitch__12dSv_memBit_cCFi
/* 8046CC6C  2C 03 00 00 */	cmpwi r3, 0
/* 8046CC70  41 82 00 08 */	beq lbl_8046CC78
/* 8046CC74  3B C0 00 01 */	li r30, 1
lbl_8046CC78:
/* 8046CC78  2C 1E 00 00 */	cmpwi r30, 0
/* 8046CC7C  41 82 02 44 */	beq lbl_8046CEC0
/* 8046CC80  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8046CC84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8046CC88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CC8C  4C 40 13 82 */	cror 2, 0, 2
/* 8046CC90  41 82 00 14 */	beq lbl_8046CCA4
/* 8046CC94  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8046CC98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CC9C  4C 41 13 82 */	cror 2, 1, 2
/* 8046CCA0  40 82 01 1C */	bne lbl_8046CDBC
lbl_8046CCA4:
/* 8046CCA4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8046CCA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CCAC  4C 40 13 82 */	cror 2, 0, 2
/* 8046CCB0  40 82 00 58 */	bne lbl_8046CD08
/* 8046CCB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CCB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CCBC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8046CCC0  38 80 00 00 */	li r4, 0
/* 8046CCC4  90 81 00 08 */	stw r4, 8(r1)
/* 8046CCC8  38 00 FF FF */	li r0, -1
/* 8046CCCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046CCD0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046CCD4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046CCD8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046CCDC  38 80 00 00 */	li r4, 0
/* 8046CCE0  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A5@ha */
/* 8046CCE4  38 A5 84 A5 */	addi r5, r5, 0x84A5 /* 0x000084A5@l */
/* 8046CCE8  38 C1 00 20 */	addi r6, r1, 0x20
/* 8046CCEC  38 E0 00 00 */	li r7, 0
/* 8046CCF0  39 00 00 00 */	li r8, 0
/* 8046CCF4  39 21 00 2C */	addi r9, r1, 0x2c
/* 8046CCF8  39 40 00 FF */	li r10, 0xff
/* 8046CCFC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CD00  4B BD FD 91 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046CD04  90 7D 05 A4 */	stw r3, 0x5a4(r29)
lbl_8046CD08:
/* 8046CD08  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8046CD0C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8046CD10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CD14  4C 41 13 82 */	cror 2, 1, 2
/* 8046CD18  40 82 00 A4 */	bne lbl_8046CDBC
/* 8046CD1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CD20  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CD24  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8046CD28  38 80 00 00 */	li r4, 0
/* 8046CD2C  90 81 00 08 */	stw r4, 8(r1)
/* 8046CD30  38 00 FF FF */	li r0, -1
/* 8046CD34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046CD38  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046CD3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046CD40  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046CD44  38 80 00 00 */	li r4, 0
/* 8046CD48  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A6@ha */
/* 8046CD4C  38 A5 84 A6 */	addi r5, r5, 0x84A6 /* 0x000084A6@l */
/* 8046CD50  38 C1 00 20 */	addi r6, r1, 0x20
/* 8046CD54  38 E0 00 00 */	li r7, 0
/* 8046CD58  39 00 00 00 */	li r8, 0
/* 8046CD5C  39 21 00 2C */	addi r9, r1, 0x2c
/* 8046CD60  39 40 00 FF */	li r10, 0xff
/* 8046CD64  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CD68  4B BD FD 29 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046CD6C  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 8046CD70  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 8046CD74  38 80 00 00 */	li r4, 0
/* 8046CD78  90 81 00 08 */	stw r4, 8(r1)
/* 8046CD7C  38 00 FF FF */	li r0, -1
/* 8046CD80  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046CD84  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046CD88  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046CD8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046CD90  38 80 00 00 */	li r4, 0
/* 8046CD94  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A7@ha */
/* 8046CD98  38 A5 84 A7 */	addi r5, r5, 0x84A7 /* 0x000084A7@l */
/* 8046CD9C  38 C1 00 20 */	addi r6, r1, 0x20
/* 8046CDA0  38 E0 00 00 */	li r7, 0
/* 8046CDA4  39 00 00 00 */	li r8, 0
/* 8046CDA8  39 21 00 2C */	addi r9, r1, 0x2c
/* 8046CDAC  39 40 00 FF */	li r10, 0xff
/* 8046CDB0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CDB4  4B BD FC DD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046CDB8  90 7D 05 AC */	stw r3, 0x5ac(r29)
lbl_8046CDBC:
/* 8046CDBC  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8046CDC0  2C 03 00 00 */	cmpwi r3, 0
/* 8046CDC4  41 82 00 E0 */	beq lbl_8046CEA4
/* 8046CDC8  2C 03 00 14 */	cmpwi r3, 0x14
/* 8046CDCC  40 80 00 D8 */	bge lbl_8046CEA4
/* 8046CDD0  38 03 00 01 */	addi r0, r3, 1
/* 8046CDD4  90 1D 05 CC */	stw r0, 0x5cc(r29)
/* 8046CDD8  80 1D 05 CC */	lwz r0, 0x5cc(r29)
/* 8046CDDC  2C 00 00 0F */	cmpwi r0, 0xf
/* 8046CDE0  40 82 00 C4 */	bne lbl_8046CEA4
/* 8046CDE4  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 8046CDE8  28 00 00 00 */	cmplwi r0, 0
/* 8046CDEC  40 82 00 58 */	bne lbl_8046CE44
/* 8046CDF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CDF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CDF8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8046CDFC  38 80 00 00 */	li r4, 0
/* 8046CE00  90 81 00 08 */	stw r4, 8(r1)
/* 8046CE04  38 00 FF FF */	li r0, -1
/* 8046CE08  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046CE0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046CE10  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046CE14  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046CE18  38 80 00 00 */	li r4, 0
/* 8046CE1C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A6@ha */
/* 8046CE20  38 A5 84 A6 */	addi r5, r5, 0x84A6 /* 0x000084A6@l */
/* 8046CE24  38 C1 00 20 */	addi r6, r1, 0x20
/* 8046CE28  38 E0 00 00 */	li r7, 0
/* 8046CE2C  39 00 00 00 */	li r8, 0
/* 8046CE30  39 21 00 2C */	addi r9, r1, 0x2c
/* 8046CE34  39 40 00 FF */	li r10, 0xff
/* 8046CE38  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CE3C  4B BD FC 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046CE40  90 7D 05 A8 */	stw r3, 0x5a8(r29)
lbl_8046CE44:
/* 8046CE44  80 1D 05 AC */	lwz r0, 0x5ac(r29)
/* 8046CE48  28 00 00 00 */	cmplwi r0, 0
/* 8046CE4C  40 82 00 58 */	bne lbl_8046CEA4
/* 8046CE50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CE54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CE58  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8046CE5C  38 80 00 00 */	li r4, 0
/* 8046CE60  90 81 00 08 */	stw r4, 8(r1)
/* 8046CE64  38 00 FF FF */	li r0, -1
/* 8046CE68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8046CE6C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8046CE70  90 81 00 14 */	stw r4, 0x14(r1)
/* 8046CE74  90 81 00 18 */	stw r4, 0x18(r1)
/* 8046CE78  38 80 00 00 */	li r4, 0
/* 8046CE7C  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084A7@ha */
/* 8046CE80  38 A5 84 A7 */	addi r5, r5, 0x84A7 /* 0x000084A7@l */
/* 8046CE84  38 C1 00 20 */	addi r6, r1, 0x20
/* 8046CE88  38 E0 00 00 */	li r7, 0
/* 8046CE8C  39 00 00 00 */	li r8, 0
/* 8046CE90  39 21 00 2C */	addi r9, r1, 0x2c
/* 8046CE94  39 40 00 FF */	li r10, 0xff
/* 8046CE98  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CE9C  4B BD FB F5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8046CEA0  90 7D 05 AC */	stw r3, 0x5ac(r29)
lbl_8046CEA4:
/* 8046CEA4  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 8046CEA8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046CEAC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8046CEB0  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8046CEB4  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8046CEB8  4B E0 2A C5 */	bl cLib_addCalc__FPfffff
/* 8046CEBC  48 00 00 1C */	b lbl_8046CED8
lbl_8046CEC0:
/* 8046CEC0  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 8046CEC4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8046CEC8  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8046CECC  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 8046CED0  C0 9F 00 1C */	lfs f4, 0x1c(r31)
/* 8046CED4  4B E0 2A A9 */	bl cLib_addCalc__FPfffff
lbl_8046CED8:
/* 8046CED8  C0 3D 05 C8 */	lfs f1, 0x5c8(r29)
/* 8046CEDC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8046CEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046CEE4  40 81 00 E8 */	ble lbl_8046CFCC
/* 8046CEE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8046CEEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8046CEF0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8046CEF4  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8046CEF8  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 8046CEFC  4B ED 99 ED */	bl PSMTXTrans
/* 8046CF00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8046CF04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8046CF08  38 81 00 44 */	addi r4, r1, 0x44
/* 8046CF0C  4B ED 95 A5 */	bl PSMTXCopy
/* 8046CF10  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8046CF14  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8046CF18  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8046CF1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8046CF20  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8046CF24  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8046CF28  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8046CF2C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8046CF30  38 61 00 44 */	addi r3, r1, 0x44
/* 8046CF34  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 8046CF38  38 84 00 24 */	addi r4, r4, 0x24
/* 8046CF3C  4B ED 95 75 */	bl PSMTXCopy
/* 8046CF40  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8046CF44  80 83 00 04 */	lwz r4, 4(r3)
/* 8046CF48  C0 3D 05 7C */	lfs f1, 0x57c(r29)
/* 8046CF4C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8046CF50  38 84 00 58 */	addi r4, r4, 0x58
/* 8046CF54  4B BA 07 85 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 8046CF58  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8046CF5C  80 83 00 04 */	lwz r4, 4(r3)
/* 8046CF60  C0 3D 05 94 */	lfs f1, 0x594(r29)
/* 8046CF64  38 7D 05 84 */	addi r3, r29, 0x584
/* 8046CF68  38 84 00 58 */	addi r4, r4, 0x58
/* 8046CF6C  4B BA 08 3D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 8046CF70  80 1D 05 CC */	lwz r0, 0x5cc(r29)
/* 8046CF74  2C 00 00 0F */	cmpwi r0, 0xf
/* 8046CF78  41 80 00 14 */	blt lbl_8046CF8C
/* 8046CF7C  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8046CF80  4B BA 04 A9 */	bl play__14mDoExt_baseAnmFv
/* 8046CF84  38 7D 05 84 */	addi r3, r29, 0x584
/* 8046CF88  4B BA 04 A1 */	bl play__14mDoExt_baseAnmFv
lbl_8046CF8C:
/* 8046CF8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CF90  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CF94  80 04 5F 88 */	lwz r0, 0x5f88(r4)
/* 8046CF98  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8046CF9C  3B C3 4A C8 */	addi r30, r3, j3dSys@l /* 0x80434AC8@l */
/* 8046CFA0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8046CFA4  80 04 5F 8C */	lwz r0, 0x5f8c(r4)
/* 8046CFA8  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8046CFAC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8046CFB0  4B BA 0D 15 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 8046CFB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046CFB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046CFBC  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 8046CFC0  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8046CFC4  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 8046CFC8  90 1E 00 4C */	stw r0, 0x4c(r30)
lbl_8046CFCC:
/* 8046CFCC  38 60 00 01 */	li r3, 1
/* 8046CFD0  39 61 00 90 */	addi r11, r1, 0x90
/* 8046CFD4  4B EF 52 55 */	bl _restgpr_29
/* 8046CFD8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8046CFDC  7C 08 03 A6 */	mtlr r0
/* 8046CFE0  38 21 00 90 */	addi r1, r1, 0x90
/* 8046CFE4  4E 80 00 20 */	blr 
