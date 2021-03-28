lbl_80843C74:
/* 80843C74  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80843C78  7C 08 02 A6 */	mflr r0
/* 80843C7C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80843C80  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80843C84  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80843C88  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80843C8C  4B B1 E5 3C */	b _savegpr_24
/* 80843C90  7C 7C 1B 78 */	mr r28, r3
/* 80843C94  3C 60 80 84 */	lis r3, lit_3894@ha
/* 80843C98  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 80843C9C  38 00 00 00 */	li r0, 0
/* 80843CA0  98 1C 16 BE */	stb r0, 0x16be(r28)
/* 80843CA4  3C 60 80 84 */	lis r3, daHorse_searchSceneChangeArea__FP10fopAc_ac_cPv@ha
/* 80843CA8  38 63 3C 40 */	addi r3, r3, daHorse_searchSceneChangeArea__FP10fopAc_ac_cPv@l
/* 80843CAC  38 80 00 00 */	li r4, 0
/* 80843CB0  4B 7D 5B 0C */	b fopAcIt_Executor__FPFPvPv_iPv
/* 80843CB4  38 7C 12 54 */	addi r3, r28, 0x1254
/* 80843CB8  4B 91 AF 90 */	b setActor__16daPy_actorKeep_cFv
/* 80843CBC  80 7C 17 44 */	lwz r3, 0x1744(r28)
/* 80843CC0  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80843CC4  41 82 00 24 */	beq lbl_80843CE8
/* 80843CC8  54 60 01 09 */	rlwinm. r0, r3, 0, 4, 4
/* 80843CCC  41 82 00 14 */	beq lbl_80843CE0
/* 80843CD0  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843CD4  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80843CD8  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 80843CDC  48 00 00 0C */	b lbl_80843CE8
lbl_80843CE0:
/* 80843CE0  38 60 00 01 */	li r3, 1
/* 80843CE4  48 00 08 6C */	b lbl_80844550
lbl_80843CE8:
/* 80843CE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80843CEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80843CF0  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80843CF4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80843CF8  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 80843CFC  41 82 00 14 */	beq lbl_80843D10
/* 80843D00  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843D04  64 00 00 10 */	oris r0, r0, 0x10
/* 80843D08  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 80843D0C  48 00 00 18 */	b lbl_80843D24
lbl_80843D10:
/* 80843D10  54 60 01 CF */	rlwinm. r0, r3, 0, 7, 7
/* 80843D14  41 82 00 10 */	beq lbl_80843D24
/* 80843D18  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843D1C  64 00 00 20 */	oris r0, r0, 0x20
/* 80843D20  90 1C 17 44 */	stw r0, 0x1744(r28)
lbl_80843D24:
/* 80843D24  80 1C 06 E8 */	lwz r0, 0x6e8(r28)
/* 80843D28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80843D2C  41 82 00 14 */	beq lbl_80843D40
/* 80843D30  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843D34  60 00 00 10 */	ori r0, r0, 0x10
/* 80843D38  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 80843D3C  48 00 00 10 */	b lbl_80843D4C
lbl_80843D40:
/* 80843D40  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843D44  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80843D48  90 1C 17 44 */	stw r0, 0x1744(r28)
lbl_80843D4C:
/* 80843D4C  38 80 00 00 */	li r4, 0
/* 80843D50  90 9C 17 48 */	stw r4, 0x1748(r28)
/* 80843D54  80 7C 05 5C */	lwz r3, 0x55c(r28)
/* 80843D58  38 00 FF 77 */	li r0, -137
/* 80843D5C  7C 60 00 38 */	and r0, r3, r0
/* 80843D60  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80843D64  98 9C 16 B6 */	stb r4, 0x16b6(r28)
/* 80843D68  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80843D6C  B0 1C 16 E8 */	sth r0, 0x16e8(r28)
/* 80843D70  A8 1C 17 0E */	lha r0, 0x170e(r28)
/* 80843D74  B0 1C 17 10 */	sth r0, 0x1710(r28)
/* 80843D78  7F 83 E3 78 */	mr r3, r28
/* 80843D7C  4B FF 71 45 */	bl setDemoData__9daHorse_cFv
/* 80843D80  7F 83 E3 78 */	mr r3, r28
/* 80843D84  4B FF 78 7D */	bl setStickData__9daHorse_cFv
/* 80843D88  C0 1F 01 B8 */	lfs f0, 0x1b8(r31)
/* 80843D8C  D0 1C 17 50 */	stfs f0, 0x1750(r28)
/* 80843D90  7F 83 E3 78 */	mr r3, r28
/* 80843D94  4B FF CF 51 */	bl setLashCnt__9daHorse_cFv
/* 80843D98  7F 83 E3 78 */	mr r3, r28
/* 80843D9C  4B FF D2 45 */	bl setTalkModeWolf__9daHorse_cFv
/* 80843DA0  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843DA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80843DA8  41 82 00 90 */	beq lbl_80843E38
/* 80843DAC  A0 1C 16 C8 */	lhz r0, 0x16c8(r28)
/* 80843DB0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80843DB4  40 82 00 84 */	bne lbl_80843E38
/* 80843DB8  38 7C 09 40 */	addi r3, r28, 0x940
/* 80843DBC  4B 84 06 A4 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80843DC0  28 03 00 00 */	cmplwi r3, 0
/* 80843DC4  40 82 00 34 */	bne lbl_80843DF8
/* 80843DC8  38 7C 0A 7C */	addi r3, r28, 0xa7c
/* 80843DCC  4B 84 06 94 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80843DD0  28 03 00 00 */	cmplwi r3, 0
/* 80843DD4  40 82 00 24 */	bne lbl_80843DF8
/* 80843DD8  38 7C 0B B8 */	addi r3, r28, 0xbb8
/* 80843DDC  4B 84 06 84 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80843DE0  28 03 00 00 */	cmplwi r3, 0
/* 80843DE4  40 82 00 14 */	bne lbl_80843DF8
/* 80843DE8  38 7C 0F 6C */	addi r3, r28, 0xf6c
/* 80843DEC  4B 84 06 74 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80843DF0  28 03 00 00 */	cmplwi r3, 0
/* 80843DF4  41 82 00 44 */	beq lbl_80843E38
lbl_80843DF8:
/* 80843DF8  7F 83 E3 78 */	mr r3, r28
/* 80843DFC  38 80 00 0E */	li r4, 0xe
/* 80843E00  C0 3F 01 48 */	lfs f1, 0x148(r31)
/* 80843E04  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80843E08  38 A0 FF FF */	li r5, -1
/* 80843E0C  4B FF CD 7D */	bl setNeckAnime__9daHorse_cFUsffs
/* 80843E10  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005000C@ha */
/* 80843E14  38 03 00 0C */	addi r0, r3, 0x000C /* 0x0005000C@l */
/* 80843E18  90 01 00 0C */	stw r0, 0xc(r1)
/* 80843E1C  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 80843E20  38 81 00 0C */	addi r4, r1, 0xc
/* 80843E24  38 A0 FF FF */	li r5, -1
/* 80843E28  81 9C 10 A4 */	lwz r12, 0x10a4(r28)
/* 80843E2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80843E30  7D 89 03 A6 */	mtctr r12
/* 80843E34  4E 80 04 21 */	bctrl 
lbl_80843E38:
/* 80843E38  A8 7C 17 08 */	lha r3, 0x1708(r28)
/* 80843E3C  2C 03 00 00 */	cmpwi r3, 0
/* 80843E40  41 82 00 0C */	beq lbl_80843E4C
/* 80843E44  38 03 FF FF */	addi r0, r3, -1
/* 80843E48  B0 1C 17 08 */	sth r0, 0x1708(r28)
lbl_80843E4C:
/* 80843E4C  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 80843E50  28 00 00 03 */	cmplwi r0, 3
/* 80843E54  41 82 00 18 */	beq lbl_80843E6C
/* 80843E58  A8 7C 17 0C */	lha r3, 0x170c(r28)
/* 80843E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80843E60  41 82 00 0C */	beq lbl_80843E6C
/* 80843E64  38 03 FF FF */	addi r0, r3, -1
/* 80843E68  B0 1C 17 0C */	sth r0, 0x170c(r28)
lbl_80843E6C:
/* 80843E6C  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80843E70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80843E74  41 82 00 0C */	beq lbl_80843E80
/* 80843E78  38 00 00 00 */	li r0, 0
/* 80843E7C  98 1C 16 BC */	stb r0, 0x16bc(r28)
lbl_80843E80:
/* 80843E80  7F 83 E3 78 */	mr r3, r28
/* 80843E84  4B FF 65 41 */	bl animePlay__9daHorse_cFv
/* 80843E88  7F 83 E3 78 */	mr r3, r28
/* 80843E8C  4B FF 67 21 */	bl checkDemoAction__9daHorse_cFv
/* 80843E90  7F 83 E3 78 */	mr r3, r28
/* 80843E94  39 9C 18 A4 */	addi r12, r28, 0x18a4
/* 80843E98  4B B1 E1 EC */	b __ptmf_scall
/* 80843E9C  60 00 00 00 */	nop 
/* 80843EA0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80843EA4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80843EA8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80843EAC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80843EB0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80843EB4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80843EB8  C3 FC 05 2C */	lfs f31, 0x52c(r28)
/* 80843EBC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80843EC0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80843EC4  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80843EC8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80843ECC  7C 63 02 14 */	add r3, r3, r0
/* 80843ED0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80843ED4  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80843ED8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80843EDC  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 80843EE0  28 00 00 04 */	cmplwi r0, 4
/* 80843EE4  40 82 00 14 */	bne lbl_80843EF8
/* 80843EE8  7F 83 E3 78 */	mr r3, r28
/* 80843EEC  38 80 00 00 */	li r4, 0
/* 80843EF0  4B 7D 67 DC */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80843EF4  48 00 01 64 */	b lbl_80844058
lbl_80843EF8:
/* 80843EF8  7F 83 E3 78 */	mr r3, r28
/* 80843EFC  38 9C 08 94 */	addi r4, r28, 0x894
/* 80843F00  4B 7D 67 CC */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80843F04  38 7C 08 94 */	addi r3, r28, 0x894
/* 80843F08  4B B0 32 30 */	b PSVECSquareMag
/* 80843F0C  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80843F10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80843F14  40 81 00 58 */	ble lbl_80843F6C
/* 80843F18  FC 00 08 34 */	frsqrte f0, f1
/* 80843F1C  C8 9F 01 60 */	lfd f4, 0x160(r31)
/* 80843F20  FC 44 00 32 */	fmul f2, f4, f0
/* 80843F24  C8 7F 01 68 */	lfd f3, 0x168(r31)
/* 80843F28  FC 00 00 32 */	fmul f0, f0, f0
/* 80843F2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80843F30  FC 03 00 28 */	fsub f0, f3, f0
/* 80843F34  FC 02 00 32 */	fmul f0, f2, f0
/* 80843F38  FC 44 00 32 */	fmul f2, f4, f0
/* 80843F3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80843F40  FC 01 00 32 */	fmul f0, f1, f0
/* 80843F44  FC 03 00 28 */	fsub f0, f3, f0
/* 80843F48  FC 02 00 32 */	fmul f0, f2, f0
/* 80843F4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80843F50  FC 00 00 32 */	fmul f0, f0, f0
/* 80843F54  FC 01 00 32 */	fmul f0, f1, f0
/* 80843F58  FC 03 00 28 */	fsub f0, f3, f0
/* 80843F5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80843F60  FC 21 00 32 */	fmul f1, f1, f0
/* 80843F64  FC 20 08 18 */	frsp f1, f1
/* 80843F68  48 00 00 88 */	b lbl_80843FF0
lbl_80843F6C:
/* 80843F6C  C8 1F 01 70 */	lfd f0, 0x170(r31)
/* 80843F70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80843F74  40 80 00 10 */	bge lbl_80843F84
/* 80843F78  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80843F7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80843F80  48 00 00 70 */	b lbl_80843FF0
lbl_80843F84:
/* 80843F84  D0 21 00 08 */	stfs f1, 8(r1)
/* 80843F88  80 81 00 08 */	lwz r4, 8(r1)
/* 80843F8C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80843F90  3C 00 7F 80 */	lis r0, 0x7f80
/* 80843F94  7C 03 00 00 */	cmpw r3, r0
/* 80843F98  41 82 00 14 */	beq lbl_80843FAC
/* 80843F9C  40 80 00 40 */	bge lbl_80843FDC
/* 80843FA0  2C 03 00 00 */	cmpwi r3, 0
/* 80843FA4  41 82 00 20 */	beq lbl_80843FC4
/* 80843FA8  48 00 00 34 */	b lbl_80843FDC
lbl_80843FAC:
/* 80843FAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80843FB0  41 82 00 0C */	beq lbl_80843FBC
/* 80843FB4  38 00 00 01 */	li r0, 1
/* 80843FB8  48 00 00 28 */	b lbl_80843FE0
lbl_80843FBC:
/* 80843FBC  38 00 00 02 */	li r0, 2
/* 80843FC0  48 00 00 20 */	b lbl_80843FE0
lbl_80843FC4:
/* 80843FC4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80843FC8  41 82 00 0C */	beq lbl_80843FD4
/* 80843FCC  38 00 00 05 */	li r0, 5
/* 80843FD0  48 00 00 10 */	b lbl_80843FE0
lbl_80843FD4:
/* 80843FD4  38 00 00 03 */	li r0, 3
/* 80843FD8  48 00 00 08 */	b lbl_80843FE0
lbl_80843FDC:
/* 80843FDC  38 00 00 04 */	li r0, 4
lbl_80843FE0:
/* 80843FE0  2C 00 00 01 */	cmpwi r0, 1
/* 80843FE4  40 82 00 0C */	bne lbl_80843FF0
/* 80843FE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80843FEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80843FF0:
/* 80843FF0  C0 1F 03 A0 */	lfs f0, 0x3a0(r31)
/* 80843FF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80843FF8  40 81 00 60 */	ble lbl_80844058
/* 80843FFC  AB BC 04 E6 */	lha r29, 0x4e6(r28)
/* 80844000  AB 7C 04 DE */	lha r27, 0x4de(r28)
/* 80844004  3B 40 00 00 */	li r26, 0
lbl_80844008:
/* 80844008  7F 83 E3 78 */	mr r3, r28
/* 8084400C  38 80 00 01 */	li r4, 1
/* 80844010  4B FF 7F 39 */	bl checkHorseNoMove__9daHorse_cFi
/* 80844014  2C 03 00 02 */	cmpwi r3, 2
/* 80844018  40 82 00 18 */	bne lbl_80844030
/* 8084401C  38 9C 08 94 */	addi r4, r28, 0x894
/* 80844020  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80844024  7C 65 1B 78 */	mr r5, r3
/* 80844028  4B B0 30 8C */	b PSVECSubtract
/* 8084402C  48 00 00 24 */	b lbl_80844050
lbl_80844030:
/* 80844030  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80844034  38 03 20 00 */	addi r0, r3, 0x2000
/* 80844038  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8084403C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80844040  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80844044  3B 5A 00 01 */	addi r26, r26, 1
/* 80844048  2C 1A 00 08 */	cmpwi r26, 8
/* 8084404C  41 80 FF BC */	blt lbl_80844008
lbl_80844050:
/* 80844050  B3 BC 04 E6 */	sth r29, 0x4e6(r28)
/* 80844054  B3 7C 04 DE */	sth r27, 0x4de(r28)
lbl_80844058:
/* 80844058  D3 FC 05 2C */	stfs f31, 0x52c(r28)
/* 8084405C  38 7C 08 94 */	addi r3, r28, 0x894
/* 80844060  4B A1 F8 FC */	b ClrCcMove__9cCcD_SttsFv
/* 80844064  C3 FC 04 FC */	lfs f31, 0x4fc(r28)
/* 80844068  7F 83 E3 78 */	mr r3, r28
/* 8084406C  4B FF C2 8D */	bl bgCheck__9daHorse_cFv
/* 80844070  38 7C 06 BC */	addi r3, r28, 0x6bc
/* 80844074  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80844078  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8084407C  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 80844080  7F A4 EB 78 */	mr r4, r29
/* 80844084  4B 83 2A 28 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80844088  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 8084408C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80844090  41 82 00 10 */	beq lbl_808440A0
/* 80844094  7F 83 E3 78 */	mr r3, r28
/* 80844098  4B FF A6 51 */	bl autoGroundHit__9daHorse_cFv
/* 8084409C  48 00 00 14 */	b lbl_808440B0
lbl_808440A0:
/* 808440A0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 808440A4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 808440A8  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 808440AC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_808440B0:
/* 808440B0  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 808440B4  28 00 00 07 */	cmplwi r0, 7
/* 808440B8  40 82 00 A0 */	bne lbl_80844158
/* 808440BC  80 7C 05 90 */	lwz r3, 0x590(r28)
/* 808440C0  80 63 00 08 */	lwz r3, 8(r3)
/* 808440C4  80 63 00 04 */	lwz r3, 4(r3)
/* 808440C8  38 80 00 00 */	li r4, 0
/* 808440CC  38 A1 00 58 */	addi r5, r1, 0x58
/* 808440D0  81 83 00 00 */	lwz r12, 0(r3)
/* 808440D4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 808440D8  7D 89 03 A6 */	mtctr r12
/* 808440DC  4E 80 04 21 */	bctrl 
/* 808440E0  38 61 00 4C */	addi r3, r1, 0x4c
/* 808440E4  4B 7C 8C 80 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 808440E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808440EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808440F0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 808440F4  4B 7C 83 40 */	b mDoMtx_YrotM__FPA4_fs
/* 808440F8  80 7F 03 94 */	lwz r3, 0x394(r31)
/* 808440FC  80 1F 03 98 */	lwz r0, 0x398(r31)
/* 80844100  90 61 00 40 */	stw r3, 0x40(r1)
/* 80844104  90 01 00 44 */	stw r0, 0x44(r1)
/* 80844108  80 1F 03 9C */	lwz r0, 0x39c(r31)
/* 8084410C  90 01 00 48 */	stw r0, 0x48(r1)
/* 80844110  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80844114  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80844118  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8084411C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80844120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80844124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80844128  38 81 00 40 */	addi r4, r1, 0x40
/* 8084412C  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80844130  4B B0 2C 3C */	b PSMTXMultVec
/* 80844134  80 1C 17 30 */	lwz r0, 0x1730(r28)
/* 80844138  2C 00 00 00 */	cmpwi r0, 0
/* 8084413C  41 82 00 28 */	beq lbl_80844164
/* 80844140  C0 1F 02 30 */	lfs f0, 0x230(r31)
/* 80844144  C0 3C 07 54 */	lfs f1, 0x754(r28)
/* 80844148  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8084414C  41 82 00 18 */	beq lbl_80844164
/* 80844150  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80844154  48 00 00 10 */	b lbl_80844164
lbl_80844158:
/* 80844158  28 00 00 04 */	cmplwi r0, 4
/* 8084415C  40 82 00 08 */	bne lbl_80844164
/* 80844160  D3 FC 04 FC */	stfs f31, 0x4fc(r28)
lbl_80844164:
/* 80844164  80 7C 17 44 */	lwz r3, 0x1744(r28)
/* 80844168  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8084416C  41 82 00 58 */	beq lbl_808441C4
/* 80844170  80 1C 06 E8 */	lwz r0, 0x6e8(r28)
/* 80844174  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80844178  41 82 00 4C */	beq lbl_808441C4
/* 8084417C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80844180  41 82 00 44 */	beq lbl_808441C4
/* 80844184  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 80844188  40 82 00 5C */	bne lbl_808441E4
/* 8084418C  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80844190  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80844194  C0 1F 01 48 */	lfs f0, 0x148(r31)
/* 80844198  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084419C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 808441A0  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 808441A4  38 80 00 09 */	li r4, 9
/* 808441A8  38 A0 00 01 */	li r5, 1
/* 808441AC  38 C1 00 10 */	addi r6, r1, 0x10
/* 808441B0  4B 82 B9 60 */	b StartQuake__12dVibration_cFii4cXyz
/* 808441B4  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 808441B8  60 00 10 00 */	ori r0, r0, 0x1000
/* 808441BC  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 808441C0  48 00 00 24 */	b lbl_808441E4
lbl_808441C4:
/* 808441C4  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 808441C8  41 82 00 1C */	beq lbl_808441E4
/* 808441CC  38 7D 4C 9C */	addi r3, r29, 0x4c9c
/* 808441D0  38 80 00 1F */	li r4, 0x1f
/* 808441D4  4B 82 BB C0 */	b StopQuake__12dVibration_cFi
/* 808441D8  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 808441DC  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 808441E0  90 1C 17 44 */	stw r0, 0x1744(r28)
lbl_808441E4:
/* 808441E4  7F 83 E3 78 */	mr r3, r28
/* 808441E8  38 80 00 00 */	li r4, 0
/* 808441EC  4B FF 95 89 */	bl setRoomInfo__9daHorse_cFi
/* 808441F0  7F 83 E3 78 */	mr r3, r28
/* 808441F4  4B FF 97 E5 */	bl setMatrix__9daHorse_cFv
/* 808441F8  7F 83 E3 78 */	mr r3, r28
/* 808441FC  4B FF B1 B5 */	bl footBgCheck__9daHorse_cFv
/* 80844200  7F 83 E3 78 */	mr r3, r28
/* 80844204  4B FF A5 5D */	bl setTailAngle__9daHorse_cFv
/* 80844208  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 8084420C  81 83 00 00 */	lwz r12, 0(r3)
/* 80844210  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80844214  7D 89 03 A6 */	mtctr r12
/* 80844218  4E 80 04 21 */	bctrl 
/* 8084421C  7F 83 E3 78 */	mr r3, r28
/* 80844220  4B FF 96 F9 */	bl setBodyPart__9daHorse_cFv
/* 80844224  88 1C 16 B4 */	lbz r0, 0x16b4(r28)
/* 80844228  28 00 00 07 */	cmplwi r0, 7
/* 8084422C  40 82 00 3C */	bne lbl_80844268
/* 80844230  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80844234  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80844238  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084423C  3C 80 80 43 */	lis r4, BaseX__4cXyz@ha
/* 80844240  38 84 0D 0C */	addi r4, r4, BaseX__4cXyz@l
/* 80844244  38 A1 00 34 */	addi r5, r1, 0x34
/* 80844248  4B B0 2B 24 */	b PSMTXMultVec
/* 8084424C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80844250  FC 20 00 50 */	fneg f1, f0
/* 80844254  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80844258  FC 40 00 50 */	fneg f2, f0
/* 8084425C  4B A2 34 18 */	b cM_atan2s__Fff
/* 80844260  B0 7C 17 0E */	sth r3, 0x170e(r28)
/* 80844264  48 00 00 0C */	b lbl_80844270
lbl_80844268:
/* 80844268  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8084426C  B0 1C 17 0E */	sth r0, 0x170e(r28)
lbl_80844270:
/* 80844270  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 80844274  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80844278  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8084427C  C0 03 02 1C */	lfs f0, 0x21c(r3)
/* 80844280  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80844284  C0 03 02 2C */	lfs f0, 0x22c(r3)
/* 80844288  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084428C  C0 03 02 3C */	lfs f0, 0x23c(r3)
/* 80844290  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80844294  C0 03 03 CC */	lfs f0, 0x3cc(r3)
/* 80844298  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084429C  C0 03 03 DC */	lfs f0, 0x3dc(r3)
/* 808442A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808442A4  C0 03 03 EC */	lfs f0, 0x3ec(r3)
/* 808442A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808442AC  38 61 00 1C */	addi r3, r1, 0x1c
/* 808442B0  38 81 00 28 */	addi r4, r1, 0x28
/* 808442B4  7C 65 1B 78 */	mr r5, r3
/* 808442B8  4B B0 2D FC */	b PSVECSubtract
/* 808442BC  38 61 00 1C */	addi r3, r1, 0x1c
/* 808442C0  4B A2 2E 68 */	b atan2sX_Z__4cXyzCFv
/* 808442C4  A8 1C 17 0E */	lha r0, 0x170e(r28)
/* 808442C8  7C 00 18 50 */	subf r0, r0, r3
/* 808442CC  B0 1C 17 12 */	sth r0, 0x1712(r28)
/* 808442D0  A8 1C 17 12 */	lha r0, 0x1712(r28)
/* 808442D4  2C 00 20 00 */	cmpwi r0, 0x2000
/* 808442D8  40 81 00 10 */	ble lbl_808442E8
/* 808442DC  38 00 20 00 */	li r0, 0x2000
/* 808442E0  B0 1C 17 12 */	sth r0, 0x1712(r28)
/* 808442E4  48 00 00 14 */	b lbl_808442F8
lbl_808442E8:
/* 808442E8  2C 00 E0 00 */	cmpwi r0, -8192
/* 808442EC  40 80 00 0C */	bge lbl_808442F8
/* 808442F0  38 00 E0 00 */	li r0, -8192
/* 808442F4  B0 1C 17 12 */	sth r0, 0x1712(r28)
lbl_808442F8:
/* 808442F8  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 808442FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80844300  41 82 00 A4 */	beq lbl_808443A4
/* 80844304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80844308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084430C  C0 3C 17 AC */	lfs f1, 0x17ac(r28)
/* 80844310  C0 5C 17 B0 */	lfs f2, 0x17b0(r28)
/* 80844314  C0 7C 17 B4 */	lfs f3, 0x17b4(r28)
/* 80844318  4B B0 25 D0 */	b PSMTXTrans
/* 8084431C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80844320  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80844324  A8 9C 17 10 */	lha r4, 0x1710(r28)
/* 80844328  A8 1C 17 0E */	lha r0, 0x170e(r28)
/* 8084432C  7C 04 00 50 */	subf r0, r4, r0
/* 80844330  7C 04 07 34 */	extsh r4, r0
/* 80844334  4B 7C 81 00 */	b mDoMtx_YrotM__FPA4_fs
/* 80844338  C0 1C 17 B8 */	lfs f0, 0x17b8(r28)
/* 8084433C  FC 20 00 50 */	fneg f1, f0
/* 80844340  C0 1C 17 BC */	lfs f0, 0x17bc(r28)
/* 80844344  FC 40 00 50 */	fneg f2, f0
/* 80844348  C0 1C 17 C0 */	lfs f0, 0x17c0(r28)
/* 8084434C  FC 60 00 50 */	fneg f3, f0
/* 80844350  4B 7C 8A 4C */	b transM__14mDoMtx_stack_cFfff
/* 80844354  3B 5C 11 50 */	addi r26, r28, 0x1150
/* 80844358  3B 20 00 00 */	li r25, 0
/* 8084435C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80844360  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
lbl_80844364:
/* 80844364  83 7A 00 00 */	lwz r27, 0(r26)
/* 80844368  3B 00 00 00 */	li r24, 0
/* 8084436C  48 00 00 1C */	b lbl_80844388
lbl_80844370:
/* 80844370  7F A3 EB 78 */	mr r3, r29
/* 80844374  7F 64 DB 78 */	mr r4, r27
/* 80844378  7F 65 DB 78 */	mr r5, r27
/* 8084437C  4B B0 29 F0 */	b PSMTXMultVec
/* 80844380  3B 18 00 01 */	addi r24, r24, 1
/* 80844384  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_80844388:
/* 80844388  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 8084438C  7C 18 00 00 */	cmpw r24, r0
/* 80844390  41 80 FF E0 */	blt lbl_80844370
/* 80844394  3B 39 00 01 */	addi r25, r25, 1
/* 80844398  2C 19 00 03 */	cmpwi r25, 3
/* 8084439C  3B 5A 00 28 */	addi r26, r26, 0x28
/* 808443A0  41 80 FF C4 */	blt lbl_80844364
lbl_808443A4:
/* 808443A4  C0 1C 17 AC */	lfs f0, 0x17ac(r28)
/* 808443A8  D0 1C 17 B8 */	stfs f0, 0x17b8(r28)
/* 808443AC  C0 1C 17 B0 */	lfs f0, 0x17b0(r28)
/* 808443B0  D0 1C 17 BC */	stfs f0, 0x17bc(r28)
/* 808443B4  C0 1C 17 B4 */	lfs f0, 0x17b4(r28)
/* 808443B8  D0 1C 17 C0 */	stfs f0, 0x17c0(r28)
/* 808443BC  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 808443C0  88 9C 16 B9 */	lbz r4, 0x16b9(r28)
/* 808443C4  88 BC 16 B5 */	lbz r5, 0x16b5(r28)
/* 808443C8  81 9C 10 A4 */	lwz r12, 0x10a4(r28)
/* 808443CC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 808443D0  7D 89 03 A6 */	mtctr r12
/* 808443D4  4E 80 04 21 */	bctrl 
/* 808443D8  80 7C 11 44 */	lwz r3, 0x1144(r28)
/* 808443DC  28 03 00 00 */	cmplwi r3, 0
/* 808443E0  41 82 00 14 */	beq lbl_808443F4
/* 808443E4  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 808443E8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 808443EC  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 808443F0  4B A7 C2 E0 */	b updateAnime__10Z2CreatureFff
lbl_808443F4:
/* 808443F4  7F 83 E3 78 */	mr r3, r28
/* 808443F8  4B FF 9A F5 */	bl setEffect__9daHorse_cFv
/* 808443FC  7F 83 E3 78 */	mr r3, r28
/* 80844400  4B FF A0 D9 */	bl setCollision__9daHorse_cFv
/* 80844404  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80844408  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8084440C  40 82 00 24 */	bne lbl_80844430
/* 80844410  7F 83 E3 78 */	mr r3, r28
/* 80844414  39 9C 18 C8 */	addi r12, r28, 0x18c8
/* 80844418  4B B1 DC 6C */	b __ptmf_scall
/* 8084441C  60 00 00 00 */	nop 
/* 80844420  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 80844424  38 80 00 00 */	li r4, 0
/* 80844428  4B A8 0E 04 */	b setLinkRiding__14Z2CreatureRideFb
/* 8084442C  48 00 00 10 */	b lbl_8084443C
lbl_80844430:
/* 80844430  38 7C 10 A4 */	addi r3, r28, 0x10a4
/* 80844434  38 80 00 01 */	li r4, 1
/* 80844438  4B A8 0D F4 */	b setLinkRiding__14Z2CreatureRideFb
lbl_8084443C:
/* 8084443C  7F C3 F3 78 */	mr r3, r30
/* 80844440  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80844444  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80844448  7D 89 03 A6 */	mtctr r12
/* 8084444C  4E 80 04 21 */	bctrl 
/* 80844450  28 03 00 00 */	cmplwi r3, 0
/* 80844454  40 82 00 0C */	bne lbl_80844460
/* 80844458  38 00 00 06 */	li r0, 6
/* 8084445C  B0 1C 17 00 */	sth r0, 0x1700(r28)
lbl_80844460:
/* 80844460  C0 1C 17 58 */	lfs f0, 0x1758(r28)
/* 80844464  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 80844468  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8084446C  41 81 00 28 */	bgt lbl_80844494
/* 80844470  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80844474  FC 00 02 10 */	fabs f0, f0
/* 80844478  FC 00 00 18 */	frsp f0, f0
/* 8084447C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80844480  40 80 00 14 */	bge lbl_80844494
/* 80844484  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 80844488  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8084448C  90 1C 17 44 */	stw r0, 0x1744(r28)
/* 80844490  48 00 00 50 */	b lbl_808444E0
lbl_80844494:
/* 80844494  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80844498  FC 00 02 10 */	fabs f0, f0
/* 8084449C  FC 40 00 18 */	frsp f2, f0
/* 808444A0  C0 3F 01 7C */	lfs f1, 0x17c(r31)
/* 808444A4  38 7F 00 20 */	addi r3, r31, 0x20
/* 808444A8  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 808444AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 808444B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 808444B4  41 81 00 20 */	bgt lbl_808444D4
/* 808444B8  A0 1C 16 C4 */	lhz r0, 0x16c4(r28)
/* 808444BC  28 00 00 07 */	cmplwi r0, 7
/* 808444C0  40 82 00 20 */	bne lbl_808444E0
/* 808444C4  C0 3C 05 C0 */	lfs f1, 0x5c0(r28)
/* 808444C8  C0 1F 02 60 */	lfs f0, 0x260(r31)
/* 808444CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808444D0  40 81 00 10 */	ble lbl_808444E0
lbl_808444D4:
/* 808444D4  80 1C 17 44 */	lwz r0, 0x1744(r28)
/* 808444D8  60 00 00 08 */	ori r0, r0, 8
/* 808444DC  90 1C 17 44 */	stw r0, 0x1744(r28)
lbl_808444E0:
/* 808444E0  38 00 00 00 */	li r0, 0
/* 808444E4  90 1C 17 4C */	stw r0, 0x174c(r28)
/* 808444E8  80 1C 17 48 */	lwz r0, 0x1748(r28)
/* 808444EC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 808444F0  40 82 00 10 */	bne lbl_80844500
/* 808444F4  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 808444F8  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 808444FC  41 82 00 24 */	beq lbl_80844520
lbl_80844500:
/* 80844500  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80844504  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80844508  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8084450C  80 63 00 08 */	lwz r3, 8(r3)
/* 80844510  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80844514  60 00 00 01 */	ori r0, r0, 1
/* 80844518  90 03 00 0C */	stw r0, 0xc(r3)
/* 8084451C  48 00 00 20 */	b lbl_8084453C
lbl_80844520:
/* 80844520  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80844524  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80844528  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8084452C  80 63 00 08 */	lwz r3, 8(r3)
/* 80844530  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80844534  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80844538  90 03 00 0C */	stw r0, 0xc(r3)
lbl_8084453C:
/* 8084453C  A8 1C 17 00 */	lha r0, 0x1700(r28)
/* 80844540  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80844544  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80844548  B0 03 00 96 */	sth r0, 0x96(r3)
/* 8084454C  38 60 00 01 */	li r3, 1
lbl_80844550:
/* 80844550  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80844554  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80844558  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8084455C  4B B1 DC B8 */	b _restgpr_24
/* 80844560  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80844564  7C 08 03 A6 */	mtlr r0
/* 80844568  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8084456C  4E 80 00 20 */	blr 
