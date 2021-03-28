lbl_80C71AF8:
/* 80C71AF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C71AFC  7C 08 02 A6 */	mflr r0
/* 80C71B00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C71B04  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80C71B08  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80C71B0C  7C 7E 1B 78 */	mr r30, r3
/* 80C71B10  C0 03 14 D8 */	lfs f0, 0x14d8(r3)
/* 80C71B14  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C71B18  3C 60 80 C7 */	lis r3, lit_3664@ha
/* 80C71B1C  C0 03 21 84 */	lfs f0, lit_3664@l(r3)
/* 80C71B20  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C71B24  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C71B28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C71B2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C71B30  38 80 00 00 */	li r4, 0
/* 80C71B34  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 80C71B38  A8 DE 04 E8 */	lha r6, 0x4e8(r30)
/* 80C71B3C  4B 39 A6 CC */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80C71B40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C71B44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C71B48  38 81 00 28 */	addi r4, r1, 0x28
/* 80C71B4C  7C 85 23 78 */	mr r5, r4
/* 80C71B50  4B 6D 52 1C */	b PSMTXMultVec
/* 80C71B54  38 61 00 28 */	addi r3, r1, 0x28
/* 80C71B58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C71B5C  7C 65 1B 78 */	mr r5, r3
/* 80C71B60  4B 6D 55 30 */	b PSVECAdd
/* 80C71B64  80 1E 04 E4 */	lwz r0, 0x4e4(r30)
/* 80C71B68  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C71B6C  A0 1E 04 E8 */	lhz r0, 0x4e8(r30)
/* 80C71B70  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80C71B74  38 80 00 00 */	li r4, 0
/* 80C71B78  B0 81 00 20 */	sth r4, 0x20(r1)
/* 80C71B7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C71B80  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C71B84  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C71B88  90 81 00 08 */	stw r4, 8(r1)
/* 80C71B8C  38 00 FF FF */	li r0, -1
/* 80C71B90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C71B94  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C71B98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C71B9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C71BA0  38 80 00 00 */	li r4, 0
/* 80C71BA4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B74@ha */
/* 80C71BA8  38 A5 8B 74 */	addi r5, r5, 0x8B74 /* 0x00008B74@l */
/* 80C71BAC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C71BB0  38 E0 00 00 */	li r7, 0
/* 80C71BB4  39 01 00 20 */	addi r8, r1, 0x20
/* 80C71BB8  39 20 00 00 */	li r9, 0
/* 80C71BBC  39 40 00 FF */	li r10, 0xff
/* 80C71BC0  3D 60 80 C7 */	lis r11, lit_3922@ha
/* 80C71BC4  C0 2B 21 98 */	lfs f1, lit_3922@l(r11)
/* 80C71BC8  4B 3D AE C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C71BCC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C71BD0  38 80 00 00 */	li r4, 0
/* 80C71BD4  90 81 00 08 */	stw r4, 8(r1)
/* 80C71BD8  38 00 FF FF */	li r0, -1
/* 80C71BDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C71BE0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C71BE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C71BE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C71BEC  38 80 00 00 */	li r4, 0
/* 80C71BF0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B75@ha */
/* 80C71BF4  38 A5 8B 75 */	addi r5, r5, 0x8B75 /* 0x00008B75@l */
/* 80C71BF8  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C71BFC  38 E0 00 00 */	li r7, 0
/* 80C71C00  39 01 00 20 */	addi r8, r1, 0x20
/* 80C71C04  39 20 00 00 */	li r9, 0
/* 80C71C08  39 40 00 FF */	li r10, 0xff
/* 80C71C0C  3D 60 80 C7 */	lis r11, lit_3922@ha
/* 80C71C10  C0 2B 21 98 */	lfs f1, lit_3922@l(r11)
/* 80C71C14  4B 3D AE 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C71C18  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C71C1C  38 80 00 00 */	li r4, 0
/* 80C71C20  90 81 00 08 */	stw r4, 8(r1)
/* 80C71C24  38 00 FF FF */	li r0, -1
/* 80C71C28  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C71C2C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C71C30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C71C34  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C71C38  38 80 00 00 */	li r4, 0
/* 80C71C3C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B76@ha */
/* 80C71C40  38 A5 8B 76 */	addi r5, r5, 0x8B76 /* 0x00008B76@l */
/* 80C71C44  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C71C48  38 E0 00 00 */	li r7, 0
/* 80C71C4C  39 01 00 20 */	addi r8, r1, 0x20
/* 80C71C50  39 20 00 00 */	li r9, 0
/* 80C71C54  39 40 00 FF */	li r10, 0xff
/* 80C71C58  3D 60 80 C7 */	lis r11, lit_3922@ha
/* 80C71C5C  C0 2B 21 98 */	lfs f1, lit_3922@l(r11)
/* 80C71C60  4B 3D AE 30 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C71C64  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C71C68  38 80 00 00 */	li r4, 0
/* 80C71C6C  90 81 00 08 */	stw r4, 8(r1)
/* 80C71C70  38 00 FF FF */	li r0, -1
/* 80C71C74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C71C78  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C71C7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C71C80  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C71C84  38 80 00 00 */	li r4, 0
/* 80C71C88  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B77@ha */
/* 80C71C8C  38 A5 8B 77 */	addi r5, r5, 0x8B77 /* 0x00008B77@l */
/* 80C71C90  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C71C94  38 E0 00 00 */	li r7, 0
/* 80C71C98  39 01 00 20 */	addi r8, r1, 0x20
/* 80C71C9C  39 20 00 00 */	li r9, 0
/* 80C71CA0  39 40 00 FF */	li r10, 0xff
/* 80C71CA4  3D 60 80 C7 */	lis r11, lit_3922@ha
/* 80C71CA8  C0 2B 21 98 */	lfs f1, lit_3922@l(r11)
/* 80C71CAC  4B 3D AD E4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C71CB0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C71CB4  38 80 00 00 */	li r4, 0
/* 80C71CB8  90 81 00 08 */	stw r4, 8(r1)
/* 80C71CBC  38 00 FF FF */	li r0, -1
/* 80C71CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C71CC4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C71CC8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C71CCC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C71CD0  38 80 00 00 */	li r4, 0
/* 80C71CD4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B78@ha */
/* 80C71CD8  38 A5 8B 78 */	addi r5, r5, 0x8B78 /* 0x00008B78@l */
/* 80C71CDC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C71CE0  38 E0 00 00 */	li r7, 0
/* 80C71CE4  39 01 00 20 */	addi r8, r1, 0x20
/* 80C71CE8  39 20 00 00 */	li r9, 0
/* 80C71CEC  39 40 00 FF */	li r10, 0xff
/* 80C71CF0  3D 60 80 C7 */	lis r11, lit_3922@ha
/* 80C71CF4  C0 2B 21 98 */	lfs f1, lit_3922@l(r11)
/* 80C71CF8  4B 3D AD 98 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C71CFC  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C71D00  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C71D04  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C71D08  41 82 00 18 */	beq lbl_80C71D20
/* 80C71D0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C71D10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C71D14  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C71D18  7C 05 07 74 */	extsb r5, r0
/* 80C71D1C  4B 3C 34 E4 */	b onSwitch__10dSv_info_cFii
lbl_80C71D20:
/* 80C71D20  7F C3 F3 78 */	mr r3, r30
/* 80C71D24  4B 3A 7F 58 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C71D28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80C71D2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80C71D30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C71D34  7C 08 03 A6 */	mtlr r0
/* 80C71D38  38 21 00 40 */	addi r1, r1, 0x40
/* 80C71D3C  4E 80 00 20 */	blr 
