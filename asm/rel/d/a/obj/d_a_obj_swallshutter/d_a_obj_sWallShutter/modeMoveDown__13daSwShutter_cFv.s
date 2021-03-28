lbl_80598AFC:
/* 80598AFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80598B00  7C 08 02 A6 */	mflr r0
/* 80598B04  90 01 00 54 */	stw r0, 0x54(r1)
/* 80598B08  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80598B0C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80598B10  39 61 00 40 */	addi r11, r1, 0x40
/* 80598B14  4B DC 96 C8 */	b _savegpr_29
/* 80598B18  7C 7E 1B 78 */	mr r30, r3
/* 80598B1C  3C 60 80 5A */	lis r3, lit_3630@ha
/* 80598B20  3B E3 8F 78 */	addi r31, r3, lit_3630@l
/* 80598B24  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80598B28  3C 80 80 5A */	lis r4, l_HIO@ha
/* 80598B2C  38 84 90 F4 */	addi r4, r4, l_HIO@l
/* 80598B30  C0 24 00 08 */	lfs f1, 8(r4)
/* 80598B34  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80598B38  4B CD 7C 08 */	b cLib_chaseF__FPfff
/* 80598B3C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80598B40  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80598B44  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 80598B48  EC 21 00 2A */	fadds f1, f1, f0
/* 80598B4C  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80598B50  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80598B54  FC 80 10 90 */	fmr f4, f2
/* 80598B58  4B CD 6E 24 */	b cLib_addCalc__FPfffff
/* 80598B5C  FF E0 08 90 */	fmr f31, f1
/* 80598B60  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80598B64  28 00 00 01 */	cmplwi r0, 1
/* 80598B68  40 82 00 B8 */	bne lbl_80598C20
/* 80598B6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598B70  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80598B74  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80598B78  38 00 00 FF */	li r0, 0xff
/* 80598B7C  90 01 00 08 */	stw r0, 8(r1)
/* 80598B80  38 80 00 00 */	li r4, 0
/* 80598B84  90 81 00 0C */	stw r4, 0xc(r1)
/* 80598B88  38 00 FF FF */	li r0, -1
/* 80598B8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80598B90  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598B94  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598B98  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80598B9C  80 9E 05 DC */	lwz r4, 0x5dc(r30)
/* 80598BA0  38 A0 00 00 */	li r5, 0
/* 80598BA4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C75@ha */
/* 80598BA8  38 C6 8C 75 */	addi r6, r6, 0x8C75 /* 0x00008C75@l */
/* 80598BAC  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80598BB0  39 00 00 00 */	li r8, 0
/* 80598BB4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80598BB8  39 40 00 00 */	li r10, 0
/* 80598BBC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598BC0  4B AB 49 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598BC4  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80598BC8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80598BCC  38 00 00 FF */	li r0, 0xff
/* 80598BD0  90 01 00 08 */	stw r0, 8(r1)
/* 80598BD4  38 80 00 00 */	li r4, 0
/* 80598BD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80598BDC  38 00 FF FF */	li r0, -1
/* 80598BE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80598BE4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598BE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598BEC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80598BF0  80 9E 05 E0 */	lwz r4, 0x5e0(r30)
/* 80598BF4  38 A0 00 00 */	li r5, 0
/* 80598BF8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008C76@ha */
/* 80598BFC  38 C6 8C 76 */	addi r6, r6, 0x8C76 /* 0x00008C76@l */
/* 80598C00  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80598C04  39 00 00 00 */	li r8, 0
/* 80598C08  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80598C0C  39 40 00 00 */	li r10, 0
/* 80598C10  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598C14  4B AB 48 B8 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598C18  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80598C1C  48 00 00 B4 */	b lbl_80598CD0
lbl_80598C20:
/* 80598C20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598C24  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80598C28  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80598C2C  38 00 00 FF */	li r0, 0xff
/* 80598C30  90 01 00 08 */	stw r0, 8(r1)
/* 80598C34  38 80 00 00 */	li r4, 0
/* 80598C38  90 81 00 0C */	stw r4, 0xc(r1)
/* 80598C3C  38 00 FF FF */	li r0, -1
/* 80598C40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80598C44  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598C48  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598C4C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80598C50  80 9E 05 DC */	lwz r4, 0x5dc(r30)
/* 80598C54  38 A0 00 00 */	li r5, 0
/* 80598C58  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000870B@ha */
/* 80598C5C  38 C6 87 0B */	addi r6, r6, 0x870B /* 0x0000870B@l */
/* 80598C60  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80598C64  39 00 00 00 */	li r8, 0
/* 80598C68  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80598C6C  39 40 00 00 */	li r10, 0
/* 80598C70  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598C74  4B AB 48 58 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598C78  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80598C7C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80598C80  38 00 00 FF */	li r0, 0xff
/* 80598C84  90 01 00 08 */	stw r0, 8(r1)
/* 80598C88  38 80 00 00 */	li r4, 0
/* 80598C8C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80598C90  38 00 FF FF */	li r0, -1
/* 80598C94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80598C98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80598C9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80598CA0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80598CA4  80 9E 05 E0 */	lwz r4, 0x5e0(r30)
/* 80598CA8  38 A0 00 00 */	li r5, 0
/* 80598CAC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000870C@ha */
/* 80598CB0  38 C6 87 0C */	addi r6, r6, 0x870C /* 0x0000870C@l */
/* 80598CB4  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80598CB8  39 00 00 00 */	li r8, 0
/* 80598CBC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80598CC0  39 40 00 00 */	li r10, 0
/* 80598CC4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80598CC8  4B AB 48 04 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80598CCC  90 7E 05 E0 */	stw r3, 0x5e0(r30)
lbl_80598CD0:
/* 80598CD0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80598CD4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80598CD8  40 82 00 54 */	bne lbl_80598D2C
/* 80598CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80598CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80598CE4  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80598CE8  7F A3 EB 78 */	mr r3, r29
/* 80598CEC  38 80 00 0F */	li r4, 0xf
/* 80598CF0  4B AD 70 A4 */	b StopQuake__12dVibration_cFi
/* 80598CF4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80598CF8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80598CFC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80598D00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80598D04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80598D08  7F A3 EB 78 */	mr r3, r29
/* 80598D0C  3C 80 80 5A */	lis r4, l_HIO@ha
/* 80598D10  38 84 90 F4 */	addi r4, r4, l_HIO@l
/* 80598D14  88 84 00 10 */	lbz r4, 0x10(r4)
/* 80598D18  38 A0 00 0F */	li r5, 0xf
/* 80598D1C  38 C1 00 20 */	addi r6, r1, 0x20
/* 80598D20  4B AD 6D 04 */	b StartShock__12dVibration_cFii4cXyz
/* 80598D24  7F C3 F3 78 */	mr r3, r30
/* 80598D28  48 00 00 25 */	bl init_modeMoveDownEnd__13daSwShutter_cFv
lbl_80598D2C:
/* 80598D2C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80598D30  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80598D34  39 61 00 40 */	addi r11, r1, 0x40
/* 80598D38  4B DC 94 F0 */	b _restgpr_29
/* 80598D3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80598D40  7C 08 03 A6 */	mtlr r0
/* 80598D44  38 21 00 50 */	addi r1, r1, 0x50
/* 80598D48  4E 80 00 20 */	blr 
