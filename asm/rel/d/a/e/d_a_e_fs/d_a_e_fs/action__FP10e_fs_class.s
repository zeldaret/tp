lbl_806BD0A8:
/* 806BD0A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806BD0AC  7C 08 02 A6 */	mflr r0
/* 806BD0B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806BD0B4  39 61 00 40 */	addi r11, r1, 0x40
/* 806BD0B8  4B CA 51 1D */	bl _savegpr_27
/* 806BD0BC  7C 7C 1B 78 */	mr r28, r3
/* 806BD0C0  3C 80 80 6C */	lis r4, lit_3917@ha /* 0x806BE48C@ha */
/* 806BD0C4  3B A4 E4 8C */	addi r29, r4, lit_3917@l /* 0x806BE48C@l */
/* 806BD0C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BD0CC  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BD0D0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BD0D4  4B 95 D6 3D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BD0D8  B0 7C 05 C6 */	sth r3, 0x5c6(r28)
/* 806BD0DC  7F 83 E3 78 */	mr r3, r28
/* 806BD0E0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 806BD0E4  4B 95 D8 81 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806BD0E8  D0 3C 05 C8 */	stfs f1, 0x5c8(r28)
/* 806BD0EC  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 806BD0F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BD0F4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806BD0F8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806BD0FC  38 81 00 0C */	addi r4, r1, 0xc
/* 806BD100  4B 95 C6 F9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806BD104  7C 7F 1B 78 */	mr r31, r3
/* 806BD108  3B 60 00 00 */	li r27, 0
/* 806BD10C  A8 1C 06 7E */	lha r0, 0x67e(r28)
/* 806BD110  28 00 00 0A */	cmplwi r0, 0xa
/* 806BD114  41 81 00 E0 */	bgt lbl_806BD1F4
/* 806BD118  3C 60 80 6C */	lis r3, lit_4546@ha /* 0x806BE5DC@ha */
/* 806BD11C  38 63 E5 DC */	addi r3, r3, lit_4546@l /* 0x806BE5DC@l */
/* 806BD120  54 00 10 3A */	slwi r0, r0, 2
/* 806BD124  7C 03 00 2E */	lwzx r0, r3, r0
/* 806BD128  7C 09 03 A6 */	mtctr r0
/* 806BD12C  4E 80 04 20 */	bctr 
lbl_806BD130:
/* 806BD130  7F 83 E3 78 */	mr r3, r28
/* 806BD134  4B FF EC C1 */	bl e_fs_appear__FP10e_fs_class
/* 806BD138  3B 60 00 01 */	li r27, 1
/* 806BD13C  48 00 00 B8 */	b lbl_806BD1F4
lbl_806BD140:
/* 806BD140  7F 83 E3 78 */	mr r3, r28
/* 806BD144  4B FF EF 65 */	bl e_fs_wait__FP10e_fs_class
/* 806BD148  3B 60 00 01 */	li r27, 1
/* 806BD14C  48 00 00 A8 */	b lbl_806BD1F4
lbl_806BD150:
/* 806BD150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BD154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BD158  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 806BD15C  28 00 00 00 */	cmplwi r0, 0
/* 806BD160  40 82 00 5C */	bne lbl_806BD1BC
/* 806BD164  7F 83 E3 78 */	mr r3, r28
/* 806BD168  4B FF F0 FD */	bl e_fs_move__FP10e_fs_class
/* 806BD16C  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 806BD170  90 01 00 08 */	stw r0, 8(r1)
/* 806BD174  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806BD178  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806BD17C  38 81 00 08 */	addi r4, r1, 8
/* 806BD180  4B 95 C6 79 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806BD184  88 1C 05 B4 */	lbz r0, 0x5b4(r28)
/* 806BD188  28 00 00 00 */	cmplwi r0, 0
/* 806BD18C  40 82 00 10 */	bne lbl_806BD19C
/* 806BD190  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806BD194  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806BD198  90 1C 04 9C */	stw r0, 0x49c(r28)
lbl_806BD19C:
/* 806BD19C  28 03 00 00 */	cmplwi r3, 0
/* 806BD1A0  41 82 00 1C */	beq lbl_806BD1BC
/* 806BD1A4  88 03 06 1A */	lbz r0, 0x61a(r3)
/* 806BD1A8  28 00 00 04 */	cmplwi r0, 4
/* 806BD1AC  40 82 00 10 */	bne lbl_806BD1BC
/* 806BD1B0  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806BD1B4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806BD1B8  90 1C 04 9C */	stw r0, 0x49c(r28)
lbl_806BD1BC:
/* 806BD1BC  3B 60 00 01 */	li r27, 1
/* 806BD1C0  48 00 00 34 */	b lbl_806BD1F4
lbl_806BD1C4:
/* 806BD1C4  7F 83 E3 78 */	mr r3, r28
/* 806BD1C8  4B FF F2 7D */	bl e_fs_attack__FP10e_fs_class
/* 806BD1CC  3B 60 00 01 */	li r27, 1
/* 806BD1D0  48 00 00 24 */	b lbl_806BD1F4
lbl_806BD1D4:
/* 806BD1D4  7F 83 E3 78 */	mr r3, r28
/* 806BD1D8  4B FF F5 79 */	bl e_fs_damage__FP10e_fs_class
/* 806BD1DC  48 00 00 18 */	b lbl_806BD1F4
lbl_806BD1E0:
/* 806BD1E0  7F 83 E3 78 */	mr r3, r28
/* 806BD1E4  4B FF F6 35 */	bl e_fs_end__FP10e_fs_class
/* 806BD1E8  48 00 00 0C */	b lbl_806BD1F4
lbl_806BD1EC:
/* 806BD1EC  7F 83 E3 78 */	mr r3, r28
/* 806BD1F0  4B FF FC 6D */	bl e_fs_demowait__FP10e_fs_class
lbl_806BD1F4:
/* 806BD1F4  7F 60 07 75 */	extsb. r0, r27
/* 806BD1F8  41 82 00 14 */	beq lbl_806BD20C
/* 806BD1FC  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 806BD200  38 80 00 01 */	li r4, 1
/* 806BD204  4B C0 49 79 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 806BD208  48 00 00 10 */	b lbl_806BD218
lbl_806BD20C:
/* 806BD20C  38 7C 05 D4 */	addi r3, r28, 0x5d4
/* 806BD210  38 80 00 00 */	li r4, 0
/* 806BD214  4B C0 49 69 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_806BD218:
/* 806BD218  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806BD21C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806BD220  80 63 00 00 */	lwz r3, 0(r3)
/* 806BD224  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 806BD228  4B 94 F1 B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 806BD22C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806BD230  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806BD234  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806BD238  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 806BD23C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806BD240  38 61 00 1C */	addi r3, r1, 0x1c
/* 806BD244  38 81 00 10 */	addi r4, r1, 0x10
/* 806BD248  4B BB 3C A5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806BD24C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806BD250  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 806BD254  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806BD258  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 806BD25C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806BD260  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 806BD264  7C 65 1B 78 */	mr r5, r3
/* 806BD268  4B C8 9E 29 */	bl PSVECAdd
/* 806BD26C  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 806BD270  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 806BD274  EC 01 00 2A */	fadds f0, f1, f0
/* 806BD278  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 806BD27C  C0 1D 00 A0 */	lfs f0, 0xa0(r29)
/* 806BD280  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 806BD284  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 806BD288  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 806BD28C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BD290  40 80 00 08 */	bge lbl_806BD298
/* 806BD294  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_806BD298:
/* 806BD298  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 806BD29C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 806BD2A0  80 1C 07 00 */	lwz r0, 0x700(r28)
/* 806BD2A4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 806BD2A8  41 82 00 24 */	beq lbl_806BD2CC
/* 806BD2AC  A8 1C 06 7E */	lha r0, 0x67e(r28)
/* 806BD2B0  2C 00 00 00 */	cmpwi r0, 0
/* 806BD2B4  40 82 00 10 */	bne lbl_806BD2C4
/* 806BD2B8  A8 1C 06 80 */	lha r0, 0x680(r28)
/* 806BD2BC  2C 00 00 02 */	cmpwi r0, 2
/* 806BD2C0  41 80 00 0C */	blt lbl_806BD2CC
lbl_806BD2C4:
/* 806BD2C4  C0 1C 08 A0 */	lfs f0, 0x8a0(r28)
/* 806BD2C8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_806BD2CC:
/* 806BD2CC  28 1F 00 00 */	cmplwi r31, 0
/* 806BD2D0  41 82 00 18 */	beq lbl_806BD2E8
/* 806BD2D4  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 806BD2D8  28 00 00 00 */	cmplwi r0, 0
/* 806BD2DC  41 82 00 0C */	beq lbl_806BD2E8
/* 806BD2E0  38 00 FF F6 */	li r0, -10
/* 806BD2E4  B0 1C 05 62 */	sth r0, 0x562(r28)
lbl_806BD2E8:
/* 806BD2E8  38 7C 0A 24 */	addi r3, r28, 0xa24
/* 806BD2EC  4B 9C 6F D5 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 806BD2F0  28 03 00 00 */	cmplwi r3, 0
/* 806BD2F4  41 82 00 5C */	beq lbl_806BD350
/* 806BD2F8  38 60 00 00 */	li r3, 0
/* 806BD2FC  4B 96 F6 81 */	bl getLayerNo__14dComIfG_play_cFi
/* 806BD300  2C 03 00 00 */	cmpwi r3, 0
/* 806BD304  40 82 00 4C */	bne lbl_806BD350
/* 806BD308  3C 60 80 6C */	lis r3, struct_806BE79C+0x2@ha /* 0x806BE79E@ha */
/* 806BD30C  38 83 E7 9E */	addi r4, r3, struct_806BE79C+0x2@l /* 0x806BE79E@l */
/* 806BD310  A8 64 00 00 */	lha r3, 0(r4)
/* 806BD314  38 03 00 01 */	addi r0, r3, 1
/* 806BD318  B0 04 00 00 */	sth r0, 0(r4)
/* 806BD31C  7C 00 07 34 */	extsh r0, r0
/* 806BD320  2C 00 00 03 */	cmpwi r0, 3
/* 806BD324  41 80 00 2C */	blt lbl_806BD350
/* 806BD328  38 60 00 0B */	li r3, 0xb
/* 806BD32C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806BD330  7C 04 07 74 */	extsb r4, r0
/* 806BD334  4B 97 06 FD */	bl dComIfGs_isZoneSwitch__Fii
/* 806BD338  2C 03 00 00 */	cmpwi r3, 0
/* 806BD33C  40 82 00 14 */	bne lbl_806BD350
/* 806BD340  38 60 00 0B */	li r3, 0xb
/* 806BD344  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 806BD348  7C 04 07 74 */	extsb r4, r0
/* 806BD34C  4B 97 06 01 */	bl dComIfGs_onZoneSwitch__Fii
lbl_806BD350:
/* 806BD350  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 806BD354  4B FF FA 89 */	bl checkViewArea__FP4cXyz
/* 806BD358  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806BD35C  40 82 00 6C */	bne lbl_806BD3C8
/* 806BD360  28 1F 00 00 */	cmplwi r31, 0
/* 806BD364  41 82 00 64 */	beq lbl_806BD3C8
/* 806BD368  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 806BD36C  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806BE7B0@ha */
/* 806BD370  38 63 E7 B0 */	addi r3, r3, l_HIO@l /* 0x806BE7B0@l */
/* 806BD374  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BD378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BD37C  40 81 00 1C */	ble lbl_806BD398
/* 806BD380  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 806BD384  28 00 00 04 */	cmplwi r0, 4
/* 806BD388  41 82 00 10 */	beq lbl_806BD398
/* 806BD38C  7F 83 E3 78 */	mr r3, r28
/* 806BD390  4B 95 C8 ED */	bl fopAcM_delete__FP10fopAc_ac_c
/* 806BD394  48 00 00 34 */	b lbl_806BD3C8
lbl_806BD398:
/* 806BD398  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 806BD39C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806BD3A0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 806BD3A4  EC 21 00 28 */	fsubs f1, f1, f0
/* 806BD3A8  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 806BD3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BD3B0  40 81 00 18 */	ble lbl_806BD3C8
/* 806BD3B4  88 1F 06 1A */	lbz r0, 0x61a(r31)
/* 806BD3B8  28 00 00 04 */	cmplwi r0, 4
/* 806BD3BC  41 82 00 0C */	beq lbl_806BD3C8
/* 806BD3C0  7F 83 E3 78 */	mr r3, r28
/* 806BD3C4  4B 95 C8 B9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806BD3C8:
/* 806BD3C8  39 61 00 40 */	addi r11, r1, 0x40
/* 806BD3CC  4B CA 4E 55 */	bl _restgpr_27
/* 806BD3D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806BD3D4  7C 08 03 A6 */	mtlr r0
/* 806BD3D8  38 21 00 40 */	addi r1, r1, 0x40
/* 806BD3DC  4E 80 00 20 */	blr 
