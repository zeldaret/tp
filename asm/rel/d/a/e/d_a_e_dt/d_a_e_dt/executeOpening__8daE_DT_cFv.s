lbl_806B29D4:
/* 806B29D4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 806B29D8  7C 08 02 A6 */	mflr r0
/* 806B29DC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 806B29E0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806B29E4  4B CA F7 EC */	b _savegpr_26
/* 806B29E8  7C 7F 1B 78 */	mr r31, r3
/* 806B29EC  3C 60 80 6B */	lis r3, lit_1109@ha
/* 806B29F0  3B 83 62 60 */	addi r28, r3, lit_1109@l
/* 806B29F4  3C 60 80 6B */	lis r3, lit_3792@ha
/* 806B29F8  3B C3 5C D4 */	addi r30, r3, lit_3792@l
/* 806B29FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B2A00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B2A04  83 63 5D AC */	lwz r27, 0x5dac(r3)
/* 806B2A08  4B AC EC 38 */	b dCam_getBody__Fv
/* 806B2A0C  7C 7D 1B 78 */	mr r29, r3
/* 806B2A10  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 806B2A14  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806B2A18  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 806B2A1C  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 806B2A20  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 806B2A24  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B2A28  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806B2A2C  EC 02 08 28 */	fsubs f0, f2, f1
/* 806B2A30  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B2A34  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 806B2A38  28 00 00 20 */	cmplwi r0, 0x20
/* 806B2A3C  41 81 10 40 */	bgt lbl_806B3A7C
/* 806B2A40  3C 60 80 6B */	lis r3, lit_6452@ha
/* 806B2A44  38 63 61 00 */	addi r3, r3, lit_6452@l
/* 806B2A48  54 00 10 3A */	slwi r0, r0, 2
/* 806B2A4C  7C 03 00 2E */	lwzx r0, r3, r0
/* 806B2A50  7C 09 03 A6 */	mtctr r0
/* 806B2A54  4E 80 04 20 */	bctr 
lbl_806B2A58:
/* 806B2A58  38 00 00 01 */	li r0, 1
/* 806B2A5C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2A60  7F E3 FB 78 */	mr r3, r31
/* 806B2A64  38 80 00 13 */	li r4, 0x13
/* 806B2A68  38 A0 00 02 */	li r5, 2
/* 806B2A6C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2A70  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2A74  4B FF BB D9 */	bl setBck__8daE_DT_cFiUcff
/* 806B2A78  38 00 00 00 */	li r0, 0
/* 806B2A7C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806B2A80  7F E3 FB 78 */	mr r3, r31
/* 806B2A84  4B FF D2 AD */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B2A88  2C 03 00 00 */	cmpwi r3, 0
/* 806B2A8C  40 82 00 38 */	bne lbl_806B2AC4
/* 806B2A90  3B 80 00 00 */	li r28, 0
lbl_806B2A94:
/* 806B2A94  38 60 01 FF */	li r3, 0x1ff
/* 806B2A98  67 84 FF 03 */	oris r4, r28, 0xff03
/* 806B2A9C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806B2AA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B2AA4  7C 06 07 74 */	extsb r6, r0
/* 806B2AA8  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 806B2AAC  39 00 00 00 */	li r8, 0
/* 806B2AB0  39 20 FF FF */	li r9, -1
/* 806B2AB4  4B 96 72 E4 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 806B2AB8  3B 9C 00 01 */	addi r28, r28, 1
/* 806B2ABC  2C 1C 00 14 */	cmpwi r28, 0x14
/* 806B2AC0  41 80 FF D4 */	blt lbl_806B2A94
lbl_806B2AC4:
/* 806B2AC4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B2AC8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B2ACC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B2AD0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B2AD4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 806B2AD8  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B2ADC  4B BB E1 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 806B2AE0  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 806B2AE4  38 00 C0 00 */	li r0, -16384
/* 806B2AE8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806B2AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B2AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B2AF4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B2AF8  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 806B2AFC  FC 60 08 90 */	fmr f3, f1
/* 806B2B00  4B C9 3D E8 */	b PSMTXTrans
/* 806B2B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B2B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B2B0C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806B2B10  4B 95 99 24 */	b mDoMtx_YrotM__FPA4_fs
/* 806B2B14  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B2B18  FC 40 08 90 */	fmr f2, f1
/* 806B2B1C  C0 7E 01 58 */	lfs f3, 0x158(r30)
/* 806B2B20  4B 95 A2 7C */	b transM__14mDoMtx_stack_cFfff
/* 806B2B24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B2B28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B2B2C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B2B30  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 806B2B34  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B2B38  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806B2B3C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B2B40  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 806B2B44  38 00 00 01 */	li r0, 1
/* 806B2B48  98 1F 07 81 */	stb r0, 0x781(r31)
/* 806B2B4C  7F E3 FB 78 */	mr r3, r31
/* 806B2B50  4B FF D6 65 */	bl isShutterOpen__8daE_DT_cFv
/* 806B2B54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B2B58  41 82 00 10 */	beq lbl_806B2B68
/* 806B2B5C  38 00 02 B2 */	li r0, 0x2b2
/* 806B2B60  90 1F 07 14 */	stw r0, 0x714(r31)
/* 806B2B64  48 00 0F 8C */	b lbl_806B3AF0
lbl_806B2B68:
/* 806B2B68  7F E3 FB 78 */	mr r3, r31
/* 806B2B6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806B2B70  4B FF FD 75 */	bl pointInSight__8daE_DT_cFP4cXyz
/* 806B2B74  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 806B2B78  3B 40 00 00 */	li r26, 0
/* 806B2B7C  4B AC EA C4 */	b dCam_getBody__Fv
/* 806B2B80  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 806B2B84  2C 00 00 04 */	cmpwi r0, 4
/* 806B2B88  41 82 00 38 */	beq lbl_806B2BC0
/* 806B2B8C  4B AC EA B4 */	b dCam_getBody__Fv
/* 806B2B90  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 806B2B94  2C 00 00 07 */	cmpwi r0, 7
/* 806B2B98  41 82 00 28 */	beq lbl_806B2BC0
/* 806B2B9C  4B AC EA A4 */	b dCam_getBody__Fv
/* 806B2BA0  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 806B2BA4  2C 00 00 08 */	cmpwi r0, 8
/* 806B2BA8  41 82 00 18 */	beq lbl_806B2BC0
/* 806B2BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B2BB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B2BB4  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806B2BB8  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 806B2BBC  41 82 00 08 */	beq lbl_806B2BC4
lbl_806B2BC0:
/* 806B2BC0  3B 40 00 01 */	li r26, 1
lbl_806B2BC4:
/* 806B2BC4  2C 1A 00 00 */	cmpwi r26, 0
/* 806B2BC8  40 82 01 A0 */	bne lbl_806B2D68
/* 806B2BCC  38 00 00 00 */	li r0, 0
/* 806B2BD0  90 1F 07 04 */	stw r0, 0x704(r31)
/* 806B2BD4  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 806B2BD8  2C 00 00 01 */	cmpwi r0, 1
/* 806B2BDC  40 82 00 4C */	bne lbl_806B2C28
/* 806B2BE0  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B2BE4  2C 00 00 00 */	cmpwi r0, 0
/* 806B2BE8  40 82 0F 08 */	bne lbl_806B3AF0
/* 806B2BEC  7F E3 FB 78 */	mr r3, r31
/* 806B2BF0  38 80 00 12 */	li r4, 0x12
/* 806B2BF4  38 A0 00 00 */	li r5, 0
/* 806B2BF8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2BFC  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2C00  4B FF BA 4D */	bl setBck__8daE_DT_cFiUcff
/* 806B2C04  38 00 00 02 */	li r0, 2
/* 806B2C08  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2C0C  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 806B2C10  4B BB 4D 44 */	b cM_rndF__Ff
/* 806B2C14  FC 00 08 1E */	fctiwz f0, f1
/* 806B2C18  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 806B2C1C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 806B2C20  98 1F 07 75 */	stb r0, 0x775(r31)
/* 806B2C24  48 00 0E CC */	b lbl_806B3AF0
lbl_806B2C28:
/* 806B2C28  3B 60 00 00 */	li r27, 0
/* 806B2C2C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2C30  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2C34  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 806B2C38  4B C7 57 F4 */	b checkPass__12J3DFrameCtrlFf
/* 806B2C3C  2C 03 00 00 */	cmpwi r3, 0
/* 806B2C40  41 82 00 0C */	beq lbl_806B2C4C
/* 806B2C44  3B 60 00 01 */	li r27, 1
/* 806B2C48  48 00 00 58 */	b lbl_806B2CA0
lbl_806B2C4C:
/* 806B2C4C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2C50  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2C54  C0 3E 01 64 */	lfs f1, 0x164(r30)
/* 806B2C58  4B C7 57 D4 */	b checkPass__12J3DFrameCtrlFf
/* 806B2C5C  2C 03 00 00 */	cmpwi r3, 0
/* 806B2C60  41 82 00 18 */	beq lbl_806B2C78
/* 806B2C64  88 1F 07 75 */	lbz r0, 0x775(r31)
/* 806B2C68  28 00 00 01 */	cmplwi r0, 1
/* 806B2C6C  41 80 00 34 */	blt lbl_806B2CA0
/* 806B2C70  3B 60 00 01 */	li r27, 1
/* 806B2C74  48 00 00 2C */	b lbl_806B2CA0
lbl_806B2C78:
/* 806B2C78  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2C7C  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2C80  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 806B2C84  4B C7 57 A8 */	b checkPass__12J3DFrameCtrlFf
/* 806B2C88  2C 03 00 00 */	cmpwi r3, 0
/* 806B2C8C  41 82 00 14 */	beq lbl_806B2CA0
/* 806B2C90  88 1F 07 75 */	lbz r0, 0x775(r31)
/* 806B2C94  28 00 00 02 */	cmplwi r0, 2
/* 806B2C98  41 80 00 08 */	blt lbl_806B2CA0
/* 806B2C9C  3B 60 00 01 */	li r27, 1
lbl_806B2CA0:
/* 806B2CA0  2C 1B 00 00 */	cmpwi r27, 0
/* 806B2CA4  41 82 00 40 */	beq lbl_806B2CE4
/* 806B2CA8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B2CAC  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 806B2CB0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B2CB4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B2CB8  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 806B2CBC  38 60 01 FF */	li r3, 0x1ff
/* 806B2CC0  3C 80 FF 02 */	lis r4, 0xFF02 /* 0xFF01FFFF@ha */
/* 806B2CC4  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0xFF01FFFF@l */
/* 806B2CC8  38 A1 00 7C */	addi r5, r1, 0x7c
/* 806B2CCC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B2CD0  7C 06 07 74 */	extsb r6, r0
/* 806B2CD4  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 806B2CD8  39 00 00 00 */	li r8, 0
/* 806B2CDC  39 20 FF FF */	li r9, -1
/* 806B2CE0  4B 96 70 B8 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_806B2CE4:
/* 806B2CE4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2CE8  38 80 00 01 */	li r4, 1
/* 806B2CEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B2CF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B2CF4  40 82 00 18 */	bne lbl_806B2D0C
/* 806B2CF8  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B2CFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B2D00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B2D04  41 82 00 08 */	beq lbl_806B2D0C
/* 806B2D08  38 80 00 00 */	li r4, 0
lbl_806B2D0C:
/* 806B2D0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B2D10  41 82 0D E0 */	beq lbl_806B3AF0
/* 806B2D14  7F E3 FB 78 */	mr r3, r31
/* 806B2D18  4B FF D0 19 */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B2D1C  2C 03 00 14 */	cmpwi r3, 0x14
/* 806B2D20  41 81 0D D0 */	bgt lbl_806B3AF0
/* 806B2D24  7F E3 FB 78 */	mr r3, r31
/* 806B2D28  38 80 00 13 */	li r4, 0x13
/* 806B2D2C  38 A0 00 02 */	li r5, 2
/* 806B2D30  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2D34  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2D38  4B FF B9 15 */	bl setBck__8daE_DT_cFiUcff
/* 806B2D3C  38 00 00 01 */	li r0, 1
/* 806B2D40  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2D44  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 806B2D48  4B BB 4C 44 */	b cM_rndFX__Ff
/* 806B2D4C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806B2D50  EC 00 08 2A */	fadds f0, f0, f1
/* 806B2D54  FC 00 00 1E */	fctiwz f0, f0
/* 806B2D58  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 806B2D5C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 806B2D60  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B2D64  48 00 0D 8C */	b lbl_806B3AF0
lbl_806B2D68:
/* 806B2D68  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 806B2D6C  2C 00 00 00 */	cmpwi r0, 0
/* 806B2D70  41 82 00 28 */	beq lbl_806B2D98
/* 806B2D74  7F E3 FB 78 */	mr r3, r31
/* 806B2D78  38 80 00 13 */	li r4, 0x13
/* 806B2D7C  38 A0 00 02 */	li r5, 2
/* 806B2D80  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2D84  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2D88  4B FF B8 C5 */	bl setBck__8daE_DT_cFiUcff
/* 806B2D8C  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 806B2D90  38 03 00 01 */	addi r0, r3, 1
/* 806B2D94  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_806B2D98:
/* 806B2D98  2C 1C 00 00 */	cmpwi r28, 0
/* 806B2D9C  41 82 0D 54 */	beq lbl_806B3AF0
/* 806B2DA0  7F A3 EB 78 */	mr r3, r29
/* 806B2DA4  4B AA E7 2C */	b Stop__9dCamera_cFv
/* 806B2DA8  38 61 00 64 */	addi r3, r1, 0x64
/* 806B2DAC  7F A4 EB 78 */	mr r4, r29
/* 806B2DB0  4B AC F0 B4 */	b Eye__9dCamera_cFv
/* 806B2DB4  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 806B2DB8  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B2DBC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 806B2DC0  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B2DC4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 806B2DC8  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B2DCC  38 61 00 58 */	addi r3, r1, 0x58
/* 806B2DD0  7F A4 EB 78 */	mr r4, r29
/* 806B2DD4  4B AC F0 C4 */	b Center__9dCamera_cFv
/* 806B2DD8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806B2DDC  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 806B2DE0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 806B2DE4  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B2DE8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 806B2DEC  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B2DF0  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 806B2DF4  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 806B2DF8  EC 01 00 2A */	fadds f0, f1, f0
/* 806B2DFC  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806B2E00  38 61 00 08 */	addi r3, r1, 8
/* 806B2E04  7F A4 EB 78 */	mr r4, r29
/* 806B2E08  48 00 2E 85 */	bl Bank__9dCamera_cFv
/* 806B2E0C  A8 01 00 08 */	lha r0, 8(r1)
/* 806B2E10  B0 1F 07 3C */	sth r0, 0x73c(r31)
/* 806B2E14  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 806B2E18  64 00 08 00 */	oris r0, r0, 0x800
/* 806B2E1C  90 1B 05 70 */	stw r0, 0x570(r27)
/* 806B2E20  7F A3 EB 78 */	mr r3, r29
/* 806B2E24  38 80 00 03 */	li r4, 3
/* 806B2E28  4B AB 01 E4 */	b SetTrimSize__9dCamera_cFl
/* 806B2E2C  7F E3 FB 78 */	mr r3, r31
/* 806B2E30  38 80 00 13 */	li r4, 0x13
/* 806B2E34  38 A0 00 02 */	li r5, 2
/* 806B2E38  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2E3C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2E40  4B FF B8 0D */	bl setBck__8daE_DT_cFiUcff
/* 806B2E44  38 00 00 03 */	li r0, 3
/* 806B2E48  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2E4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B2E50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B2E54  80 63 00 00 */	lwz r3, 0(r3)
/* 806B2E58  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B2E5C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000028@ha */
/* 806B2E60  38 84 00 28 */	addi r4, r4, 0x0028 /* 0x01000028@l */
/* 806B2E64  4B BF C6 38 */	b subBgmStart__8Z2SeqMgrFUl
/* 806B2E68  38 60 00 03 */	li r3, 3
/* 806B2E6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B2E70  7C 04 07 74 */	extsb r4, r0
/* 806B2E74  4B 97 AC 28 */	b dComIfGs_onOneZoneSwitch__Fii
/* 806B2E78  48 00 0C 78 */	b lbl_806B3AF0
lbl_806B2E7C:
/* 806B2E7C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 806B2E80  28 00 00 02 */	cmplwi r0, 2
/* 806B2E84  41 82 00 2C */	beq lbl_806B2EB0
/* 806B2E88  7F E3 FB 78 */	mr r3, r31
/* 806B2E8C  38 80 00 02 */	li r4, 2
/* 806B2E90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806B2E94  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806B2E98  38 C0 00 00 */	li r6, 0
/* 806B2E9C  4B 96 8A 6C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806B2EA0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 806B2EA4  60 00 00 02 */	ori r0, r0, 2
/* 806B2EA8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 806B2EAC  48 00 0B D0 */	b lbl_806B3A7C
lbl_806B2EB0:
/* 806B2EB0  38 00 00 04 */	li r0, 4
/* 806B2EB4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2EB8  38 00 00 3C */	li r0, 0x3c
/* 806B2EBC  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B2EC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007031F@ha */
/* 806B2EC4  38 03 03 1F */	addi r0, r3, 0x031F /* 0x0007031F@l */
/* 806B2EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B2ECC  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B2ED0  38 81 00 14 */	addi r4, r1, 0x14
/* 806B2ED4  38 A0 FF FF */	li r5, -1
/* 806B2ED8  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806B2EDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806B2EE0  7D 89 03 A6 */	mtctr r12
/* 806B2EE4  4E 80 04 21 */	bctrl 
/* 806B2EE8  48 00 0B 94 */	b lbl_806B3A7C
lbl_806B2EEC:
/* 806B2EEC  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B2EF0  38 81 00 70 */	addi r4, r1, 0x70
/* 806B2EF4  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 806B2EF8  4B BB D8 B4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B2EFC  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B2F00  2C 00 00 00 */	cmpwi r0, 0
/* 806B2F04  40 82 0B 78 */	bne lbl_806B3A7C
/* 806B2F08  38 00 00 05 */	li r0, 5
/* 806B2F0C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B2F10  7F E3 FB 78 */	mr r3, r31
/* 806B2F14  38 80 00 12 */	li r4, 0x12
/* 806B2F18  38 A0 00 00 */	li r5, 0
/* 806B2F1C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B2F20  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B2F24  4B FF B7 29 */	bl setBck__8daE_DT_cFiUcff
/* 806B2F28  38 00 00 3C */	li r0, 0x3c
/* 806B2F2C  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B2F30  38 00 00 00 */	li r0, 0
/* 806B2F34  90 1F 07 04 */	stw r0, 0x704(r31)
/* 806B2F38  48 00 0B 44 */	b lbl_806B3A7C
lbl_806B2F3C:
/* 806B2F3C  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B2F40  38 81 00 70 */	addi r4, r1, 0x70
/* 806B2F44  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 806B2F48  4B BB D8 64 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B2F4C  7F E3 FB 78 */	mr r3, r31
/* 806B2F50  38 80 00 12 */	li r4, 0x12
/* 806B2F54  4B FF B7 9D */	bl checkBck__8daE_DT_cFi
/* 806B2F58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B2F5C  41 82 00 A8 */	beq lbl_806B3004
/* 806B2F60  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2F64  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2F68  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806B2F6C  4B C7 54 C0 */	b checkPass__12J3DFrameCtrlFf
/* 806B2F70  2C 03 00 00 */	cmpwi r3, 0
/* 806B2F74  40 82 00 34 */	bne lbl_806B2FA8
/* 806B2F78  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2F7C  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2F80  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 806B2F84  4B C7 54 A8 */	b checkPass__12J3DFrameCtrlFf
/* 806B2F88  2C 03 00 00 */	cmpwi r3, 0
/* 806B2F8C  40 82 00 1C */	bne lbl_806B2FA8
/* 806B2F90  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2F94  38 63 00 0C */	addi r3, r3, 0xc
/* 806B2F98  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806B2F9C  4B C7 54 90 */	b checkPass__12J3DFrameCtrlFf
/* 806B2FA0  2C 03 00 00 */	cmpwi r3, 0
/* 806B2FA4  41 82 00 60 */	beq lbl_806B3004
lbl_806B2FA8:
/* 806B2FA8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B2FAC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806B2FB0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806B2FB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 806B2FB8  FC 00 00 1E */	fctiwz f0, f0
/* 806B2FBC  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 806B2FC0  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 806B2FC4  90 1C 00 D0 */	stw r0, 0xd0(r28)
/* 806B2FC8  3C 60 80 6B */	lis r3, s_fall_otama__FPvPv@ha
/* 806B2FCC  38 63 FD 94 */	addi r3, r3, s_fall_otama__FPvPv@l
/* 806B2FD0  7F E4 FB 78 */	mr r4, r31
/* 806B2FD4  4B 96 E3 64 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806B2FD8  28 03 00 00 */	cmplwi r3, 0
/* 806B2FDC  41 82 00 28 */	beq lbl_806B3004
/* 806B2FE0  38 00 00 08 */	li r0, 8
/* 806B2FE4  90 03 06 78 */	stw r0, 0x678(r3)
/* 806B2FE8  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 806B2FEC  54 00 10 3A */	slwi r0, r0, 2
/* 806B2FF0  7C 9F 02 14 */	add r4, r31, r0
/* 806B2FF4  90 64 06 7C */	stw r3, 0x67c(r4)
/* 806B2FF8  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 806B2FFC  38 03 00 01 */	addi r0, r3, 1
/* 806B3000  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_806B3004:
/* 806B3004  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3008  38 80 00 01 */	li r4, 1
/* 806B300C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B3010  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B3014  40 82 00 18 */	bne lbl_806B302C
/* 806B3018  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B301C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B3020  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B3024  41 82 00 08 */	beq lbl_806B302C
/* 806B3028  38 80 00 00 */	li r4, 0
lbl_806B302C:
/* 806B302C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B3030  41 82 00 1C */	beq lbl_806B304C
/* 806B3034  7F E3 FB 78 */	mr r3, r31
/* 806B3038  38 80 00 13 */	li r4, 0x13
/* 806B303C  38 A0 00 02 */	li r5, 2
/* 806B3040  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B3044  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B3048  4B FF B6 05 */	bl setBck__8daE_DT_cFiUcff
lbl_806B304C:
/* 806B304C  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B3050  2C 00 00 00 */	cmpwi r0, 0
/* 806B3054  40 82 0A 28 */	bne lbl_806B3A7C
/* 806B3058  38 00 00 06 */	li r0, 6
/* 806B305C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3060  38 00 00 3C */	li r0, 0x3c
/* 806B3064  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B3068  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 806B306C  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 806B3070  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3074  80 63 00 04 */	lwz r3, 4(r3)
/* 806B3078  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B307C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B3080  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 806B3084  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B3088  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B308C  4B C9 34 24 */	b PSMTXCopy
/* 806B3090  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B3094  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 806B3098  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 806B309C  D0 41 00 70 */	stfs f2, 0x70(r1)
/* 806B30A0  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 806B30A4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 806B30A8  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B30AC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B30B0  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 806B30B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806B30B8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B30BC  D0 5F 06 94 */	stfs f2, 0x694(r31)
/* 806B30C0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 806B30C4  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B30C8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 806B30CC  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B30D0  7F 63 DB 78 */	mr r3, r27
/* 806B30D4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806B30D8  38 04 7C 00 */	addi r0, r4, 0x7c00
/* 806B30DC  7C 04 07 34 */	extsh r4, r0
/* 806B30E0  4B 95 92 FC */	b mDoMtx_YrotS__FPA4_fs
/* 806B30E4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B30E8  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 806B30EC  C0 7E 01 74 */	lfs f3, 0x174(r30)
/* 806B30F0  4B 95 9C AC */	b transM__14mDoMtx_stack_cFfff
/* 806B30F4  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806B30F8  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B30FC  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 806B3100  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B3104  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B3108  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B310C  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 806B3110  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806B3114  38 00 00 00 */	li r0, 0
/* 806B3118  B0 1F 07 3C */	sth r0, 0x73c(r31)
/* 806B311C  48 00 09 60 */	b lbl_806B3A7C
lbl_806B3120:
/* 806B3120  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 806B3124  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3128  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B312C  4B BB D6 14 */	b cLib_chaseF__FPfff
/* 806B3130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B3134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B3138  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806B313C  38 04 60 00 */	addi r0, r4, 0x6000
/* 806B3140  7C 04 07 34 */	extsh r4, r0
/* 806B3144  4B 95 92 98 */	b mDoMtx_YrotS__FPA4_fs
/* 806B3148  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B314C  C0 5E 01 78 */	lfs f2, 0x178(r30)
/* 806B3150  C0 7E 01 7C */	lfs f3, 0x17c(r30)
/* 806B3154  4B 95 9C 48 */	b transM__14mDoMtx_stack_cFfff
/* 806B3158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B315C  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 806B3160  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806B3164  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B3168  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 806B316C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B3170  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B3174  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3178  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B317C  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B3180  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806B3184  4B BB D6 28 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3188  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B318C  80 63 00 04 */	lwz r3, 4(r3)
/* 806B3190  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B3194  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B3198  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 806B319C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B31A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B31A4  4B C9 33 0C */	b PSMTXCopy
/* 806B31A8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806B31AC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806B31B0  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 806B31B4  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 806B31B8  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B31BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B31C0  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 806B31C4  EC 01 00 2A */	fadds f0, f1, f0
/* 806B31C8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B31CC  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B31D0  38 81 00 70 */	addi r4, r1, 0x70
/* 806B31D4  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B31D8  4B BB D5 D4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B31DC  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B31E0  2C 00 00 00 */	cmpwi r0, 0
/* 806B31E4  40 82 08 98 */	bne lbl_806B3A7C
/* 806B31E8  7F E3 FB 78 */	mr r3, r31
/* 806B31EC  38 80 00 11 */	li r4, 0x11
/* 806B31F0  38 A0 00 00 */	li r5, 0
/* 806B31F4  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B31F8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B31FC  4B FF B4 51 */	bl setBck__8daE_DT_cFiUcff
/* 806B3200  38 00 00 07 */	li r0, 7
/* 806B3204  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3208  48 00 08 74 */	b lbl_806B3A7C
lbl_806B320C:
/* 806B320C  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 806B3210  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3214  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B3218  4B BB D5 28 */	b cLib_chaseF__FPfff
/* 806B321C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B3220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B3224  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806B3228  38 04 60 00 */	addi r0, r4, 0x6000
/* 806B322C  7C 04 07 34 */	extsh r4, r0
/* 806B3230  4B 95 91 AC */	b mDoMtx_YrotS__FPA4_fs
/* 806B3234  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3238  C0 5E 01 78 */	lfs f2, 0x178(r30)
/* 806B323C  C0 7E 01 7C */	lfs f3, 0x17c(r30)
/* 806B3240  4B 95 9B 5C */	b transM__14mDoMtx_stack_cFfff
/* 806B3244  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B3248  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 806B324C  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806B3250  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B3254  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 806B3258  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B325C  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B3260  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3264  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B3268  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B326C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806B3270  4B BB D5 3C */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3274  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3278  80 63 00 04 */	lwz r3, 4(r3)
/* 806B327C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B3280  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B3284  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 806B3288  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B328C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B3290  4B C9 32 20 */	b PSMTXCopy
/* 806B3294  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806B3298  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806B329C  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 806B32A0  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 806B32A4  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806B32A8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B32AC  C0 1F 06 E8 */	lfs f0, 0x6e8(r31)
/* 806B32B0  EC 01 00 2A */	fadds f0, f1, f0
/* 806B32B4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B32B8  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B32BC  38 81 00 70 */	addi r4, r1, 0x70
/* 806B32C0  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B32C4  4B BB D4 E8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B32C8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B32CC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B32D0  C0 3E 01 80 */	lfs f1, 0x180(r30)
/* 806B32D4  4B C7 51 58 */	b checkPass__12J3DFrameCtrlFf
/* 806B32D8  2C 03 00 00 */	cmpwi r3, 0
/* 806B32DC  41 82 07 A0 */	beq lbl_806B3A7C
/* 806B32E0  38 00 00 08 */	li r0, 8
/* 806B32E4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B32E8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 806B32EC  38 03 80 00 */	addi r0, r3, -32768
/* 806B32F0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806B32F4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 806B32F8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806B32FC  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 806B3300  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806B3304  38 00 00 28 */	li r0, 0x28
/* 806B3308  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B330C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 806B3310  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 806B3314  48 00 07 68 */	b lbl_806B3A7C
lbl_806B3318:
/* 806B3318  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B331C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806B3320  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 806B3324  38 04 60 00 */	addi r0, r4, 0x6000
/* 806B3328  7C 04 07 34 */	extsh r4, r0
/* 806B332C  4B 95 90 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 806B3330  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3334  C0 5E 01 70 */	lfs f2, 0x170(r30)
/* 806B3338  C0 7E 01 74 */	lfs f3, 0x174(r30)
/* 806B333C  4B 95 9A 60 */	b transM__14mDoMtx_stack_cFfff
/* 806B3340  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806B3344  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 806B3348  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B334C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B3350  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B3354  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B3358  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B335C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3360  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B3364  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B3368  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 806B336C  4B BB D4 40 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3370  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3374  80 63 00 04 */	lwz r3, 4(r3)
/* 806B3378  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B337C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B3380  38 63 02 10 */	addi r3, r3, 0x210
/* 806B3384  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806B3388  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806B338C  4B C9 31 24 */	b PSMTXCopy
/* 806B3390  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 806B3394  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806B3398  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806B339C  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806B33A0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 806B33A4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806B33A8  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B33AC  38 81 00 70 */	addi r4, r1, 0x70
/* 806B33B0  C0 3F 06 E8 */	lfs f1, 0x6e8(r31)
/* 806B33B4  4B BB D3 F8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B33B8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B33BC  38 80 00 01 */	li r4, 1
/* 806B33C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B33C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B33C8  40 82 00 18 */	bne lbl_806B33E0
/* 806B33CC  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B33D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B33D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B33D8  41 82 00 08 */	beq lbl_806B33E0
/* 806B33DC  38 80 00 00 */	li r4, 0
lbl_806B33E0:
/* 806B33E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B33E4  41 82 00 1C */	beq lbl_806B3400
/* 806B33E8  7F E3 FB 78 */	mr r3, r31
/* 806B33EC  38 80 00 0E */	li r4, 0xe
/* 806B33F0  38 A0 00 00 */	li r5, 0
/* 806B33F4  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806B33F8  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B33FC  4B FF B2 51 */	bl setBck__8daE_DT_cFiUcff
lbl_806B3400:
/* 806B3400  38 7F 05 2C */	addi r3, r31, 0x52c
/* 806B3404  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3408  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B340C  4B BB D3 34 */	b cLib_chaseF__FPfff
/* 806B3410  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B3414  2C 00 00 0F */	cmpwi r0, 0xf
/* 806B3418  40 80 00 14 */	bge lbl_806B342C
/* 806B341C  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 806B3420  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3424  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B3428  4B BB D3 18 */	b cLib_chaseF__FPfff
lbl_806B342C:
/* 806B342C  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B3430  2C 00 00 00 */	cmpwi r0, 0
/* 806B3434  40 82 06 48 */	bne lbl_806B3A7C
/* 806B3438  38 00 00 0A */	li r0, 0xa
/* 806B343C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3440  38 00 00 00 */	li r0, 0
/* 806B3444  98 1F 07 81 */	stb r0, 0x781(r31)
/* 806B3448  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B344C  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 806B3450  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 806B3454  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 806B3458  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806B345C  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 806B3460  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 806B3464  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 806B3468  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
/* 806B346C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 806B3470  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 806B3474  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 806B3478  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806B347C  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 806B3480  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3484  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 806B3488  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 806B348C  90 1B 05 70 */	stw r0, 0x570(r27)
/* 806B3490  7F 63 DB 78 */	mr r3, r27
/* 806B3494  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B3498  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 806B349C  3C A5 00 01 */	addis r5, r5, 1
/* 806B34A0  38 05 80 00 */	addi r0, r5, -32768
/* 806B34A4  7C 05 07 34 */	extsh r5, r0
/* 806B34A8  38 C0 00 00 */	li r6, 0
/* 806B34AC  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 806B34B0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806B34B4  7D 89 03 A6 */	mtctr r12
/* 806B34B8  4E 80 04 21 */	bctrl 
/* 806B34BC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 806B34C0  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 806B34C4  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 806B34C8  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B34CC  C0 1E 01 88 */	lfs f0, 0x188(r30)
/* 806B34D0  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B34D4  C0 1E 01 8C */	lfs f0, 0x18c(r30)
/* 806B34D8  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B34DC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 806B34E0  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B34E4  C0 1E 01 90 */	lfs f0, 0x190(r30)
/* 806B34E8  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B34EC  C0 1E 01 94 */	lfs f0, 0x194(r30)
/* 806B34F0  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806B34F4  38 00 00 01 */	li r0, 1
/* 806B34F8  98 1F 07 82 */	stb r0, 0x782(r31)
/* 806B34FC  48 00 05 80 */	b lbl_806B3A7C
lbl_806B3500:
/* 806B3500  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023A@ha */
/* 806B3504  38 03 02 3A */	addi r0, r3, 0x023A /* 0x0007023A@l */
/* 806B3508  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B350C  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B3510  38 81 00 10 */	addi r4, r1, 0x10
/* 806B3514  38 A0 00 00 */	li r5, 0
/* 806B3518  38 C0 FF FF */	li r6, -1
/* 806B351C  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806B3520  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806B3524  7D 89 03 A6 */	mtctr r12
/* 806B3528  4E 80 04 21 */	bctrl 
/* 806B352C  38 00 00 00 */	li r0, 0
/* 806B3530  98 1F 07 82 */	stb r0, 0x782(r31)
/* 806B3534  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 806B3538  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 806B353C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 806B3540  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B3544  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 806B3548  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B354C  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 806B3550  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806B3554  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B3558  4B BB D1 E8 */	b cLib_chaseF__FPfff
/* 806B355C  80 1F 07 F0 */	lwz r0, 0x7f0(r31)
/* 806B3560  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806B3564  41 82 05 18 */	beq lbl_806B3A7C
/* 806B3568  7F E3 FB 78 */	mr r3, r31
/* 806B356C  4B FF BB 31 */	bl setLargeWaterEffect__8daE_DT_cFv
/* 806B3570  38 00 00 0B */	li r0, 0xb
/* 806B3574  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3578  7F E3 FB 78 */	mr r3, r31
/* 806B357C  38 80 00 10 */	li r4, 0x10
/* 806B3580  38 A0 00 00 */	li r5, 0
/* 806B3584  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B3588  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B358C  4B FF B0 C1 */	bl setBck__8daE_DT_cFiUcff
/* 806B3590  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B3594  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 806B3598  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806B359C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806B35A0  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 806B35A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B35A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B35AC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806B35B0  38 80 00 08 */	li r4, 8
/* 806B35B4  38 A0 00 1F */	li r5, 0x1f
/* 806B35B8  38 C1 00 4C */	addi r6, r1, 0x4c
/* 806B35BC  4B 9B C5 54 */	b StartQuake__12dVibration_cFii4cXyz
/* 806B35C0  38 00 00 1E */	li r0, 0x1e
/* 806B35C4  98 1F 07 6F */	stb r0, 0x76f(r31)
/* 806B35C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007023B@ha */
/* 806B35CC  38 03 02 3B */	addi r0, r3, 0x023B /* 0x0007023B@l */
/* 806B35D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B35D4  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 806B35D8  38 81 00 0C */	addi r4, r1, 0xc
/* 806B35DC  38 A0 00 00 */	li r5, 0
/* 806B35E0  38 C0 FF FF */	li r6, -1
/* 806B35E4  81 9F 05 D4 */	lwz r12, 0x5d4(r31)
/* 806B35E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806B35EC  7D 89 03 A6 */	mtctr r12
/* 806B35F0  4E 80 04 21 */	bctrl 
/* 806B35F4  38 00 00 03 */	li r0, 3
/* 806B35F8  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 806B35FC  38 60 00 00 */	li r3, 0
/* 806B3600  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 806B3604  38 00 00 22 */	li r0, 0x22
/* 806B3608  90 1B 06 14 */	stw r0, 0x614(r27)
/* 806B360C  38 00 00 01 */	li r0, 1
/* 806B3610  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 806B3614  90 7B 06 10 */	stw r3, 0x610(r27)
/* 806B3618  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 806B361C  38 00 00 5A */	li r0, 0x5a
/* 806B3620  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B3624  48 00 04 58 */	b lbl_806B3A7C
lbl_806B3628:
/* 806B3628  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B362C  38 81 00 70 */	addi r4, r1, 0x70
/* 806B3630  4B BB D1 7C */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B3634  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 806B3638  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B363C  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 806B3640  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B3644  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 806B3648  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B364C  38 7F 06 A0 */	addi r3, r31, 0x6a0
/* 806B3650  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B3654  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806B3658  4B BB D1 54 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 806B365C  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 806B3660  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806B3664  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806B3668  4B BB D0 D8 */	b cLib_chaseF__FPfff
/* 806B366C  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B3670  2C 00 00 01 */	cmpwi r0, 1
/* 806B3674  40 82 00 20 */	bne lbl_806B3694
/* 806B3678  38 00 00 17 */	li r0, 0x17
/* 806B367C  90 1B 06 14 */	stw r0, 0x614(r27)
/* 806B3680  38 00 00 01 */	li r0, 1
/* 806B3684  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 806B3688  38 00 00 00 */	li r0, 0
/* 806B368C  90 1B 06 10 */	stw r0, 0x610(r27)
/* 806B3690  B0 1B 06 0A */	sth r0, 0x60a(r27)
lbl_806B3694:
/* 806B3694  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3698  38 63 00 0C */	addi r3, r3, 0xc
/* 806B369C  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 806B36A0  4B C7 4D 8C */	b checkPass__12J3DFrameCtrlFf
/* 806B36A4  2C 03 00 00 */	cmpwi r3, 0
/* 806B36A8  41 82 00 5C */	beq lbl_806B3704
/* 806B36AC  7F E3 FB 78 */	mr r3, r31
/* 806B36B0  4B FF C6 81 */	bl getNumberOfOtama__8daE_DT_cFv
/* 806B36B4  3B 40 00 00 */	li r26, 0
/* 806B36B8  3B 60 00 00 */	li r27, 0
/* 806B36BC  3B 9C 00 80 */	addi r28, r28, 0x80
lbl_806B36C0:
/* 806B36C0  7C 1C D8 2E */	lwzx r0, r28, r27
/* 806B36C4  2C 00 00 00 */	cmpwi r0, 0
/* 806B36C8  40 82 00 2C */	bne lbl_806B36F4
/* 806B36CC  38 60 01 FF */	li r3, 0x1ff
/* 806B36D0  67 44 FF 03 */	oris r4, r26, 0xff03
/* 806B36D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806B36D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806B36DC  7C 06 07 74 */	extsb r6, r0
/* 806B36E0  38 FF 04 E4 */	addi r7, r31, 0x4e4
/* 806B36E4  39 00 00 00 */	li r8, 0
/* 806B36E8  39 20 FF FF */	li r9, -1
/* 806B36EC  4B 96 66 AC */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 806B36F0  90 7F 06 78 */	stw r3, 0x678(r31)
lbl_806B36F4:
/* 806B36F4  3B 5A 00 01 */	addi r26, r26, 1
/* 806B36F8  2C 1A 00 14 */	cmpwi r26, 0x14
/* 806B36FC  3B 7B 00 04 */	addi r27, r27, 4
/* 806B3700  41 80 FF C0 */	blt lbl_806B36C0
lbl_806B3704:
/* 806B3704  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3708  38 63 00 0C */	addi r3, r3, 0xc
/* 806B370C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 806B3710  4B C7 4D 1C */	b checkPass__12J3DFrameCtrlFf
/* 806B3714  2C 03 00 00 */	cmpwi r3, 0
/* 806B3718  41 82 03 64 */	beq lbl_806B3A7C
/* 806B371C  38 00 00 14 */	li r0, 0x14
/* 806B3720  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3724  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B3728  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 806B372C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806B3730  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B3734  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 806B3738  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B373C  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 806B3740  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B3744  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B3748  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 806B374C  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B3750  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 806B3754  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806B3758  38 00 00 00 */	li r0, 0
/* 806B375C  90 1F 07 04 */	stw r0, 0x704(r31)
/* 806B3760  48 00 03 1C */	b lbl_806B3A7C
lbl_806B3764:
/* 806B3764  80 1F 07 04 */	lwz r0, 0x704(r31)
/* 806B3768  2C 00 00 0A */	cmpwi r0, 0xa
/* 806B376C  40 80 00 3C */	bge lbl_806B37A8
/* 806B3770  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B3774  38 63 00 0C */	addi r3, r3, 0xc
/* 806B3778  54 00 10 3A */	slwi r0, r0, 2
/* 806B377C  3C 80 80 6B */	lis r4, eDt_ShakeFrameDemo__6E_DT_n@ha
/* 806B3780  38 84 5F 14 */	addi r4, r4, eDt_ShakeFrameDemo__6E_DT_n@l
/* 806B3784  7C 24 04 2E */	lfsx f1, r4, r0
/* 806B3788  4B C7 4C A4 */	b checkPass__12J3DFrameCtrlFf
/* 806B378C  2C 03 00 00 */	cmpwi r3, 0
/* 806B3790  41 82 00 18 */	beq lbl_806B37A8
/* 806B3794  7F E3 FB 78 */	mr r3, r31
/* 806B3798  4B FF C6 8D */	bl setStayOtamaFall__8daE_DT_cFv
/* 806B379C  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 806B37A0  38 03 00 01 */	addi r0, r3, 1
/* 806B37A4  90 1F 07 04 */	stw r0, 0x704(r31)
lbl_806B37A8:
/* 806B37A8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B37AC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B37B0  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 806B37B4  4B C7 4C 78 */	b checkPass__12J3DFrameCtrlFf
/* 806B37B8  2C 03 00 00 */	cmpwi r3, 0
/* 806B37BC  41 82 00 0C */	beq lbl_806B37C8
/* 806B37C0  7F E3 FB 78 */	mr r3, r31
/* 806B37C4  4B FF BD 85 */	bl setSwingEffect__8daE_DT_cFv
lbl_806B37C8:
/* 806B37C8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B37CC  38 63 00 0C */	addi r3, r3, 0xc
/* 806B37D0  C0 3E 01 A8 */	lfs f1, 0x1a8(r30)
/* 806B37D4  4B C7 4C 58 */	b checkPass__12J3DFrameCtrlFf
/* 806B37D8  2C 03 00 00 */	cmpwi r3, 0
/* 806B37DC  41 82 02 A0 */	beq lbl_806B3A7C
/* 806B37E0  38 00 00 1E */	li r0, 0x1e
/* 806B37E4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B37E8  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 806B37EC  3C 03 00 01 */	addis r0, r3, 1
/* 806B37F0  28 00 FF FF */	cmplwi r0, 0xffff
/* 806B37F4  41 82 02 88 */	beq lbl_806B3A7C
/* 806B37F8  38 81 00 18 */	addi r4, r1, 0x18
/* 806B37FC  4B 96 61 C0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806B3800  80 61 00 18 */	lwz r3, 0x18(r1)
/* 806B3804  28 03 00 00 */	cmplwi r3, 0
/* 806B3808  41 82 02 74 */	beq lbl_806B3A7C
/* 806B380C  C0 43 04 D0 */	lfs f2, 0x4d0(r3)
/* 806B3810  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 806B3814  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806B3818  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806B381C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B3820  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B3824  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B3828  EC 01 00 2A */	fadds f0, f1, f0
/* 806B382C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B3830  D0 5F 06 94 */	stfs f2, 0x694(r31)
/* 806B3834  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 806B3838  D0 1F 06 98 */	stfs f0, 0x698(r31)
/* 806B383C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 806B3840  D0 1F 06 9C */	stfs f0, 0x69c(r31)
/* 806B3844  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 806B3848  D0 1F 06 A0 */	stfs f0, 0x6a0(r31)
/* 806B384C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 806B3850  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
/* 806B3854  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 806B3858  D0 1F 06 A8 */	stfs f0, 0x6a8(r31)
/* 806B385C  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 806B3860  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 806B3864  48 00 02 18 */	b lbl_806B3A7C
lbl_806B3868:
/* 806B3868  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 806B386C  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806B3870  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B3874  4B BB CE CC */	b cLib_chaseF__FPfff
/* 806B3878  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 806B387C  3C 03 00 01 */	addis r0, r3, 1
/* 806B3880  28 00 FF FF */	cmplwi r0, 0xffff
/* 806B3884  41 82 00 4C */	beq lbl_806B38D0
/* 806B3888  38 81 00 18 */	addi r4, r1, 0x18
/* 806B388C  4B 96 61 30 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806B3890  80 61 00 18 */	lwz r3, 0x18(r1)
/* 806B3894  28 03 00 00 */	cmplwi r3, 0
/* 806B3898  41 82 00 38 */	beq lbl_806B38D0
/* 806B389C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806B38A0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B38A4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806B38A8  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806B38AC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B38B0  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B38B4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B38B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806B38BC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B38C0  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B38C4  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B38C8  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B38CC  4B BB CE E0 */	b cLib_chasePos__FP4cXyzRC4cXyzf
lbl_806B38D0:
/* 806B38D0  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806B38D4  38 80 00 01 */	li r4, 1
/* 806B38D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806B38DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806B38E0  40 82 00 18 */	bne lbl_806B38F8
/* 806B38E4  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 806B38E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806B38EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806B38F0  41 82 00 08 */	beq lbl_806B38F8
/* 806B38F4  38 80 00 00 */	li r4, 0
lbl_806B38F8:
/* 806B38F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806B38FC  41 82 01 80 */	beq lbl_806B3A7C
/* 806B3900  7F E3 FB 78 */	mr r3, r31
/* 806B3904  38 80 00 17 */	li r4, 0x17
/* 806B3908  38 A0 00 02 */	li r5, 2
/* 806B390C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 806B3910  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B3914  4B FF AD 39 */	bl setBck__8daE_DT_cFiUcff
/* 806B3918  38 00 00 20 */	li r0, 0x20
/* 806B391C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 806B3920  38 00 00 2D */	li r0, 0x2d
/* 806B3924  90 1F 07 58 */	stw r0, 0x758(r31)
/* 806B3928  38 00 00 03 */	li r0, 3
/* 806B392C  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 806B3930  38 60 00 00 */	li r3, 0
/* 806B3934  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 806B3938  38 00 00 22 */	li r0, 0x22
/* 806B393C  90 1B 06 14 */	stw r0, 0x614(r27)
/* 806B3940  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 806B3944  90 7B 06 10 */	stw r3, 0x610(r27)
/* 806B3948  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 806B394C  48 00 01 30 */	b lbl_806B3A7C
lbl_806B3950:
/* 806B3950  38 7F 06 E0 */	addi r3, r31, 0x6e0
/* 806B3954  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806B3958  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 806B395C  4B BB CD E4 */	b cLib_chaseF__FPfff
/* 806B3960  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 806B3964  3C 03 00 01 */	addis r0, r3, 1
/* 806B3968  28 00 FF FF */	cmplwi r0, 0xffff
/* 806B396C  41 82 00 4C */	beq lbl_806B39B8
/* 806B3970  38 81 00 18 */	addi r4, r1, 0x18
/* 806B3974  4B 96 60 48 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806B3978  80 61 00 18 */	lwz r3, 0x18(r1)
/* 806B397C  28 03 00 00 */	cmplwi r3, 0
/* 806B3980  41 82 00 38 */	beq lbl_806B39B8
/* 806B3984  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806B3988  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806B398C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806B3990  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806B3994  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B3998  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806B399C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806B39A0  EC 01 00 2A */	fadds f0, f1, f0
/* 806B39A4  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806B39A8  38 7F 06 94 */	addi r3, r31, 0x694
/* 806B39AC  38 81 00 7C */	addi r4, r1, 0x7c
/* 806B39B0  C0 3E 01 10 */	lfs f1, 0x110(r30)
/* 806B39B4  4B BB CD F8 */	b cLib_chasePos__FP4cXyzRC4cXyzf
lbl_806B39B8:
/* 806B39B8  80 1F 07 58 */	lwz r0, 0x758(r31)
/* 806B39BC  2C 00 00 00 */	cmpwi r0, 0
/* 806B39C0  40 82 00 BC */	bne lbl_806B3A7C
/* 806B39C4  7F E3 FB 78 */	mr r3, r31
/* 806B39C8  38 80 00 03 */	li r4, 3
/* 806B39CC  38 A0 00 00 */	li r5, 0
/* 806B39D0  4B FF AD 7D */	bl setActionMode__8daE_DT_cFii
/* 806B39D4  38 7C 00 4C */	addi r3, r28, 0x4c
/* 806B39D8  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806B39DC  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806B39E0  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 806B39E4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806B39E8  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 806B39EC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806B39F0  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806B39F4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806B39F8  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 806B39FC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B3A00  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 806B3A04  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806B3A08  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 806B3A0C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806B3A10  7F A3 EB 78 */	mr r3, r29
/* 806B3A14  38 81 00 40 */	addi r4, r1, 0x40
/* 806B3A18  38 A1 00 34 */	addi r5, r1, 0x34
/* 806B3A1C  4B AC D1 FC */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806B3A20  7F A3 EB 78 */	mr r3, r29
/* 806B3A24  4B AA DA 88 */	b Start__9dCamera_cFv
/* 806B3A28  7F A3 EB 78 */	mr r3, r29
/* 806B3A2C  38 80 00 00 */	li r4, 0
/* 806B3A30  4B AA F5 DC */	b SetTrimSize__9dCamera_cFl
/* 806B3A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B3A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B3A3C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 806B3A40  4B 98 EA 28 */	b reset__14dEvt_control_cFv
/* 806B3A44  38 00 00 04 */	li r0, 4
/* 806B3A48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806B3A4C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806B3A50  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806B3A54  80 63 00 00 */	lwz r3, 0(r3)
/* 806B3A58  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806B3A5C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000027@ha */
/* 806B3A60  38 84 00 27 */	addi r4, r4, 0x0027 /* 0x01000027@l */
/* 806B3A64  4B BF BA 38 */	b subBgmStart__8Z2SeqMgrFUl
/* 806B3A68  3C 60 80 6B */	lis r3, s_demo_otama__FPvPv@ha
/* 806B3A6C  38 63 FF 1C */	addi r3, r3, s_demo_otama__FPvPv@l
/* 806B3A70  7F E4 FB 78 */	mr r4, r31
/* 806B3A74  4B 96 D8 C4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806B3A78  48 00 00 78 */	b lbl_806B3AF0
lbl_806B3A7C:
/* 806B3A7C  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 806B3A80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B3A84  C0 1F 06 98 */	lfs f0, 0x698(r31)
/* 806B3A88  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B3A8C  C0 1F 06 9C */	lfs f0, 0x69c(r31)
/* 806B3A90  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B3A94  C0 1F 06 A0 */	lfs f0, 0x6a0(r31)
/* 806B3A98  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806B3A9C  C0 1F 06 A4 */	lfs f0, 0x6a4(r31)
/* 806B3AA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B3AA4  C0 1F 06 A8 */	lfs f0, 0x6a8(r31)
/* 806B3AA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B3AAC  7F A3 EB 78 */	mr r3, r29
/* 806B3AB0  38 81 00 28 */	addi r4, r1, 0x28
/* 806B3AB4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 806B3AB8  C0 3F 06 E0 */	lfs f1, 0x6e0(r31)
/* 806B3ABC  A8 DF 07 3C */	lha r6, 0x73c(r31)
/* 806B3AC0  4B AC D0 20 */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 806B3AC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B3AC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B3ACC  3B 63 4E C8 */	addi r27, r3, 0x4ec8
/* 806B3AD0  7F 63 DB 78 */	mr r3, r27
/* 806B3AD4  4B 98 EE D4 */	b onSkipFade__14dEvt_control_cFv
/* 806B3AD8  7F 63 DB 78 */	mr r3, r27
/* 806B3ADC  7F E4 FB 78 */	mr r4, r31
/* 806B3AE0  3C A0 80 6B */	lis r5, DemoSkipCallBack__8daE_DT_cFPvi@ha
/* 806B3AE4  38 A5 E6 18 */	addi r5, r5, DemoSkipCallBack__8daE_DT_cFPvi@l
/* 806B3AE8  38 C0 00 00 */	li r6, 0
/* 806B3AEC  4B 98 EE 28 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_806B3AF0:
/* 806B3AF0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 806B3AF4  4B CA E7 28 */	b _restgpr_26
/* 806B3AF8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806B3AFC  7C 08 03 A6 */	mtlr r0
/* 806B3B00  38 21 00 B0 */	addi r1, r1, 0xb0
/* 806B3B04  4E 80 00 20 */	blr 
