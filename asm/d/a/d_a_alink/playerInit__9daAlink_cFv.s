lbl_800A4CB4:
/* 800A4CB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800A4CB8  7C 08 02 A6 */	mflr r0
/* 800A4CBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 800A4CC0  39 61 00 30 */	addi r11, r1, 0x30
/* 800A4CC4  48 2B D4 FD */	bl _savegpr_22
/* 800A4CC8  7C 77 1B 78 */	mr r23, r3
/* 800A4CCC  3C 60 80 3B */	lis r3, cNullVec__6Z2Calc@ha /* 0x803AF990@ha */
/* 800A4CD0  3B 63 F9 90 */	addi r27, r3, cNullVec__6Z2Calc@l /* 0x803AF990@l */
/* 800A4CD4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A4CD8  D0 17 34 34 */	stfs f0, 0x3434(r23)
/* 800A4CDC  48 01 B6 35 */	bl checkDungeon__9daAlink_cFv
/* 800A4CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A4CE4  40 82 00 3C */	bne lbl_800A4D20
/* 800A4CE8  48 01 B5 E1 */	bl checkBossRoom__9daAlink_cFv
/* 800A4CEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A4CF0  40 82 00 30 */	bne lbl_800A4D20
/* 800A4CF4  38 60 00 25 */	li r3, 0x25
/* 800A4CF8  38 80 00 01 */	li r4, 1
/* 800A4CFC  4B FF 31 E5 */	bl checkItemGet__FUci
/* 800A4D00  2C 03 00 00 */	cmpwi r3, 0
/* 800A4D04  41 82 00 1C */	beq lbl_800A4D20
/* 800A4D08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A4D0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A4D10  38 63 00 9C */	addi r3, r3, 0x9c
/* 800A4D14  38 80 00 12 */	li r4, 0x12
/* 800A4D18  38 A0 00 2D */	li r5, 0x2d
/* 800A4D1C  4B F8 E2 9D */	bl setItem__17dSv_player_item_cFiUc
lbl_800A4D20:
/* 800A4D20  3B 37 08 50 */	addi r25, r23, 0x850
/* 800A4D24  3B 17 0C 04 */	addi r24, r23, 0xc04
/* 800A4D28  3B 40 00 00 */	li r26, 0
/* 800A4D2C  3B 97 08 14 */	addi r28, r23, 0x814
/* 800A4D30  3B B7 30 6C */	addi r29, r23, 0x306c
/* 800A4D34  3C 60 80 0A */	lis r3, daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8009D88C@ha */
/* 800A4D38  3B C3 D8 8C */	addi r30, r3, daAlink_tgHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8009D88C@l */
/* 800A4D3C  3C 60 80 0A */	lis r3, daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x8009D8B8@ha */
/* 800A4D40  3B E3 D8 B8 */	addi r31, r3, daAlink_coHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x8009D8B8@l */
/* 800A4D44  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFFFF@ha */
/* 800A4D48  3A C3 FF FF */	addi r22, r3, 0xFFFF /* 0xD8FBFFFF@l */
/* 800A4D4C  48 00 00 78 */	b lbl_800A4DC4
lbl_800A4D50:
/* 800A4D50  7F 23 CB 78 */	mr r3, r25
/* 800A4D54  38 9B 2D C4 */	addi r4, r27, 0x2dc4
/* 800A4D58  4B FD FB 5D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 800A4D5C  93 99 00 44 */	stw r28, 0x44(r25)
/* 800A4D60  80 19 00 9C */	lwz r0, 0x9c(r25)
/* 800A4D64  60 00 00 02 */	ori r0, r0, 2
/* 800A4D68  90 19 00 9C */	stw r0, 0x9c(r25)
/* 800A4D6C  93 B9 00 E0 */	stw r29, 0xe0(r25)
/* 800A4D70  93 D9 00 A4 */	stw r30, 0xa4(r25)
/* 800A4D74  93 F9 00 F0 */	stw r31, 0xf0(r25)
/* 800A4D78  7F 03 C3 78 */	mr r3, r24
/* 800A4D7C  38 9B 2D C4 */	addi r4, r27, 0x2dc4
/* 800A4D80  4B FD FB 35 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 800A4D84  93 98 00 44 */	stw r28, 0x44(r24)
/* 800A4D88  80 18 00 2C */	lwz r0, 0x2c(r24)
/* 800A4D8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800A4D90  90 18 00 2C */	stw r0, 0x2c(r24)
/* 800A4D94  38 00 00 03 */	li r0, 3
/* 800A4D98  98 18 00 B9 */	stb r0, 0xb9(r24)
/* 800A4D9C  80 18 00 9C */	lwz r0, 0x9c(r24)
/* 800A4DA0  60 00 00 04 */	ori r0, r0, 4
/* 800A4DA4  90 18 00 9C */	stw r0, 0x9c(r24)
/* 800A4DA8  92 D8 00 28 */	stw r22, 0x28(r24)
/* 800A4DAC  80 18 00 18 */	lwz r0, 0x18(r24)
/* 800A4DB0  60 00 00 20 */	ori r0, r0, 0x20
/* 800A4DB4  90 18 00 18 */	stw r0, 0x18(r24)
/* 800A4DB8  3B 5A 00 01 */	addi r26, r26, 1
/* 800A4DBC  3B 39 01 3C */	addi r25, r25, 0x13c
/* 800A4DC0  3B 18 01 3C */	addi r24, r24, 0x13c
lbl_800A4DC4:
/* 800A4DC4  57 40 04 3E */	clrlwi r0, r26, 0x10
/* 800A4DC8  28 00 00 03 */	cmplwi r0, 3
/* 800A4DCC  41 80 FF 84 */	blt lbl_800A4D50
/* 800A4DD0  38 77 0B EC */	addi r3, r23, 0xbec
/* 800A4DD4  C0 22 94 68 */	lfs f1, lit_14955(r2)
/* 800A4DD8  48 1C A4 21 */	bl SetH__8cM3dGCylFf
/* 800A4DDC  38 77 0A B0 */	addi r3, r23, 0xab0
/* 800A4DE0  C0 22 94 68 */	lfs f1, lit_14955(r2)
/* 800A4DE4  48 1C A4 15 */	bl SetH__8cM3dGCylFf
/* 800A4DE8  38 77 0F B8 */	addi r3, r23, 0xfb8
/* 800A4DEC  38 9B 2E 08 */	addi r4, r27, 0x2e08
/* 800A4DF0  4B FD FC 45 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 800A4DF4  38 17 08 14 */	addi r0, r23, 0x814
/* 800A4DF8  90 17 0F FC */	stw r0, 0xffc(r23)
/* 800A4DFC  38 77 0F B8 */	addi r3, r23, 0xfb8
/* 800A4E00  38 97 04 D0 */	addi r4, r23, 0x4d0
/* 800A4E04  4B FD FC 75 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 800A4E08  3C 00 00 02 */	lis r0, 2
/* 800A4E0C  90 17 20 F8 */	stw r0, 0x20f8(r23)
/* 800A4E10  38 77 20 F0 */	addi r3, r23, 0x20f0
/* 800A4E14  38 80 00 04 */	li r4, 4
/* 800A4E18  48 0B 9F E9 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A4E1C  80 17 05 74 */	lwz r0, 0x574(r23)
/* 800A4E20  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A4E24  41 82 00 10 */	beq lbl_800A4E34
/* 800A4E28  7E E3 BB 78 */	mr r3, r23
/* 800A4E2C  48 08 1A FD */	bl changeWolf__9daAlink_cFv
/* 800A4E30  48 00 00 10 */	b lbl_800A4E40
lbl_800A4E34:
/* 800A4E34  7E E3 BB 78 */	mr r3, r23
/* 800A4E38  38 80 00 00 */	li r4, 0
/* 800A4E3C  48 08 21 01 */	bl changeLink__9daAlink_cFi
lbl_800A4E40:
/* 800A4E40  38 00 0B 00 */	li r0, 0xb00
/* 800A4E44  90 17 21 0C */	stw r0, 0x210c(r23)
/* 800A4E48  38 77 21 04 */	addi r3, r23, 0x2104
/* 800A4E4C  38 80 00 04 */	li r4, 4
/* 800A4E50  48 0B 9F B1 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A4E54  7E E3 BB 78 */	mr r3, r23
/* 800A4E58  48 09 B3 A1 */	bl setShieldModel__9daAlink_cFv
/* 800A4E5C  80 17 06 60 */	lwz r0, 0x660(r23)
/* 800A4E60  90 17 06 B8 */	stw r0, 0x6b8(r23)
/* 800A4E64  80 17 06 64 */	lwz r0, 0x664(r23)
/* 800A4E68  90 17 06 BC */	stw r0, 0x6bc(r23)
/* 800A4E6C  38 77 08 14 */	addi r3, r23, 0x814
/* 800A4E70  38 80 00 78 */	li r4, 0x78
/* 800A4E74  38 A0 00 FF */	li r5, 0xff
/* 800A4E78  7E E6 BB 78 */	mr r6, r23
/* 800A4E7C  4B FD E9 E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 800A4E80  A8 77 04 E6 */	lha r3, 0x4e6(r23)
/* 800A4E84  A8 17 05 9E */	lha r0, 0x59e(r23)
/* 800A4E88  7C 03 02 14 */	add r0, r3, r0
/* 800A4E8C  B0 17 30 6C */	sth r0, 0x306c(r23)
/* 800A4E90  3B 20 00 00 */	li r25, 0
/* 800A4E94  3B 17 08 14 */	addi r24, r23, 0x814
/* 800A4E98  48 00 00 24 */	b lbl_800A4EBC
lbl_800A4E9C:
/* 800A4E9C  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 800A4EA0  1C 00 01 44 */	mulli r0, r0, 0x144
/* 800A4EA4  7E D7 02 14 */	add r22, r23, r0
/* 800A4EA8  38 76 12 2C */	addi r3, r22, 0x122c
/* 800A4EAC  38 9B 2E 8C */	addi r4, r27, 0x2e8c
/* 800A4EB0  4B FD F9 21 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 800A4EB4  93 16 12 70 */	stw r24, 0x1270(r22)
/* 800A4EB8  3B 39 00 01 */	addi r25, r25, 1
lbl_800A4EBC:
/* 800A4EBC  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 800A4EC0  28 00 00 03 */	cmplwi r0, 3
/* 800A4EC4  41 80 FF D8 */	blt lbl_800A4E9C
/* 800A4EC8  38 77 15 F8 */	addi r3, r23, 0x15f8
/* 800A4ECC  38 9B 2E 8C */	addi r4, r27, 0x2e8c
/* 800A4ED0  4B FD F9 01 */	bl Set__8dCcD_CpsFRC11dCcD_SrcCps
/* 800A4ED4  38 17 08 14 */	addi r0, r23, 0x814
/* 800A4ED8  90 17 16 3C */	stw r0, 0x163c(r23)
/* 800A4EDC  38 00 00 10 */	li r0, 0x10
/* 800A4EE0  90 17 16 08 */	stw r0, 0x1608(r23)
/* 800A4EE4  80 17 16 50 */	lwz r0, 0x1650(r23)
/* 800A4EE8  60 00 00 02 */	ori r0, r0, 2
/* 800A4EEC  90 17 16 50 */	stw r0, 0x1650(r23)
/* 800A4EF0  38 00 00 00 */	li r0, 0
/* 800A4EF4  98 17 16 6E */	stb r0, 0x166e(r23)
/* 800A4EF8  98 17 16 0C */	stb r0, 0x160c(r23)
/* 800A4EFC  38 77 10 F0 */	addi r3, r23, 0x10f0
/* 800A4F00  38 9B 2E 48 */	addi r4, r27, 0x2e48
/* 800A4F04  4B FD F9 B1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 800A4F08  38 17 08 14 */	addi r0, r23, 0x814
/* 800A4F0C  90 17 11 34 */	stw r0, 0x1134(r23)
/* 800A4F10  38 77 19 70 */	addi r3, r23, 0x1970
/* 800A4F14  7E E4 BB 78 */	mr r4, r23
/* 800A4F18  38 A0 00 03 */	li r5, 3
/* 800A4F1C  38 D7 18 B0 */	addi r6, r23, 0x18b0
/* 800A4F20  4B FD 13 69 */	bl Set__9dBgS_AcchFP10fopAc_ac_ciP12dBgS_AcchCir
/* 800A4F24  80 17 19 9C */	lwz r0, 0x199c(r23)
/* 800A4F28  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 800A4F2C  90 17 19 9C */	stw r0, 0x199c(r23)
/* 800A4F30  C0 02 93 5C */	lfs f0, lit_8322(r2)
/* 800A4F34  D0 17 1A 40 */	stfs f0, 0x1a40(r23)
/* 800A4F38  80 17 19 9C */	lwz r0, 0x199c(r23)
/* 800A4F3C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800A4F40  90 17 19 9C */	stw r0, 0x199c(r23)
/* 800A4F44  80 17 19 9C */	lwz r0, 0x199c(r23)
/* 800A4F48  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800A4F4C  90 17 19 9C */	stw r0, 0x199c(r23)
/* 800A4F50  C0 17 05 98 */	lfs f0, 0x598(r23)
/* 800A4F54  D0 17 1A 38 */	stfs f0, 0x1a38(r23)
/* 800A4F58  38 77 19 70 */	addi r3, r23, 0x1970
/* 800A4F5C  4B FD 24 65 */	bl SetGndThinCellingOff__9dBgS_AcchFv
/* 800A4F60  38 00 00 02 */	li r0, 2
/* 800A4F64  98 17 1B 44 */	stb r0, 0x1b44(r23)
/* 800A4F68  38 77 19 70 */	addi r3, r23, 0x1970
/* 800A4F6C  4B FD 24 81 */	bl OnWallSort__9dBgS_AcchFv
/* 800A4F70  38 77 18 B0 */	addi r3, r23, 0x18b0
/* 800A4F74  C0 2D 81 10 */	lfs f1, l_autoUpHeight(r13)
/* 800A4F78  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 800A4F7C  4B FD 0F DD */	bl SetWall__12dBgS_AcchCirFff
/* 800A4F80  38 77 18 F0 */	addi r3, r23, 0x18f0
/* 800A4F84  C0 22 94 84 */	lfs f1, lit_16037(r2)
/* 800A4F88  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 800A4F8C  4B FD 0F CD */	bl SetWall__12dBgS_AcchCirFff
/* 800A4F90  38 77 19 30 */	addi r3, r23, 0x1930
/* 800A4F94  C0 37 05 98 */	lfs f1, 0x598(r23)
/* 800A4F98  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 800A4F9C  4B FD 0F BD */	bl SetWall__12dBgS_AcchCirFff
/* 800A4FA0  A8 17 04 E6 */	lha r0, 0x4e6(r23)
/* 800A4FA4  B0 17 2F E6 */	sth r0, 0x2fe6(r23)
/* 800A4FA8  3A C0 00 00 */	li r22, 0
/* 800A4FAC  48 00 00 30 */	b lbl_800A4FDC
lbl_800A4FB0:
/* 800A4FB0  80 77 1F 64 */	lwz r3, 0x1f64(r23)
/* 800A4FB4  56 C4 04 3E */	clrlwi r4, r22, 0x10
/* 800A4FB8  1C 04 2C 00 */	mulli r0, r4, 0x2c00
/* 800A4FBC  7C 63 02 14 */	add r3, r3, r0
/* 800A4FC0  1C 04 00 14 */	mulli r0, r4, 0x14
/* 800A4FC4  7C 97 02 14 */	add r4, r23, r0
/* 800A4FC8  90 64 1F 64 */	stw r3, 0x1f64(r4)
/* 800A4FCC  38 64 1F 58 */	addi r3, r4, 0x1f58
/* 800A4FD0  38 80 00 03 */	li r4, 3
/* 800A4FD4  48 0B 9E 2D */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A4FD8  3A D6 00 01 */	addi r22, r22, 1
lbl_800A4FDC:
/* 800A4FDC  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 800A4FE0  28 00 00 03 */	cmplwi r0, 3
/* 800A4FE4  41 80 FF CC */	blt lbl_800A4FB0
/* 800A4FE8  80 77 1F 64 */	lwz r3, 0x1f64(r23)
/* 800A4FEC  3C 63 00 01 */	addis r3, r3, 1
/* 800A4FF0  38 03 84 00 */	addi r0, r3, -31744
/* 800A4FF4  90 17 1F A0 */	stw r0, 0x1fa0(r23)
/* 800A4FF8  3A C0 00 00 */	li r22, 0
/* 800A4FFC  48 00 00 30 */	b lbl_800A502C
lbl_800A5000:
/* 800A5000  80 77 1F A0 */	lwz r3, 0x1fa0(r23)
/* 800A5004  56 C4 04 3E */	clrlwi r4, r22, 0x10
/* 800A5008  1C 04 2C 00 */	mulli r0, r4, 0x2c00
/* 800A500C  7C 63 02 14 */	add r3, r3, r0
/* 800A5010  1C 04 00 14 */	mulli r0, r4, 0x14
/* 800A5014  7C 97 02 14 */	add r4, r23, r0
/* 800A5018  90 64 1F A0 */	stw r3, 0x1fa0(r4)
/* 800A501C  38 64 1F 94 */	addi r3, r4, 0x1f94
/* 800A5020  38 80 00 03 */	li r4, 3
/* 800A5024  48 0B 9D DD */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A5028  3A D6 00 01 */	addi r22, r22, 1
lbl_800A502C:
/* 800A502C  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 800A5030  28 00 00 03 */	cmplwi r0, 3
/* 800A5034  41 80 FF CC */	blt lbl_800A5000
/* 800A5038  38 77 21 18 */	addi r3, r23, 0x2118
/* 800A503C  38 80 00 01 */	li r4, 1
/* 800A5040  48 0B 9D C1 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A5044  38 77 21 2C */	addi r3, r23, 0x212c
/* 800A5048  38 80 00 02 */	li r4, 2
/* 800A504C  48 0B 9D B5 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A5050  38 77 21 40 */	addi r3, r23, 0x2140
/* 800A5054  38 80 00 03 */	li r4, 3
/* 800A5058  48 0B 9D A9 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A505C  3A C0 00 00 */	li r22, 0
/* 800A5060  3C 60 00 01 */	lis r3, 0x0001 /* 0x00013200@ha */
/* 800A5064  3B 03 32 00 */	addi r24, r3, 0x3200 /* 0x00013200@l */
/* 800A5068  48 00 00 24 */	b lbl_800A508C
lbl_800A506C:
/* 800A506C  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 800A5070  1C 00 00 14 */	mulli r0, r0, 0x14
/* 800A5074  7C 77 02 14 */	add r3, r23, r0
/* 800A5078  93 03 21 B8 */	stw r24, 0x21b8(r3)
/* 800A507C  38 63 21 B0 */	addi r3, r3, 0x21b0
/* 800A5080  38 80 00 04 */	li r4, 4
/* 800A5084  48 0B 9D 7D */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A5088  3A D6 00 01 */	addi r22, r22, 1
lbl_800A508C:
/* 800A508C  56 C0 04 3E */	clrlwi r0, r22, 0x10
/* 800A5090  28 00 00 02 */	cmplwi r0, 2
/* 800A5094  41 80 FF D8 */	blt lbl_800A506C
/* 800A5098  38 77 21 D8 */	addi r3, r23, 0x21d8
/* 800A509C  38 80 00 03 */	li r4, 3
/* 800A50A0  48 0B 9D 61 */	bl createHeap__14daPy_anmHeap_cFQ214daPy_anmHeap_c16daAlinkHEAP_TYPE
/* 800A50A4  7E E3 BB 78 */	mr r3, r23
/* 800A50A8  48 01 A4 39 */	bl resetBasAnime__9daAlink_cFv
/* 800A50AC  38 77 2C A8 */	addi r3, r23, 0x2ca8
/* 800A50B0  38 97 04 D0 */	addi r4, r23, 0x4d0
/* 800A50B4  38 B7 05 38 */	addi r5, r23, 0x538
/* 800A50B8  38 D7 37 20 */	addi r6, r23, 0x3720
/* 800A50BC  48 21 E5 7D */	bl init__14Z2CreatureLinkFP3VecP3VecP3Vec
/* 800A50C0  38 77 2C A8 */	addi r3, r23, 0x2ca8
/* 800A50C4  38 97 36 0C */	addi r4, r23, 0x360c
/* 800A50C8  48 21 E6 49 */	bl initKantera__14Z2CreatureLinkFP3Vec
/* 800A50CC  38 77 2C A8 */	addi r3, r23, 0x2ca8
/* 800A50D0  38 80 00 00 */	li r4, 0
/* 800A50D4  48 21 E6 A5 */	bl setKanteraState__14Z2CreatureLinkFUc
/* 800A50D8  38 00 01 60 */	li r0, 0x160
/* 800A50DC  B0 17 2F E8 */	sth r0, 0x2fe8(r23)
/* 800A50E0  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 800A50E4  38 80 00 59 */	li r4, 0x59
/* 800A50E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A50EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A50F0  3F 05 00 02 */	addis r24, r5, 2
/* 800A50F4  3B 18 C2 F8 */	addi r24, r24, -15624
/* 800A50F8  7F 05 C3 78 */	mr r5, r24
/* 800A50FC  38 C0 00 80 */	li r6, 0x80
/* 800A5100  4B F9 71 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A5104  90 77 22 00 */	stw r3, 0x2200(r23)
/* 800A5108  80 77 06 60 */	lwz r3, 0x660(r23)
/* 800A510C  82 C3 00 04 */	lwz r22, 4(r3)
/* 800A5110  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 800A5114  38 80 00 44 */	li r4, 0x44
/* 800A5118  7F 05 C3 78 */	mr r5, r24
/* 800A511C  38 C0 00 80 */	li r6, 0x80
/* 800A5120  4B F9 71 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A5124  90 77 06 C4 */	stw r3, 0x6c4(r23)
/* 800A5128  80 77 06 C4 */	lwz r3, 0x6c4(r23)
/* 800A512C  7E C4 B3 78 */	mr r4, r22
/* 800A5130  48 28 60 A5 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 800A5134  38 76 00 58 */	addi r3, r22, 0x58
/* 800A5138  80 97 06 C4 */	lwz r4, 0x6c4(r23)
/* 800A513C  48 28 AB 89 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 800A5140  80 77 06 68 */	lwz r3, 0x668(r23)
/* 800A5144  82 C3 00 04 */	lwz r22, 4(r3)
/* 800A5148  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 800A514C  38 80 00 45 */	li r4, 0x45
/* 800A5150  7F 05 C3 78 */	mr r5, r24
/* 800A5154  38 C0 00 80 */	li r6, 0x80
/* 800A5158  4B F9 71 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A515C  90 77 06 C8 */	stw r3, 0x6c8(r23)
/* 800A5160  80 77 06 C8 */	lwz r3, 0x6c8(r23)
/* 800A5164  7E C4 B3 78 */	mr r4, r22
/* 800A5168  48 28 60 6D */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 800A516C  38 76 00 58 */	addi r3, r22, 0x58
/* 800A5170  80 97 06 C8 */	lwz r4, 0x6c8(r23)
/* 800A5174  48 28 AB 51 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 800A5178  38 62 92 90 */	la r3, l_arcName(r2) /* 80452C90-_SDA2_BASE_ */
/* 800A517C  38 80 00 3F */	li r4, 0x3f
/* 800A5180  7F 05 C3 78 */	mr r5, r24
/* 800A5184  38 C0 00 80 */	li r6, 0x80
/* 800A5188  4B F9 71 65 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 800A518C  90 77 06 CC */	stw r3, 0x6cc(r23)
/* 800A5190  80 77 06 CC */	lwz r3, 0x6cc(r23)
/* 800A5194  7E C4 B3 78 */	mr r4, r22
/* 800A5198  48 28 66 E5 */	bl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
/* 800A519C  38 76 00 58 */	addi r3, r22, 0x58
/* 800A51A0  80 97 06 CC */	lwz r4, 0x6cc(r23)
/* 800A51A4  48 28 AC CD */	bl entryTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 800A51A8  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800A51AC  D0 17 33 B4 */	stfs f0, 0x33b4(r23)
/* 800A51B0  D0 17 33 B8 */	stfs f0, 0x33b8(r23)
/* 800A51B4  D0 17 33 BC */	stfs f0, 0x33bc(r23)
/* 800A51B8  38 00 00 FF */	li r0, 0xff
/* 800A51BC  B0 17 2F DC */	sth r0, 0x2fdc(r23)
/* 800A51C0  7E E3 BB 78 */	mr r3, r23
/* 800A51C4  48 02 C1 4D */	bl offSwordModel__9daAlink_cFv
/* 800A51C8  38 00 FF FF */	li r0, -1
/* 800A51CC  90 17 31 84 */	stw r0, 0x3184(r23)
/* 800A51D0  38 00 00 3F */	li r0, 0x3f
/* 800A51D4  B0 17 31 12 */	sth r0, 0x3112(r23)
/* 800A51D8  80 17 05 70 */	lwz r0, 0x570(r23)
/* 800A51DC  60 00 01 00 */	ori r0, r0, 0x100
/* 800A51E0  90 17 05 70 */	stw r0, 0x570(r23)
/* 800A51E4  7E E3 BB 78 */	mr r3, r23
/* 800A51E8  48 05 CA AD */	bl offOxygenTimer__9daAlink_cFv
/* 800A51EC  80 17 00 B0 */	lwz r0, 0xb0(r23)
/* 800A51F0  54 05 A6 FE */	rlwinm r5, r0, 0x14, 0x1b, 0x1f
/* 800A51F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 800A51F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A51FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5200  A8 03 4E 08 */	lha r0, 0x4e08(r3)
/* 800A5204  2C 00 FF FE */	cmpwi r0, -2
/* 800A5208  41 82 00 10 */	beq lbl_800A5218
/* 800A520C  7C 00 07 34 */	extsh r0, r0
/* 800A5210  2C 00 FF FD */	cmpwi r0, -3
/* 800A5214  40 82 00 20 */	bne lbl_800A5234
lbl_800A5218:
/* 800A5218  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A521C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A5220  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5224  38 80 FF FF */	li r4, -1
/* 800A5228  4B FA 11 C9 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A522C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5230  48 00 01 78 */	b lbl_800A53A8
lbl_800A5234:
/* 800A5234  2C 00 FF FC */	cmpwi r0, -4
/* 800A5238  40 82 00 18 */	bne lbl_800A5250
/* 800A523C  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5240  38 80 00 D5 */	li r4, 0xd5
/* 800A5244  4B FA 11 AD */	bl setStartDemo__18dEvent_exception_cFi
/* 800A5248  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A524C  48 00 01 5C */	b lbl_800A53A8
lbl_800A5250:
/* 800A5250  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 800A5254  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 800A5258  28 00 00 09 */	cmplwi r0, 9
/* 800A525C  40 82 00 18 */	bne lbl_800A5274
/* 800A5260  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5264  38 80 00 D3 */	li r4, 0xd3
/* 800A5268  4B FA 11 89 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A526C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5270  48 00 01 38 */	b lbl_800A53A8
lbl_800A5274:
/* 800A5274  2C 05 00 0A */	cmpwi r5, 0xa
/* 800A5278  40 82 00 30 */	bne lbl_800A52A8
/* 800A527C  2C 04 00 FF */	cmpwi r4, 0xff
/* 800A5280  41 82 00 14 */	beq lbl_800A5294
/* 800A5284  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5288  4B FA 11 69 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A528C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5290  48 00 01 18 */	b lbl_800A53A8
lbl_800A5294:
/* 800A5294  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5298  38 80 00 CF */	li r4, 0xcf
/* 800A529C  4B FA 11 55 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A52A0  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A52A4  48 00 01 04 */	b lbl_800A53A8
lbl_800A52A8:
/* 800A52A8  2C 05 00 0B */	cmpwi r5, 0xb
/* 800A52AC  40 82 00 30 */	bne lbl_800A52DC
/* 800A52B0  2C 04 00 FF */	cmpwi r4, 0xff
/* 800A52B4  41 82 00 14 */	beq lbl_800A52C8
/* 800A52B8  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A52BC  4B FA 11 35 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A52C0  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A52C4  48 00 00 E4 */	b lbl_800A53A8
lbl_800A52C8:
/* 800A52C8  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A52CC  38 80 00 D0 */	li r4, 0xd0
/* 800A52D0  4B FA 11 21 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A52D4  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A52D8  48 00 00 D0 */	b lbl_800A53A8
lbl_800A52DC:
/* 800A52DC  2C 05 00 06 */	cmpwi r5, 6
/* 800A52E0  40 82 00 18 */	bne lbl_800A52F8
/* 800A52E4  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A52E8  38 80 00 CD */	li r4, 0xcd
/* 800A52EC  4B FA 11 05 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A52F0  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A52F4  48 00 00 B4 */	b lbl_800A53A8
lbl_800A52F8:
/* 800A52F8  2C 05 00 07 */	cmpwi r5, 7
/* 800A52FC  40 82 00 18 */	bne lbl_800A5314
/* 800A5300  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5304  38 80 00 CE */	li r4, 0xce
/* 800A5308  4B FA 10 E9 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A530C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5310  48 00 00 98 */	b lbl_800A53A8
lbl_800A5314:
/* 800A5314  2C 05 00 08 */	cmpwi r5, 8
/* 800A5318  40 82 00 30 */	bne lbl_800A5348
/* 800A531C  2C 04 00 FF */	cmpwi r4, 0xff
/* 800A5320  41 82 00 14 */	beq lbl_800A5334
/* 800A5324  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5328  4B FA 10 C9 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A532C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5330  48 00 00 78 */	b lbl_800A53A8
lbl_800A5334:
/* 800A5334  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5338  38 80 00 D4 */	li r4, 0xd4
/* 800A533C  4B FA 10 B5 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A5340  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5344  48 00 00 64 */	b lbl_800A53A8
lbl_800A5348:
/* 800A5348  2C 05 00 0C */	cmpwi r5, 0xc
/* 800A534C  40 82 00 18 */	bne lbl_800A5364
/* 800A5350  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5354  38 80 00 C9 */	li r4, 0xc9
/* 800A5358  4B FA 10 99 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A535C  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5360  48 00 00 48 */	b lbl_800A53A8
lbl_800A5364:
/* 800A5364  28 00 00 0B */	cmplwi r0, 0xb
/* 800A5368  40 82 00 18 */	bne lbl_800A5380
/* 800A536C  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A5370  38 80 00 FF */	li r4, 0xff
/* 800A5374  4B FA 10 7D */	bl setStartDemo__18dEvent_exception_cFi
/* 800A5378  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A537C  48 00 00 2C */	b lbl_800A53A8
lbl_800A5380:
/* 800A5380  28 00 00 0C */	cmplwi r0, 0xc
/* 800A5384  40 82 00 18 */	bne lbl_800A539C
/* 800A5388  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A538C  38 80 00 D1 */	li r4, 0xd1
/* 800A5390  4B FA 10 61 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A5394  90 77 31 88 */	stw r3, 0x3188(r23)
/* 800A5398  48 00 00 10 */	b lbl_800A53A8
lbl_800A539C:
/* 800A539C  38 63 51 88 */	addi r3, r3, 0x5188
/* 800A53A0  4B FA 10 51 */	bl setStartDemo__18dEvent_exception_cFi
/* 800A53A4  90 77 31 88 */	stw r3, 0x3188(r23)
lbl_800A53A8:
/* 800A53A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A53AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A53B0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800A53B4  4B FA 16 A5 */	bl orderStartDemo__16dEvent_manager_cFv
/* 800A53B8  38 00 00 FF */	li r0, 0xff
/* 800A53BC  98 17 2F 94 */	stb r0, 0x2f94(r23)
/* 800A53C0  98 17 2F 95 */	stb r0, 0x2f95(r23)
/* 800A53C4  98 17 2F 96 */	stb r0, 0x2f96(r23)
/* 800A53C8  98 17 2F 97 */	stb r0, 0x2f97(r23)
/* 800A53CC  38 60 00 00 */	li r3, 0
/* 800A53D0  38 80 FF FF */	li r4, -1
/* 800A53D4  38 00 00 10 */	li r0, 0x10
/* 800A53D8  7C 09 03 A6 */	mtctr r0
lbl_800A53DC:
/* 800A53DC  38 03 28 B0 */	addi r0, r3, 0x28b0
/* 800A53E0  7C 97 01 2E */	stwx r4, r23, r0
/* 800A53E4  38 63 00 04 */	addi r3, r3, 4
/* 800A53E8  42 00 FF F4 */	bdnz lbl_800A53DC
/* 800A53EC  38 00 FF FF */	li r0, -1
/* 800A53F0  90 17 28 F4 */	stw r0, 0x28f4(r23)
/* 800A53F4  90 17 28 F0 */	stw r0, 0x28f0(r23)
/* 800A53F8  90 17 28 F8 */	stw r0, 0x28f8(r23)
/* 800A53FC  90 17 28 FC */	stw r0, 0x28fc(r23)
/* 800A5400  38 77 2E 54 */	addi r3, r23, 0x2e54
/* 800A5404  38 97 19 70 */	addi r4, r23, 0x1970
/* 800A5408  3C A0 80 39 */	lis r5, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800A540C  38 A5 D6 64 */	addi r5, r5, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800A5410  C0 25 00 24 */	lfs f1, 0x24(r5)
/* 800A5414  C0 57 05 98 */	lfs f2, 0x598(r23)
/* 800A5418  4B FA B8 85 */	bl init__7dPaPo_cFP9dBgS_Acchff
/* 800A541C  A8 17 04 E6 */	lha r0, 0x4e6(r23)
/* 800A5420  B0 17 31 08 */	sth r0, 0x3108(r23)
/* 800A5424  38 77 2F 20 */	addi r3, r23, 0x2f20
/* 800A5428  38 97 36 24 */	addi r4, r23, 0x3624
/* 800A542C  38 B7 36 30 */	addi r5, r23, 0x3630
/* 800A5430  4B FA A2 89 */	bl setOldPosP__22dPa_hermiteEcallBack_cFPC4cXyzPC4cXyz
/* 800A5434  38 00 00 0A */	li r0, 0xa
/* 800A5438  98 17 2F C3 */	stb r0, 0x2fc3(r23)
/* 800A543C  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 800A5440  D0 17 2F 5C */	stfs f0, 0x2f5c(r23)
/* 800A5444  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 800A5448  D0 17 2F 60 */	stfs f0, 0x2f60(r23)
/* 800A544C  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 800A5450  D0 17 2F 64 */	stfs f0, 0x2f64(r23)
/* 800A5454  38 00 00 50 */	li r0, 0x50
/* 800A5458  B0 17 2F 68 */	sth r0, 0x2f68(r23)
/* 800A545C  B0 17 2F 6A */	sth r0, 0x2f6a(r23)
/* 800A5460  38 00 00 C8 */	li r0, 0xc8
/* 800A5464  B0 17 2F 6C */	sth r0, 0x2f6c(r23)
/* 800A5468  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A546C  D0 17 2F 70 */	stfs f0, 0x2f70(r23)
/* 800A5470  D0 17 2F 74 */	stfs f0, 0x2f74(r23)
/* 800A5474  38 77 2F 5C */	addi r3, r23, 0x2f5c
/* 800A5478  48 10 23 19 */	bl dKy_plight_set__FP15LIGHT_INFLUENCE
/* 800A547C  7E E3 BB 78 */	mr r3, r23
/* 800A5480  38 80 00 00 */	li r4, 0
/* 800A5484  4B FF F4 8D */	bl setSelectEquipItem__9daAlink_cFi
/* 800A5488  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A548C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A5490  38 63 01 70 */	addi r3, r3, 0x170
/* 800A5494  4B FF 85 CD */	bl checkStageName__9daAlink_cFPCc
/* 800A5498  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A549C  40 82 00 34 */	bne lbl_800A54D0
/* 800A54A0  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A54A4  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A54A8  38 63 04 4D */	addi r3, r3, 0x44d
/* 800A54AC  4B FF 85 B5 */	bl checkStageName__9daAlink_cFPCc
/* 800A54B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A54B4  40 82 00 1C */	bne lbl_800A54D0
/* 800A54B8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800A54BC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800A54C0  38 63 01 34 */	addi r3, r3, 0x134
/* 800A54C4  4B FF 85 9D */	bl checkStageName__9daAlink_cFPCc
/* 800A54C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A54CC  41 82 00 10 */	beq lbl_800A54DC
lbl_800A54D0:
/* 800A54D0  80 17 05 7C */	lwz r0, 0x57c(r23)
/* 800A54D4  64 00 40 00 */	oris r0, r0, 0x4000
/* 800A54D8  90 17 05 7C */	stw r0, 0x57c(r23)
lbl_800A54DC:
/* 800A54DC  39 61 00 30 */	addi r11, r1, 0x30
/* 800A54E0  48 2B CD 2D */	bl _restgpr_22
/* 800A54E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800A54E8  7C 08 03 A6 */	mtlr r0
/* 800A54EC  38 21 00 30 */	addi r1, r1, 0x30
/* 800A54F0  4E 80 00 20 */	blr 
