lbl_80661D44:
/* 80661D44  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80661D48  7C 08 02 A6 */	mflr r0
/* 80661D4C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80661D50  39 61 00 80 */	addi r11, r1, 0x80
/* 80661D54  4B D0 04 79 */	bl _savegpr_25
/* 80661D58  7C 7D 1B 78 */	mr r29, r3
/* 80661D5C  3C 60 80 66 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80662F58@ha */
/* 80661D60  3B C3 2F 58 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80662F58@l */
/* 80661D64  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 80661D68  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 80661D6C  80 7D 05 74 */	lwz r3, 0x574(r29)
/* 80661D70  80 63 00 04 */	lwz r3, 4(r3)
/* 80661D74  38 03 00 24 */	addi r0, r3, 0x24
/* 80661D78  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80661D7C  38 7D 05 7C */	addi r3, r29, 0x57c
/* 80661D80  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80661D84  38 BD 05 38 */	addi r5, r29, 0x538
/* 80661D88  38 C0 00 03 */	li r6, 3
/* 80661D8C  38 E0 00 01 */	li r7, 1
/* 80661D90  4B C5 E7 A1 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80661D94  3C 60 80 66 */	lis r3, d_a_cow__stringBase0@ha /* 0x80662F18@ha */
/* 80661D98  38 03 2F 18 */	addi r0, r3, d_a_cow__stringBase0@l /* 0x80662F18@l */
/* 80661D9C  90 1D 01 00 */	stw r0, 0x100(r29)
/* 80661DA0  38 7D 08 20 */	addi r3, r29, 0x820
/* 80661DA4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80661DA8  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80661DAC  4B A1 41 AD */	bl SetWall__12dBgS_AcchCirFff
/* 80661DB0  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 80661DB4  90 01 00 08 */	stw r0, 8(r1)
/* 80661DB8  38 7D 06 0C */	addi r3, r29, 0x60c
/* 80661DBC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80661DC0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80661DC4  7F A6 EB 78 */	mr r6, r29
/* 80661DC8  38 E0 00 01 */	li r7, 1
/* 80661DCC  39 1D 08 20 */	addi r8, r29, 0x820
/* 80661DD0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80661DD4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 80661DD8  4B A1 44 71 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80661DDC  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 80661DE0  38 80 00 DC */	li r4, 0xdc
/* 80661DE4  38 A0 00 00 */	li r5, 0
/* 80661DE8  7F A6 EB 78 */	mr r6, r29
/* 80661DEC  4B A2 1A 75 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80661DF0  3B 20 00 00 */	li r25, 0
/* 80661DF4  3B 80 00 00 */	li r28, 0
/* 80661DF8  3B 7D 07 E4 */	addi r27, r29, 0x7e4
lbl_80661DFC:
/* 80661DFC  7F 5D E2 14 */	add r26, r29, r28
/* 80661E00  38 7A 08 60 */	addi r3, r26, 0x860
/* 80661E04  38 9E 00 20 */	addi r4, r30, 0x20
/* 80661E08  4B A2 2C 2D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80661E0C  93 7A 08 A4 */	stw r27, 0x8a4(r26)
/* 80661E10  3B 39 00 01 */	addi r25, r25, 1
/* 80661E14  2C 19 00 03 */	cmpwi r25, 3
/* 80661E18  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80661E1C  41 80 FF E0 */	blt lbl_80661DFC
/* 80661E20  7F A3 EB 78 */	mr r3, r29
/* 80661E24  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 80661E28  FC 40 08 90 */	fmr f2, f1
/* 80661E2C  C0 7F 01 00 */	lfs f3, 0x100(r31)
/* 80661E30  C0 9F 00 3C */	lfs f4, 0x3c(r31)
/* 80661E34  C0 BF 00 BC */	lfs f5, 0xbc(r31)
/* 80661E38  C0 DF 00 C8 */	lfs f6, 0xc8(r31)
/* 80661E3C  4B 9B 87 0D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80661E40  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 80661E44  64 00 08 00 */	oris r0, r0, 0x800
/* 80661E48  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 80661E4C  38 7D 06 0C */	addi r3, r29, 0x60c
/* 80661E50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80661E54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80661E58  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80661E5C  4B A1 4C 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80661E60  C0 1D 06 A4 */	lfs f0, 0x6a4(r29)
/* 80661E64  D0 1D 0C 44 */	stfs f0, 0xc44(r29)
/* 80661E68  38 00 00 28 */	li r0, 0x28
/* 80661E6C  98 1D 05 48 */	stb r0, 0x548(r29)
/* 80661E70  38 00 00 16 */	li r0, 0x16
/* 80661E74  98 1D 05 44 */	stb r0, 0x544(r29)
/* 80661E78  38 00 00 30 */	li r0, 0x30
/* 80661E7C  98 1D 05 4B */	stb r0, 0x54b(r29)
/* 80661E80  38 00 00 00 */	li r0, 0
/* 80661E84  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80661E88  38 7D 0C B8 */	addi r3, r29, 0xcb8
/* 80661E8C  38 9D 06 0C */	addi r4, r29, 0x60c
/* 80661E90  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80661E94  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80661E98  4B 9E EE 05 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 80661E9C  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80661EA0  38 00 00 00 */	li r0, 0
/* 80661EA4  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80661EA8  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80661EAC  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 80661EB0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80661EB4  B0 1D 0C 32 */	sth r0, 0xc32(r29)
/* 80661EB8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80661EBC  B0 1D 0C 34 */	sth r0, 0xc34(r29)
/* 80661EC0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80661EC4  B0 1D 0C 36 */	sth r0, 0xc36(r29)
/* 80661EC8  A8 1D 0C 32 */	lha r0, 0xc32(r29)
/* 80661ECC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80661ED0  A8 1D 0C 34 */	lha r0, 0xc34(r29)
/* 80661ED4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80661ED8  A8 1D 0C 36 */	lha r0, 0xc36(r29)
/* 80661EDC  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80661EE0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80661EE4  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80661EE8  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80661EEC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80661EF0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80661EF4  88 1D 0C 5F */	lbz r0, 0xc5f(r29)
/* 80661EF8  28 00 00 00 */	cmplwi r0, 0
/* 80661EFC  40 82 00 30 */	bne lbl_80661F2C
/* 80661F00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80661F04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80661F08  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80661F0C  38 80 0A 08 */	li r4, 0xa08
/* 80661F10  4B 9D 2A AD */	bl isEventBit__11dSv_event_cCFUs
/* 80661F14  2C 03 00 00 */	cmpwi r3, 0
/* 80661F18  41 82 00 14 */	beq lbl_80661F2C
/* 80661F1C  38 00 00 04 */	li r0, 4
/* 80661F20  98 1D 0C 5F */	stb r0, 0xc5f(r29)
/* 80661F24  7F A3 EB 78 */	mr r3, r29
/* 80661F28  4B FF A5 E1 */	bl setCowInCage__7daCow_cFv
lbl_80661F2C:
/* 80661F2C  88 1D 0C 5F */	lbz r0, 0xc5f(r29)
/* 80661F30  2C 00 00 04 */	cmpwi r0, 4
/* 80661F34  41 82 00 90 */	beq lbl_80661FC4
/* 80661F38  40 80 00 94 */	bge lbl_80661FCC
/* 80661F3C  2C 00 00 03 */	cmpwi r0, 3
/* 80661F40  40 80 00 08 */	bge lbl_80661F48
/* 80661F44  48 00 00 88 */	b lbl_80661FCC
lbl_80661F48:
/* 80661F48  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80661F4C  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80661F50  28 03 00 FF */	cmplwi r3, 0xff
/* 80661F54  41 82 01 94 */	beq lbl_806620E8
/* 80661F58  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80661F5C  7C 04 07 74 */	extsb r4, r0
/* 80661F60  4B 9E F8 8D */	bl dPath_GetRoomPath__Fii
/* 80661F64  90 7D 0C 0C */	stw r3, 0xc0c(r29)
/* 80661F68  38 00 00 00 */	li r0, 0
/* 80661F6C  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 80661F70  80 7D 0C 0C */	lwz r3, 0xc0c(r29)
/* 80661F74  88 9D 0C 10 */	lbz r4, 0xc10(r29)
/* 80661F78  7C 84 07 74 */	extsb r4, r4
/* 80661F7C  4B 9E F8 35 */	bl dPath_GetPnt__FPC5dPathi
/* 80661F80  C0 03 00 04 */	lfs f0, 4(r3)
/* 80661F84  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80661F88  C0 03 00 08 */	lfs f0, 8(r3)
/* 80661F8C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80661F90  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80661F94  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80661F98  80 7E 03 E4 */	lwz r3, 0x3e4(r30)
/* 80661F9C  80 1E 03 E8 */	lwz r0, 0x3e8(r30)
/* 80661FA0  90 61 00 40 */	stw r3, 0x40(r1)
/* 80661FA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80661FA8  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 80661FAC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80661FB0  7F A3 EB 78 */	mr r3, r29
/* 80661FB4  38 81 00 40 */	addi r4, r1, 0x40
/* 80661FB8  38 A0 00 00 */	li r5, 0
/* 80661FBC  4B FF 71 59 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80661FC0  48 00 01 28 */	b lbl_806620E8
lbl_80661FC4:
/* 80661FC4  38 00 00 01 */	li r0, 1
/* 80661FC8  98 1D 0C A5 */	stb r0, 0xca5(r29)
lbl_80661FCC:
/* 80661FCC  28 1D 00 00 */	cmplwi r29, 0
/* 80661FD0  41 82 00 0C */	beq lbl_80661FDC
/* 80661FD4  83 7D 00 04 */	lwz r27, 4(r29)
/* 80661FD8  48 00 00 08 */	b lbl_80661FE0
lbl_80661FDC:
/* 80661FDC  3B 60 FF FF */	li r27, -1
lbl_80661FE0:
/* 80661FE0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80661FE4  4B C0 59 71 */	bl cM_rndF__Ff
/* 80661FE8  C8 5F 01 48 */	lfd f2, 0x148(r31)
/* 80661FEC  93 61 00 54 */	stw r27, 0x54(r1)
/* 80661FF0  3C 00 43 30 */	lis r0, 0x4330
/* 80661FF4  90 01 00 50 */	stw r0, 0x50(r1)
/* 80661FF8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80661FFC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80662000  EC 01 00 2A */	fadds f0, f1, f0
/* 80662004  FC 00 00 1E */	fctiwz f0, f0
/* 80662008  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8066200C  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80662010  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 80662014  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80662018  7C 03 00 50 */	subf r0, r3, r0
/* 8066201C  54 00 10 3E */	rotlwi r0, r0, 2
/* 80662020  7C 00 1A 14 */	add r0, r0, r3
/* 80662024  2C 00 00 01 */	cmpwi r0, 1
/* 80662028  40 82 00 30 */	bne lbl_80662058
/* 8066202C  80 7E 03 F0 */	lwz r3, 0x3f0(r30)
/* 80662030  80 1E 03 F4 */	lwz r0, 0x3f4(r30)
/* 80662034  90 61 00 34 */	stw r3, 0x34(r1)
/* 80662038  90 01 00 38 */	stw r0, 0x38(r1)
/* 8066203C  80 1E 03 F8 */	lwz r0, 0x3f8(r30)
/* 80662040  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80662044  7F A3 EB 78 */	mr r3, r29
/* 80662048  38 81 00 34 */	addi r4, r1, 0x34
/* 8066204C  38 A0 00 00 */	li r5, 0
/* 80662050  4B FF 70 C5 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80662054  48 00 00 94 */	b lbl_806620E8
lbl_80662058:
/* 80662058  2C 00 00 02 */	cmpwi r0, 2
/* 8066205C  40 82 00 30 */	bne lbl_8066208C
/* 80662060  80 7E 03 FC */	lwz r3, 0x3fc(r30)
/* 80662064  80 1E 04 00 */	lwz r0, 0x400(r30)
/* 80662068  90 61 00 28 */	stw r3, 0x28(r1)
/* 8066206C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80662070  80 1E 04 04 */	lwz r0, 0x404(r30)
/* 80662074  90 01 00 30 */	stw r0, 0x30(r1)
/* 80662078  7F A3 EB 78 */	mr r3, r29
/* 8066207C  38 81 00 28 */	addi r4, r1, 0x28
/* 80662080  38 A0 00 00 */	li r5, 0
/* 80662084  4B FF 70 91 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80662088  48 00 00 60 */	b lbl_806620E8
lbl_8066208C:
/* 8066208C  2C 00 00 03 */	cmpwi r0, 3
/* 80662090  40 82 00 30 */	bne lbl_806620C0
/* 80662094  80 7E 04 08 */	lwz r3, 0x408(r30)
/* 80662098  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 8066209C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 806620A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806620A4  80 1E 04 10 */	lwz r0, 0x410(r30)
/* 806620A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806620AC  7F A3 EB 78 */	mr r3, r29
/* 806620B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806620B4  38 A0 00 00 */	li r5, 0
/* 806620B8  4B FF 70 5D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 806620BC  48 00 00 2C */	b lbl_806620E8
lbl_806620C0:
/* 806620C0  80 7E 04 14 */	lwz r3, 0x414(r30)
/* 806620C4  80 1E 04 18 */	lwz r0, 0x418(r30)
/* 806620C8  90 61 00 10 */	stw r3, 0x10(r1)
/* 806620CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806620D0  80 1E 04 1C */	lwz r0, 0x41c(r30)
/* 806620D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 806620D8  7F A3 EB 78 */	mr r3, r29
/* 806620DC  38 81 00 10 */	addi r4, r1, 0x10
/* 806620E0  38 A0 00 00 */	li r5, 0
/* 806620E4  4B FF 70 31 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
lbl_806620E8:
/* 806620E8  38 7D 08 20 */	addi r3, r29, 0x820
/* 806620EC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806620F0  4B A1 3E 51 */	bl SetWallR__12dBgS_AcchCirFf
/* 806620F4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806620F8  D0 1D 08 50 */	stfs f0, 0x850(r29)
/* 806620FC  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80662100  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80662104  4B C0 57 69 */	bl cM_rnd__Fv
/* 80662108  3B 20 00 00 */	li r25, 0
/* 8066210C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80662110  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80662114  40 80 00 28 */	bge lbl_8066213C
/* 80662118  3C 60 80 66 */	lis r3, data_806634D4@ha /* 0x806634D4@ha */
/* 8066211C  38 83 34 D4 */	addi r4, r3, data_806634D4@l /* 0x806634D4@l */
/* 80662120  80 64 00 00 */	lwz r3, 0(r4)
/* 80662124  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80662128  40 82 00 44 */	bne lbl_8066216C
/* 8066212C  60 60 00 01 */	ori r0, r3, 1
/* 80662130  90 04 00 00 */	stw r0, 0(r4)
/* 80662134  3B 20 00 01 */	li r25, 1
/* 80662138  48 00 00 34 */	b lbl_8066216C
lbl_8066213C:
/* 8066213C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80662140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80662144  4C 41 13 82 */	cror 2, 1, 2
/* 80662148  40 82 00 24 */	bne lbl_8066216C
/* 8066214C  3C 60 80 66 */	lis r3, data_806634D4@ha /* 0x806634D4@ha */
/* 80662150  38 83 34 D4 */	addi r4, r3, data_806634D4@l /* 0x806634D4@l */
/* 80662154  80 64 00 00 */	lwz r3, 0(r4)
/* 80662158  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8066215C  40 82 00 10 */	bne lbl_8066216C
/* 80662160  60 60 00 02 */	ori r0, r3, 2
/* 80662164  90 04 00 00 */	stw r0, 0(r4)
/* 80662168  3B 20 00 02 */	li r25, 2
lbl_8066216C:
/* 8066216C  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 80662170  2C 00 00 02 */	cmpwi r0, 2
/* 80662174  41 82 00 28 */	beq lbl_8066219C
/* 80662178  40 80 00 38 */	bge lbl_806621B0
/* 8066217C  2C 00 00 01 */	cmpwi r0, 1
/* 80662180  40 80 00 08 */	bge lbl_80662188
/* 80662184  48 00 00 2C */	b lbl_806621B0
lbl_80662188:
/* 80662188  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 8066218C  D0 1D 0C 78 */	stfs f0, 0xc78(r29)
/* 80662190  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80662194  D0 1D 0C 7C */	stfs f0, 0xc7c(r29)
/* 80662198  48 00 00 40 */	b lbl_806621D8
lbl_8066219C:
/* 8066219C  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 806621A0  D0 1D 0C 78 */	stfs f0, 0xc78(r29)
/* 806621A4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806621A8  D0 1D 0C 7C */	stfs f0, 0xc7c(r29)
/* 806621AC  48 00 00 2C */	b lbl_806621D8
lbl_806621B0:
/* 806621B0  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 806621B4  4B C0 57 D9 */	bl cM_rndFX__Ff
/* 806621B8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 806621BC  EC 00 08 2A */	fadds f0, f0, f1
/* 806621C0  D0 1D 0C 78 */	stfs f0, 0xc78(r29)
/* 806621C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806621C8  4B C0 57 C5 */	bl cM_rndFX__Ff
/* 806621CC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 806621D0  EC 00 08 2A */	fadds f0, f0, f1
/* 806621D4  D0 1D 0C 7C */	stfs f0, 0xc7c(r29)
lbl_806621D8:
/* 806621D8  9B 3D 0C 69 */	stb r25, 0xc69(r29)
/* 806621DC  7F A3 EB 78 */	mr r3, r29
/* 806621E0  4B FF F7 61 */	bl Execute__7daCow_cFv
/* 806621E4  88 1D 0C 5F */	lbz r0, 0xc5f(r29)
/* 806621E8  28 00 00 00 */	cmplwi r0, 0
/* 806621EC  40 82 00 20 */	bne lbl_8066220C
/* 806621F0  38 00 00 00 */	li r0, 0
/* 806621F4  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 806621F8  38 83 01 88 */	addi r4, r3, g_meter2_info@l /* 0x80430188@l */
/* 806621FC  98 04 00 BC */	stb r0, 0xbc(r4)
/* 80662200  88 64 00 BB */	lbz r3, 0xbb(r4)
/* 80662204  38 03 00 01 */	addi r0, r3, 1
/* 80662208  98 04 00 BB */	stb r0, 0xbb(r4)
lbl_8066220C:
/* 8066220C  38 60 00 01 */	li r3, 1
/* 80662210  39 61 00 80 */	addi r11, r1, 0x80
/* 80662214  4B D0 00 05 */	bl _restgpr_25
/* 80662218  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8066221C  7C 08 03 A6 */	mtlr r0
/* 80662220  38 21 00 80 */	addi r1, r1, 0x80
/* 80662224  4E 80 00 20 */	blr 
