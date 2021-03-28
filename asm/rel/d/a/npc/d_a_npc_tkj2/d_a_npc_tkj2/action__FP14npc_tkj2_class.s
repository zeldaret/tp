lbl_80B12E88:
/* 80B12E88  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B12E8C  7C 08 02 A6 */	mflr r0
/* 80B12E90  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B12E94  39 61 00 80 */	addi r11, r1, 0x80
/* 80B12E98  4B 84 F3 34 */	b _savegpr_25
/* 80B12E9C  7C 7C 1B 78 */	mr r28, r3
/* 80B12EA0  3C 60 80 B1 */	lis r3, lit_3648@ha
/* 80B12EA4  3B C3 42 DC */	addi r30, r3, lit_3648@l
/* 80B12EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B12EAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B12EB0  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B12EB4  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80B12EB8  D0 1C 05 D0 */	stfs f0, 0x5d0(r28)
/* 80B12EBC  38 00 00 00 */	li r0, 0
/* 80B12EC0  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80B12EC4  88 1C 06 30 */	lbz r0, 0x630(r28)
/* 80B12EC8  28 00 00 00 */	cmplwi r0, 0
/* 80B12ECC  41 82 00 0C */	beq lbl_80B12ED8
/* 80B12ED0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B12ED4  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_80B12ED8:
/* 80B12ED8  80 1C 08 B8 */	lwz r0, 0x8b8(r28)
/* 80B12EDC  60 00 00 01 */	ori r0, r0, 1
/* 80B12EE0  90 1C 08 B8 */	stw r0, 0x8b8(r28)
/* 80B12EE4  7F 83 E3 78 */	mr r3, r28
/* 80B12EE8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B12EEC  4B 50 78 F4 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B12EF0  D0 3C 05 C8 */	stfs f1, 0x5c8(r28)
/* 80B12EF4  7F 83 E3 78 */	mr r3, r28
/* 80B12EF8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B12EFC  4B 50 78 14 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B12F00  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 80B12F04  3B 60 00 00 */	li r27, 0
/* 80B12F08  3B 40 00 00 */	li r26, 0
/* 80B12F0C  3B 20 00 01 */	li r25, 1
/* 80B12F10  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80B12F14  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B12F18  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80B12F1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B12F20  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B12F24  38 00 00 00 */	li r0, 0
/* 80B12F28  98 1C 0A 8C */	stb r0, 0xa8c(r28)
/* 80B12F2C  A8 1C 06 08 */	lha r0, 0x608(r28)
/* 80B12F30  28 00 00 06 */	cmplwi r0, 6
/* 80B12F34  41 81 01 E0 */	bgt lbl_80B13114
/* 80B12F38  3C 60 80 B1 */	lis r3, lit_4761@ha
/* 80B12F3C  38 63 43 B8 */	addi r3, r3, lit_4761@l
/* 80B12F40  54 00 10 3A */	slwi r0, r0, 2
/* 80B12F44  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B12F48  7C 09 03 A6 */	mtctr r0
/* 80B12F4C  4E 80 04 20 */	bctr 
lbl_80B12F50:
/* 80B12F50  7F 83 E3 78 */	mr r3, r28
/* 80B12F54  4B FF ED 79 */	bl npc_tkj2_normal__FP14npc_tkj2_class
/* 80B12F58  3B 60 00 01 */	li r27, 1
/* 80B12F5C  3B 40 00 01 */	li r26, 1
/* 80B12F60  88 1C 06 30 */	lbz r0, 0x630(r28)
/* 80B12F64  28 00 00 00 */	cmplwi r0, 0
/* 80B12F68  41 82 00 08 */	beq lbl_80B12F70
/* 80B12F6C  3B 20 00 00 */	li r25, 0
lbl_80B12F70:
/* 80B12F70  38 7C 08 8C */	addi r3, r28, 0x88c
/* 80B12F74  4B 57 14 EC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80B12F78  28 03 00 00 */	cmplwi r3, 0
/* 80B12F7C  41 82 00 28 */	beq lbl_80B12FA4
/* 80B12F80  38 7C 08 8C */	addi r3, r28, 0x88c
/* 80B12F84  4B 57 15 74 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80B12F88  28 03 00 00 */	cmplwi r3, 0
/* 80B12F8C  41 82 00 18 */	beq lbl_80B12FA4
/* 80B12F90  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80B12F94  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 80B12F98  41 82 00 0C */	beq lbl_80B12FA4
/* 80B12F9C  7F 83 E3 78 */	mr r3, r28
/* 80B12FA0  4B FF E1 FD */	bl mode_init_boomCarry__FP14npc_tkj2_class
lbl_80B12FA4:
/* 80B12FA4  7F 83 E3 78 */	mr r3, r28
/* 80B12FA8  4B FF FD 79 */	bl ObjHit__FP14npc_tkj2_class
/* 80B12FAC  48 00 01 68 */	b lbl_80B13114
lbl_80B12FB0:
/* 80B12FB0  7F 83 E3 78 */	mr r3, r28
/* 80B12FB4  4B FF F2 F9 */	bl npc_tkj2_carry__FP14npc_tkj2_class
/* 80B12FB8  7C 79 1B 78 */	mr r25, r3
/* 80B12FBC  48 00 01 58 */	b lbl_80B13114
lbl_80B12FC0:
/* 80B12FC0  7F 83 E3 78 */	mr r3, r28
/* 80B12FC4  4B FF F6 0D */	bl npc_tkj2_fly__FP14npc_tkj2_class
/* 80B12FC8  48 00 01 4C */	b lbl_80B13114
lbl_80B12FCC:
/* 80B12FCC  7F 83 E3 78 */	mr r3, r28
/* 80B12FD0  4B FF F7 81 */	bl npc_tkj2_drop__FP14npc_tkj2_class
/* 80B12FD4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80B12FD8  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 80B12FDC  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 80B12FE0  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80B12FE4  4B 75 CA 58 */	b cLib_addCalc2__FPffff
/* 80B12FE8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B12FEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B12FF0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B12FF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B12FF8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B12FFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B13000  7F 83 E3 78 */	mr r3, r28
/* 80B13004  38 81 00 20 */	addi r4, r1, 0x20
/* 80B13008  4B FF EC 41 */	bl GndCheck__FP14npc_tkj2_class4cXyz
/* 80B1300C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B13010  41 82 01 04 */	beq lbl_80B13114
/* 80B13014  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80B13018  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80B1301C  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80B13020  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80B13024  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80B13028  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 80B1302C  38 00 00 00 */	li r0, 0
/* 80B13030  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B13034  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B13038  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1303C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80B13040  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B13044  38 00 00 04 */	li r0, 4
/* 80B13048  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B1304C  7F 83 E3 78 */	mr r3, r28
/* 80B13050  4B FF EA 61 */	bl GndCheck2__FP14npc_tkj2_class
/* 80B13054  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B13058  41 82 00 1C */	beq lbl_80B13074
/* 80B1305C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B13060  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80B13064  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B13068  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80B1306C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B13070  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
lbl_80B13074:
/* 80B13074  7F 83 E3 78 */	mr r3, r28
/* 80B13078  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B1307C  4B 50 76 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B13080  3C 63 00 01 */	addis r3, r3, 1
/* 80B13084  38 03 80 00 */	addi r0, r3, -32768
/* 80B13088  B0 1C 05 C4 */	sth r0, 0x5c4(r28)
/* 80B1308C  38 00 05 00 */	li r0, 0x500
/* 80B13090  B0 1C 05 F8 */	sth r0, 0x5f8(r28)
/* 80B13094  48 00 00 80 */	b lbl_80B13114
lbl_80B13098:
/* 80B13098  7F 83 E3 78 */	mr r3, r28
/* 80B1309C  4B FF F6 B5 */	bl npc_tkj2_drop__FP14npc_tkj2_class
/* 80B130A0  7F 83 E3 78 */	mr r3, r28
/* 80B130A4  4B FF EA 0D */	bl GndCheck2__FP14npc_tkj2_class
/* 80B130A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B130AC  41 82 00 68 */	beq lbl_80B13114
/* 80B130B0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B130B4  D0 1C 05 B8 */	stfs f0, 0x5b8(r28)
/* 80B130B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B130BC  D0 1C 05 BC */	stfs f0, 0x5bc(r28)
/* 80B130C0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B130C4  D0 1C 05 C0 */	stfs f0, 0x5c0(r28)
/* 80B130C8  38 00 00 00 */	li r0, 0
/* 80B130CC  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B130D0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B130D4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B130D8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80B130DC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B130E0  38 00 00 04 */	li r0, 4
/* 80B130E4  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B130E8  38 00 05 00 */	li r0, 0x500
/* 80B130EC  B0 1C 05 F8 */	sth r0, 0x5f8(r28)
/* 80B130F0  7F 83 E3 78 */	mr r3, r28
/* 80B130F4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B130F8  4B 50 76 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B130FC  3C 63 00 01 */	addis r3, r3, 1
/* 80B13100  38 03 80 00 */	addi r0, r3, -32768
/* 80B13104  B0 1C 05 C4 */	sth r0, 0x5c4(r28)
/* 80B13108  48 00 00 0C */	b lbl_80B13114
lbl_80B1310C:
/* 80B1310C  7F 83 E3 78 */	mr r3, r28
/* 80B13110  4B FF F7 01 */	bl npc_tkj2_return__FP14npc_tkj2_class
lbl_80B13114:
/* 80B13114  7F 83 E3 78 */	mr r3, r28
/* 80B13118  4B FF E0 DD */	bl Wind_effect__FP14npc_tkj2_class
/* 80B1311C  38 7C 05 30 */	addi r3, r28, 0x530
/* 80B13120  C0 3C 05 D0 */	lfs f1, 0x5d0(r28)
/* 80B13124  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 80B13128  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80B1312C  C0 9E 00 08 */	lfs f4, 8(r30)
/* 80B13130  4B 75 C8 4C */	b cLib_addCalc__FPfffff
/* 80B13134  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 80B13138  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80B1313C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B13140  40 80 00 0C */	bge lbl_80B1314C
/* 80B13144  38 00 00 01 */	li r0, 1
/* 80B13148  98 1C 0A 8C */	stb r0, 0xa8c(r28)
lbl_80B1314C:
/* 80B1314C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80B13150  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80B13154  41 82 00 10 */	beq lbl_80B13164
/* 80B13158  38 00 00 01 */	li r0, 1
/* 80B1315C  98 1C 05 EA */	stb r0, 0x5ea(r28)
/* 80B13160  48 00 00 AC */	b lbl_80B1320C
lbl_80B13164:
/* 80B13164  88 1C 05 EA */	lbz r0, 0x5ea(r28)
/* 80B13168  28 00 00 00 */	cmplwi r0, 0
/* 80B1316C  41 82 00 A0 */	beq lbl_80B1320C
/* 80B13170  38 00 00 00 */	li r0, 0
/* 80B13174  98 1C 05 EA */	stb r0, 0x5ea(r28)
/* 80B13178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B1317C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B13180  80 63 5F 1C */	lwz r3, 0x5f1c(r3)
/* 80B13184  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80B13188  40 82 00 0C */	bne lbl_80B13194
/* 80B1318C  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80B13190  41 82 00 28 */	beq lbl_80B131B8
lbl_80B13194:
/* 80B13194  38 00 00 03 */	li r0, 3
/* 80B13198  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B1319C  38 00 00 00 */	li r0, 0
/* 80B131A0  98 1C 06 30 */	stb r0, 0x630(r28)
/* 80B131A4  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B131A8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B131AC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B131B0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B131B4  48 00 00 58 */	b lbl_80B1320C
lbl_80B131B8:
/* 80B131B8  7F A3 EB 78 */	mr r3, r29
/* 80B131BC  7F 84 E3 78 */	mr r4, r28
/* 80B131C0  38 A0 00 00 */	li r5, 0
/* 80B131C4  38 C0 00 01 */	li r6, 1
/* 80B131C8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B131CC  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 80B131D0  7D 89 03 A6 */	mtctr r12
/* 80B131D4  4E 80 04 21 */	bctrl 
/* 80B131D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B131DC  41 82 00 30 */	beq lbl_80B1320C
/* 80B131E0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B131E4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B131E8  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B131EC  38 00 00 01 */	li r0, 1
/* 80B131F0  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B131F4  38 00 00 00 */	li r0, 0
/* 80B131F8  98 1C 06 30 */	stb r0, 0x630(r28)
/* 80B131FC  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B13200  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13204  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B13208  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80B1320C:
/* 80B1320C  7F 60 07 75 */	extsb. r0, r27
/* 80B13210  41 82 00 9C */	beq lbl_80B132AC
/* 80B13214  88 1C 06 30 */	lbz r0, 0x630(r28)
/* 80B13218  28 00 00 00 */	cmplwi r0, 0
/* 80B1321C  40 82 00 90 */	bne lbl_80B132AC
/* 80B13220  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B13224  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B13228  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B1322C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B13230  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B13234  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B13238  7F 83 E3 78 */	mr r3, r28
/* 80B1323C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B13240  4B FF EA 09 */	bl GndCheck__FP14npc_tkj2_class4cXyz
/* 80B13244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B13248  41 82 00 2C */	beq lbl_80B13274
/* 80B1324C  38 60 00 00 */	li r3, 0
/* 80B13250  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 80B13254  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80B13258  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1325C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80B13260  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B13264  38 00 00 02 */	li r0, 2
/* 80B13268  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B1326C  B0 7C 06 0A */	sth r3, 0x60a(r28)
/* 80B13270  48 00 00 3C */	b lbl_80B132AC
lbl_80B13274:
/* 80B13274  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B13278  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80B1327C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B13280  4C 40 13 82 */	cror 2, 0, 2
/* 80B13284  40 82 00 28 */	bne lbl_80B132AC
/* 80B13288  38 00 00 03 */	li r0, 3
/* 80B1328C  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B13290  38 00 00 00 */	li r0, 0
/* 80B13294  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B13298  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B1329C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B132A0  3B 40 00 01 */	li r26, 1
/* 80B132A4  38 00 00 0F */	li r0, 0xf
/* 80B132A8  B0 1C 06 10 */	sth r0, 0x610(r28)
lbl_80B132AC:
/* 80B132AC  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80B132B0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B132B4  38 A0 00 02 */	li r5, 2
/* 80B132B8  38 C0 20 00 */	li r6, 0x2000
/* 80B132BC  4B 75 D3 4C */	b cLib_addCalcAngleS2__FPssss
/* 80B132C0  88 1C 06 30 */	lbz r0, 0x630(r28)
/* 80B132C4  28 00 00 00 */	cmplwi r0, 0
/* 80B132C8  40 82 00 A0 */	bne lbl_80B13368
/* 80B132CC  41 82 00 20 */	beq lbl_80B132EC
/* 80B132D0  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 80B132D4  4B 4F 9C 38 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B132D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B132DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B132E0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B132E4  4B 4F 91 50 */	b mDoMtx_YrotM__FPA4_fs
/* 80B132E8  48 00 00 14 */	b lbl_80B132FC
lbl_80B132EC:
/* 80B132EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B132F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B132F4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B132F8  4B 4F 90 E4 */	b mDoMtx_YrotS__FPA4_fs
lbl_80B132FC:
/* 80B132FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13300  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B13304  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B13308  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80B1330C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B13310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B13314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B13318  38 81 00 44 */	addi r4, r1, 0x44
/* 80B1331C  38 A1 00 38 */	addi r5, r1, 0x38
/* 80B13320  4B 83 3A 4C */	b PSMTXMultVec
/* 80B13324  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B13328  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80B1332C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B13330  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80B13334  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B13338  38 9C 04 F8 */	addi r4, r28, 0x4f8
/* 80B1333C  7C 65 1B 78 */	mr r5, r3
/* 80B13340  4B 83 3D 50 */	b PSVECAdd
/* 80B13344  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B13348  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 80B1334C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B13350  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B13354  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B13358  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80B1335C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B13360  40 80 00 08 */	bge lbl_80B13368
/* 80B13364  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_80B13368:
/* 80B13368  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80B1336C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80B13370  40 82 00 3C */	bne lbl_80B133AC
/* 80B13374  34 7C 08 50 */	addic. r3, r28, 0x850
/* 80B13378  41 82 00 34 */	beq lbl_80B133AC
/* 80B1337C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80B13380  C0 03 00 00 */	lfs f0, 0(r3)
/* 80B13384  EC 01 00 2A */	fadds f0, f1, f0
/* 80B13388  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B1338C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80B13390  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B13394  EC 01 00 2A */	fadds f0, f1, f0
/* 80B13398  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B1339C  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80B133A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B133A4  EC 01 00 2A */	fadds f0, f1, f0
/* 80B133A8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_80B133AC:
/* 80B133AC  7F 20 07 75 */	extsb. r0, r25
/* 80B133B0  41 82 00 18 */	beq lbl_80B133C8
/* 80B133B4  38 7C 06 74 */	addi r3, r28, 0x674
/* 80B133B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B133BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B133C0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B133C4  4B 56 36 E8 */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80B133C8:
/* 80B133C8  A8 1C 06 14 */	lha r0, 0x614(r28)
/* 80B133CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B133D0  40 82 00 2C */	bne lbl_80B133FC
/* 80B133D4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80B133D8  4B 75 45 7C */	b cM_rndF__Ff
/* 80B133DC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80B133E0  EC 00 08 2A */	fadds f0, f0, f1
/* 80B133E4  FC 00 00 1E */	fctiwz f0, f0
/* 80B133E8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80B133EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B133F0  B0 1C 06 14 */	sth r0, 0x614(r28)
/* 80B133F4  38 00 00 08 */	li r0, 8
/* 80B133F8  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
lbl_80B133FC:
/* 80B133FC  A8 7C 05 E8 */	lha r3, 0x5e8(r28)
/* 80B13400  2C 03 00 00 */	cmpwi r3, 0
/* 80B13404  41 82 00 4C */	beq lbl_80B13450
/* 80B13408  38 03 FF FF */	addi r0, r3, -1
/* 80B1340C  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
/* 80B13410  A8 1C 05 E8 */	lha r0, 0x5e8(r28)
/* 80B13414  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 80B13418  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B1341C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B13420  3C 00 43 30 */	lis r0, 0x4330
/* 80B13424  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B13428  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80B1342C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B13430  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 80B13434  C0 3C 05 E4 */	lfs f1, 0x5e4(r28)
/* 80B13438  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80B1343C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B13440  40 81 00 18 */	ble lbl_80B13458
/* 80B13444  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13448  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
/* 80B1344C  48 00 00 0C */	b lbl_80B13458
lbl_80B13450:
/* 80B13450  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13454  D0 1C 05 E4 */	stfs f0, 0x5e4(r28)
lbl_80B13458:
/* 80B13458  3B 20 00 00 */	li r25, 0
/* 80B1345C  3B 60 00 00 */	li r27, 0
/* 80B13460  88 1C 0A 8C */	lbz r0, 0xa8c(r28)
/* 80B13464  7C 00 07 75 */	extsb. r0, r0
/* 80B13468  41 82 01 1C */	beq lbl_80B13584
/* 80B1346C  38 61 00 08 */	addi r3, r1, 8
/* 80B13470  38 9D 05 38 */	addi r4, r29, 0x538
/* 80B13474  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B13478  4B 75 36 BC */	b __mi__4cXyzCFRC3Vec
/* 80B1347C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80B13480  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B13484  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80B13488  D0 61 00 48 */	stfs f3, 0x48(r1)
/* 80B1348C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B13490  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 80B13494  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B13498  EC 03 00 2A */	fadds f0, f3, f0
/* 80B1349C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B134A0  A8 7C 05 CC */	lha r3, 0x5cc(r28)
/* 80B134A4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80B134A8  7C 03 00 50 */	subf r0, r3, r0
/* 80B134AC  7C 00 07 34 */	extsh r0, r0
/* 80B134B0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80B134B4  40 80 00 88 */	bge lbl_80B1353C
/* 80B134B8  2C 00 C0 00 */	cmpwi r0, -16384
/* 80B134BC  40 81 00 80 */	ble lbl_80B1353C
/* 80B134C0  4B 75 41 B4 */	b cM_atan2s__Fff
/* 80B134C4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80B134C8  7C 00 18 50 */	subf r0, r0, r3
/* 80B134CC  7C 19 07 34 */	extsh r25, r0
/* 80B134D0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B134D4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80B134D8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B134DC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80B134E0  EC 41 00 2A */	fadds f2, f1, f0
/* 80B134E4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B134E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80B134EC  40 81 00 0C */	ble lbl_80B134F8
/* 80B134F0  FC 00 10 34 */	frsqrte f0, f2
/* 80B134F4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80B134F8:
/* 80B134F8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80B134FC  4B 75 41 78 */	b cM_atan2s__Fff
/* 80B13500  7C 7B 07 34 */	extsh r27, r3
/* 80B13504  2C 19 23 28 */	cmpwi r25, 0x2328
/* 80B13508  40 81 00 0C */	ble lbl_80B13514
/* 80B1350C  3B 20 23 28 */	li r25, 0x2328
/* 80B13510  48 00 00 10 */	b lbl_80B13520
lbl_80B13514:
/* 80B13514  2C 19 DC D8 */	cmpwi r25, -9000
/* 80B13518  40 80 00 08 */	bge lbl_80B13520
/* 80B1351C  3B 20 DC D8 */	li r25, -9000
lbl_80B13520:
/* 80B13520  2C 1B 17 70 */	cmpwi r27, 0x1770
/* 80B13524  40 81 00 0C */	ble lbl_80B13530
/* 80B13528  3B 60 17 70 */	li r27, 0x1770
/* 80B1352C  48 00 00 10 */	b lbl_80B1353C
lbl_80B13530:
/* 80B13530  2C 1B E8 90 */	cmpwi r27, -6000
/* 80B13534  40 80 00 08 */	bge lbl_80B1353C
/* 80B13538  3B 60 E8 90 */	li r27, -6000
lbl_80B1353C:
/* 80B1353C  A8 1C 06 16 */	lha r0, 0x616(r28)
/* 80B13540  2C 00 00 00 */	cmpwi r0, 0
/* 80B13544  40 82 00 48 */	bne lbl_80B1358C
/* 80B13548  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 80B1354C  4B 75 44 08 */	b cM_rndF__Ff
/* 80B13550  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80B13554  EC 00 08 2A */	fadds f0, f0, f1
/* 80B13558  FC 00 00 1E */	fctiwz f0, f0
/* 80B1355C  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80B13560  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B13564  B0 1C 06 16 */	sth r0, 0x616(r28)
/* 80B13568  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80B1356C  4B 75 44 20 */	b cM_rndFX__Ff
/* 80B13570  FC 00 08 1E */	fctiwz f0, f1
/* 80B13574  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B13578  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B1357C  B0 1C 0A 94 */	sth r0, 0xa94(r28)
/* 80B13580  48 00 00 0C */	b lbl_80B1358C
lbl_80B13584:
/* 80B13584  38 00 00 00 */	li r0, 0
/* 80B13588  B0 1C 0A 94 */	sth r0, 0xa94(r28)
lbl_80B1358C:
/* 80B1358C  38 7C 0A 8E */	addi r3, r28, 0xa8e
/* 80B13590  7F 24 CB 78 */	mr r4, r25
/* 80B13594  38 A0 00 02 */	li r5, 2
/* 80B13598  38 C0 06 00 */	li r6, 0x600
/* 80B1359C  4B 75 D0 6C */	b cLib_addCalcAngleS2__FPssss
/* 80B135A0  38 7C 0A 90 */	addi r3, r28, 0xa90
/* 80B135A4  7F 64 DB 78 */	mr r4, r27
/* 80B135A8  38 A0 00 02 */	li r5, 2
/* 80B135AC  38 C0 06 00 */	li r6, 0x600
/* 80B135B0  4B 75 D0 58 */	b cLib_addCalcAngleS2__FPssss
/* 80B135B4  38 7C 0A 92 */	addi r3, r28, 0xa92
/* 80B135B8  A8 9C 0A 94 */	lha r4, 0xa94(r28)
/* 80B135BC  38 A0 00 04 */	li r5, 4
/* 80B135C0  38 C0 01 2C */	li r6, 0x12c
/* 80B135C4  4B 75 D0 44 */	b cLib_addCalcAngleS2__FPssss
/* 80B135C8  88 1C 05 F2 */	lbz r0, 0x5f2(r28)
/* 80B135CC  28 00 00 00 */	cmplwi r0, 0
/* 80B135D0  41 82 01 4C */	beq lbl_80B1371C
/* 80B135D4  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 80B135D8  38 80 00 00 */	li r4, 0
/* 80B135DC  38 A0 01 00 */	li r5, 0x100
/* 80B135E0  4B 75 D5 B0 */	b cLib_chaseAngleS__FPsss
/* 80B135E4  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 80B135E8  38 80 00 00 */	li r4, 0
/* 80B135EC  38 A0 01 00 */	li r5, 0x100
/* 80B135F0  4B 75 D5 A0 */	b cLib_chaseAngleS__FPsss
/* 80B135F4  88 1C 05 F3 */	lbz r0, 0x5f3(r28)
/* 80B135F8  28 00 00 00 */	cmplwi r0, 0
/* 80B135FC  41 82 00 C8 */	beq lbl_80B136C4
/* 80B13600  80 7D 05 80 */	lwz r3, 0x580(r29)
/* 80B13604  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80B13608  40 82 00 0C */	bne lbl_80B13614
/* 80B1360C  54 60 04 21 */	rlwinm. r0, r3, 0, 0x10, 0x10
/* 80B13610  41 82 00 2C */	beq lbl_80B1363C
lbl_80B13614:
/* 80B13614  38 00 00 00 */	li r0, 0
/* 80B13618  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B1361C  98 1C 06 30 */	stb r0, 0x630(r28)
/* 80B13620  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B13624  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13628  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1362C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B13630  98 1C 05 F2 */	stb r0, 0x5f2(r28)
/* 80B13634  98 1C 05 F3 */	stb r0, 0x5f3(r28)
/* 80B13638  48 00 00 E4 */	b lbl_80B1371C
lbl_80B1363C:
/* 80B1363C  7F A3 EB 78 */	mr r3, r29
/* 80B13640  7F 84 E3 78 */	mr r4, r28
/* 80B13644  38 A0 00 00 */	li r5, 0
/* 80B13648  38 C0 00 01 */	li r6, 1
/* 80B1364C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B13650  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 80B13654  7D 89 03 A6 */	mtctr r12
/* 80B13658  4E 80 04 21 */	bctrl 
/* 80B1365C  2C 03 00 00 */	cmpwi r3, 0
/* 80B13660  41 82 00 3C */	beq lbl_80B1369C
/* 80B13664  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B13668  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B1366C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B13670  38 00 00 01 */	li r0, 1
/* 80B13674  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B13678  38 00 00 00 */	li r0, 0
/* 80B1367C  98 1C 06 30 */	stb r0, 0x630(r28)
/* 80B13680  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B13684  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B13688  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B1368C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B13690  98 1C 05 F2 */	stb r0, 0x5f2(r28)
/* 80B13694  98 1C 05 F3 */	stb r0, 0x5f3(r28)
/* 80B13698  48 00 00 84 */	b lbl_80B1371C
lbl_80B1369C:
/* 80B1369C  38 00 00 00 */	li r0, 0
/* 80B136A0  B0 1C 06 08 */	sth r0, 0x608(r28)
/* 80B136A4  98 1C 06 30 */	stb r0, 0x630(r28)
/* 80B136A8  B0 1C 06 0A */	sth r0, 0x60a(r28)
/* 80B136AC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80B136B0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B136B4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B136B8  98 1C 05 F2 */	stb r0, 0x5f2(r28)
/* 80B136BC  98 1C 05 F3 */	stb r0, 0x5f3(r28)
/* 80B136C0  48 00 00 5C */	b lbl_80B1371C
lbl_80B136C4:
/* 80B136C4  C0 3C 05 C8 */	lfs f1, 0x5c8(r28)
/* 80B136C8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B136CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B136D0  40 80 00 10 */	bge lbl_80B136E0
/* 80B136D4  38 00 00 01 */	li r0, 1
/* 80B136D8  98 1C 05 F3 */	stb r0, 0x5f3(r28)
/* 80B136DC  48 00 00 40 */	b lbl_80B1371C
lbl_80B136E0:
/* 80B136E0  38 7C 06 24 */	addi r3, r28, 0x624
/* 80B136E4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B136E8  38 BC 04 E6 */	addi r5, r28, 0x4e6
/* 80B136EC  38 C0 00 00 */	li r6, 0
/* 80B136F0  38 E0 1C 00 */	li r7, 0x1c00
/* 80B136F4  4B 64 AF 60 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80B136F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B136FC  41 82 00 20 */	beq lbl_80B1371C
/* 80B13700  38 7C 06 24 */	addi r3, r28, 0x624
/* 80B13704  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B13708  4B 64 B1 74 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80B1370C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80B13710  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80B13714  EC 01 00 2A */	fadds f0, f1, f0
/* 80B13718  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
lbl_80B1371C:
/* 80B1371C  A8 1C 06 08 */	lha r0, 0x608(r28)
/* 80B13720  2C 00 00 01 */	cmpwi r0, 1
/* 80B13724  41 82 00 0C */	beq lbl_80B13730
/* 80B13728  7F 83 E3 78 */	mr r3, r28
/* 80B1372C  4B FF DA 05 */	bl npc_tkj2_carry_check__FP14npc_tkj2_class
lbl_80B13730:
/* 80B13730  2C 1A 00 00 */	cmpwi r26, 0
/* 80B13734  41 82 00 14 */	beq lbl_80B13748
/* 80B13738  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B1373C  60 00 00 10 */	ori r0, r0, 0x10
/* 80B13740  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80B13744  48 00 00 10 */	b lbl_80B13754
lbl_80B13748:
/* 80B13748  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80B1374C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80B13750  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80B13754:
/* 80B13754  39 61 00 80 */	addi r11, r1, 0x80
/* 80B13758  4B 84 EA C0 */	b _restgpr_25
/* 80B1375C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B13760  7C 08 03 A6 */	mtlr r0
/* 80B13764  38 21 00 80 */	addi r1, r1, 0x80
/* 80B13768  4E 80 00 20 */	blr 
