lbl_80680DCC:
/* 80680DCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80680DD0  7C 08 02 A6 */	mflr r0
/* 80680DD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80680DD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80680DDC  4B CE 14 01 */	bl _savegpr_29
/* 80680DE0  7C 7E 1B 78 */	mr r30, r3
/* 80680DE4  3C 80 80 68 */	lis r4, lit_3947@ha /* 0x806823BC@ha */
/* 80680DE8  3B E4 23 BC */	addi r31, r4, lit_3947@l /* 0x806823BC@l */
/* 80680DEC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80680DF0  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80680DF4  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80680DF8  4B 99 99 19 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80680DFC  B0 7E 06 84 */	sth r3, 0x684(r30)
/* 80680E00  7F C3 F3 78 */	mr r3, r30
/* 80680E04  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80680E08  4B 99 9B 5D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80680E0C  D0 3E 06 88 */	stfs f1, 0x688(r30)
/* 80680E10  38 00 00 00 */	li r0, 0
/* 80680E14  98 1E 05 66 */	stb r0, 0x566(r30)
/* 80680E18  7F C3 F3 78 */	mr r3, r30
/* 80680E1C  4B FF E2 91 */	bl damage_check__FP10e_ba_class
/* 80680E20  80 1E 09 20 */	lwz r0, 0x920(r30)
/* 80680E24  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80680E28  90 1E 09 20 */	stw r0, 0x920(r30)
/* 80680E2C  3B A0 00 00 */	li r29, 0
/* 80680E30  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 80680E34  28 00 00 0F */	cmplwi r0, 0xf
/* 80680E38  41 81 00 D8 */	bgt lbl_80680F10
/* 80680E3C  3C 60 80 68 */	lis r3, lit_4748@ha /* 0x806824D4@ha */
/* 80680E40  38 63 24 D4 */	addi r3, r3, lit_4748@l /* 0x806824D4@l */
/* 80680E44  54 00 10 3A */	slwi r0, r0, 2
/* 80680E48  7C 03 00 2E */	lwzx r0, r3, r0
/* 80680E4C  7C 09 03 A6 */	mtctr r0
/* 80680E50  4E 80 04 20 */	bctr 
lbl_80680E54:
/* 80680E54  7F C3 F3 78 */	mr r3, r30
/* 80680E58  4B FF E8 7D */	bl e_ba_roof__FP10e_ba_class
/* 80680E5C  48 00 00 B4 */	b lbl_80680F10
lbl_80680E60:
/* 80680E60  7F C3 F3 78 */	mr r3, r30
/* 80680E64  4B FF E9 B9 */	bl e_ba_fight_fly__FP10e_ba_class
/* 80680E68  38 00 00 01 */	li r0, 1
/* 80680E6C  98 1E 05 66 */	stb r0, 0x566(r30)
/* 80680E70  3B A0 00 01 */	li r29, 1
/* 80680E74  48 00 00 9C */	b lbl_80680F10
lbl_80680E78:
/* 80680E78  7F C3 F3 78 */	mr r3, r30
/* 80680E7C  4B FF EB 65 */	bl e_ba_fight__FP10e_ba_class
/* 80680E80  38 00 00 01 */	li r0, 1
/* 80680E84  98 1E 05 66 */	stb r0, 0x566(r30)
/* 80680E88  3B A0 00 01 */	li r29, 1
/* 80680E8C  48 00 00 84 */	b lbl_80680F10
lbl_80680E90:
/* 80680E90  7F C3 F3 78 */	mr r3, r30
/* 80680E94  4B FF EE D5 */	bl e_ba_attack__FP10e_ba_class
/* 80680E98  80 1E 09 20 */	lwz r0, 0x920(r30)
/* 80680E9C  60 00 00 0C */	ori r0, r0, 0xc
/* 80680EA0  90 1E 09 20 */	stw r0, 0x920(r30)
/* 80680EA4  38 00 00 01 */	li r0, 1
/* 80680EA8  98 1E 05 66 */	stb r0, 0x566(r30)
/* 80680EAC  3B A0 00 01 */	li r29, 1
/* 80680EB0  48 00 00 60 */	b lbl_80680F10
lbl_80680EB4:
/* 80680EB4  7F C3 F3 78 */	mr r3, r30
/* 80680EB8  4B FF F2 D5 */	bl e_ba_return__FP10e_ba_class
/* 80680EBC  48 00 00 54 */	b lbl_80680F10
lbl_80680EC0:
/* 80680EC0  7F C3 F3 78 */	mr r3, r30
/* 80680EC4  4B FF F0 9D */	bl e_ba_fly__FP10e_ba_class
/* 80680EC8  38 00 00 01 */	li r0, 1
/* 80680ECC  98 1E 05 66 */	stb r0, 0x566(r30)
/* 80680ED0  48 00 00 40 */	b lbl_80680F10
lbl_80680ED4:
/* 80680ED4  7F C3 F3 78 */	mr r3, r30
/* 80680ED8  4B FF F4 C5 */	bl e_ba_path_fly__FP10e_ba_class
/* 80680EDC  48 00 00 34 */	b lbl_80680F10
lbl_80680EE0:
/* 80680EE0  7F C3 F3 78 */	mr r3, r30
/* 80680EE4  4B FF F7 D1 */	bl e_ba_chance__FP10e_ba_class
/* 80680EE8  48 00 00 28 */	b lbl_80680F10
lbl_80680EEC:
/* 80680EEC  7F C3 F3 78 */	mr r3, r30
/* 80680EF0  4B FF F9 BD */	bl e_ba_wolfbite__FP10e_ba_class
/* 80680EF4  48 00 00 1C */	b lbl_80680F10
lbl_80680EF8:
/* 80680EF8  7F C3 F3 78 */	mr r3, r30
/* 80680EFC  4B FF FB F9 */	bl e_ba_wind__FP10e_ba_class
/* 80680F00  48 00 00 10 */	b lbl_80680F10
lbl_80680F04:
/* 80680F04  7F C3 F3 78 */	mr r3, r30
/* 80680F08  4B FF FD 91 */	bl e_ba_appear__FP10e_ba_class
/* 80680F0C  3B A0 00 01 */	li r29, 1
lbl_80680F10:
/* 80680F10  7F A0 07 75 */	extsb. r0, r29
/* 80680F14  41 82 00 14 */	beq lbl_80680F28
/* 80680F18  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80680F1C  38 80 00 01 */	li r4, 1
/* 80680F20  4B C4 0C 5D */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 80680F24  48 00 00 10 */	b lbl_80680F34
lbl_80680F28:
/* 80680F28  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80680F2C  38 80 00 00 */	li r4, 0
/* 80680F30  4B C4 0C 4D */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_80680F34:
/* 80680F34  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 80680F38  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80680F3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80680F40  40 81 01 18 */	ble lbl_80681058
/* 80680F44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80680F48  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80680F4C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80680F50  FC 00 08 50 */	fneg f0, f1
/* 80680F54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80680F58  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80680F5C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80680F60  80 63 00 00 */	lwz r3, 0(r3)
/* 80680F64  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 80680F68  4B 98 B4 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 80680F6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80680F70  38 81 00 14 */	addi r4, r1, 0x14
/* 80680F74  4B BE FF 79 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80680F78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80680F7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80680F80  7C 65 1B 78 */	mr r5, r3
/* 80680F84  4B CC 61 0D */	bl PSVECAdd
/* 80680F88  38 7E 06 98 */	addi r3, r30, 0x698
/* 80680F8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80680F90  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80680F94  4B BE EA ED */	bl cLib_addCalc0__FPfff
/* 80680F98  88 1E 06 A4 */	lbz r0, 0x6a4(r30)
/* 80680F9C  7C 00 07 75 */	extsb. r0, r0
/* 80680FA0  41 82 01 00 */	beq lbl_806810A0
/* 80680FA4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80680FA8  38 03 13 00 */	addi r0, r3, 0x1300
/* 80680FAC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80680FB0  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80680FB4  38 03 17 00 */	addi r0, r3, 0x1700
/* 80680FB8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80680FBC  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 80680FC0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80680FC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80680FC8  4C 40 13 82 */	cror 2, 0, 2
/* 80680FCC  41 82 00 10 */	beq lbl_80680FDC
/* 80680FD0  80 1E 07 38 */	lwz r0, 0x738(r30)
/* 80680FD4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80680FD8  41 82 00 C8 */	beq lbl_806810A0
lbl_80680FDC:
/* 80680FDC  7F C3 F3 78 */	mr r3, r30
/* 80680FE0  4B 99 8C 9D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80680FE4  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 80680FE8  28 00 00 02 */	cmplwi r0, 2
/* 80680FEC  40 82 00 60 */	bne lbl_8068104C
/* 80680FF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80680FF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80680FF8  A0 83 00 02 */	lhz r4, 2(r3)
/* 80680FFC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80681000  38 00 00 04 */	li r0, 4
/* 80681004  7C 04 00 10 */	subfc r0, r4, r0
/* 80681008  7C 04 01 94 */	addze r0, r4
/* 8068100C  7C 80 20 50 */	subf r4, r0, r4
/* 80681010  38 00 00 0E */	li r0, 0xe
/* 80681014  7C 04 20 78 */	andc r4, r0, r4
/* 80681018  38 A0 FF FF */	li r5, -1
/* 8068101C  38 C0 FF FF */	li r6, -1
/* 80681020  38 E0 00 00 */	li r7, 0
/* 80681024  39 00 00 00 */	li r8, 0
/* 80681028  39 20 00 00 */	li r9, 0
/* 8068102C  4B 99 B2 15 */	bl fopAcM_createItem__FPC4cXyziiiPC5csXyzPC4cXyzi
/* 80681030  7F C3 F3 78 */	mr r3, r30
/* 80681034  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80681038  38 A0 00 06 */	li r5, 6
/* 8068103C  38 C0 00 00 */	li r6, 0
/* 80681040  38 E0 00 FF */	li r7, 0xff
/* 80681044  4B 99 BA 95 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 80681048  48 00 00 58 */	b lbl_806810A0
lbl_8068104C:
/* 8068104C  7F C3 F3 78 */	mr r3, r30
/* 80681050  4B FF DC E1 */	bl ba_disappear__FP10fopAc_ac_c
/* 80681054  48 00 00 4C */	b lbl_806810A0
lbl_80681058:
/* 80681058  A8 1E 06 72 */	lha r0, 0x672(r30)
/* 8068105C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80681060  41 82 00 40 */	beq lbl_806810A0
/* 80681064  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80681068  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8068106C  38 A0 00 04 */	li r5, 4
/* 80681070  38 C0 20 00 */	li r6, 0x2000
/* 80681074  4B BE F5 95 */	bl cLib_addCalcAngleS2__FPssss
/* 80681078  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8068107C  38 80 00 00 */	li r4, 0
/* 80681080  38 A0 00 04 */	li r5, 4
/* 80681084  38 C0 20 00 */	li r6, 0x2000
/* 80681088  4B BE F5 81 */	bl cLib_addCalcAngleS2__FPssss
/* 8068108C  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 80681090  A8 9E 04 E0 */	lha r4, 0x4e0(r30)
/* 80681094  38 A0 00 04 */	li r5, 4
/* 80681098  38 C0 20 00 */	li r6, 0x2000
/* 8068109C  4B BE F5 6D */	bl cLib_addCalcAngleS2__FPssss
lbl_806810A0:
/* 806810A0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806810A4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806810A8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806810AC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806810B0  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806810B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806810B8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806810BC  38 7E 07 0C */	addi r3, r30, 0x70c
/* 806810C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806810C4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806810C8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806810CC  4B 9F 59 E1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806810D0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806810D4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806810D8  EC 00 08 2A */	fadds f0, f0, f1
/* 806810DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806810E0  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 806810E4  EC 00 08 2A */	fadds f0, f0, f1
/* 806810E8  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806810EC  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806810F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806810F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806810F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806810FC  7F C3 F3 78 */	mr r3, r30
/* 80681100  38 9E 05 C8 */	addi r4, r30, 0x5c8
/* 80681104  38 BE 05 38 */	addi r5, r30, 0x538
/* 80681108  38 C1 00 08 */	addi r6, r1, 8
/* 8068110C  48 00 0E 89 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80681110  39 61 00 40 */	addi r11, r1, 0x40
/* 80681114  4B CE 11 15 */	bl _restgpr_29
/* 80681118  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8068111C  7C 08 03 A6 */	mtlr r0
/* 80681120  38 21 00 40 */	addi r1, r1, 0x40
/* 80681124  4E 80 00 20 */	blr 
