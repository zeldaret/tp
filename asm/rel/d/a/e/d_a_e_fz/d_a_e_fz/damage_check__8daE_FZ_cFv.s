lbl_806BED34:
/* 806BED34  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806BED38  7C 08 02 A6 */	mflr r0
/* 806BED3C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806BED40  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806BED44  4B CA 34 94 */	b _savegpr_28
/* 806BED48  7C 7D 1B 78 */	mr r29, r3
/* 806BED4C  A8 03 05 62 */	lha r0, 0x562(r3)
/* 806BED50  2C 00 00 01 */	cmpwi r0, 1
/* 806BED54  40 81 06 D8 */	ble lbl_806BF42C
/* 806BED58  3C 80 80 6C */	lis r4, l_HIO@ha
/* 806BED5C  3B E4 1B B0 */	addi r31, r4, l_HIO@l
/* 806BED60  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806BED64  D0 1D 04 EC */	stfs f0, 0x4ec(r29)
/* 806BED68  D0 1D 04 F0 */	stfs f0, 0x4f0(r29)
/* 806BED6C  D0 1D 04 F4 */	stfs f0, 0x4f4(r29)
/* 806BED70  38 9D 05 C0 */	addi r4, r29, 0x5c0
/* 806BED74  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806BED78  38 DD 04 EC */	addi r6, r29, 0x4ec
/* 806BED7C  48 00 27 59 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806BED80  88 1D 07 12 */	lbz r0, 0x712(r29)
/* 806BED84  28 00 00 00 */	cmplwi r0, 0
/* 806BED88  40 82 06 A4 */	bne lbl_806BF42C
/* 806BED8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BED90  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 806BED94  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806BED98  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806BED9C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806BEDA0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806BEDA4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806BEDA8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806BEDAC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806BEDB0  38 7D 09 60 */	addi r3, r29, 0x960
/* 806BEDB4  4B 9C 4A 7C */	b Move__10dCcD_GSttsFv
/* 806BEDB8  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806BEDBC  28 00 00 03 */	cmplwi r0, 3
/* 806BEDC0  40 82 00 44 */	bne lbl_806BEE04
/* 806BEDC4  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEDC8  4B 9C 56 98 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806BEDCC  28 03 00 00 */	cmplwi r3, 0
/* 806BEDD0  41 82 06 5C */	beq lbl_806BF42C
/* 806BEDD4  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEDD8  4B 9C 57 20 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEDDC  90 7D 0B F0 */	stw r3, 0xbf0(r29)
/* 806BEDE0  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEDE4  4B 9C 57 14 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEDE8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEDEC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806BEDF0  41 82 06 3C */	beq lbl_806BF42C
/* 806BEDF4  7F A3 EB 78 */	mr r3, r29
/* 806BEDF8  38 80 00 00 */	li r4, 0
/* 806BEDFC  4B FF FE 0D */	bl deadnextSet__8daE_FZ_cFb
/* 806BEE00  48 00 06 2C */	b lbl_806BF42C
lbl_806BEE04:
/* 806BEE04  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEE08  4B 9C 56 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 806BEE0C  28 03 00 00 */	cmplwi r3, 0
/* 806BEE10  41 82 04 18 */	beq lbl_806BF228
/* 806BEE14  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEE18  4B 9C 56 E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEE1C  90 7D 0B F0 */	stw r3, 0xbf0(r29)
/* 806BEE20  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEE24  4B 9C 56 D4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEE28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEE2C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806BEE30  40 82 00 18 */	bne lbl_806BEE48
/* 806BEE34  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEE38  4B 9C 56 C0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEE3C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEE40  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 806BEE44  41 82 00 4C */	beq lbl_806BEE90
lbl_806BEE48:
/* 806BEE48  7F A3 EB 78 */	mr r3, r29
/* 806BEE4C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BEE50  4B 95 B8 C0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BEE54  3C 63 00 01 */	addis r3, r3, 1
/* 806BEE58  38 03 80 00 */	addi r0, r3, -32768
/* 806BEE5C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806BEE60  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BEE64  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BEE68  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806BEE6C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BEE70  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BEE74  7F A3 EB 78 */	mr r3, r29
/* 806BEE78  4B FF FD 29 */	bl mBoundSoundset__8daE_FZ_cFv
/* 806BEE7C  7F A3 EB 78 */	mr r3, r29
/* 806BEE80  38 80 00 03 */	li r4, 3
/* 806BEE84  38 A0 00 01 */	li r5, 1
/* 806BEE88  4B FF FC 71 */	bl setActionMode__8daE_FZ_cFii
/* 806BEE8C  48 00 05 A0 */	b lbl_806BF42C
lbl_806BEE90:
/* 806BEE90  38 61 00 48 */	addi r3, r1, 0x48
/* 806BEE94  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806BEE98  3B 9D 0A 54 */	addi r28, r29, 0xa54
/* 806BEE9C  7F 85 E3 78 */	mr r5, r28
/* 806BEEA0  4B BA 7C 94 */	b __mi__4cXyzCFRC3Vec
/* 806BEEA4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806BEEA8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 806BEEAC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806BEEB0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 806BEEB4  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806BEEB8  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 806BEEBC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 806BEEC0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 806BEEC4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 806BEEC8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 806BEECC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 806BEED0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 806BEED4  38 00 00 00 */	li r0, 0
/* 806BEED8  B0 01 00 28 */	sth r0, 0x28(r1)
/* 806BEEDC  38 61 00 6C */	addi r3, r1, 0x6c
/* 806BEEE0  4B BA 82 48 */	b atan2sX_Z__4cXyzCFv
/* 806BEEE4  B0 61 00 2A */	sth r3, 0x2a(r1)
/* 806BEEE8  38 00 00 00 */	li r0, 0
/* 806BEEEC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806BEEF0  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEEF4  4B 9C 56 04 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEEF8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEEFC  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 806BEF00  40 82 00 18 */	bne lbl_806BEF18
/* 806BEF04  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEF08  4B 9C 55 F0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEF0C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEF10  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806BEF14  41 82 00 74 */	beq lbl_806BEF88
lbl_806BEF18:
/* 806BEF18  7F A3 EB 78 */	mr r3, r29
/* 806BEF1C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BEF20  4B 95 B7 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BEF24  3C 63 00 01 */	addis r3, r3, 1
/* 806BEF28  38 03 80 00 */	addi r0, r3, -32768
/* 806BEF2C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806BEF30  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BEF34  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BEF38  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806BEF3C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BEF40  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BEF44  7F A3 EB 78 */	mr r3, r29
/* 806BEF48  4B FF FC 59 */	bl mBoundSoundset__8daE_FZ_cFv
/* 806BEF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BEF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806BEF54  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806BEF58  38 80 00 02 */	li r4, 2
/* 806BEF5C  7F A5 EB 78 */	mr r5, r29
/* 806BEF60  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BEF64  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BEF68  39 00 00 00 */	li r8, 0
/* 806BEF6C  39 20 00 00 */	li r9, 0
/* 806BEF70  4B 98 D2 A8 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806BEF74  7F A3 EB 78 */	mr r3, r29
/* 806BEF78  38 80 00 03 */	li r4, 3
/* 806BEF7C  38 A0 00 01 */	li r5, 1
/* 806BEF80  4B FF FB 79 */	bl setActionMode__8daE_FZ_cFii
/* 806BEF84  48 00 04 A8 */	b lbl_806BF42C
lbl_806BEF88:
/* 806BEF88  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 806BEF8C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806BEF90  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 806BEF94  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 806BEF98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806BEF9C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806BEFA0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BEFA4  38 80 00 00 */	li r4, 0
/* 806BEFA8  90 81 00 08 */	stw r4, 8(r1)
/* 806BEFAC  38 00 FF FF */	li r0, -1
/* 806BEFB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BEFB4  90 81 00 10 */	stw r4, 0x10(r1)
/* 806BEFB8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806BEFBC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806BEFC0  38 80 00 00 */	li r4, 0
/* 806BEFC4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000085BA@ha */
/* 806BEFC8  38 A5 85 BA */	addi r5, r5, 0x85BA /* 0x000085BA@l */
/* 806BEFCC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 806BEFD0  38 E0 00 00 */	li r7, 0
/* 806BEFD4  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 806BEFD8  39 21 00 54 */	addi r9, r1, 0x54
/* 806BEFDC  39 40 00 FF */	li r10, 0xff
/* 806BEFE0  3D 60 80 6C */	lis r11, lit_3805@ha
/* 806BEFE4  C0 2B 19 40 */	lfs f1, lit_3805@l(r11)
/* 806BEFE8  4B 98 DA A8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806BEFEC  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BEFF0  4B 9C 55 08 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BEFF4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BEFF8  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 806BEFFC  41 82 00 E4 */	beq lbl_806BF0E0
/* 806BF000  A8 7D 05 62 */	lha r3, 0x562(r29)
/* 806BF004  38 03 FF EC */	addi r0, r3, -20
/* 806BF008  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806BF00C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806BF010  2C 00 00 01 */	cmpwi r0, 1
/* 806BF014  40 81 00 9C */	ble lbl_806BF0B0
/* 806BF018  7F A3 EB 78 */	mr r3, r29
/* 806BF01C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BF020  4B 95 B6 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BF024  3C 63 00 01 */	addis r3, r3, 1
/* 806BF028  38 03 80 00 */	addi r0, r3, -32768
/* 806BF02C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806BF030  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF034  3B C3 1B B0 */	addi r30, r3, l_HIO@l
/* 806BF038  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806BF03C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BF040  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BF044  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070321@ha */
/* 806BF048  38 03 03 21 */	addi r0, r3, 0x0321 /* 0x00070321@l */
/* 806BF04C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BF050  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806BF054  38 81 00 24 */	addi r4, r1, 0x24
/* 806BF058  38 A0 00 00 */	li r5, 0
/* 806BF05C  38 C0 FF FF */	li r6, -1
/* 806BF060  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 806BF064  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BF068  7D 89 03 A6 */	mtctr r12
/* 806BF06C  4E 80 04 21 */	bctrl 
/* 806BF070  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806BF074  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BF078  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BF07C  7F A3 EB 78 */	mr r3, r29
/* 806BF080  38 80 00 03 */	li r4, 3
/* 806BF084  38 A0 00 01 */	li r5, 1
/* 806BF088  4B FF FA 71 */	bl setActionMode__8daE_FZ_cFii
/* 806BF08C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BF090  38 80 00 03 */	li r4, 3
/* 806BF094  7F A5 EB 78 */	mr r5, r29
/* 806BF098  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BF09C  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BF0A0  39 00 00 00 */	li r8, 0
/* 806BF0A4  39 20 00 00 */	li r9, 0
/* 806BF0A8  4B 98 D1 70 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806BF0AC  48 00 03 80 */	b lbl_806BF42C
lbl_806BF0B0:
/* 806BF0B0  7F A3 EB 78 */	mr r3, r29
/* 806BF0B4  38 80 00 01 */	li r4, 1
/* 806BF0B8  4B FF FB 51 */	bl deadnextSet__8daE_FZ_cFb
/* 806BF0BC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BF0C0  38 80 00 01 */	li r4, 1
/* 806BF0C4  7F A5 EB 78 */	mr r5, r29
/* 806BF0C8  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BF0CC  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BF0D0  39 00 00 00 */	li r8, 0
/* 806BF0D4  39 20 00 00 */	li r9, 0
/* 806BF0D8  4B 98 D1 40 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806BF0DC  48 00 03 50 */	b lbl_806BF42C
lbl_806BF0E0:
/* 806BF0E0  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BF0E4  4B 9C 54 14 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 806BF0E8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 806BF0EC  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 806BF0F0  41 82 00 48 */	beq lbl_806BF138
/* 806BF0F4  7F A3 EB 78 */	mr r3, r29
/* 806BF0F8  38 80 00 00 */	li r4, 0
/* 806BF0FC  4B FF FB 0D */	bl deadnextSet__8daE_FZ_cFb
/* 806BF100  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BF104  81 9D 09 BC */	lwz r12, 0x9bc(r29)
/* 806BF108  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806BF10C  7D 89 03 A6 */	mtctr r12
/* 806BF110  4E 80 04 21 */	bctrl 
/* 806BF114  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BF118  38 80 00 03 */	li r4, 3
/* 806BF11C  7F A5 EB 78 */	mr r5, r29
/* 806BF120  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BF124  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BF128  39 00 00 00 */	li r8, 0
/* 806BF12C  39 20 00 00 */	li r9, 0
/* 806BF130  4B 98 D0 E8 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806BF134  48 00 02 F8 */	b lbl_806BF42C
lbl_806BF138:
/* 806BF138  7F A3 EB 78 */	mr r3, r29
/* 806BF13C  38 9D 0B F0 */	addi r4, r29, 0xbf0
/* 806BF140  4B 9C 8A C4 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 806BF144  88 1D 0C 0F */	lbz r0, 0xc0f(r29)
/* 806BF148  7C 00 07 75 */	extsb. r0, r0
/* 806BF14C  40 82 00 28 */	bne lbl_806BF174
/* 806BF150  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BF154  38 80 00 01 */	li r4, 1
/* 806BF158  7F A5 EB 78 */	mr r5, r29
/* 806BF15C  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BF160  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BF164  39 00 00 00 */	li r8, 0
/* 806BF168  39 20 00 00 */	li r9, 0
/* 806BF16C  4B 98 D0 AC */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806BF170  48 00 00 24 */	b lbl_806BF194
lbl_806BF174:
/* 806BF174  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806BF178  38 80 00 03 */	li r4, 3
/* 806BF17C  7F A5 EB 78 */	mr r5, r29
/* 806BF180  38 C1 00 60 */	addi r6, r1, 0x60
/* 806BF184  38 E1 00 28 */	addi r7, r1, 0x28
/* 806BF188  39 00 00 00 */	li r8, 0
/* 806BF18C  39 20 00 00 */	li r9, 0
/* 806BF190  4B 98 D0 88 */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_806BF194:
/* 806BF194  A8 1D 0B FE */	lha r0, 0xbfe(r29)
/* 806BF198  B0 1D 07 08 */	sth r0, 0x708(r29)
/* 806BF19C  7F A3 EB 78 */	mr r3, r29
/* 806BF1A0  4B FF F9 65 */	bl setReflectAngle__8daE_FZ_cFv
/* 806BF1A4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 806BF1A8  38 03 80 00 */	addi r0, r3, -32768
/* 806BF1AC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806BF1B0  38 00 00 0A */	li r0, 0xa
/* 806BF1B4  98 1D 07 12 */	stb r0, 0x712(r29)
/* 806BF1B8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806BF1BC  2C 00 00 01 */	cmpwi r0, 1
/* 806BF1C0  40 81 00 58 */	ble lbl_806BF218
/* 806BF1C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070321@ha */
/* 806BF1C8  38 03 03 21 */	addi r0, r3, 0x0321 /* 0x00070321@l */
/* 806BF1CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806BF1D0  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806BF1D4  38 81 00 20 */	addi r4, r1, 0x20
/* 806BF1D8  38 A0 00 00 */	li r5, 0
/* 806BF1DC  38 C0 FF FF */	li r6, -1
/* 806BF1E0  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 806BF1E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BF1E8  7D 89 03 A6 */	mtctr r12
/* 806BF1EC  4E 80 04 21 */	bctrl 
/* 806BF1F0  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF1F4  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BF1F8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806BF1FC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BF200  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BF204  7F A3 EB 78 */	mr r3, r29
/* 806BF208  38 80 00 03 */	li r4, 3
/* 806BF20C  38 A0 00 01 */	li r5, 1
/* 806BF210  4B FF F8 E9 */	bl setActionMode__8daE_FZ_cFii
/* 806BF214  48 00 02 18 */	b lbl_806BF42C
lbl_806BF218:
/* 806BF218  7F A3 EB 78 */	mr r3, r29
/* 806BF21C  38 80 00 01 */	li r4, 1
/* 806BF220  4B FF F9 E9 */	bl deadnextSet__8daE_FZ_cFb
/* 806BF224  48 00 02 08 */	b lbl_806BF42C
lbl_806BF228:
/* 806BF228  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 806BF22C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806BF230  41 82 01 30 */	beq lbl_806BF360
/* 806BF234  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BF238  4B 9C 54 20 */	b ChkCoHit__12dCcD_GObjInfFv
/* 806BF23C  28 03 00 00 */	cmplwi r3, 0
/* 806BF240  41 82 01 20 */	beq lbl_806BF360
/* 806BF244  3B 9D 0A 68 */	addi r28, r29, 0xa68
/* 806BF248  7F 83 E3 78 */	mr r3, r28
/* 806BF24C  4B 9C 44 3C */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806BF250  7C 7F 1B 78 */	mr r31, r3
/* 806BF254  4B 95 9A 8C */	b fopAc_IsActor__FPv
/* 806BF258  2C 03 00 00 */	cmpwi r3, 0
/* 806BF25C  41 82 01 04 */	beq lbl_806BF360
/* 806BF260  A8 1F 00 08 */	lha r0, 8(r31)
/* 806BF264  2C 00 01 DE */	cmpwi r0, 0x1de
/* 806BF268  40 82 00 F8 */	bne lbl_806BF360
/* 806BF26C  7F 83 E3 78 */	mr r3, r28
/* 806BF270  4B 9C 44 18 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806BF274  7C 65 1B 78 */	mr r5, r3
/* 806BF278  38 61 00 3C */	addi r3, r1, 0x3c
/* 806BF27C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806BF280  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 806BF284  4B BA 78 B0 */	b __mi__4cXyzCFRC3Vec
/* 806BF288  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806BF28C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806BF290  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806BF294  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806BF298  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806BF29C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806BF2A0  38 7D 09 80 */	addi r3, r29, 0x980
/* 806BF2A4  81 9D 09 BC */	lwz r12, 0x9bc(r29)
/* 806BF2A8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 806BF2AC  7D 89 03 A6 */	mtctr r12
/* 806BF2B0  4E 80 04 21 */	bctrl 
/* 806BF2B4  C0 5F 05 2C */	lfs f2, 0x52c(r31)
/* 806BF2B8  3C 60 80 6C */	lis r3, lit_4109@ha
/* 806BF2BC  C0 23 19 94 */	lfs f1, lit_4109@l(r3)
/* 806BF2C0  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF2C4  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BF2C8  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806BF2CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 806BF2D0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806BF2D4  41 81 00 10 */	bgt lbl_806BF2E4
/* 806BF2D8  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806BF2DC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806BF2E0  40 81 00 80 */	ble lbl_806BF360
lbl_806BF2E4:
/* 806BF2E4  38 61 00 30 */	addi r3, r1, 0x30
/* 806BF2E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806BF2EC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806BF2F0  4B BA 78 44 */	b __mi__4cXyzCFRC3Vec
/* 806BF2F4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806BF2F8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806BF2FC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806BF300  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806BF304  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806BF308  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806BF30C  38 61 00 78 */	addi r3, r1, 0x78
/* 806BF310  4B BA 7E 18 */	b atan2sX_Z__4cXyzCFv
/* 806BF314  B0 7D 07 08 */	sth r3, 0x708(r29)
/* 806BF318  7F A3 EB 78 */	mr r3, r29
/* 806BF31C  4B FF F7 E9 */	bl setReflectAngle__8daE_FZ_cFv
/* 806BF320  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 806BF324  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 806BF328  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806BF32C  40 81 00 10 */	ble lbl_806BF33C
/* 806BF330  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806BF334  D0 1F 06 FC */	stfs f0, 0x6fc(r31)
/* 806BF338  48 00 00 0C */	b lbl_806BF344
lbl_806BF33C:
/* 806BF33C  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806BF340  D0 3D 06 FC */	stfs f1, 0x6fc(r29)
lbl_806BF344:
/* 806BF344  7F A3 EB 78 */	mr r3, r29
/* 806BF348  4B FF F8 59 */	bl mBoundSoundset__8daE_FZ_cFv
/* 806BF34C  7F A3 EB 78 */	mr r3, r29
/* 806BF350  38 80 00 03 */	li r4, 3
/* 806BF354  38 A0 00 05 */	li r5, 5
/* 806BF358  4B FF F7 A1 */	bl setActionMode__8daE_FZ_cFii
/* 806BF35C  48 00 00 D0 */	b lbl_806BF42C
lbl_806BF360:
/* 806BF360  38 7D 0A B8 */	addi r3, r29, 0xab8
/* 806BF364  4B 9C 4F 5C */	b ChkAtHit__12dCcD_GObjInfFv
/* 806BF368  28 03 00 00 */	cmplwi r3, 0
/* 806BF36C  41 82 00 C0 */	beq lbl_806BF42C
/* 806BF370  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 806BF374  38 7D 0B 10 */	addi r3, r29, 0xb10
/* 806BF378  4B 9C 43 10 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 806BF37C  7C 7F 1B 78 */	mr r31, r3
/* 806BF380  7F A3 EB 78 */	mr r3, r29
/* 806BF384  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BF388  4B 95 B3 88 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BF38C  3C 63 00 01 */	addis r3, r3, 1
/* 806BF390  38 03 80 00 */	addi r0, r3, -32768
/* 806BF394  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 806BF398  7C 1C F8 40 */	cmplw r28, r31
/* 806BF39C  41 82 00 1C */	beq lbl_806BF3B8
/* 806BF3A0  38 7D 0A B8 */	addi r3, r29, 0xab8
/* 806BF3A4  81 9D 0A F4 */	lwz r12, 0xaf4(r29)
/* 806BF3A8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806BF3AC  7D 89 03 A6 */	mtctr r12
/* 806BF3B0  4E 80 04 21 */	bctrl 
/* 806BF3B4  48 00 00 78 */	b lbl_806BF42C
lbl_806BF3B8:
/* 806BF3B8  80 1D 0B 14 */	lwz r0, 0xb14(r29)
/* 806BF3BC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BF3C0  41 82 00 2C */	beq lbl_806BF3EC
/* 806BF3C4  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806BF3C8  38 63 1B B0 */	addi r3, r3, l_HIO@l
/* 806BF3CC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806BF3D0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 806BF3D4  D0 1D 06 FC */	stfs f0, 0x6fc(r29)
/* 806BF3D8  7F A3 EB 78 */	mr r3, r29
/* 806BF3DC  38 80 00 03 */	li r4, 3
/* 806BF3E0  38 A0 00 01 */	li r5, 1
/* 806BF3E4  4B FF F7 15 */	bl setActionMode__8daE_FZ_cFii
/* 806BF3E8  48 00 00 28 */	b lbl_806BF410
lbl_806BF3EC:
/* 806BF3EC  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 806BF3F0  2C 00 00 03 */	cmpwi r0, 3
/* 806BF3F4  41 82 00 1C */	beq lbl_806BF410
/* 806BF3F8  38 00 00 0A */	li r0, 0xa
/* 806BF3FC  98 1D 07 12 */	stb r0, 0x712(r29)
/* 806BF400  7F A3 EB 78 */	mr r3, r29
/* 806BF404  38 80 00 03 */	li r4, 3
/* 806BF408  38 A0 00 03 */	li r5, 3
/* 806BF40C  4B FF F6 ED */	bl setActionMode__8daE_FZ_cFii
lbl_806BF410:
/* 806BF410  7F A3 EB 78 */	mr r3, r29
/* 806BF414  4B FF F7 8D */	bl mBoundSoundset__8daE_FZ_cFv
/* 806BF418  38 7D 0A B8 */	addi r3, r29, 0xab8
/* 806BF41C  81 9D 0A F4 */	lwz r12, 0xaf4(r29)
/* 806BF420  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 806BF424  7D 89 03 A6 */	mtctr r12
/* 806BF428  4E 80 04 21 */	bctrl 
lbl_806BF42C:
/* 806BF42C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806BF430  4B CA 2D F4 */	b _restgpr_28
/* 806BF434  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806BF438  7C 08 03 A6 */	mtlr r0
/* 806BF43C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806BF440  4E 80 00 20 */	blr 
