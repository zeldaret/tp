lbl_809EFF1C:
/* 809EFF1C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809EFF20  7C 08 02 A6 */	mflr r0
/* 809EFF24  90 01 00 64 */	stw r0, 0x64(r1)
/* 809EFF28  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 809EFF2C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 809EFF30  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 809EFF34  93 C1 00 48 */	stw r30, 0x48(r1)
/* 809EFF38  7C 7F 1B 78 */	mr r31, r3
/* 809EFF3C  80 03 0A E0 */	lwz r0, 0xae0(r3)
/* 809EFF40  28 00 00 00 */	cmplwi r0, 0
/* 809EFF44  41 82 01 9C */	beq lbl_809F00E0
/* 809EFF48  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809EFF4C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809EFF50  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809EFF54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809EFF58  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809EFF5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809EFF60  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 809EFF64  38 81 00 14 */	addi r4, r1, 0x14
/* 809EFF68  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 809EFF6C  4B 76 9C A9 */	bl checkPoint__11PathTrace_cF4cXyzf
/* 809EFF70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809EFF74  41 82 00 5C */	beq lbl_809EFFD0
/* 809EFF78  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 809EFF7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 809EFF80  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809EFF84  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809EFF88  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 809EFF8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809EFF90  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 809EFF94  38 81 00 08 */	addi r4, r1, 8
/* 809EFF98  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 809EFF9C  4B 76 9E 25 */	bl checkPathEnd__11PathTrace_cF4cXyzf
/* 809EFFA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809EFFA4  41 82 00 20 */	beq lbl_809EFFC4
/* 809EFFA8  80 7F 0A E0 */	lwz r3, 0xae0(r31)
/* 809EFFAC  88 03 00 05 */	lbz r0, 5(r3)
/* 809EFFB0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809EFFB4  40 82 00 10 */	bne lbl_809EFFC4
/* 809EFFB8  7F E3 FB 78 */	mr r3, r31
/* 809EFFBC  38 80 00 02 */	li r4, 2
/* 809EFFC0  4B FF FE 61 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809EFFC4:
/* 809EFFC4  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 809EFFC8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809EFFCC  4B 76 9F CD */	bl setNextPoint__11PathTrace_cFR4cXyz
lbl_809EFFD0:
/* 809EFFD0  80 1F 0D 9C */	lwz r0, 0xd9c(r31)
/* 809EFFD4  28 00 00 02 */	cmplwi r0, 2
/* 809EFFD8  41 82 00 0C */	beq lbl_809EFFE4
/* 809EFFDC  28 00 00 01 */	cmplwi r0, 1
/* 809EFFE0  40 82 00 9C */	bne lbl_809F007C
lbl_809EFFE4:
/* 809EFFE4  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 809EFFE8  38 81 00 20 */	addi r4, r1, 0x20
/* 809EFFEC  4B 76 9E 69 */	bl getTargetPoint__11PathTrace_cFP3Vec
/* 809EFFF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809EFFF4  38 81 00 20 */	addi r4, r1, 0x20
/* 809EFFF8  4B 88 0C 0D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 809EFFFC  7C 64 1B 78 */	mr r4, r3
/* 809F0000  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 809F0004  38 A0 00 0D */	li r5, 0xd
/* 809F0008  38 C0 06 00 */	li r6, 0x600
/* 809F000C  4B 88 05 FD */	bl cLib_addCalcAngleS2__FPssss
/* 809F0010  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 809F0014  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 809F0018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809F001C  41 82 00 60 */	beq lbl_809F007C
/* 809F0020  3B C0 00 00 */	li r30, 0
/* 809F0024  3C 60 80 9F */	lis r3, __vt__8cM3dGPla@ha /* 0x809F2FAC@ha */
/* 809F0028  38 03 2F AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809F2FAC@l */
/* 809F002C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 809F0030  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F0034  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F0038  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809F003C  38 9F 07 28 */	addi r4, r31, 0x728
/* 809F0040  38 A1 00 2C */	addi r5, r1, 0x2c
/* 809F0044  4B 68 47 01 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 809F0048  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F004C  41 82 00 14 */	beq lbl_809F0060
/* 809F0050  38 61 00 2C */	addi r3, r1, 0x2c
/* 809F0054  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809F0058  4B 62 DB 81 */	bl fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 809F005C  7C 7E 1B 78 */	mr r30, r3
lbl_809F0060:
/* 809F0060  7F C0 07 35 */	extsh. r0, r30
/* 809F0064  41 82 00 0C */	beq lbl_809F0070
/* 809F0068  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809F006C  D0 1F 0D 94 */	stfs f0, 0xd94(r31)
lbl_809F0070:
/* 809F0070  3C 60 80 9F */	lis r3, __vt__8cM3dGPla@ha /* 0x809F2FAC@ha */
/* 809F0074  38 03 2F AC */	addi r0, r3, __vt__8cM3dGPla@l /* 0x809F2FAC@l */
/* 809F0078  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_809F007C:
/* 809F007C  7F E3 FB 78 */	mr r3, r31
/* 809F0080  48 00 0D 55 */	bl setAngle__12daNpcGuard_cFv
/* 809F0084  7F E3 FB 78 */	mr r3, r31
/* 809F0088  48 00 0E 4D */	bl pathMoveF__12daNpcGuard_cFv
/* 809F008C  38 7F 06 38 */	addi r3, r31, 0x638
/* 809F0090  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F0094  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F0098  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F009C  4B 68 6A 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809F00A0  3C 60 80 9F */	lis r3, lit_3951@ha /* 0x809F2C58@ha */
/* 809F00A4  C8 23 2C 58 */	lfd f1, lit_3951@l(r3)  /* 0x809F2C58@l */
/* 809F00A8  3C 60 80 9F */	lis r3, lit_3952@ha /* 0x809F2C60@ha */
/* 809F00AC  C8 43 2C 60 */	lfd f2, lit_3952@l(r3)  /* 0x809F2C60@l */
/* 809F00B0  4B 97 C6 D1 */	bl pow
/* 809F00B4  FF E0 08 18 */	frsp f31, f1
/* 809F00B8  7F E3 FB 78 */	mr r3, r31
/* 809F00BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F00C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F00C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809F00C8  4B 62 A9 CD */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F00CC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809F00D0  40 80 00 10 */	bge lbl_809F00E0
/* 809F00D4  7F E3 FB 78 */	mr r3, r31
/* 809F00D8  38 80 00 02 */	li r4, 2
/* 809F00DC  4B FF FD 45 */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F00E0:
/* 809F00E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 809F00E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 809F00E8  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 809F00EC  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 809F00F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809F00F4  7C 08 03 A6 */	mtlr r0
/* 809F00F8  38 21 00 60 */	addi r1, r1, 0x60
/* 809F00FC  4E 80 00 20 */	blr 
