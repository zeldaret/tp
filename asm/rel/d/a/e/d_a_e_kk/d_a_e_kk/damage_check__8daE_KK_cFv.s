lbl_806FAC8C:
/* 806FAC8C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806FAC90  7C 08 02 A6 */	mflr r0
/* 806FAC94  90 01 00 64 */	stw r0, 0x64(r1)
/* 806FAC98  39 61 00 60 */	addi r11, r1, 0x60
/* 806FAC9C  4B C6 75 34 */	b _savegpr_26
/* 806FACA0  7C 7E 1B 78 */	mr r30, r3
/* 806FACA4  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FACA8  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FACAC  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806FACB0  2C 00 00 01 */	cmpwi r0, 1
/* 806FACB4  40 81 06 20 */	ble lbl_806FB2D4
/* 806FACB8  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FACBC  28 00 00 01 */	cmplwi r0, 1
/* 806FACC0  41 82 06 14 */	beq lbl_806FB2D4
/* 806FACC4  80 1E 06 60 */	lwz r0, 0x660(r30)
/* 806FACC8  2C 00 00 0A */	cmpwi r0, 0xa
/* 806FACCC  40 82 00 08 */	bne lbl_806FACD4
/* 806FACD0  48 00 06 04 */	b lbl_806FB2D4
lbl_806FACD4:
/* 806FACD4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FACD8  80 63 00 04 */	lwz r3, 4(r3)
/* 806FACDC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806FACE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FACE4  38 63 00 60 */	addi r3, r3, 0x60
/* 806FACE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FACEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FACF0  4B C4 B7 C0 */	b PSMTXCopy
/* 806FACF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FACF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FACFC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FAD00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806FAD04  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FAD08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806FAD0C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806FAD10  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806FAD14  7F C3 F3 78 */	mr r3, r30
/* 806FAD18  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 806FAD1C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806FAD20  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 806FAD24  48 00 44 61 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806FAD28  88 1E 06 78 */	lbz r0, 0x678(r30)
/* 806FAD2C  28 00 00 00 */	cmplwi r0, 0
/* 806FAD30  40 82 05 A4 */	bne lbl_806FB2D4
/* 806FAD34  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 806FAD38  4B 98 95 88 */	b ChkAtHit__12dCcD_GObjInfFv
/* 806FAD3C  28 03 00 00 */	cmplwi r3, 0
/* 806FAD40  41 82 00 50 */	beq lbl_806FAD90
/* 806FAD44  80 1E 0B 5C */	lwz r0, 0xb5c(r30)
/* 806FAD48  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FAD4C  41 82 00 44 */	beq lbl_806FAD90
/* 806FAD50  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FAD54  3C 80 00 04 */	lis r4, 4
/* 806FAD58  38 A0 00 28 */	li r5, 0x28
/* 806FAD5C  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FAD60  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FAD64  7D 89 03 A6 */	mtctr r12
/* 806FAD68  4E 80 04 21 */	bctrl 
/* 806FAD6C  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 806FAD70  81 9E 0B 3C */	lwz r12, 0xb3c(r30)
/* 806FAD74  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806FAD78  7D 89 03 A6 */	mtctr r12
/* 806FAD7C  4E 80 04 21 */	bctrl 
/* 806FAD80  38 00 00 08 */	li r0, 8
/* 806FAD84  98 1E 06 78 */	stb r0, 0x678(r30)
/* 806FAD88  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806FAD8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806FAD90:
/* 806FAD90  3B 40 00 00 */	li r26, 0
/* 806FAD94  3B A0 00 00 */	li r29, 0
lbl_806FAD98:
/* 806FAD98  7F 9E EA 14 */	add r28, r30, r29
/* 806FAD9C  3B 7C 0C 5C */	addi r27, r28, 0xc5c
/* 806FADA0  7F 63 DB 78 */	mr r3, r27
/* 806FADA4  4B 98 95 1C */	b ChkAtHit__12dCcD_GObjInfFv
/* 806FADA8  28 03 00 00 */	cmplwi r3, 0
/* 806FADAC  41 82 00 50 */	beq lbl_806FADFC
/* 806FADB0  80 1C 0C B8 */	lwz r0, 0xcb8(r28)
/* 806FADB4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FADB8  41 82 00 44 */	beq lbl_806FADFC
/* 806FADBC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FADC0  3C 80 00 04 */	lis r4, 4
/* 806FADC4  38 A0 00 28 */	li r5, 0x28
/* 806FADC8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FADCC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FADD0  7D 89 03 A6 */	mtctr r12
/* 806FADD4  4E 80 04 21 */	bctrl 
/* 806FADD8  7F 63 DB 78 */	mr r3, r27
/* 806FADDC  81 9B 00 3C */	lwz r12, 0x3c(r27)
/* 806FADE0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806FADE4  7D 89 03 A6 */	mtctr r12
/* 806FADE8  4E 80 04 21 */	bctrl 
/* 806FADEC  38 00 00 08 */	li r0, 8
/* 806FADF0  98 1E 06 78 */	stb r0, 0x678(r30)
/* 806FADF4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806FADF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806FADFC:
/* 806FADFC  3B 5A 00 01 */	addi r26, r26, 1
/* 806FAE00  2C 1A 00 06 */	cmpwi r26, 6
/* 806FAE04  3B BD 01 38 */	addi r29, r29, 0x138
/* 806FAE08  41 80 FF 90 */	blt lbl_806FAD98
/* 806FAE0C  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FAE10  28 00 00 00 */	cmplwi r0, 0
/* 806FAE14  40 82 00 60 */	bne lbl_806FAE74
/* 806FAE18  7F C3 F3 78 */	mr r3, r30
/* 806FAE1C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FAE20  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FAE24  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FAE28  4B 91 F9 B8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FAE2C  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FAE30  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FAE34  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806FAE38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FAE3C  4C 40 13 82 */	cror 2, 0, 2
/* 806FAE40  40 82 00 34 */	bne lbl_806FAE74
/* 806FAE44  7F C3 F3 78 */	mr r3, r30
/* 806FAE48  38 80 00 00 */	li r4, 0
/* 806FAE4C  4B FF FD 75 */	bl mCutTypeCheck__8daE_KK_cFi
/* 806FAE50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FAE54  41 82 00 14 */	beq lbl_806FAE68
/* 806FAE58  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FAE5C  60 00 00 01 */	ori r0, r0, 1
/* 806FAE60  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FAE64  48 00 00 10 */	b lbl_806FAE74
lbl_806FAE68:
/* 806FAE68  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FAE6C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FAE70  90 1E 0A 60 */	stw r0, 0xa60(r30)
lbl_806FAE74:
/* 806FAE74  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAE78  4B 98 95 E8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806FAE7C  28 03 00 00 */	cmplwi r3, 0
/* 806FAE80  41 82 04 40 */	beq lbl_806FB2C0
/* 806FAE84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FAE88  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806FAE8C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806FAE90  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806FAE94  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FAE98  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806FAE9C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FAEA0  EC 01 00 2A */	fadds f0, f1, f0
/* 806FAEA4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806FAEA8  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FAEAC  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FAEB0  C0 03 00 08 */	lfs f0, 8(r3)
/* 806FAEB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806FAEB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FAEBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FAEC0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806FAEC4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806FAEC8  38 00 00 08 */	li r0, 8
/* 806FAECC  98 1E 06 78 */	stb r0, 0x678(r30)
/* 806FAED0  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAED4  4B 98 96 24 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FAED8  90 7E 0C 38 */	stw r3, 0xc38(r30)
/* 806FAEDC  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAEE0  4B 98 96 18 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FAEE4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FAEE8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806FAEEC  40 82 00 2C */	bne lbl_806FAF18
/* 806FAEF0  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAEF4  4B 98 96 04 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FAEF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FAEFC  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806FAF00  40 82 00 18 */	bne lbl_806FAF18
/* 806FAF04  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAF08  4B 98 95 F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FAF0C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FAF10  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 806FAF14  41 82 00 5C */	beq lbl_806FAF70
lbl_806FAF18:
/* 806FAF18  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FAF1C  3C 80 00 04 */	lis r4, 4
/* 806FAF20  38 A0 00 28 */	li r5, 0x28
/* 806FAF24  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FAF28  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FAF2C  7D 89 03 A6 */	mtctr r12
/* 806FAF30  4E 80 04 21 */	bctrl 
/* 806FAF34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FAF38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FAF3C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806FAF40  38 80 00 02 */	li r4, 2
/* 806FAF44  7F C5 F3 78 */	mr r5, r30
/* 806FAF48  38 C1 00 30 */	addi r6, r1, 0x30
/* 806FAF4C  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 806FAF50  39 00 00 00 */	li r8, 0
/* 806FAF54  39 20 00 00 */	li r9, 0
/* 806FAF58  4B 95 12 C0 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806FAF5C  7F C3 F3 78 */	mr r3, r30
/* 806FAF60  38 80 00 05 */	li r4, 5
/* 806FAF64  38 A0 00 00 */	li r5, 0
/* 806FAF68  4B FF FD 19 */	bl setActionMode__8daE_KK_cFii
/* 806FAF6C  48 00 03 54 */	b lbl_806FB2C0
lbl_806FAF70:
/* 806FAF70  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FAF74  4B 98 95 84 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FAF78  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FAF7C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806FAF80  41 82 00 88 */	beq lbl_806FB008
/* 806FAF84  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806FAF88  60 00 00 80 */	ori r0, r0, 0x80
/* 806FAF8C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806FAF90  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FAF94  28 00 00 00 */	cmplwi r0, 0
/* 806FAF98  40 82 00 5C */	bne lbl_806FAFF4
/* 806FAF9C  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FAFA0  3C 80 00 04 */	lis r4, 4
/* 806FAFA4  38 A0 00 28 */	li r5, 0x28
/* 806FAFA8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FAFAC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FAFB0  7D 89 03 A6 */	mtctr r12
/* 806FAFB4  4E 80 04 21 */	bctrl 
/* 806FAFB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FAFBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FAFC0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806FAFC4  38 80 00 02 */	li r4, 2
/* 806FAFC8  7F C5 F3 78 */	mr r5, r30
/* 806FAFCC  38 C1 00 30 */	addi r6, r1, 0x30
/* 806FAFD0  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 806FAFD4  39 00 00 00 */	li r8, 0
/* 806FAFD8  39 20 00 00 */	li r9, 0
/* 806FAFDC  4B 95 12 3C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806FAFE0  7F C3 F3 78 */	mr r3, r30
/* 806FAFE4  38 80 00 05 */	li r4, 5
/* 806FAFE8  38 A0 00 01 */	li r5, 1
/* 806FAFEC  4B FF FC 95 */	bl setActionMode__8daE_KK_cFii
/* 806FAFF0  48 00 02 D0 */	b lbl_806FB2C0
lbl_806FAFF4:
/* 806FAFF4  7F C3 F3 78 */	mr r3, r30
/* 806FAFF8  38 80 00 05 */	li r4, 5
/* 806FAFFC  38 A0 00 00 */	li r5, 0
/* 806FB000  4B FF FC 81 */	bl setActionMode__8daE_KK_cFii
/* 806FB004  48 00 02 BC */	b lbl_806FB2C0
lbl_806FB008:
/* 806FB008  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB00C  4B 98 94 EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FB010  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FB014  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806FB018  41 82 00 18 */	beq lbl_806FB030
/* 806FB01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FB020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FB024  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806FB028  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 806FB02C  41 82 00 18 */	beq lbl_806FB044
lbl_806FB030:
/* 806FB030  7F C3 F3 78 */	mr r3, r30
/* 806FB034  38 80 00 02 */	li r4, 2
/* 806FB038  4B FF FB 89 */	bl mCutTypeCheck__8daE_KK_cFi
/* 806FB03C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FB040  41 82 00 58 */	beq lbl_806FB098
lbl_806FB044:
/* 806FB044  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FB048  60 00 00 04 */	ori r0, r0, 4
/* 806FB04C  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FB050  38 00 00 00 */	li r0, 0
/* 806FB054  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806FB058  38 00 00 05 */	li r0, 5
/* 806FB05C  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 806FB060  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 806FB064  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FB068  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040006@ha */
/* 806FB06C  38 84 00 06 */	addi r4, r4, 0x0006 /* 0x00040006@l */
/* 806FB070  38 A0 00 20 */	li r5, 0x20
/* 806FB074  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FB078  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FB07C  7D 89 03 A6 */	mtctr r12
/* 806FB080  4E 80 04 21 */	bctrl 
/* 806FB084  7F C3 F3 78 */	mr r3, r30
/* 806FB088  38 80 00 0A */	li r4, 0xa
/* 806FB08C  38 A0 00 00 */	li r5, 0
/* 806FB090  4B FF FB F1 */	bl setActionMode__8daE_KK_cFii
/* 806FB094  48 00 02 2C */	b lbl_806FB2C0
lbl_806FB098:
/* 806FB098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FB09C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806FB0A0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806FB0A4  38 80 00 00 */	li r4, 0
/* 806FB0A8  90 81 00 08 */	stw r4, 8(r1)
/* 806FB0AC  38 00 FF FF */	li r0, -1
/* 806FB0B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FB0B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806FB0B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806FB0BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806FB0C0  38 80 00 00 */	li r4, 0
/* 806FB0C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085BA@ha */
/* 806FB0C8  38 A5 85 BA */	addi r5, r5, 0x85BA /* 0x000085BA@l */
/* 806FB0CC  38 C1 00 30 */	addi r6, r1, 0x30
/* 806FB0D0  38 E0 00 00 */	li r7, 0
/* 806FB0D4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806FB0D8  39 21 00 24 */	addi r9, r1, 0x24
/* 806FB0DC  39 40 00 FF */	li r10, 0xff
/* 806FB0E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FB0E4  4B 95 19 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806FB0E8  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FB0EC  28 00 00 00 */	cmplwi r0, 0
/* 806FB0F0  40 82 00 B8 */	bne lbl_806FB1A8
/* 806FB0F4  38 7E 0C 38 */	addi r3, r30, 0xc38
/* 806FB0F8  4B 98 C9 60 */	b at_power_check__FP11dCcU_AtInfo
/* 806FB0FC  88 1E 0C 57 */	lbz r0, 0xc57(r30)
/* 806FB100  7C 00 07 75 */	extsb. r0, r0
/* 806FB104  40 82 00 2C */	bne lbl_806FB130
/* 806FB108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FB10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FB110  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806FB114  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 806FB118  40 82 00 18 */	bne lbl_806FB130
/* 806FB11C  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB120  4B 98 93 D8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FB124  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FB128  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 806FB12C  41 82 00 2C */	beq lbl_806FB158
lbl_806FB130:
/* 806FB130  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FB134  80 9E 0C 38 */	lwz r4, 0xc38(r30)
/* 806FB138  38 A0 00 1F */	li r5, 0x1f
/* 806FB13C  38 C0 00 00 */	li r6, 0
/* 806FB140  4B 98 C3 D4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806FB144  7F C3 F3 78 */	mr r3, r30
/* 806FB148  38 80 00 07 */	li r4, 7
/* 806FB14C  38 A0 00 00 */	li r5, 0
/* 806FB150  4B FF FB 31 */	bl setActionMode__8daE_KK_cFii
/* 806FB154  48 00 01 6C */	b lbl_806FB2C0
lbl_806FB158:
/* 806FB158  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FB15C  3C 80 00 04 */	lis r4, 4
/* 806FB160  38 A0 00 07 */	li r5, 7
/* 806FB164  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FB168  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806FB16C  7D 89 03 A6 */	mtctr r12
/* 806FB170  4E 80 04 21 */	bctrl 
/* 806FB174  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806FB178  38 80 00 02 */	li r4, 2
/* 806FB17C  7F C5 F3 78 */	mr r5, r30
/* 806FB180  38 C1 00 30 */	addi r6, r1, 0x30
/* 806FB184  38 FE 04 E4 */	addi r7, r30, 0x4e4
/* 806FB188  39 00 00 00 */	li r8, 0
/* 806FB18C  39 20 00 00 */	li r9, 0
/* 806FB190  4B 95 10 88 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806FB194  7F C3 F3 78 */	mr r3, r30
/* 806FB198  38 80 00 06 */	li r4, 6
/* 806FB19C  38 A0 00 00 */	li r5, 0
/* 806FB1A0  4B FF FA E1 */	bl setActionMode__8daE_KK_cFii
/* 806FB1A4  48 00 01 1C */	b lbl_806FB2C0
lbl_806FB1A8:
/* 806FB1A8  7F C3 F3 78 */	mr r3, r30
/* 806FB1AC  38 9E 0C 38 */	addi r4, r30, 0xc38
/* 806FB1B0  4B 98 CA 54 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806FB1B4  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 806FB1B8  2C 00 00 01 */	cmpwi r0, 1
/* 806FB1BC  40 81 00 18 */	ble lbl_806FB1D4
/* 806FB1C0  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB1C4  4B 98 93 34 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FB1C8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FB1CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806FB1D0  41 82 00 80 */	beq lbl_806FB250
lbl_806FB1D4:
/* 806FB1D4  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FB1D8  28 00 00 00 */	cmplwi r0, 0
/* 806FB1DC  40 82 00 44 */	bne lbl_806FB220
/* 806FB1E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037E@ha */
/* 806FB1E4  38 03 03 7E */	addi r0, r3, 0x037E /* 0x0007037E@l */
/* 806FB1E8  90 01 00 20 */	stw r0, 0x20(r1)
/* 806FB1EC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806FB1F0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806FB1F4  80 63 00 00 */	lwz r3, 0(r3)
/* 806FB1F8  38 81 00 20 */	addi r4, r1, 0x20
/* 806FB1FC  38 BE 06 98 */	addi r5, r30, 0x698
/* 806FB200  38 C0 00 00 */	li r6, 0
/* 806FB204  38 E0 00 00 */	li r7, 0
/* 806FB208  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FB20C  FC 40 08 90 */	fmr f2, f1
/* 806FB210  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 806FB214  FC 80 18 90 */	fmr f4, f3
/* 806FB218  39 00 00 00 */	li r8, 0
/* 806FB21C  4B BB 07 68 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_806FB220:
/* 806FB220  7F C3 F3 78 */	mr r3, r30
/* 806FB224  38 80 00 0A */	li r4, 0xa
/* 806FB228  38 A0 00 00 */	li r5, 0
/* 806FB22C  4B FF FA 55 */	bl setActionMode__8daE_KK_cFii
/* 806FB230  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB234  81 9E 0A 00 */	lwz r12, 0xa00(r30)
/* 806FB238  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806FB23C  7D 89 03 A6 */	mtctr r12
/* 806FB240  4E 80 04 21 */	bctrl 
/* 806FB244  38 7E 09 A4 */	addi r3, r30, 0x9a4
/* 806FB248  4B 98 85 E8 */	b Move__10dCcD_GSttsFv
/* 806FB24C  48 00 00 88 */	b lbl_806FB2D4
lbl_806FB250:
/* 806FB250  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FB254  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FB258  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FB25C  7F C3 F3 78 */	mr r3, r30
/* 806FB260  38 80 00 07 */	li r4, 7
/* 806FB264  38 A0 00 01 */	li r5, 1
/* 806FB268  4B FF FA 19 */	bl setActionMode__8daE_KK_cFii
/* 806FB26C  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB270  4B 98 92 88 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806FB274  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806FB278  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806FB27C  41 82 00 44 */	beq lbl_806FB2C0
/* 806FB280  7F C3 F3 78 */	mr r3, r30
/* 806FB284  38 80 00 01 */	li r4, 1
/* 806FB288  4B FF F9 39 */	bl mCutTypeCheck__8daE_KK_cFi
/* 806FB28C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FB290  41 82 00 30 */	beq lbl_806FB2C0
/* 806FB294  38 00 00 08 */	li r0, 8
/* 806FB298  98 1E 06 78 */	stb r0, 0x678(r30)
/* 806FB29C  38 7E 09 C4 */	addi r3, r30, 0x9c4
/* 806FB2A0  81 9E 0A 00 */	lwz r12, 0xa00(r30)
/* 806FB2A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806FB2A8  7D 89 03 A6 */	mtctr r12
/* 806FB2AC  4E 80 04 21 */	bctrl 
/* 806FB2B0  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FB2B4  60 00 20 00 */	ori r0, r0, 0x2000
/* 806FB2B8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FB2BC  48 00 00 18 */	b lbl_806FB2D4
lbl_806FB2C0:
/* 806FB2C0  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FB2C4  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 806FB2C8  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FB2CC  38 7E 09 A4 */	addi r3, r30, 0x9a4
/* 806FB2D0  4B 98 85 60 */	b Move__10dCcD_GSttsFv
lbl_806FB2D4:
/* 806FB2D4  39 61 00 60 */	addi r11, r1, 0x60
/* 806FB2D8  4B C6 6F 44 */	b _restgpr_26
/* 806FB2DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806FB2E0  7C 08 03 A6 */	mtlr r0
/* 806FB2E4  38 21 00 60 */	addi r1, r1, 0x60
/* 806FB2E8  4E 80 00 20 */	blr 
