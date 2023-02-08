lbl_804D8EB8:
/* 804D8EB8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D8EBC  7C 08 02 A6 */	mflr r0
/* 804D8EC0  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D8EC4  39 61 00 40 */	addi r11, r1, 0x40
/* 804D8EC8  4B E8 93 0D */	bl _savegpr_27
/* 804D8ECC  7C 7E 1B 78 */	mr r30, r3
/* 804D8ED0  3C 80 80 4E */	lis r4, lit_3942@ha /* 0x804D9E64@ha */
/* 804D8ED4  3B E4 9E 64 */	addi r31, r4, lit_3942@l /* 0x804D9E64@l */
/* 804D8ED8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 804D8EDC  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 804D8EE0  80 03 08 DC */	lwz r0, 0x8dc(r3)
/* 804D8EE4  60 00 00 01 */	ori r0, r0, 1
/* 804D8EE8  90 03 08 DC */	stw r0, 0x8dc(r3)
/* 804D8EEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D8EF0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D8EF4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 804D8EF8  38 04 04 D0 */	addi r0, r4, 0x4d0
/* 804D8EFC  90 03 05 D4 */	stw r0, 0x5d4(r3)
/* 804D8F00  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 804D8F04  4B B4 18 DD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804D8F08  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 804D8F0C  7F C3 F3 78 */	mr r3, r30
/* 804D8F10  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 804D8F14  4B B4 1A 51 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804D8F18  D0 3E 05 E0 */	stfs f1, 0x5e0(r30)
/* 804D8F1C  7F C3 F3 78 */	mr r3, r30
/* 804D8F20  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 804D8F24  4B B4 17 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804D8F28  B0 7E 05 D8 */	sth r3, 0x5d8(r30)
/* 804D8F2C  3B A0 00 00 */	li r29, 0
/* 804D8F30  3B 80 00 00 */	li r28, 0
/* 804D8F34  3B 60 00 00 */	li r27, 0
/* 804D8F38  7F C3 F3 78 */	mr r3, r30
/* 804D8F3C  4B FF E2 D5 */	bl pl_check__FP8bd_class
/* 804D8F40  A8 1E 06 1A */	lha r0, 0x61a(r30)
/* 804D8F44  28 00 00 07 */	cmplwi r0, 7
/* 804D8F48  41 81 00 9C */	bgt lbl_804D8FE4
/* 804D8F4C  3C 60 80 4E */	lis r3, lit_4761@ha /* 0x804DA214@ha */
/* 804D8F50  38 63 A2 14 */	addi r3, r3, lit_4761@l /* 0x804DA214@l */
/* 804D8F54  54 00 10 3A */	slwi r0, r0, 2
/* 804D8F58  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D8F5C  7C 09 03 A6 */	mtctr r0
/* 804D8F60  4E 80 04 20 */	bctr 
lbl_804D8F64:
/* 804D8F64  7F C3 F3 78 */	mr r3, r30
/* 804D8F68  4B FF E9 95 */	bl bd_ground__FP8bd_class
/* 804D8F6C  3B 80 00 01 */	li r28, 1
/* 804D8F70  3B A0 00 01 */	li r29, 1
/* 804D8F74  48 00 00 70 */	b lbl_804D8FE4
lbl_804D8F78:
/* 804D8F78  7F C3 F3 78 */	mr r3, r30
/* 804D8F7C  4B FF FE A5 */	bl bd_drop__FP8bd_class
/* 804D8F80  3B 80 00 01 */	li r28, 1
/* 804D8F84  3B A0 00 01 */	li r29, 1
/* 804D8F88  48 00 00 5C */	b lbl_804D8FE4
lbl_804D8F8C:
/* 804D8F8C  7F C3 F3 78 */	mr r3, r30
/* 804D8F90  4B FF EE 65 */	bl bd_fly__FP8bd_class
/* 804D8F94  48 00 00 50 */	b lbl_804D8FE4
lbl_804D8F98:
/* 804D8F98  7F C3 F3 78 */	mr r3, r30
/* 804D8F9C  4B FF F3 49 */	bl bd_landing__FP8bd_class
/* 804D8FA0  48 00 00 44 */	b lbl_804D8FE4
lbl_804D8FA4:
/* 804D8FA4  7F C3 F3 78 */	mr r3, r30
/* 804D8FA8  4B FF F6 A1 */	bl bd_landing2__FP8bd_class
/* 804D8FAC  3B A0 00 01 */	li r29, 1
/* 804D8FB0  48 00 00 34 */	b lbl_804D8FE4
lbl_804D8FB4:
/* 804D8FB4  7F C3 F3 78 */	mr r3, r30
/* 804D8FB8  4B FF F7 E1 */	bl bd_landing3__FP8bd_class
/* 804D8FBC  3B 80 FF FF */	li r28, -1
/* 804D8FC0  3B 60 E0 00 */	li r27, -8192
/* 804D8FC4  48 00 00 20 */	b lbl_804D8FE4
lbl_804D8FC8:
/* 804D8FC8  7F C3 F3 78 */	mr r3, r30
/* 804D8FCC  4B FF FA 69 */	bl bd_rope__FP8bd_class
/* 804D8FD0  3B 80 FF FF */	li r28, -1
/* 804D8FD4  48 00 00 10 */	b lbl_804D8FE4
lbl_804D8FD8:
/* 804D8FD8  7F C3 F3 78 */	mr r3, r30
/* 804D8FDC  4B FF FC 6D */	bl bd_kkri__FP8bd_class
/* 804D8FE0  3B 80 FF FF */	li r28, -1
lbl_804D8FE4:
/* 804D8FE4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 804D8FE8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804D8FEC  38 A0 00 04 */	li r5, 4
/* 804D8FF0  38 C0 20 00 */	li r6, 0x2000
/* 804D8FF4  4B D9 76 15 */	bl cLib_addCalcAngleS2__FPssss
/* 804D8FF8  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804D8FFC  7F 64 DB 78 */	mr r4, r27
/* 804D9000  38 A0 00 01 */	li r5, 1
/* 804D9004  38 C0 10 00 */	li r6, 0x1000
/* 804D9008  4B D9 76 01 */	bl cLib_addCalcAngleS2__FPssss
/* 804D900C  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 804D9010  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 804D9014  38 7E 04 E0 */	addi r3, r30, 0x4e0
/* 804D9018  38 80 00 00 */	li r4, 0
/* 804D901C  38 A0 00 01 */	li r5, 1
/* 804D9020  38 C0 01 F4 */	li r6, 0x1f4
/* 804D9024  4B D9 75 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 804D9028  2C 1C 00 00 */	cmpwi r28, 0
/* 804D902C  41 82 00 84 */	beq lbl_804D90B0
/* 804D9030  40 81 00 D8 */	ble lbl_804D9108
/* 804D9034  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804D9038  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804D903C  80 63 00 00 */	lwz r3, 0(r3)
/* 804D9040  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804D9044  4B B3 33 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 804D9048  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D904C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D9050  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D9054  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804D9058  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D905C  38 61 00 14 */	addi r3, r1, 0x14
/* 804D9060  38 81 00 08 */	addi r4, r1, 8
/* 804D9064  4B D9 7E 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804D9068  C0 01 00 08 */	lfs f0, 8(r1)
/* 804D906C  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 804D9070  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D9074  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 804D9078  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804D907C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804D9080  7C 65 1B 78 */	mr r5, r3
/* 804D9084  4B E6 E0 0D */	bl PSVECAdd
/* 804D9088  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 804D908C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 804D9090  EC 01 00 2A */	fadds f0, f1, f0
/* 804D9094  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804D9098  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 804D909C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 804D90A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D90A4  40 80 00 64 */	bge lbl_804D9108
/* 804D90A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804D90AC  48 00 00 5C */	b lbl_804D9108
lbl_804D90B0:
/* 804D90B0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804D90B4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804D90B8  80 63 00 00 */	lwz r3, 0(r3)
/* 804D90BC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 804D90C0  4B B3 33 1D */	bl mDoMtx_YrotS__FPA4_fs
/* 804D90C4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804D90C8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804D90CC  80 63 00 00 */	lwz r3, 0(r3)
/* 804D90D0  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 804D90D4  4B B3 32 C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804D90D8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D90DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D90E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D90E4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804D90E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D90EC  38 61 00 14 */	addi r3, r1, 0x14
/* 804D90F0  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804D90F4  4B D9 7D F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804D90F8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804D90FC  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 804D9100  7C 65 1B 78 */	mr r5, r3
/* 804D9104  4B E6 DF 8D */	bl PSVECAdd
lbl_804D9108:
/* 804D9108  38 00 00 00 */	li r0, 0
/* 804D910C  98 1E 05 C2 */	stb r0, 0x5c2(r30)
/* 804D9110  2C 1D 00 00 */	cmpwi r29, 0
/* 804D9114  41 82 00 6C */	beq lbl_804D9180
/* 804D9118  38 7E 06 9C */	addi r3, r30, 0x69c
/* 804D911C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D9120  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D9124  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 804D9128  7F A4 EB 78 */	mr r4, r29
/* 804D912C  4B B9 D9 81 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804D9130  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 804D9134  3C 80 80 4E */	lis r4, d_a_bd__stringBase0@ha /* 0x804D9F6C@ha */
/* 804D9138  38 84 9F 6C */	addi r4, r4, d_a_bd__stringBase0@l /* 0x804D9F6C@l */
/* 804D913C  38 84 00 13 */	addi r4, r4, 0x13
/* 804D9140  4B E8 F8 55 */	bl strcmp
/* 804D9144  2C 03 00 00 */	cmpwi r3, 0
/* 804D9148  40 82 00 38 */	bne lbl_804D9180
/* 804D914C  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 804D9150  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 804D9154  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D9158  4C 40 13 82 */	cror 2, 0, 2
/* 804D915C  40 82 00 24 */	bne lbl_804D9180
/* 804D9160  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804D9164  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D9168  4C 40 13 82 */	cror 2, 0, 2
/* 804D916C  40 82 00 14 */	bne lbl_804D9180
/* 804D9170  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 804D9174  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 804D9178  38 00 00 01 */	li r0, 1
/* 804D917C  98 1E 05 C2 */	stb r0, 0x5c2(r30)
lbl_804D9180:
/* 804D9180  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 804D9184  C0 1E 06 24 */	lfs f0, 0x624(r30)
/* 804D9188  EC 01 00 2A */	fadds f0, f1, f0
/* 804D918C  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 804D9190  A8 7E 06 28 */	lha r3, 0x628(r30)
/* 804D9194  2C 03 00 00 */	cmpwi r3, 0
/* 804D9198  41 82 00 20 */	beq lbl_804D91B8
/* 804D919C  38 03 FF FF */	addi r0, r3, -1
/* 804D91A0  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 804D91A4  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 804D91A8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804D91AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804D91B0  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 804D91B4  48 00 00 14 */	b lbl_804D91C8
lbl_804D91B8:
/* 804D91B8  C0 3E 06 24 */	lfs f1, 0x624(r30)
/* 804D91BC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D91C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D91C4  D0 1E 06 24 */	stfs f0, 0x624(r30)
lbl_804D91C8:
/* 804D91C8  C0 3E 06 20 */	lfs f1, 0x620(r30)
/* 804D91CC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D91D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D91D4  4C 40 13 82 */	cror 2, 0, 2
/* 804D91D8  40 82 00 08 */	bne lbl_804D91E0
/* 804D91DC  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_804D91E0:
/* 804D91E0  39 61 00 40 */	addi r11, r1, 0x40
/* 804D91E4  4B E8 90 3D */	bl _restgpr_27
/* 804D91E8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D91EC  7C 08 03 A6 */	mtlr r0
/* 804D91F0  38 21 00 40 */	addi r1, r1, 0x40
/* 804D91F4  4E 80 00 20 */	blr 
