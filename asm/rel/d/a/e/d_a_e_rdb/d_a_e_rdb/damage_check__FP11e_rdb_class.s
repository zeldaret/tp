lbl_80766DB4:
/* 80766DB4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80766DB8  7C 08 02 A6 */	mflr r0
/* 80766DBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80766DC0  39 61 00 60 */	addi r11, r1, 0x60
/* 80766DC4  4B BF B3 FC */	b _savegpr_22
/* 80766DC8  7C 7D 1B 78 */	mr r29, r3
/* 80766DCC  3C 60 80 77 */	lis r3, lit_4007@ha
/* 80766DD0  3B C3 B4 5C */	addi r30, r3, lit_4007@l
/* 80766DD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80766DD8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80766DDC  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80766DE0  A8 1D 06 C2 */	lha r0, 0x6c2(r29)
/* 80766DE4  2C 00 00 00 */	cmpwi r0, 0
/* 80766DE8  40 82 00 58 */	bne lbl_80766E40
/* 80766DEC  38 7D 0E 64 */	addi r3, r29, 0xe64
/* 80766DF0  4B 91 D6 70 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80766DF4  28 03 00 00 */	cmplwi r3, 0
/* 80766DF8  41 82 00 48 */	beq lbl_80766E40
/* 80766DFC  80 1D 0F 00 */	lwz r0, 0xf00(r29)
/* 80766E00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80766E04  41 82 00 3C */	beq lbl_80766E40
/* 80766E08  38 7D 0E 64 */	addi r3, r29, 0xe64
/* 80766E0C  4B 91 D6 EC */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80766E10  7C 64 1B 78 */	mr r4, r3
/* 80766E14  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80766E18  38 A0 00 28 */	li r5, 0x28
/* 80766E1C  38 C0 00 00 */	li r6, 0
/* 80766E20  4B 92 06 F4 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80766E24  38 00 00 08 */	li r0, 8
/* 80766E28  B0 1D 06 C2 */	sth r0, 0x6c2(r29)
/* 80766E2C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 80766E30  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80766E34  D0 1D 06 E4 */	stfs f0, 0x6e4(r29)
/* 80766E38  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80766E3C  B0 1D 06 E8 */	sth r0, 0x6e8(r29)
lbl_80766E40:
/* 80766E40  38 7D 09 24 */	addi r3, r29, 0x924
/* 80766E44  4B 91 C9 EC */	b Move__10dCcD_GSttsFv
/* 80766E48  3B 60 00 00 */	li r27, 0
/* 80766E4C  3B 40 00 00 */	li r26, 0
/* 80766E50  3B 20 00 00 */	li r25, 0
/* 80766E54  A8 1D 06 C0 */	lha r0, 0x6c0(r29)
/* 80766E58  2C 00 00 00 */	cmpwi r0, 0
/* 80766E5C  40 82 03 84 */	bne lbl_807671E0
/* 80766E60  3A C0 00 00 */	li r22, 0
/* 80766E64  3B 00 00 00 */	li r24, 0
lbl_80766E68:
/* 80766E68  3A F8 09 44 */	addi r23, r24, 0x944
/* 80766E6C  7E FD BA 14 */	add r23, r29, r23
/* 80766E70  7E E3 BB 78 */	mr r3, r23
/* 80766E74  4B 91 D5 EC */	b ChkTgHit__12dCcD_GObjInfFv
/* 80766E78  28 03 00 00 */	cmplwi r3, 0
/* 80766E7C  41 82 03 54 */	beq lbl_807671D0
/* 80766E80  7E E3 BB 78 */	mr r3, r23
/* 80766E84  4B 91 D6 74 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80766E88  90 7D 0F 9C */	stw r3, 0xf9c(r29)
/* 80766E8C  7F A3 EB 78 */	mr r3, r29
/* 80766E90  38 9D 0F 9C */	addi r4, r29, 0xf9c
/* 80766E94  4B 92 0D 70 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80766E98  A0 1D 0F B8 */	lhz r0, 0xfb8(r29)
/* 80766E9C  28 00 00 00 */	cmplwi r0, 0
/* 80766EA0  41 82 01 34 */	beq lbl_80766FD4
/* 80766EA4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80766EA8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80766EAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80766EB0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80766EB4  88 1D 0F BB */	lbz r0, 0xfbb(r29)
/* 80766EB8  7C 00 07 75 */	extsb. r0, r0
/* 80766EBC  38 00 00 01 */	li r0, 1
/* 80766EC0  41 82 00 08 */	beq lbl_80766EC8
/* 80766EC4  38 00 00 03 */	li r0, 3
lbl_80766EC8:
/* 80766EC8  7C 16 03 78 */	mr r22, r0
/* 80766ECC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80766ED0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80766ED4  80 63 00 00 */	lwz r3, 0(r3)
/* 80766ED8  A8 9D 06 B0 */	lha r4, 0x6b0(r29)
/* 80766EDC  4B 8A 55 00 */	b mDoMtx_YrotS__FPA4_fs
/* 80766EE0  80 1D 06 74 */	lwz r0, 0x674(r29)
/* 80766EE4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80766EE8  41 82 00 0C */	beq lbl_80766EF4
/* 80766EEC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80766EF0  40 82 00 3C */	bne lbl_80766F2C
lbl_80766EF4:
/* 80766EF4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80766EF8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80766EFC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80766F00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80766F04  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80766F08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80766F0C  38 61 00 0C */	addi r3, r1, 0xc
/* 80766F10  38 81 00 18 */	addi r4, r1, 0x18
/* 80766F14  4B B0 9F D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80766F18  38 61 00 18 */	addi r3, r1, 0x18
/* 80766F1C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80766F20  7C 65 1B 78 */	mr r5, r3
/* 80766F24  4B BE 01 6C */	b PSVECAdd
/* 80766F28  48 00 00 70 */	b lbl_80766F98
lbl_80766F2C:
/* 80766F2C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80766F30  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80766F34  28 00 00 05 */	cmplwi r0, 5
/* 80766F38  40 82 00 2C */	bne lbl_80766F64
/* 80766F3C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80766F40  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80766F44  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80766F48  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80766F4C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80766F50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80766F54  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80766F58  EC 01 00 2A */	fadds f0, f1, f0
/* 80766F5C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80766F60  48 00 00 38 */	b lbl_80766F98
lbl_80766F64:
/* 80766F64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80766F68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80766F6C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80766F70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80766F74  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80766F78  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80766F7C  38 61 00 0C */	addi r3, r1, 0xc
/* 80766F80  38 81 00 18 */	addi r4, r1, 0x18
/* 80766F84  4B B0 9F 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 80766F88  38 61 00 18 */	addi r3, r1, 0x18
/* 80766F8C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80766F90  7C 65 1B 78 */	mr r5, r3
/* 80766F94  4B BE 00 FC */	b PSVECAdd
lbl_80766F98:
/* 80766F98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80766F9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80766FA0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80766FA4  7E C4 B3 78 */	mr r4, r22
/* 80766FA8  7F A5 EB 78 */	mr r5, r29
/* 80766FAC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80766FB0  38 E0 00 00 */	li r7, 0
/* 80766FB4  39 01 00 24 */	addi r8, r1, 0x24
/* 80766FB8  39 20 00 00 */	li r9, 0
/* 80766FBC  4B 8E 52 5C */	b setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80766FC0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80766FC4  2C 00 00 00 */	cmpwi r0, 0
/* 80766FC8  41 81 00 0C */	bgt lbl_80766FD4
/* 80766FCC  3B 20 00 01 */	li r25, 1
/* 80766FD0  48 00 02 10 */	b lbl_807671E0
lbl_80766FD4:
/* 80766FD4  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 80766FD8  80 1D 0F B0 */	lwz r0, 0xfb0(r29)
/* 80766FDC  7C 60 03 78 */	or r0, r3, r0
/* 80766FE0  90 1D 06 EC */	stw r0, 0x6ec(r29)
/* 80766FE4  88 1D 06 C7 */	lbz r0, 0x6c7(r29)
/* 80766FE8  7C 00 07 75 */	extsb. r0, r0
/* 80766FEC  41 82 00 10 */	beq lbl_80766FFC
/* 80766FF0  38 00 00 00 */	li r0, 0
/* 80766FF4  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80766FF8  3B 40 00 01 */	li r26, 1
lbl_80766FFC:
/* 80766FFC  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 80767000  28 00 00 0A */	cmplwi r0, 0xa
/* 80767004  40 82 00 34 */	bne lbl_80767038
/* 80767008  7F 83 E3 78 */	mr r3, r28
/* 8076700C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80767010  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 80767014  7D 89 03 A6 */	mtctr r12
/* 80767018  4E 80 04 21 */	bctrl 
/* 8076701C  2C 03 00 00 */	cmpwi r3, 0
/* 80767020  41 82 00 18 */	beq lbl_80767038
/* 80767024  38 00 00 03 */	li r0, 3
/* 80767028  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 8076702C  38 00 00 01 */	li r0, 1
/* 80767030  98 1D 06 C7 */	stb r0, 0x6c7(r29)
/* 80767034  48 00 00 0C */	b lbl_80767040
lbl_80767038:
/* 80767038  38 00 00 06 */	li r0, 6
/* 8076703C  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
lbl_80767040:
/* 80767040  A8 9D 06 7E */	lha r4, 0x67e(r29)
/* 80767044  2C 04 00 06 */	cmpwi r4, 6
/* 80767048  40 82 00 10 */	bne lbl_80767058
/* 8076704C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80767050  2C 00 00 0A */	cmpwi r0, 0xa
/* 80767054  40 80 00 A8 */	bge lbl_807670FC
lbl_80767058:
/* 80767058  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8076705C  88 03 05 69 */	lbz r0, 0x569(r3)
/* 80767060  28 00 00 04 */	cmplwi r0, 4
/* 80767064  40 80 00 0C */	bge lbl_80767070
/* 80767068  7F 40 07 75 */	extsb. r0, r26
/* 8076706C  41 82 00 90 */	beq lbl_807670FC
lbl_80767070:
/* 80767070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80767074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80767078  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8076707C  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80767080  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 80767084  38 84 00 06 */	addi r4, r4, 6
/* 80767088  4B C0 19 0C */	b strcmp
/* 8076708C  2C 03 00 00 */	cmpwi r3, 0
/* 80767090  38 60 00 04 */	li r3, 4
/* 80767094  40 82 00 08 */	bne lbl_8076709C
/* 80767098  38 60 00 06 */	li r3, 6
lbl_8076709C:
/* 8076709C  88 1D 0F CC */	lbz r0, 0xfcc(r29)
/* 807670A0  7C 00 07 74 */	extsb r0, r0
/* 807670A4  7C 00 18 00 */	cmpw r0, r3
/* 807670A8  41 80 00 0C */	blt lbl_807670B4
/* 807670AC  3B 20 00 01 */	li r25, 1
/* 807670B0  48 00 01 04 */	b lbl_807671B4
lbl_807670B4:
/* 807670B4  7F A3 EB 78 */	mr r3, r29
/* 807670B8  38 80 00 11 */	li r4, 0x11
/* 807670BC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 807670C0  38 A0 00 00 */	li r5, 0
/* 807670C4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807670C8  4B FF E0 29 */	bl anm_init__FP11e_rdb_classifUcf
/* 807670CC  38 00 00 06 */	li r0, 6
/* 807670D0  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807670D4  38 00 00 0A */	li r0, 0xa
/* 807670D8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807670DC  38 00 00 14 */	li r0, 0x14
/* 807670E0  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 807670E4  88 7D 0F CC */	lbz r3, 0xfcc(r29)
/* 807670E8  38 03 00 01 */	addi r0, r3, 1
/* 807670EC  98 1D 0F CC */	stb r0, 0xfcc(r29)
/* 807670F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 807670F4  3B 63 00 F6 */	addi r27, r3, 0x00F6 /* 0x000700F6@l */
/* 807670F8  48 00 00 BC */	b lbl_807671B4
lbl_807670FC:
/* 807670FC  2C 04 00 06 */	cmpwi r4, 6
/* 80767100  40 82 00 4C */	bne lbl_8076714C
/* 80767104  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 80767108  2C 00 00 0A */	cmpwi r0, 0xa
/* 8076710C  41 80 00 40 */	blt lbl_8076714C
/* 80767110  38 00 00 0F */	li r0, 0xf
/* 80767114  B0 1D 06 CE */	sth r0, 0x6ce(r29)
/* 80767118  A8 7D 06 B0 */	lha r3, 0x6b0(r29)
/* 8076711C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80767120  7C 03 00 50 */	subf r0, r3, r0
/* 80767124  7C 00 07 35 */	extsh. r0, r0
/* 80767128  40 81 00 10 */	ble lbl_80767138
/* 8076712C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80767130  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80767134  48 00 00 0C */	b lbl_80767140
lbl_80767138:
/* 80767138  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8076713C  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
lbl_80767140:
/* 80767140  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 80767144  3B 63 00 F6 */	addi r27, r3, 0x00F6 /* 0x000700F6@l */
/* 80767148  48 00 00 6C */	b lbl_807671B4
lbl_8076714C:
/* 8076714C  38 00 00 06 */	li r0, 6
/* 80767150  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 80767154  38 80 00 00 */	li r4, 0
/* 80767158  B0 9D 05 B4 */	sth r4, 0x5b4(r29)
/* 8076715C  80 7D 0F 9C */	lwz r3, 0xf9c(r29)
/* 80767160  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80767164  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80767168  41 82 00 1C */	beq lbl_80767184
/* 8076716C  38 00 00 1E */	li r0, 0x1e
/* 80767170  B0 1D 06 BE */	sth r0, 0x6be(r29)
/* 80767174  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 80767178  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007012E@ha */
/* 8076717C  3B 63 01 2E */	addi r27, r3, 0x012E /* 0x0007012E@l */
/* 80767180  48 00 00 10 */	b lbl_80767190
lbl_80767184:
/* 80767184  B0 9D 06 BE */	sth r4, 0x6be(r29)
/* 80767188  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F6@ha */
/* 8076718C  3B 63 00 F6 */	addi r27, r3, 0x00F6 /* 0x000700F6@l */
lbl_80767190:
/* 80767190  88 7D 0F CD */	lbz r3, 0xfcd(r29)
/* 80767194  38 03 00 01 */	addi r0, r3, 1
/* 80767198  98 1D 0F CD */	stb r0, 0xfcd(r29)
/* 8076719C  88 1D 0F CD */	lbz r0, 0xfcd(r29)
/* 807671A0  7C 00 07 74 */	extsb r0, r0
/* 807671A4  2C 00 00 04 */	cmpwi r0, 4
/* 807671A8  41 80 00 0C */	blt lbl_807671B4
/* 807671AC  38 00 00 3C */	li r0, 0x3c
/* 807671B0  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
lbl_807671B4:
/* 807671B4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807671B8  2C 00 00 01 */	cmpwi r0, 1
/* 807671BC  41 81 00 24 */	bgt lbl_807671E0
/* 807671C0  38 00 00 03 */	li r0, 3
/* 807671C4  7C 7D C2 14 */	add r3, r29, r24
/* 807671C8  98 03 09 FE */	stb r0, 0x9fe(r3)
/* 807671CC  48 00 00 14 */	b lbl_807671E0
lbl_807671D0:
/* 807671D0  3A D6 00 01 */	addi r22, r22, 1
/* 807671D4  2C 16 00 02 */	cmpwi r22, 2
/* 807671D8  3B 18 01 38 */	addi r24, r24, 0x138
/* 807671DC  40 81 FC 8C */	ble lbl_80766E68
lbl_807671E0:
/* 807671E0  7F 20 07 75 */	extsb. r0, r25
/* 807671E4  41 82 00 70 */	beq lbl_80767254
/* 807671E8  38 00 00 07 */	li r0, 7
/* 807671EC  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 807671F0  38 00 00 00 */	li r0, 0
/* 807671F4  98 1D 0F CD */	stb r0, 0xfcd(r29)
/* 807671F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807671FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80767200  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80767204  3C 80 80 77 */	lis r4, stringBase0@ha
/* 80767208  38 84 B6 C4 */	addi r4, r4, stringBase0@l
/* 8076720C  38 84 00 06 */	addi r4, r4, 6
/* 80767210  4B C0 17 84 */	b strcmp
/* 80767214  2C 03 00 00 */	cmpwi r3, 0
/* 80767218  40 82 00 10 */	bne lbl_80767228
/* 8076721C  38 00 00 14 */	li r0, 0x14
/* 80767220  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80767224  48 00 00 0C */	b lbl_80767230
lbl_80767228:
/* 80767228  38 00 00 00 */	li r0, 0
/* 8076722C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_80767230:
/* 80767230  38 00 03 E8 */	li r0, 0x3e8
/* 80767234  B0 1D 06 C0 */	sth r0, 0x6c0(r29)
/* 80767238  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070572@ha */
/* 8076723C  3B 63 05 72 */	addi r27, r3, 0x0572 /* 0x00070572@l */
/* 80767240  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80767244  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80767248  80 63 00 00 */	lwz r3, 0(r3)
/* 8076724C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80767250  4B B4 86 34 */	b subBgmStop__8Z2SeqMgrFv
lbl_80767254:
/* 80767254  28 1B 00 00 */	cmplwi r27, 0
/* 80767258  41 82 00 24 */	beq lbl_8076727C
/* 8076725C  93 61 00 08 */	stw r27, 8(r1)
/* 80767260  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80767264  38 81 00 08 */	addi r4, r1, 8
/* 80767268  38 A0 FF FF */	li r5, -1
/* 8076726C  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80767270  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80767274  7D 89 03 A6 */	mtctr r12
/* 80767278  4E 80 04 21 */	bctrl 
lbl_8076727C:
/* 8076727C  39 61 00 60 */	addi r11, r1, 0x60
/* 80767280  4B BF AF 8C */	b _restgpr_22
/* 80767284  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80767288  7C 08 03 A6 */	mtlr r0
/* 8076728C  38 21 00 60 */	addi r1, r1, 0x60
/* 80767290  4E 80 00 20 */	blr 
