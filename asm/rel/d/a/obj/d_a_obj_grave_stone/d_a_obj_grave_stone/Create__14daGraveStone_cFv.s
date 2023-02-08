lbl_80C12AD8:
/* 80C12AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C12ADC  7C 08 02 A6 */	mflr r0
/* 80C12AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C12AE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C12AE8  4B 74 F6 F1 */	bl _savegpr_28
/* 80C12AEC  7C 7F 1B 78 */	mr r31, r3
/* 80C12AF0  4B FF FB 09 */	bl setBaseMtx__14daGraveStone_cFv
/* 80C12AF4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C12AF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80C12AFC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C12B00  38 7F 07 C0 */	addi r3, r31, 0x7c0
/* 80C12B04  3C 80 80 C1 */	lis r4, lit_3717@ha /* 0x80C132C4@ha */
/* 80C12B08  C0 24 32 C4 */	lfs f1, lit_3717@l(r4)  /* 0x80C132C4@l */
/* 80C12B0C  FC 40 08 90 */	fmr f2, f1
/* 80C12B10  4B 46 34 49 */	bl SetWall__12dBgS_AcchCirFff
/* 80C12B14  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80C12B18  90 01 00 08 */	stw r0, 8(r1)
/* 80C12B1C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C12B20  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C12B24  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80C12B28  7F E6 FB 78 */	mr r6, r31
/* 80C12B2C  38 E0 00 01 */	li r7, 1
/* 80C12B30  39 1F 07 C0 */	addi r8, r31, 0x7c0
/* 80C12B34  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80C12B38  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80C12B3C  4B 46 37 0D */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80C12B40  38 7F 07 84 */	addi r3, r31, 0x784
/* 80C12B44  38 80 00 FF */	li r4, 0xff
/* 80C12B48  38 A0 00 00 */	li r5, 0
/* 80C12B4C  7F E6 FB 78 */	mr r6, r31
/* 80C12B50  4B 47 0D 11 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C12B54  38 7F 08 00 */	addi r3, r31, 0x800
/* 80C12B58  3C 80 80 C1 */	lis r4, mCcDCyl__14daGraveStone_c@ha /* 0x80C13280@ha */
/* 80C12B5C  38 84 32 80 */	addi r4, r4, mCcDCyl__14daGraveStone_c@l /* 0x80C13280@l */
/* 80C12B60  4B 47 1D 55 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C12B64  38 1F 07 84 */	addi r0, r31, 0x784
/* 80C12B68  90 1F 08 44 */	stw r0, 0x844(r31)
/* 80C12B6C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C12B70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C12B74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C12B78  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C12B7C  4B 46 3F 31 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80C12B80  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 80C12B84  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 80C12B88  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80C12B8C  90 1F 09 40 */	stw r0, 0x940(r31)
/* 80C12B90  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 80C12B94  90 1F 09 44 */	stw r0, 0x944(r31)
/* 80C12B98  88 1F 06 94 */	lbz r0, 0x694(r31)
/* 80C12B9C  98 1F 09 48 */	stb r0, 0x948(r31)
/* 80C12BA0  A0 1F 06 9C */	lhz r0, 0x69c(r31)
/* 80C12BA4  B0 1F 09 50 */	sth r0, 0x950(r31)
/* 80C12BA8  A0 1F 06 9E */	lhz r0, 0x69e(r31)
/* 80C12BAC  B0 1F 09 52 */	sth r0, 0x952(r31)
/* 80C12BB0  80 1F 06 A0 */	lwz r0, 0x6a0(r31)
/* 80C12BB4  90 1F 09 54 */	stw r0, 0x954(r31)
/* 80C12BB8  80 1F 06 A4 */	lwz r0, 0x6a4(r31)
/* 80C12BBC  90 1F 09 58 */	stw r0, 0x958(r31)
/* 80C12BC0  C0 1F 06 AC */	lfs f0, 0x6ac(r31)
/* 80C12BC4  D0 1F 09 60 */	stfs f0, 0x960(r31)
/* 80C12BC8  C0 1F 06 B0 */	lfs f0, 0x6b0(r31)
/* 80C12BCC  D0 1F 09 64 */	stfs f0, 0x964(r31)
/* 80C12BD0  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 80C12BD4  D0 1F 09 68 */	stfs f0, 0x968(r31)
/* 80C12BD8  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80C12BDC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80C12BE0  C0 1F 06 BC */	lfs f0, 0x6bc(r31)
/* 80C12BE4  D0 1F 09 70 */	stfs f0, 0x970(r31)
/* 80C12BE8  80 1F 06 C0 */	lwz r0, 0x6c0(r31)
/* 80C12BEC  90 1F 09 74 */	stw r0, 0x974(r31)
/* 80C12BF0  7F E3 FB 78 */	mr r3, r31
/* 80C12BF4  4B FF FE 45 */	bl setEnvTevColor__14daGraveStone_cFv
/* 80C12BF8  7F E3 FB 78 */	mr r3, r31
/* 80C12BFC  4B FF FE 99 */	bl setRoomNo__14daGraveStone_cFv
/* 80C12C00  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C12C04  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C12C08  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C12C0C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C12C10  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C12C14  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C12C18  3B 80 00 00 */	li r28, 0
/* 80C12C1C  3B C0 00 00 */	li r30, 0
/* 80C12C20  3C 60 80 C1 */	lis r3, lit_3717@ha /* 0x80C132C4@ha */
/* 80C12C24  3B A3 32 C4 */	addi r29, r3, lit_3717@l /* 0x80C132C4@l */
lbl_80C12C28:
/* 80C12C28  38 7E 09 9C */	addi r3, r30, 0x99c
/* 80C12C2C  7C 7F 1A 14 */	add r3, r31, r3
/* 80C12C30  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 80C12C34  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80C12C38  FC 40 08 90 */	fmr f2, f1
/* 80C12C3C  4B 43 E0 61 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80C12C40  3B 9C 00 01 */	addi r28, r28, 1
/* 80C12C44  2C 1C 00 04 */	cmpwi r28, 4
/* 80C12C48  3B DE 00 5C */	addi r30, r30, 0x5c
/* 80C12C4C  41 80 FF DC */	blt lbl_80C12C28
/* 80C12C50  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C12C54  80 63 00 04 */	lwz r3, 4(r3)
/* 80C12C58  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80C12C5C  80 83 00 00 */	lwz r4, 0(r3)
/* 80C12C60  7F E3 FB 78 */	mr r3, r31
/* 80C12C64  C0 24 00 3C */	lfs f1, 0x3c(r4)
/* 80C12C68  C0 44 00 40 */	lfs f2, 0x40(r4)
/* 80C12C6C  C0 64 00 44 */	lfs f3, 0x44(r4)
/* 80C12C70  C0 84 00 48 */	lfs f4, 0x48(r4)
/* 80C12C74  C0 A4 00 4C */	lfs f5, 0x4c(r4)
/* 80C12C78  C0 C4 00 50 */	lfs f6, 0x50(r4)
/* 80C12C7C  4B 40 78 CD */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C12C80  38 00 00 00 */	li r0, 0
/* 80C12C84  B0 1F 0A E8 */	sth r0, 0xae8(r31)
/* 80C12C88  38 60 00 01 */	li r3, 1
/* 80C12C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C12C90  4B 74 F5 95 */	bl _restgpr_28
/* 80C12C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C12C98  7C 08 03 A6 */	mtlr r0
/* 80C12C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C12CA0  4E 80 00 20 */	blr 
