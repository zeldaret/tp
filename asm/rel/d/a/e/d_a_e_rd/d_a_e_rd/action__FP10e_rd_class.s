lbl_80510DEC:
/* 80510DEC  94 21 FC F0 */	stwu r1, -0x310(r1)
/* 80510DF0  7C 08 02 A6 */	mflr r0
/* 80510DF4  90 01 03 14 */	stw r0, 0x314(r1)
/* 80510DF8  39 61 03 10 */	addi r11, r1, 0x310
/* 80510DFC  4B E5 13 C1 */	bl _savegpr_21
/* 80510E00  7C 7F 1B 78 */	mr r31, r3
/* 80510E04  3C 80 80 52 */	lis r4, lit_1109@ha /* 0x80519140@ha */
/* 80510E08  3B 84 91 40 */	addi r28, r4, lit_1109@l /* 0x80519140@l */
/* 80510E0C  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 80510E10  3B C4 85 84 */	addi r30, r4, lit_4208@l /* 0x80518584@l */
/* 80510E14  4B FF 3D 0D */	bl get_pla__FP10fopAc_ac_c
/* 80510E18  7C 7D 1B 78 */	mr r29, r3
/* 80510E1C  38 00 00 00 */	li r0, 0
/* 80510E20  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80510E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80510E28  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80510E2C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80510E30  7C 1D 20 40 */	cmplw r29, r4
/* 80510E34  40 82 00 50 */	bne lbl_80510E84
/* 80510E38  7F E3 FB 78 */	mr r3, r31
/* 80510E3C  4B B0 99 A5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80510E40  D0 3F 09 78 */	stfs f1, 0x978(r31)
/* 80510E44  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80510E48  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80510E4C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80510E50  7D 89 03 A6 */	mtctr r12
/* 80510E54  4E 80 04 21 */	bctrl 
/* 80510E58  28 03 00 00 */	cmplwi r3, 0
/* 80510E5C  41 82 00 14 */	beq lbl_80510E70
/* 80510E60  C0 3F 09 78 */	lfs f1, 0x978(r31)
/* 80510E64  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80510E68  EC 01 00 28 */	fsubs f0, f1, f0
/* 80510E6C  D0 1F 09 78 */	stfs f0, 0x978(r31)
lbl_80510E70:
/* 80510E70  7F E3 FB 78 */	mr r3, r31
/* 80510E74  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80510E78  4B B0 98 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80510E7C  B0 7F 09 7C */	sth r3, 0x97c(r31)
/* 80510E80  48 00 01 34 */	b lbl_80510FB4
lbl_80510E84:
/* 80510E84  38 61 00 84 */	addi r3, r1, 0x84
/* 80510E88  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80510E8C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80510E90  4B D5 5C A5 */	bl __mi__4cXyzCFRC3Vec
/* 80510E94  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80510E98  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80510E9C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80510EA0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80510EA4  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80510EA8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80510EAC  38 61 00 FC */	addi r3, r1, 0xfc
/* 80510EB0  4B E3 62 89 */	bl PSVECSquareMag
/* 80510EB4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80510EB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510EBC  40 81 00 58 */	ble lbl_80510F14
/* 80510EC0  FC 00 08 34 */	frsqrte f0, f1
/* 80510EC4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80510EC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80510ECC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80510ED0  FC 00 00 32 */	fmul f0, f0, f0
/* 80510ED4  FC 01 00 32 */	fmul f0, f1, f0
/* 80510ED8  FC 03 00 28 */	fsub f0, f3, f0
/* 80510EDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80510EE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80510EE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80510EE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80510EEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80510EF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80510EF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80510EF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80510EFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80510F00  FC 03 00 28 */	fsub f0, f3, f0
/* 80510F04  FC 02 00 32 */	fmul f0, f2, f0
/* 80510F08  FC 21 00 32 */	fmul f1, f1, f0
/* 80510F0C  FC 20 08 18 */	frsp f1, f1
/* 80510F10  48 00 00 88 */	b lbl_80510F98
lbl_80510F14:
/* 80510F14  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80510F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80510F1C  40 80 00 10 */	bge lbl_80510F2C
/* 80510F20  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80510F24  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80510F28  48 00 00 70 */	b lbl_80510F98
lbl_80510F2C:
/* 80510F2C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80510F30  80 81 00 28 */	lwz r4, 0x28(r1)
/* 80510F34  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80510F38  3C 00 7F 80 */	lis r0, 0x7f80
/* 80510F3C  7C 03 00 00 */	cmpw r3, r0
/* 80510F40  41 82 00 14 */	beq lbl_80510F54
/* 80510F44  40 80 00 40 */	bge lbl_80510F84
/* 80510F48  2C 03 00 00 */	cmpwi r3, 0
/* 80510F4C  41 82 00 20 */	beq lbl_80510F6C
/* 80510F50  48 00 00 34 */	b lbl_80510F84
lbl_80510F54:
/* 80510F54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80510F58  41 82 00 0C */	beq lbl_80510F64
/* 80510F5C  38 00 00 01 */	li r0, 1
/* 80510F60  48 00 00 28 */	b lbl_80510F88
lbl_80510F64:
/* 80510F64  38 00 00 02 */	li r0, 2
/* 80510F68  48 00 00 20 */	b lbl_80510F88
lbl_80510F6C:
/* 80510F6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80510F70  41 82 00 0C */	beq lbl_80510F7C
/* 80510F74  38 00 00 05 */	li r0, 5
/* 80510F78  48 00 00 10 */	b lbl_80510F88
lbl_80510F7C:
/* 80510F7C  38 00 00 03 */	li r0, 3
/* 80510F80  48 00 00 08 */	b lbl_80510F88
lbl_80510F84:
/* 80510F84  38 00 00 04 */	li r0, 4
lbl_80510F88:
/* 80510F88  2C 00 00 01 */	cmpwi r0, 1
/* 80510F8C  40 82 00 0C */	bne lbl_80510F98
/* 80510F90  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80510F94  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80510F98:
/* 80510F98  D0 3F 09 78 */	stfs f1, 0x978(r31)
/* 80510F9C  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 80510FA0  C0 41 01 04 */	lfs f2, 0x104(r1)
/* 80510FA4  4B D5 66 D1 */	bl cM_atan2s__Fff
/* 80510FA8  B0 7F 09 7C */	sth r3, 0x97c(r31)
/* 80510FAC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80510FB0  D0 1F 09 80 */	stfs f0, 0x980(r31)
lbl_80510FB4:
/* 80510FB4  88 1C 00 C0 */	lbz r0, 0xc0(r28)
/* 80510FB8  28 00 00 00 */	cmplwi r0, 0
/* 80510FBC  41 82 00 54 */	beq lbl_80511010
/* 80510FC0  88 7F 09 A0 */	lbz r3, 0x9a0(r31)
/* 80510FC4  7C 60 07 75 */	extsb. r0, r3
/* 80510FC8  40 82 00 40 */	bne lbl_80511008
/* 80510FCC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80510FD0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80510FD4  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 80510FD8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80510FDC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80510FE0  FC 00 00 1E */	fctiwz f0, f0
/* 80510FE4  D8 01 02 C8 */	stfd f0, 0x2c8(r1)
/* 80510FE8  80 01 02 CC */	lwz r0, 0x2cc(r1)
/* 80510FEC  2C 00 00 06 */	cmpwi r0, 6
/* 80510FF0  41 80 00 20 */	blt lbl_80511010
/* 80510FF4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80510FF8  41 81 00 18 */	bgt lbl_80511010
/* 80510FFC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80511000  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 80511004  48 00 00 0C */	b lbl_80511010
lbl_80511008:
/* 80511008  38 03 FF FF */	addi r0, r3, -1
/* 8051100C  98 1F 09 A0 */	stb r0, 0x9a0(r31)
lbl_80511010:
/* 80511010  AA BF 09 72 */	lha r21, 0x972(r31)
/* 80511014  7F E3 FB 78 */	mr r3, r31
/* 80511018  4B FF DE A9 */	bl damage_check__FP10e_rd_class
/* 8051101C  2C 15 00 0B */	cmpwi r21, 0xb
/* 80511020  40 82 00 44 */	bne lbl_80511064
/* 80511024  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 80511028  2C 00 00 0B */	cmpwi r0, 0xb
/* 8051102C  41 82 00 38 */	beq lbl_80511064
/* 80511030  80 1F 09 8C */	lwz r0, 0x98c(r31)
/* 80511034  90 01 00 30 */	stw r0, 0x30(r1)
/* 80511038  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8051103C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80511040  38 81 00 30 */	addi r4, r1, 0x30
/* 80511044  4B B0 87 B5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80511048  28 03 00 00 */	cmplwi r3, 0
/* 8051104C  41 82 00 18 */	beq lbl_80511064
/* 80511050  A8 03 06 90 */	lha r0, 0x690(r3)
/* 80511054  2C 00 00 01 */	cmpwi r0, 1
/* 80511058  40 82 00 0C */	bne lbl_80511064
/* 8051105C  38 00 00 00 */	li r0, 0
/* 80511060  B0 03 06 90 */	sth r0, 0x690(r3)
lbl_80511064:
/* 80511064  8A FF 05 BA */	lbz r23, 0x5ba(r31)
/* 80511068  3A C0 00 00 */	li r22, 0
/* 8051106C  3B 00 00 01 */	li r24, 1
/* 80511070  3B 20 00 00 */	li r25, 0
/* 80511074  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 80511078  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8051107C  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 80511080  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 80511084  28 00 00 3C */	cmplwi r0, 0x3c
/* 80511088  41 81 02 08 */	bgt lbl_80511290
/* 8051108C  3C 60 80 52 */	lis r3, lit_9631@ha /* 0x80518D48@ha */
/* 80511090  38 63 8D 48 */	addi r3, r3, lit_9631@l /* 0x80518D48@l */
/* 80511094  54 00 10 3A */	slwi r0, r0, 2
/* 80511098  7C 03 00 2E */	lwzx r0, r3, r0
/* 8051109C  7C 09 03 A6 */	mtctr r0
/* 805110A0  4E 80 04 20 */	bctr 
lbl_805110A4:
/* 805110A4  7F E3 FB 78 */	mr r3, r31
/* 805110A8  4B FF 5B E5 */	bl e_rd_normal__FP10e_rd_class
/* 805110AC  3B 20 00 01 */	li r25, 1
/* 805110B0  48 00 01 E0 */	b lbl_80511290
lbl_805110B4:
/* 805110B4  7F E3 FB 78 */	mr r3, r31
/* 805110B8  4B FF 60 8D */	bl e_rd_fight_run__FP10e_rd_class
/* 805110BC  3A C0 00 01 */	li r22, 1
/* 805110C0  48 00 01 D0 */	b lbl_80511290
lbl_805110C4:
/* 805110C4  7F E3 FB 78 */	mr r3, r31
/* 805110C8  4B FF 67 1D */	bl e_rd_fight__FP10e_rd_class
/* 805110CC  3A C0 00 01 */	li r22, 1
/* 805110D0  48 00 01 C0 */	b lbl_80511290
lbl_805110D4:
/* 805110D4  7F E3 FB 78 */	mr r3, r31
/* 805110D8  4B FF 6A B9 */	bl e_rd_bow_run__FP10e_rd_class
/* 805110DC  3A C0 00 01 */	li r22, 1
/* 805110E0  48 00 01 B0 */	b lbl_80511290
lbl_805110E4:
/* 805110E4  7F E3 FB 78 */	mr r3, r31
/* 805110E8  4B FF 6E B1 */	bl e_rd_bow__FP10e_rd_class
/* 805110EC  3A C0 00 01 */	li r22, 1
/* 805110F0  48 00 01 A0 */	b lbl_80511290
lbl_805110F4:
/* 805110F4  7F E3 FB 78 */	mr r3, r31
/* 805110F8  4B FF 72 3D */	bl e_rd_bow2__FP10e_rd_class
/* 805110FC  7C 79 1B 78 */	mr r25, r3
/* 80511100  3A C0 00 01 */	li r22, 1
/* 80511104  48 00 01 8C */	b lbl_80511290
lbl_80511108:
/* 80511108  7F E3 FB 78 */	mr r3, r31
/* 8051110C  4B FF 76 85 */	bl e_rd_bow_ikki__FP10e_rd_class
/* 80511110  3B 00 00 00 */	li r24, 0
/* 80511114  48 00 01 7C */	b lbl_80511290
lbl_80511118:
/* 80511118  7F E3 FB 78 */	mr r3, r31
/* 8051111C  4B FF 79 19 */	bl e_rd_avoid__FP10e_rd_class
/* 80511120  48 00 01 70 */	b lbl_80511290
lbl_80511124:
/* 80511124  7F E3 FB 78 */	mr r3, r31
/* 80511128  4B FF 7A 71 */	bl e_rd_wb_search__FP10e_rd_class
/* 8051112C  48 00 01 64 */	b lbl_80511290
lbl_80511130:
/* 80511130  7F E3 FB 78 */	mr r3, r31
/* 80511134  4B FF 85 6D */	bl e_rd_wb_ride__FP10e_rd_class
/* 80511138  3A E0 00 00 */	li r23, 0
/* 8051113C  48 00 01 54 */	b lbl_80511290
lbl_80511140:
/* 80511140  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80511144  7C 00 07 75 */	extsb. r0, r0
/* 80511148  41 82 00 10 */	beq lbl_80511158
/* 8051114C  7F E3 FB 78 */	mr r3, r31
/* 80511150  4B FF 94 29 */	bl e_rd_wb_run_B__FP10e_rd_class
/* 80511154  48 00 00 0C */	b lbl_80511160
lbl_80511158:
/* 80511158  7F E3 FB 78 */	mr r3, r31
/* 8051115C  4B FF 87 89 */	bl e_rd_wb_run__FP10e_rd_class
lbl_80511160:
/* 80511160  3A E0 00 00 */	li r23, 0
/* 80511164  48 00 01 2C */	b lbl_80511290
lbl_80511168:
/* 80511168  7F E3 FB 78 */	mr r3, r31
/* 8051116C  4B FF 97 9D */	bl e_rd_wb_bjump__FP10e_rd_class
/* 80511170  3A E0 00 00 */	li r23, 0
/* 80511174  48 00 01 1C */	b lbl_80511290
lbl_80511178:
/* 80511178  7F E3 FB 78 */	mr r3, r31
/* 8051117C  4B FF 99 A1 */	bl e_rd_bomb_action__FP10e_rd_class
/* 80511180  48 00 01 10 */	b lbl_80511290
lbl_80511184:
/* 80511184  7F E3 FB 78 */	mr r3, r31
/* 80511188  4B FF 9D F1 */	bl e_rd_s_damage__FP10e_rd_class
/* 8051118C  48 00 01 04 */	b lbl_80511290
lbl_80511190:
/* 80511190  7F E3 FB 78 */	mr r3, r31
/* 80511194  4B FF A4 21 */	bl e_rd_damage__FP10e_rd_class
/* 80511198  48 00 00 F8 */	b lbl_80511290
lbl_8051119C:
/* 8051119C  7F E3 FB 78 */	mr r3, r31
/* 805111A0  4B FF B4 91 */	bl e_rd_drop__FP10e_rd_class
/* 805111A4  48 00 00 EC */	b lbl_80511290
lbl_805111A8:
/* 805111A8  7F E3 FB 78 */	mr r3, r31
/* 805111AC  4B FF B8 B9 */	bl e_rd_a_damage__FP10e_rd_class
/* 805111B0  48 00 00 E0 */	b lbl_80511290
lbl_805111B4:
/* 805111B4  7F E3 FB 78 */	mr r3, r31
/* 805111B8  4B FF B9 B9 */	bl e_rd_stand__FP10e_rd_class
/* 805111BC  3B 20 00 01 */	li r25, 1
/* 805111C0  48 00 00 D0 */	b lbl_80511290
lbl_805111C4:
/* 805111C4  7F E3 FB 78 */	mr r3, r31
/* 805111C8  4B FF C0 99 */	bl e_rd_commander__FP10e_rd_class
/* 805111CC  3A C0 00 01 */	li r22, 1
/* 805111D0  48 00 00 C0 */	b lbl_80511290
lbl_805111D4:
/* 805111D4  7F E3 FB 78 */	mr r3, r31
/* 805111D8  4B FF BB 75 */	bl e_rd_bow3__FP10e_rd_class
/* 805111DC  7C 79 1B 78 */	mr r25, r3
/* 805111E0  3A C0 00 01 */	li r22, 1
/* 805111E4  48 00 00 AC */	b lbl_80511290
lbl_805111E8:
/* 805111E8  7F E3 FB 78 */	mr r3, r31
/* 805111EC  4B FF C4 C9 */	bl e_rd_excite__FP10e_rd_class
/* 805111F0  48 00 00 A0 */	b lbl_80511290
lbl_805111F4:
/* 805111F4  7F E3 FB 78 */	mr r3, r31
/* 805111F8  4B FF C8 C1 */	bl e_rd_water__FP10e_rd_class
/* 805111FC  3B 00 00 00 */	li r24, 0
/* 80511200  48 00 00 90 */	b lbl_80511290
lbl_80511204:
/* 80511204  7F E3 FB 78 */	mr r3, r31
/* 80511208  4B FF CA 09 */	bl e_rd_kiba_start__FP10e_rd_class
/* 8051120C  3A E0 00 00 */	li r23, 0
/* 80511210  48 00 00 80 */	b lbl_80511290
lbl_80511214:
/* 80511214  7F E3 FB 78 */	mr r3, r31
/* 80511218  4B FF CD 21 */	bl e_rd_kiba_end__FP10e_rd_class
/* 8051121C  3A E0 00 00 */	li r23, 0
/* 80511220  48 00 00 70 */	b lbl_80511290
lbl_80511224:
/* 80511224  7F E3 FB 78 */	mr r3, r31
/* 80511228  4B FF CF ED */	bl e_rd_ikki_end__FP10e_rd_class
/* 8051122C  48 00 00 64 */	b lbl_80511290
lbl_80511230:
/* 80511230  7F E3 FB 78 */	mr r3, r31
/* 80511234  4B FF CB CD */	bl e_rd_ikki2_start__FP10e_rd_class
/* 80511238  48 00 00 58 */	b lbl_80511290
lbl_8051123C:
/* 8051123C  7F E3 FB 78 */	mr r3, r31
/* 80511240  4B FF D1 F1 */	bl e_rd_ikki2_end__FP10e_rd_class
/* 80511244  48 00 00 4C */	b lbl_80511290
lbl_80511248:
/* 80511248  7F E3 FB 78 */	mr r3, r31
/* 8051124C  4B FF D4 69 */	bl e_rd_lv9_end__FP10e_rd_class
/* 80511250  48 00 00 40 */	b lbl_80511290
lbl_80511254:
/* 80511254  7F E3 FB 78 */	mr r3, r31
/* 80511258  4B FF E9 AD */	bl e_rd_yagura__FP10e_rd_class
/* 8051125C  7C 76 1B 78 */	mr r22, r3
/* 80511260  48 00 00 30 */	b lbl_80511290
lbl_80511264:
/* 80511264  7F E3 FB 78 */	mr r3, r31
/* 80511268  4B FF EF E9 */	bl e_rd_jyunkai__FP10e_rd_class
/* 8051126C  48 00 00 24 */	b lbl_80511290
lbl_80511270:
/* 80511270  7F E3 FB 78 */	mr r3, r31
/* 80511274  4B FF F4 C1 */	bl e_rd_sleep__FP10e_rd_class
/* 80511278  48 00 00 18 */	b lbl_80511290
lbl_8051127C:
/* 8051127C  7F E3 FB 78 */	mr r3, r31
/* 80511280  4B FF F9 19 */	bl e_rd_tag__FP10e_rd_class
/* 80511284  48 00 00 0C */	b lbl_80511290
lbl_80511288:
/* 80511288  7F E3 FB 78 */	mr r3, r31
/* 8051128C  4B FF FA A1 */	bl e_rd_reg__FP10e_rd_class
lbl_80511290:
/* 80511290  7F 20 07 75 */	extsb. r0, r25
/* 80511294  41 82 01 AC */	beq lbl_80511440
/* 80511298  7F E3 FB 78 */	mr r3, r31
/* 8051129C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805112A0  4B FF 47 F5 */	bl otoCheck__FP10fopAc_ac_cf
/* 805112A4  2C 03 00 00 */	cmpwi r3, 0
/* 805112A8  41 82 01 98 */	beq lbl_80511440
/* 805112AC  4B C9 71 C9 */	bl dKy_Sound_get__Fv
/* 805112B0  7C 79 1B 78 */	mr r25, r3
/* 805112B4  7F E3 FB 78 */	mr r3, r31
/* 805112B8  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 805112BC  38 80 7F FF */	li r4, 0x7fff
/* 805112C0  4B FF 53 15 */	bl pl_check__FP10e_rd_classfs
/* 805112C4  2C 03 00 00 */	cmpwi r3, 0
/* 805112C8  40 82 01 78 */	bne lbl_80511440
/* 805112CC  38 61 00 78 */	addi r3, r1, 0x78
/* 805112D0  7F 24 CB 78 */	mr r4, r25
/* 805112D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805112D8  4B D5 58 5D */	bl __mi__4cXyzCFRC3Vec
/* 805112DC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805112E0  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805112E4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805112E8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805112EC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805112F0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805112F4  38 61 00 FC */	addi r3, r1, 0xfc
/* 805112F8  4B E3 5E 41 */	bl PSVECSquareMag
/* 805112FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511304  40 81 00 58 */	ble lbl_8051135C
/* 80511308  FC 00 08 34 */	frsqrte f0, f1
/* 8051130C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80511310  FC 44 00 32 */	fmul f2, f4, f0
/* 80511314  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80511318  FC 00 00 32 */	fmul f0, f0, f0
/* 8051131C  FC 01 00 32 */	fmul f0, f1, f0
/* 80511320  FC 03 00 28 */	fsub f0, f3, f0
/* 80511324  FC 02 00 32 */	fmul f0, f2, f0
/* 80511328  FC 44 00 32 */	fmul f2, f4, f0
/* 8051132C  FC 00 00 32 */	fmul f0, f0, f0
/* 80511330  FC 01 00 32 */	fmul f0, f1, f0
/* 80511334  FC 03 00 28 */	fsub f0, f3, f0
/* 80511338  FC 02 00 32 */	fmul f0, f2, f0
/* 8051133C  FC 44 00 32 */	fmul f2, f4, f0
/* 80511340  FC 00 00 32 */	fmul f0, f0, f0
/* 80511344  FC 01 00 32 */	fmul f0, f1, f0
/* 80511348  FC 03 00 28 */	fsub f0, f3, f0
/* 8051134C  FC 02 00 32 */	fmul f0, f2, f0
/* 80511350  FC 21 00 32 */	fmul f1, f1, f0
/* 80511354  FC 20 08 18 */	frsp f1, f1
/* 80511358  48 00 00 88 */	b lbl_805113E0
lbl_8051135C:
/* 8051135C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80511360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511364  40 80 00 10 */	bge lbl_80511374
/* 80511368  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8051136C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80511370  48 00 00 70 */	b lbl_805113E0
lbl_80511374:
/* 80511374  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80511378  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8051137C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80511380  3C 00 7F 80 */	lis r0, 0x7f80
/* 80511384  7C 03 00 00 */	cmpw r3, r0
/* 80511388  41 82 00 14 */	beq lbl_8051139C
/* 8051138C  40 80 00 40 */	bge lbl_805113CC
/* 80511390  2C 03 00 00 */	cmpwi r3, 0
/* 80511394  41 82 00 20 */	beq lbl_805113B4
/* 80511398  48 00 00 34 */	b lbl_805113CC
lbl_8051139C:
/* 8051139C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805113A0  41 82 00 0C */	beq lbl_805113AC
/* 805113A4  38 00 00 01 */	li r0, 1
/* 805113A8  48 00 00 28 */	b lbl_805113D0
lbl_805113AC:
/* 805113AC  38 00 00 02 */	li r0, 2
/* 805113B0  48 00 00 20 */	b lbl_805113D0
lbl_805113B4:
/* 805113B4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805113B8  41 82 00 0C */	beq lbl_805113C4
/* 805113BC  38 00 00 05 */	li r0, 5
/* 805113C0  48 00 00 10 */	b lbl_805113D0
lbl_805113C4:
/* 805113C4  38 00 00 03 */	li r0, 3
/* 805113C8  48 00 00 08 */	b lbl_805113D0
lbl_805113CC:
/* 805113CC  38 00 00 04 */	li r0, 4
lbl_805113D0:
/* 805113D0  2C 00 00 01 */	cmpwi r0, 1
/* 805113D4  40 82 00 0C */	bne lbl_805113E0
/* 805113D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805113DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805113E0:
/* 805113E0  80 19 00 0C */	lwz r0, 0xc(r25)
/* 805113E4  1C 00 00 78 */	mulli r0, r0, 0x78
/* 805113E8  C8 5E 00 68 */	lfd f2, 0x68(r30)
/* 805113EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805113F0  90 01 02 CC */	stw r0, 0x2cc(r1)
/* 805113F4  3C 00 43 30 */	lis r0, 0x4330
/* 805113F8  90 01 02 C8 */	stw r0, 0x2c8(r1)
/* 805113FC  C8 01 02 C8 */	lfd f0, 0x2c8(r1)
/* 80511400  EC 00 10 28 */	fsubs f0, f0, f2
/* 80511404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511408  40 80 00 38 */	bge lbl_80511440
/* 8051140C  A8 1F 09 72 */	lha r0, 0x972(r31)
/* 80511410  B0 1F 09 74 */	sth r0, 0x974(r31)
/* 80511414  38 00 00 1B */	li r0, 0x1b
/* 80511418  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 8051141C  38 00 00 00 */	li r0, 0
/* 80511420  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80511424  C0 19 00 00 */	lfs f0, 0(r25)
/* 80511428  D0 1C 00 B4 */	stfs f0, 0xb4(r28)
/* 8051142C  C0 19 00 04 */	lfs f0, 4(r25)
/* 80511430  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 80511434  D0 03 00 04 */	stfs f0, 4(r3)
/* 80511438  C0 19 00 08 */	lfs f0, 8(r25)
/* 8051143C  D0 03 00 08 */	stfs f0, 8(r3)
lbl_80511440:
/* 80511440  7F 00 07 75 */	extsb. r0, r24
/* 80511444  41 82 01 30 */	beq lbl_80511574
/* 80511448  3A A1 02 74 */	addi r21, r1, 0x274
/* 8051144C  7E A3 AB 78 */	mr r3, r21
/* 80511450  4B B6 61 2D */	bl __ct__11dBgS_GndChkFv
/* 80511454  3C 60 80 52 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 80511458  38 63 90 F8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 8051145C  90 61 02 84 */	stw r3, 0x284(r1)
/* 80511460  3B 43 00 0C */	addi r26, r3, 0xc
/* 80511464  93 41 02 94 */	stw r26, 0x294(r1)
/* 80511468  3B 23 00 18 */	addi r25, r3, 0x18
/* 8051146C  93 21 02 B0 */	stw r25, 0x2b0(r1)
/* 80511470  3B 03 00 24 */	addi r24, r3, 0x24
/* 80511474  93 01 02 C0 */	stw r24, 0x2c0(r1)
/* 80511478  38 75 00 3C */	addi r3, r21, 0x3c
/* 8051147C  4B B6 79 ED */	bl SetObj__16dBgS_PolyPassChkFv
/* 80511480  38 61 02 20 */	addi r3, r1, 0x220
/* 80511484  4B B6 63 2D */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80511488  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8051148C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511490  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80511494  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 80511498  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8051149C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805114A0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 805114A4  EC 01 00 2A */	fadds f0, f1, f0
/* 805114A8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805114AC  38 61 02 20 */	addi r3, r1, 0x220
/* 805114B0  38 81 00 FC */	addi r4, r1, 0xfc
/* 805114B4  4B D5 68 75 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805114B8  7E A3 AB 78 */	mr r3, r21
/* 805114BC  38 81 00 FC */	addi r4, r1, 0xfc
/* 805114C0  4B D5 68 69 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805114C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805114C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805114CC  3A A3 0F 38 */	addi r21, r3, 0xf38
/* 805114D0  7E A3 AB 78 */	mr r3, r21
/* 805114D4  38 81 02 20 */	addi r4, r1, 0x220
/* 805114D8  4B B6 2F C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805114DC  D0 3F 09 84 */	stfs f1, 0x984(r31)
/* 805114E0  7E A3 AB 78 */	mr r3, r21
/* 805114E4  38 81 02 74 */	addi r4, r1, 0x274
/* 805114E8  4B B6 2F B9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805114EC  C0 5F 09 84 */	lfs f2, 0x984(r31)
/* 805114F0  EC 22 08 28 */	fsubs f1, f2, f1
/* 805114F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805114F8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 805114FC  40 80 00 48 */	bge lbl_80511544
/* 80511500  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80511504  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511508  40 81 00 3C */	ble lbl_80511544
/* 8051150C  38 00 00 1D */	li r0, 0x1d
/* 80511510  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80511514  7E A3 AB 78 */	mr r3, r21
/* 80511518  38 81 02 34 */	addi r4, r1, 0x234
/* 8051151C  4B B6 39 35 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80511520  2C 03 00 06 */	cmpwi r3, 6
/* 80511524  40 82 00 10 */	bne lbl_80511534
/* 80511528  38 00 00 01 */	li r0, 1
/* 8051152C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80511530  48 00 00 0C */	b lbl_8051153C
lbl_80511534:
/* 80511534  38 00 00 00 */	li r0, 0
/* 80511538  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_8051153C:
/* 8051153C  C0 1F 09 84 */	lfs f0, 0x984(r31)
/* 80511540  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80511544:
/* 80511544  38 61 02 20 */	addi r3, r1, 0x220
/* 80511548  38 80 FF FF */	li r4, -1
/* 8051154C  4B B6 62 FD */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80511550  3C 60 80 52 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x805190F8@ha */
/* 80511554  38 03 90 F8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x805190F8@l */
/* 80511558  90 01 02 84 */	stw r0, 0x284(r1)
/* 8051155C  93 41 02 94 */	stw r26, 0x294(r1)
/* 80511560  93 21 02 B0 */	stw r25, 0x2b0(r1)
/* 80511564  93 01 02 C0 */	stw r24, 0x2c0(r1)
/* 80511568  38 61 02 74 */	addi r3, r1, 0x274
/* 8051156C  38 80 00 00 */	li r4, 0
/* 80511570  4B B6 60 81 */	bl __dt__11dBgS_GndChkFv
lbl_80511574:
/* 80511574  7E C0 07 75 */	extsb. r0, r22
/* 80511578  41 82 00 44 */	beq lbl_805115BC
/* 8051157C  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80511580  38 80 00 01 */	li r4, 1
/* 80511584  4B DB 05 F9 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 80511588  88 1C 00 C0 */	lbz r0, 0xc0(r28)
/* 8051158C  28 00 00 00 */	cmplwi r0, 0
/* 80511590  41 82 00 38 */	beq lbl_805115C8
/* 80511594  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 80511598  28 00 00 06 */	cmplwi r0, 6
/* 8051159C  41 82 00 14 */	beq lbl_805115B0
/* 805115A0  28 00 00 07 */	cmplwi r0, 7
/* 805115A4  41 82 00 0C */	beq lbl_805115B0
/* 805115A8  28 00 00 08 */	cmplwi r0, 8
/* 805115AC  40 82 00 1C */	bne lbl_805115C8
lbl_805115B0:
/* 805115B0  38 00 00 14 */	li r0, 0x14
/* 805115B4  B0 1C 00 A4 */	sth r0, 0xa4(r28)
/* 805115B8  48 00 00 10 */	b lbl_805115C8
lbl_805115BC:
/* 805115BC  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 805115C0  38 80 00 00 */	li r4, 0
/* 805115C4  4B DB 05 B9 */	bl setLinkSearch__15Z2CreatureEnemyFb
lbl_805115C8:
/* 805115C8  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 805115CC  41 82 00 A8 */	beq lbl_80511674
/* 805115D0  88 1C 00 C0 */	lbz r0, 0xc0(r28)
/* 805115D4  28 00 00 00 */	cmplwi r0, 0
/* 805115D8  41 82 00 4C */	beq lbl_80511624
/* 805115DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805115E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805115E4  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 805115E8  28 00 00 00 */	cmplwi r0, 0
/* 805115EC  40 82 00 88 */	bne lbl_80511674
/* 805115F0  A8 1F 09 9C */	lha r0, 0x99c(r31)
/* 805115F4  2C 00 00 00 */	cmpwi r0, 0
/* 805115F8  40 82 00 7C */	bne lbl_80511674
/* 805115FC  C0 3F 09 78 */	lfs f1, 0x978(r31)
/* 80511600  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80511604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511608  40 81 00 6C */	ble lbl_80511674
/* 8051160C  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 80511610  28 00 00 00 */	cmplwi r0, 0
/* 80511614  41 82 00 60 */	beq lbl_80511674
/* 80511618  7F E3 FB 78 */	mr r3, r31
/* 8051161C  4B B0 86 61 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80511620  48 00 00 54 */	b lbl_80511674
lbl_80511624:
/* 80511624  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80511628  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8051162C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 80511630  7D 89 03 A6 */	mtctr r12
/* 80511634  4E 80 04 21 */	bctrl 
/* 80511638  28 03 00 00 */	cmplwi r3, 0
/* 8051163C  41 82 00 38 */	beq lbl_80511674
/* 80511640  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80511644  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80511648  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8051164C  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80511650  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80511654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511658  4C 41 13 82 */	cror 2, 1, 2
/* 8051165C  40 82 00 18 */	bne lbl_80511674
/* 80511660  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 80511664  28 00 00 00 */	cmplwi r0, 0
/* 80511668  41 82 00 0C */	beq lbl_80511674
/* 8051166C  7F E3 FB 78 */	mr r3, r31
/* 80511670  4B B0 86 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80511674:
/* 80511674  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 80511678  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8051167C  38 A0 00 02 */	li r5, 2
/* 80511680  38 C0 10 00 */	li r6, 0x1000
/* 80511684  4B D5 EF 85 */	bl cLib_addCalcAngleS2__FPssss
/* 80511688  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8051168C  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80511690  38 A0 00 02 */	li r5, 2
/* 80511694  38 C0 10 00 */	li r6, 0x1000
/* 80511698  4B D5 EF 71 */	bl cLib_addCalcAngleS2__FPssss
/* 8051169C  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 805116A0  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 805116A4  38 A0 00 02 */	li r5, 2
/* 805116A8  38 C0 10 00 */	li r6, 0x1000
/* 805116AC  4B D5 EF 5D */	bl cLib_addCalcAngleS2__FPssss
/* 805116B0  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805116B4  7C 00 07 75 */	extsb. r0, r0
/* 805116B8  40 82 01 9C */	bne lbl_80511854
/* 805116BC  38 00 00 03 */	li r0, 3
/* 805116C0  98 1F 05 46 */	stb r0, 0x546(r31)
/* 805116C4  C0 3F 09 EC */	lfs f1, 0x9ec(r31)
/* 805116C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805116CC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805116D0  41 82 00 58 */	beq lbl_80511728
/* 805116D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805116D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805116DC  80 63 00 00 */	lwz r3, 0(r3)
/* 805116E0  A8 9F 0A 0E */	lha r4, 0xa0e(r31)
/* 805116E4  4B AF AC F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805116E8  A8 1F 0A F0 */	lha r0, 0xaf0(r31)
/* 805116EC  2C 00 00 00 */	cmpwi r0, 0
/* 805116F0  40 82 00 10 */	bne lbl_80511700
/* 805116F4  C0 1F 09 EC */	lfs f0, 0x9ec(r31)
/* 805116F8  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805116FC  48 00 00 10 */	b lbl_8051170C
lbl_80511700:
/* 80511700  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511704  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511708  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_8051170C:
/* 8051170C  38 7C 00 54 */	addi r3, r28, 0x54
/* 80511710  C0 23 00 40 */	lfs f1, 0x40(r3)
/* 80511714  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80511718  EC 01 00 28 */	fsubs f0, f1, f0
/* 8051171C  FC 00 00 50 */	fneg f0, f0
/* 80511720  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80511724  48 00 00 28 */	b lbl_8051174C
lbl_80511728:
/* 80511728  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8051172C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80511730  80 63 00 00 */	lwz r3, 0(r3)
/* 80511734  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80511738  4B AF AC A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8051173C  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80511740  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511744  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80511748  D0 1F 05 30 */	stfs f0, 0x530(r31)
lbl_8051174C:
/* 8051174C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511750  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511754  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511758  38 61 00 FC */	addi r3, r1, 0xfc
/* 8051175C  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511760  4B D5 F7 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 80511764  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80511768  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8051176C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80511770  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80511774  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80511778  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 8051177C  7C 65 1B 78 */	mr r5, r3
/* 80511780  4B E3 59 11 */	bl PSVECAdd
/* 80511784  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80511788  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 8051178C  EC 01 00 2A */	fadds f0, f1, f0
/* 80511790  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80511794  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80511798  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8051179C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805117A0  40 80 00 08 */	bge lbl_805117A8
/* 805117A4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_805117A8:
/* 805117A8  88 1F 09 AD */	lbz r0, 0x9ad(r31)
/* 805117AC  7C 00 07 75 */	extsb. r0, r0
/* 805117B0  41 82 00 2C */	beq lbl_805117DC
/* 805117B4  34 7F 0D 1C */	addic. r3, r31, 0xd1c
/* 805117B8  41 82 00 24 */	beq lbl_805117DC
/* 805117BC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805117C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805117C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805117C8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805117CC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 805117D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805117D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805117D8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_805117DC:
/* 805117DC  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 805117E0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805117E4  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 805117E8  4B D5 E2 99 */	bl cLib_addCalc0__FPfff
/* 805117EC  C0 3F 09 F0 */	lfs f1, 0x9f0(r31)
/* 805117F0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 805117F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805117F8  40 81 04 F8 */	ble lbl_80511CF0
/* 805117FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511800  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511804  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511808  FC 00 08 50 */	fneg f0, f1
/* 8051180C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511810  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80511814  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80511818  80 63 00 00 */	lwz r3, 0(r3)
/* 8051181C  A8 9F 09 F4 */	lha r4, 0x9f4(r31)
/* 80511820  4B AF AB BD */	bl mDoMtx_YrotS__FPA4_fs
/* 80511824  38 61 00 FC */	addi r3, r1, 0xfc
/* 80511828  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8051182C  4B D5 F6 C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80511830  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80511834  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511838  7C 65 1B 78 */	mr r5, r3
/* 8051183C  4B E3 58 55 */	bl PSVECAdd
/* 80511840  38 7F 09 F0 */	addi r3, r31, 0x9f0
/* 80511844  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80511848  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 8051184C  4B D5 E2 35 */	bl cLib_addCalc0__FPfff
/* 80511850  48 00 04 A0 */	b lbl_80511CF0
lbl_80511854:
/* 80511854  38 00 00 22 */	li r0, 0x22
/* 80511858  98 1F 05 46 */	stb r0, 0x546(r31)
/* 8051185C  80 1F 09 8C */	lwz r0, 0x98c(r31)
/* 80511860  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80511864  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80511868  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8051186C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80511870  4B B0 7F 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80511874  7C 7C 1B 79 */	or. r28, r3, r3
/* 80511878  40 82 00 14 */	bne lbl_8051188C
/* 8051187C  38 00 00 00 */	li r0, 0
/* 80511880  B0 1F 09 72 */	sth r0, 0x972(r31)
/* 80511884  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80511888  48 00 10 74 */	b lbl_805128FC
lbl_8051188C:
/* 8051188C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80511890  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80511894  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80511898  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8051189C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 805118A0  7D 89 03 A6 */	mtctr r12
/* 805118A4  4E 80 04 21 */	bctrl 
/* 805118A8  28 03 00 00 */	cmplwi r3, 0
/* 805118AC  41 82 00 48 */	beq lbl_805118F4
/* 805118B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805118B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805118B8  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 805118BC  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 805118C0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805118C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805118C8  4C 41 13 82 */	cror 2, 1, 2
/* 805118CC  40 82 00 28 */	bne lbl_805118F4
/* 805118D0  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 805118D4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 805118D8  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 805118DC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805118E0  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 805118E4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 805118E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805118EC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805118F0  48 00 00 14 */	b lbl_80511904
lbl_805118F4:
/* 805118F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805118F8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 805118FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80511900  D0 1F 05 00 */	stfs f0, 0x500(r31)
lbl_80511904:
/* 80511904  88 1F 09 BE */	lbz r0, 0x9be(r31)
/* 80511908  2C 00 00 01 */	cmpwi r0, 1
/* 8051190C  40 82 00 38 */	bne lbl_80511944
/* 80511910  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 80511914  80 63 00 04 */	lwz r3, 4(r3)
/* 80511918  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8051191C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80511920  80 7C 06 88 */	lwz r3, 0x688(r28)
/* 80511924  38 03 00 0F */	addi r0, r3, 0xf
/* 80511928  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8051192C  7C 64 02 14 */	add r3, r4, r0
/* 80511930  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80511934  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80511938  80 84 00 00 */	lwz r4, 0(r4)
/* 8051193C  4B E3 4B 75 */	bl PSMTXCopy
/* 80511940  48 00 00 34 */	b lbl_80511974
lbl_80511944:
/* 80511944  80 7C 05 E0 */	lwz r3, 0x5e0(r28)
/* 80511948  80 63 00 04 */	lwz r3, 4(r3)
/* 8051194C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80511950  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80511954  80 7C 06 88 */	lwz r3, 0x688(r28)
/* 80511958  38 03 00 10 */	addi r0, r3, 0x10
/* 8051195C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80511960  7C 64 02 14 */	add r3, r4, r0
/* 80511964  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80511968  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8051196C  80 84 00 00 */	lwz r4, 0(r4)
/* 80511970  4B E3 4B 41 */	bl PSMTXCopy
lbl_80511974:
/* 80511974  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80511978  7C 00 07 75 */	extsb. r0, r0
/* 8051197C  41 82 00 1C */	beq lbl_80511998
/* 80511980  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80511984  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80511988  C0 1E 01 68 */	lfs f0, 0x168(r30)
/* 8051198C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511990  D0 21 01 04 */	stfs f1, 0x104(r1)
/* 80511994  48 00 00 18 */	b lbl_805119AC
lbl_80511998:
/* 80511998  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8051199C  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 805119A0  C0 1E 01 6C */	lfs f0, 0x16c(r30)
/* 805119A4  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805119A8  D0 21 01 04 */	stfs f1, 0x104(r1)
lbl_805119AC:
/* 805119AC  38 61 00 FC */	addi r3, r1, 0xfc
/* 805119B0  38 9F 09 B0 */	addi r4, r31, 0x9b0
/* 805119B4  4B D5 F5 39 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805119B8  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 805119BC  2C 00 00 02 */	cmpwi r0, 2
/* 805119C0  40 82 00 F4 */	bne lbl_80511AB4
/* 805119C4  C0 1F 09 B0 */	lfs f0, 0x9b0(r31)
/* 805119C8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805119CC  C0 1F 09 B4 */	lfs f0, 0x9b4(r31)
/* 805119D0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805119D4  C0 1F 09 B8 */	lfs f0, 0x9b8(r31)
/* 805119D8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805119DC  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 805119E0  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805119E4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 805119E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805119EC  A8 1C 04 E8 */	lha r0, 0x4e8(r28)
/* 805119F0  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 805119F4  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805119F8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805119FC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80511A00  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80511A04  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80511A08  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80511A0C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80511A10  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511A14  38 61 00 FC */	addi r3, r1, 0xfc
/* 80511A18  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511A1C  4B D5 F4 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80511A20  38 61 00 6C */	addi r3, r1, 0x6c
/* 80511A24  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511A28  38 BF 09 B0 */	addi r5, r31, 0x9b0
/* 80511A2C  4B D5 51 09 */	bl __mi__4cXyzCFRC3Vec
/* 80511A30  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80511A34  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80511A38  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80511A3C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511A40  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80511A44  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511A48  EC 21 00 72 */	fmuls f1, f1, f1
/* 80511A4C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80511A50  EC 41 00 2A */	fadds f2, f1, f0
/* 80511A54  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511A58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80511A5C  40 81 00 0C */	ble lbl_80511A68
/* 80511A60  FC 00 10 34 */	frsqrte f0, f2
/* 80511A64  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80511A68:
/* 80511A68  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80511A6C  4B D5 5C 09 */	bl cM_atan2s__Fff
/* 80511A70  7C 03 00 D0 */	neg r0, r3
/* 80511A74  7C 03 07 34 */	extsh r3, r0
/* 80511A78  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80511A7C  7C 00 1A 14 */	add r0, r0, r3
/* 80511A80  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80511A84  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80511A88  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80511A8C  88 1F 09 BE */	lbz r0, 0x9be(r31)
/* 80511A90  2C 00 00 01 */	cmpwi r0, 1
/* 80511A94  40 82 02 20 */	bne lbl_80511CB4
/* 80511A98  28 1F 00 00 */	cmplwi r31, 0
/* 80511A9C  41 82 00 0C */	beq lbl_80511AA8
/* 80511AA0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80511AA4  48 00 00 08 */	b lbl_80511AAC
lbl_80511AA8:
/* 80511AA8  38 00 FF FF */	li r0, -1
lbl_80511AAC:
/* 80511AAC  90 1C 14 34 */	stw r0, 0x1434(r28)
/* 80511AB0  48 00 02 04 */	b lbl_80511CB4
lbl_80511AB4:
/* 80511AB4  38 61 00 60 */	addi r3, r1, 0x60
/* 80511AB8  38 9F 09 B0 */	addi r4, r31, 0x9b0
/* 80511ABC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80511AC0  4B D5 50 75 */	bl __mi__4cXyzCFRC3Vec
/* 80511AC4  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 80511AC8  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80511ACC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80511AD0  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511AD4  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 80511AD8  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80511ADC  4B D5 5B 99 */	bl cM_atan2s__Fff
/* 80511AE0  7C 64 1B 78 */	mr r4, r3
/* 80511AE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80511AE8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80511AEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80511AF0  4B AF A8 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80511AF4  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80511AF8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80511AFC  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80511B00  EC 00 00 32 */	fmuls f0, f0, f0
/* 80511B04  EC 41 00 2A */	fadds f2, f1, f0
/* 80511B08  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511B0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80511B10  40 81 00 0C */	ble lbl_80511B1C
/* 80511B14  FC 00 10 34 */	frsqrte f0, f2
/* 80511B18  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80511B1C:
/* 80511B1C  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80511B20  4B D5 5B 55 */	bl cM_atan2s__Fff
/* 80511B24  7C 03 00 D0 */	neg r0, r3
/* 80511B28  7C 04 07 34 */	extsh r4, r0
/* 80511B2C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80511B30  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80511B34  80 63 00 00 */	lwz r3, 0(r3)
/* 80511B38  4B AF A8 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 80511B3C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511B40  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511B44  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511B48  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 80511B4C  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511B50  38 61 00 FC */	addi r3, r1, 0xfc
/* 80511B54  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511B58  4B D5 F3 95 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80511B5C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80511B60  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80511B64  7C 65 1B 78 */	mr r5, r3
/* 80511B68  4B E3 55 29 */	bl PSVECAdd
/* 80511B6C  38 61 00 54 */	addi r3, r1, 0x54
/* 80511B70  38 9F 09 B0 */	addi r4, r31, 0x9b0
/* 80511B74  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80511B78  4B D5 4F BD */	bl __mi__4cXyzCFRC3Vec
/* 80511B7C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80511B80  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511B84  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80511B88  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511B8C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80511B90  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511B94  38 61 00 FC */	addi r3, r1, 0xfc
/* 80511B98  4B E3 55 A1 */	bl PSVECSquareMag
/* 80511B9C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511BA4  40 81 00 58 */	ble lbl_80511BFC
/* 80511BA8  FC 00 08 34 */	frsqrte f0, f1
/* 80511BAC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80511BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80511BB4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80511BB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80511BBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80511BC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80511BC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80511BC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80511BCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80511BD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80511BD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80511BD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80511BDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80511BE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80511BE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80511BE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80511BEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80511BF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80511BF4  FC 20 08 18 */	frsp f1, f1
/* 80511BF8  48 00 00 88 */	b lbl_80511C80
lbl_80511BFC:
/* 80511BFC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80511C00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511C04  40 80 00 10 */	bge lbl_80511C14
/* 80511C08  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80511C0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80511C10  48 00 00 70 */	b lbl_80511C80
lbl_80511C14:
/* 80511C14  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80511C18  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80511C1C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80511C20  3C 00 7F 80 */	lis r0, 0x7f80
/* 80511C24  7C 03 00 00 */	cmpw r3, r0
/* 80511C28  41 82 00 14 */	beq lbl_80511C3C
/* 80511C2C  40 80 00 40 */	bge lbl_80511C6C
/* 80511C30  2C 03 00 00 */	cmpwi r3, 0
/* 80511C34  41 82 00 20 */	beq lbl_80511C54
/* 80511C38  48 00 00 34 */	b lbl_80511C6C
lbl_80511C3C:
/* 80511C3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80511C40  41 82 00 0C */	beq lbl_80511C4C
/* 80511C44  38 00 00 01 */	li r0, 1
/* 80511C48  48 00 00 28 */	b lbl_80511C70
lbl_80511C4C:
/* 80511C4C  38 00 00 02 */	li r0, 2
/* 80511C50  48 00 00 20 */	b lbl_80511C70
lbl_80511C54:
/* 80511C54  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80511C58  41 82 00 0C */	beq lbl_80511C64
/* 80511C5C  38 00 00 05 */	li r0, 5
/* 80511C60  48 00 00 10 */	b lbl_80511C70
lbl_80511C64:
/* 80511C64  38 00 00 03 */	li r0, 3
/* 80511C68  48 00 00 08 */	b lbl_80511C70
lbl_80511C6C:
/* 80511C6C  38 00 00 04 */	li r0, 4
lbl_80511C70:
/* 80511C70  2C 00 00 01 */	cmpwi r0, 1
/* 80511C74  40 82 00 0C */	bne lbl_80511C80
/* 80511C78  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80511C7C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80511C80:
/* 80511C80  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80511C84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511C88  41 80 00 10 */	blt lbl_80511C98
/* 80511C8C  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 80511C90  2C 00 00 00 */	cmpwi r0, 0
/* 80511C94  40 82 00 0C */	bne lbl_80511CA0
lbl_80511C98:
/* 80511C98  38 00 00 02 */	li r0, 2
/* 80511C9C  98 1F 09 BC */	stb r0, 0x9bc(r31)
lbl_80511CA0:
/* 80511CA0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80511CA4  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80511CA8  38 A0 00 04 */	li r5, 4
/* 80511CAC  38 C0 08 00 */	li r6, 0x800
/* 80511CB0  4B D5 E9 59 */	bl cLib_addCalcAngleS2__FPssss
lbl_80511CB4:
/* 80511CB4  C0 3F 09 C0 */	lfs f1, 0x9c0(r31)
/* 80511CB8  C0 1F 09 C4 */	lfs f0, 0x9c4(r31)
/* 80511CBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80511CC0  D0 1F 09 C0 */	stfs f0, 0x9c0(r31)
/* 80511CC4  C0 3F 09 C4 */	lfs f1, 0x9c4(r31)
/* 80511CC8  C0 1E 01 70 */	lfs f0, 0x170(r30)
/* 80511CCC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80511CD0  D0 1F 09 C4 */	stfs f0, 0x9c4(r31)
/* 80511CD4  C0 3F 09 C0 */	lfs f1, 0x9c0(r31)
/* 80511CD8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511CDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511CE0  4C 40 13 82 */	cror 2, 0, 2
/* 80511CE4  40 82 00 0C */	bne lbl_80511CF0
/* 80511CE8  D0 1F 09 C0 */	stfs f0, 0x9c0(r31)
/* 80511CEC  D0 1F 09 C4 */	stfs f0, 0x9c4(r31)
lbl_80511CF0:
/* 80511CF0  3A C0 00 00 */	li r22, 0
/* 80511CF4  38 00 00 00 */	li r0, 0
/* 80511CF8  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80511CFC  3A E0 10 00 */	li r23, 0x1000
/* 80511D00  88 7F 09 C8 */	lbz r3, 0x9c8(r31)
/* 80511D04  7C 60 07 74 */	extsb r0, r3
/* 80511D08  2C 00 FF FF */	cmpwi r0, -1
/* 80511D0C  40 82 00 5C */	bne lbl_80511D68
/* 80511D10  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80511D14  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80511D18  80 63 00 00 */	lwz r3, 0(r3)
/* 80511D1C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80511D20  4B AF A6 BD */	bl mDoMtx_YrotS__FPA4_fs
/* 80511D24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511D28  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80511D2C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80511D30  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511D34  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80511D38  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80511D3C  38 61 00 FC */	addi r3, r1, 0xfc
/* 80511D40  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80511D44  4B D5 F1 A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80511D48  38 61 00 E4 */	addi r3, r1, 0xe4
/* 80511D4C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80511D50  7C 65 1B 78 */	mr r5, r3
/* 80511D54  4B E3 53 3D */	bl PSVECAdd
/* 80511D58  38 00 00 02 */	li r0, 2
/* 80511D5C  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80511D60  3A E0 08 00 */	li r23, 0x800
/* 80511D64  48 00 00 48 */	b lbl_80511DAC
lbl_80511D68:
/* 80511D68  2C 00 00 0B */	cmpwi r0, 0xb
/* 80511D6C  41 80 00 28 */	blt lbl_80511D94
/* 80511D70  38 03 FF F6 */	addi r0, r3, -10
/* 80511D74  98 1F 09 C8 */	stb r0, 0x9c8(r31)
/* 80511D78  C0 1F 09 D4 */	lfs f0, 0x9d4(r31)
/* 80511D7C  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80511D80  C0 1F 09 D8 */	lfs f0, 0x9d8(r31)
/* 80511D84  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80511D88  C0 1F 09 DC */	lfs f0, 0x9dc(r31)
/* 80511D8C  D0 01 00 EC */	stfs f0, 0xec(r1)
/* 80511D90  48 00 00 1C */	b lbl_80511DAC
lbl_80511D94:
/* 80511D94  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80511D98  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80511D9C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80511DA0  D0 01 00 E8 */	stfs f0, 0xe8(r1)
/* 80511DA4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80511DA8  D0 01 00 EC */	stfs f0, 0xec(r1)
lbl_80511DAC:
/* 80511DAC  88 1F 09 BC */	lbz r0, 0x9bc(r31)
/* 80511DB0  2C 00 00 02 */	cmpwi r0, 2
/* 80511DB4  40 82 00 08 */	bne lbl_80511DBC
/* 80511DB8  3A E0 10 00 */	li r23, 0x1000
lbl_80511DBC:
/* 80511DBC  88 1F 09 C8 */	lbz r0, 0x9c8(r31)
/* 80511DC0  7C 00 07 75 */	extsb. r0, r0
/* 80511DC4  41 82 01 DC */	beq lbl_80511FA0
/* 80511DC8  38 61 00 48 */	addi r3, r1, 0x48
/* 80511DCC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 80511DD0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80511DD4  4B D5 4D 61 */	bl __mi__4cXyzCFRC3Vec
/* 80511DD8  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80511DDC  D0 21 00 FC */	stfs f1, 0xfc(r1)
/* 80511DE0  C0 61 00 4C */	lfs f3, 0x4c(r1)
/* 80511DE4  D0 61 01 00 */	stfs f3, 0x100(r1)
/* 80511DE8  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80511DEC  D0 41 01 04 */	stfs f2, 0x104(r1)
/* 80511DF0  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 80511DF4  EC 03 00 2A */	fadds f0, f3, f0
/* 80511DF8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80511DFC  4B D5 58 79 */	bl cM_atan2s__Fff
/* 80511E00  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80511E04  7C 00 18 50 */	subf r0, r0, r3
/* 80511E08  7C 15 07 34 */	extsh r21, r0
/* 80511E0C  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80511E10  EC 20 00 32 */	fmuls f1, f0, f0
/* 80511E14  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80511E18  EC 00 00 32 */	fmuls f0, f0, f0
/* 80511E1C  EC 41 00 2A */	fadds f2, f1, f0
/* 80511E20  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511E24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80511E28  40 81 00 0C */	ble lbl_80511E34
/* 80511E2C  FC 00 10 34 */	frsqrte f0, f2
/* 80511E30  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80511E34:
/* 80511E34  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80511E38  4B D5 58 3D */	bl cM_atan2s__Fff
/* 80511E3C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80511E40  7C 00 1A 14 */	add r0, r0, r3
/* 80511E44  7C 16 07 34 */	extsh r22, r0
/* 80511E48  88 1F 09 C8 */	lbz r0, 0x9c8(r31)
/* 80511E4C  7C 00 07 74 */	extsb r0, r0
/* 80511E50  2C 00 00 02 */	cmpwi r0, 2
/* 80511E54  41 81 00 54 */	bgt lbl_80511EA8
/* 80511E58  2C 15 3E 80 */	cmpwi r21, 0x3e80
/* 80511E5C  40 81 00 0C */	ble lbl_80511E68
/* 80511E60  3A A0 3E 80 */	li r21, 0x3e80
/* 80511E64  48 00 00 10 */	b lbl_80511E74
lbl_80511E68:
/* 80511E68  2C 15 C1 80 */	cmpwi r21, -16000
/* 80511E6C  40 80 00 08 */	bge lbl_80511E74
/* 80511E70  3A A0 C1 80 */	li r21, -16000
lbl_80511E74:
/* 80511E74  2C 16 3E 80 */	cmpwi r22, 0x3e80
/* 80511E78  40 81 00 0C */	ble lbl_80511E84
/* 80511E7C  3A C0 3E 80 */	li r22, 0x3e80
/* 80511E80  48 00 00 10 */	b lbl_80511E90
lbl_80511E84:
/* 80511E84  2C 16 C1 80 */	cmpwi r22, -16000
/* 80511E88  40 80 00 08 */	bge lbl_80511E90
/* 80511E8C  3A C0 C1 80 */	li r22, -16000
lbl_80511E90:
/* 80511E90  38 7F 09 CA */	addi r3, r31, 0x9ca
/* 80511E94  7E A4 AB 78 */	mr r4, r21
/* 80511E98  38 A0 00 02 */	li r5, 2
/* 80511E9C  7E E6 BB 78 */	mr r6, r23
/* 80511EA0  4B D5 E7 69 */	bl cLib_addCalcAngleS2__FPssss
/* 80511EA4  48 00 01 18 */	b lbl_80511FBC
lbl_80511EA8:
/* 80511EA8  2C 00 00 05 */	cmpwi r0, 5
/* 80511EAC  40 82 00 40 */	bne lbl_80511EEC
/* 80511EB0  A8 1F 09 70 */	lha r0, 0x970(r31)
/* 80511EB4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80511EB8  40 82 01 04 */	bne lbl_80511FBC
/* 80511EBC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80511EC0  4B D5 5C 0D */	bl cM_rndF2__Ff
/* 80511EC4  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80511EC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80511ECC  40 80 00 F0 */	bge lbl_80511FBC
/* 80511ED0  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80511ED4  4B D5 5C 31 */	bl cM_rndFX2__Ff
/* 80511ED8  FC 00 08 1E */	fctiwz f0, f1
/* 80511EDC  D8 01 02 C8 */	stfd f0, 0x2c8(r1)
/* 80511EE0  80 01 02 CC */	lwz r0, 0x2cc(r1)
/* 80511EE4  B0 1F 09 D0 */	sth r0, 0x9d0(r31)
/* 80511EE8  48 00 00 D4 */	b lbl_80511FBC
lbl_80511EEC:
/* 80511EEC  2C 15 75 30 */	cmpwi r21, 0x7530
/* 80511EF0  40 81 00 14 */	ble lbl_80511F04
/* 80511EF4  3A A0 75 30 */	li r21, 0x7530
/* 80511EF8  38 00 00 01 */	li r0, 1
/* 80511EFC  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80511F00  48 00 00 18 */	b lbl_80511F18
lbl_80511F04:
/* 80511F04  2C 15 9E 58 */	cmpwi r21, -25000
/* 80511F08  40 80 00 10 */	bge lbl_80511F18
/* 80511F0C  3A A0 9E 58 */	li r21, -25000
/* 80511F10  38 00 00 01 */	li r0, 1
/* 80511F14  98 1F 09 A4 */	stb r0, 0x9a4(r31)
lbl_80511F18:
/* 80511F18  38 7F 09 CA */	addi r3, r31, 0x9ca
/* 80511F1C  7E A0 07 34 */	extsh r0, r21
/* 80511F20  7C 00 0E 70 */	srawi r0, r0, 1
/* 80511F24  7C 00 01 94 */	addze r0, r0
/* 80511F28  7C 04 07 34 */	extsh r4, r0
/* 80511F2C  38 A0 00 02 */	li r5, 2
/* 80511F30  38 C0 10 00 */	li r6, 0x1000
/* 80511F34  4B D5 E6 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 80511F38  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 80511F3C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80511F40  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 80511F44  EC 00 00 32 */	fmuls f0, f0, f0
/* 80511F48  EC 41 00 2A */	fadds f2, f1, f0
/* 80511F4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80511F50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80511F54  40 81 00 0C */	ble lbl_80511F60
/* 80511F58  FC 00 10 34 */	frsqrte f0, f2
/* 80511F5C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80511F60:
/* 80511F60  C0 21 01 00 */	lfs f1, 0x100(r1)
/* 80511F64  4B D5 57 11 */	bl cM_atan2s__Fff
/* 80511F68  7C 03 00 D0 */	neg r0, r3
/* 80511F6C  7C 16 07 34 */	extsh r22, r0
/* 80511F70  2C 16 2A F8 */	cmpwi r22, 0x2af8
/* 80511F74  40 81 00 14 */	ble lbl_80511F88
/* 80511F78  3A C0 2A F8 */	li r22, 0x2af8
/* 80511F7C  38 00 00 01 */	li r0, 1
/* 80511F80  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80511F84  48 00 00 38 */	b lbl_80511FBC
lbl_80511F88:
/* 80511F88  2C 16 E0 C0 */	cmpwi r22, -8000
/* 80511F8C  40 80 00 30 */	bge lbl_80511FBC
/* 80511F90  3A C0 E0 C0 */	li r22, -8000
/* 80511F94  38 00 00 01 */	li r0, 1
/* 80511F98  98 1F 09 A4 */	stb r0, 0x9a4(r31)
/* 80511F9C  48 00 00 20 */	b lbl_80511FBC
lbl_80511FA0:
/* 80511FA0  38 7F 09 CA */	addi r3, r31, 0x9ca
/* 80511FA4  38 80 00 00 */	li r4, 0
/* 80511FA8  38 A0 00 02 */	li r5, 2
/* 80511FAC  38 C0 10 00 */	li r6, 0x1000
/* 80511FB0  4B D5 E6 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80511FB4  38 00 00 00 */	li r0, 0
/* 80511FB8  B0 1F 09 D0 */	sth r0, 0x9d0(r31)
lbl_80511FBC:
/* 80511FBC  38 7F 09 CC */	addi r3, r31, 0x9cc
/* 80511FC0  7E C4 B3 78 */	mr r4, r22
/* 80511FC4  38 A0 00 02 */	li r5, 2
/* 80511FC8  7E E6 BB 78 */	mr r6, r23
/* 80511FCC  4B D5 E6 3D */	bl cLib_addCalcAngleS2__FPssss
/* 80511FD0  38 7F 09 CE */	addi r3, r31, 0x9ce
/* 80511FD4  A8 9F 09 D0 */	lha r4, 0x9d0(r31)
/* 80511FD8  38 A0 00 04 */	li r5, 4
/* 80511FDC  38 C0 05 00 */	li r6, 0x500
/* 80511FE0  4B D5 E6 29 */	bl cLib_addCalcAngleS2__FPssss
/* 80511FE4  C0 1F 0A 2C */	lfs f0, 0xa2c(r31)
/* 80511FE8  FC 20 02 10 */	fabs f1, f0
/* 80511FEC  FC 40 08 18 */	frsp f2, f1
/* 80511FF0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80511FF4  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80511FF8  40 81 00 60 */	ble lbl_80512058
/* 80511FFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80512000  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80512004  A8 1F 0A 30 */	lha r0, 0xa30(r31)
/* 80512008  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8051200C  7C 63 02 14 */	add r3, r3, r0
/* 80512010  C0 63 00 04 */	lfs f3, 4(r3)
/* 80512014  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 80512018  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8051201C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80512020  FC 00 00 1E */	fctiwz f0, f0
/* 80512024  D8 01 02 C8 */	stfd f0, 0x2c8(r1)
/* 80512028  80 01 02 CC */	lwz r0, 0x2cc(r1)
/* 8051202C  B0 1F 0A 7A */	sth r0, 0xa7a(r31)
/* 80512030  A8 7F 0A 80 */	lha r3, 0xa80(r31)
/* 80512034  A8 1F 0A 7A */	lha r0, 0xa7a(r31)
/* 80512038  7C 03 02 14 */	add r0, r3, r0
/* 8051203C  B0 1F 0A 80 */	sth r0, 0xa80(r31)
/* 80512040  38 7F 0A 2C */	addi r3, r31, 0xa2c
/* 80512044  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 80512048  4B D5 DA 39 */	bl cLib_addCalc0__FPfff
/* 8051204C  A8 7F 0A 30 */	lha r3, 0xa30(r31)
/* 80512050  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 80512054  B0 1F 0A 30 */	sth r0, 0xa30(r31)
lbl_80512058:
/* 80512058  C0 1F 0A 24 */	lfs f0, 0xa24(r31)
/* 8051205C  FC 20 02 10 */	fabs f1, f0
/* 80512060  FC 40 08 18 */	frsp f2, f1
/* 80512064  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80512068  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8051206C  40 81 00 50 */	ble lbl_805120BC
/* 80512070  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80512074  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80512078  A8 1F 0A 28 */	lha r0, 0xa28(r31)
/* 8051207C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80512080  7C 63 02 14 */	add r3, r3, r0
/* 80512084  C0 63 00 04 */	lfs f3, 4(r3)
/* 80512088  C0 5E 01 1C */	lfs f2, 0x11c(r30)
/* 8051208C  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80512090  EC 02 00 32 */	fmuls f0, f2, f0
/* 80512094  FC 00 00 1E */	fctiwz f0, f0
/* 80512098  D8 01 02 C8 */	stfd f0, 0x2c8(r1)
/* 8051209C  80 01 02 CC */	lwz r0, 0x2cc(r1)
/* 805120A0  B0 1F 0A 74 */	sth r0, 0xa74(r31)
/* 805120A4  38 7F 0A 24 */	addi r3, r31, 0xa24
/* 805120A8  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 805120AC  4B D5 D9 D5 */	bl cLib_addCalc0__FPfff
/* 805120B0  A8 7F 0A 28 */	lha r3, 0xa28(r31)
/* 805120B4  38 03 0F A0 */	addi r0, r3, 0xfa0
/* 805120B8  B0 1F 0A 28 */	sth r0, 0xa28(r31)
lbl_805120BC:
/* 805120BC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805120C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805120C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805120C8  40 80 00 30 */	bge lbl_805120F8
/* 805120CC  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 805120D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805120D4  41 82 00 24 */	beq lbl_805120F8
/* 805120D8  38 7F 0A 2C */	addi r3, r31, 0xa2c
/* 805120DC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805120E0  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 805120E4  4B D5 D9 9D */	bl cLib_addCalc0__FPfff
/* 805120E8  38 7F 0A 24 */	addi r3, r31, 0xa24
/* 805120EC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805120F0  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 805120F4  4B D5 D9 8D */	bl cLib_addCalc0__FPfff
lbl_805120F8:
/* 805120F8  C0 3F 09 EC */	lfs f1, 0x9ec(r31)
/* 805120FC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80512100  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80512104  41 82 01 48 */	beq lbl_8051224C
/* 80512108  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8051210C  A8 1F 0A 0E */	lha r0, 0xa0e(r31)
/* 80512110  7C 03 00 50 */	subf r0, r3, r0
/* 80512114  7C 04 07 34 */	extsh r4, r0
/* 80512118  20 64 40 00 */	subfic r3, r4, 0x4000
/* 8051211C  B0 7F 0A 88 */	sth r3, 0xa88(r31)
/* 80512120  A8 1F 0A 88 */	lha r0, 0xa88(r31)
/* 80512124  2C 00 17 70 */	cmpwi r0, 0x1770
/* 80512128  40 81 00 10 */	ble lbl_80512138
/* 8051212C  38 00 17 70 */	li r0, 0x1770
/* 80512130  B0 1F 0A 88 */	sth r0, 0xa88(r31)
/* 80512134  48 00 00 14 */	b lbl_80512148
lbl_80512138:
/* 80512138  2C 00 D1 20 */	cmpwi r0, -12000
/* 8051213C  40 80 00 0C */	bge lbl_80512148
/* 80512140  38 00 D1 20 */	li r0, -12000
/* 80512144  B0 1F 0A 88 */	sth r0, 0xa88(r31)
lbl_80512148:
/* 80512148  B0 7F 0A 8E */	sth r3, 0xa8e(r31)
/* 8051214C  A8 1F 0A 8E */	lha r0, 0xa8e(r31)
/* 80512150  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 80512154  40 81 00 10 */	ble lbl_80512164
/* 80512158  38 00 3A 98 */	li r0, 0x3a98
/* 8051215C  B0 1F 0A 8E */	sth r0, 0xa8e(r31)
/* 80512160  48 00 00 14 */	b lbl_80512174
lbl_80512164:
/* 80512164  7C 00 07 35 */	extsh. r0, r0
/* 80512168  40 80 00 0C */	bge lbl_80512174
/* 8051216C  38 00 00 00 */	li r0, 0
/* 80512170  B0 1F 0A 8E */	sth r0, 0xa8e(r31)
lbl_80512174:
/* 80512174  38 64 40 00 */	addi r3, r4, 0x4000
/* 80512178  B0 7F 0A 94 */	sth r3, 0xa94(r31)
/* 8051217C  A8 1F 0A 94 */	lha r0, 0xa94(r31)
/* 80512180  2C 00 17 70 */	cmpwi r0, 0x1770
/* 80512184  40 81 00 10 */	ble lbl_80512194
/* 80512188  38 00 17 70 */	li r0, 0x1770
/* 8051218C  B0 1F 0A 94 */	sth r0, 0xa94(r31)
/* 80512190  48 00 00 14 */	b lbl_805121A4
lbl_80512194:
/* 80512194  2C 00 D1 20 */	cmpwi r0, -12000
/* 80512198  40 80 00 0C */	bge lbl_805121A4
/* 8051219C  38 00 D1 20 */	li r0, -12000
/* 805121A0  B0 1F 0A 94 */	sth r0, 0xa94(r31)
lbl_805121A4:
/* 805121A4  B0 7F 0A 9A */	sth r3, 0xa9a(r31)
/* 805121A8  A8 1F 0A 9A */	lha r0, 0xa9a(r31)
/* 805121AC  2C 00 3A 98 */	cmpwi r0, 0x3a98
/* 805121B0  40 81 00 10 */	ble lbl_805121C0
/* 805121B4  38 00 3A 98 */	li r0, 0x3a98
/* 805121B8  B0 1F 0A 9A */	sth r0, 0xa9a(r31)
/* 805121BC  48 00 00 14 */	b lbl_805121D0
lbl_805121C0:
/* 805121C0  7C 00 07 35 */	extsh. r0, r0
/* 805121C4  40 80 00 0C */	bge lbl_805121D0
/* 805121C8  38 00 00 00 */	li r0, 0
/* 805121CC  B0 1F 0A 9A */	sth r0, 0xa9a(r31)
lbl_805121D0:
/* 805121D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805121D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805121D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805121DC  4B AF A2 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 805121E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805121E4  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805121E8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805121EC  C0 1E 01 74 */	lfs f0, 0x174(r30)
/* 805121F0  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805121F4  38 61 00 FC */	addi r3, r1, 0xfc
/* 805121F8  38 81 00 F0 */	addi r4, r1, 0xf0
/* 805121FC  4B D5 EC F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80512200  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 80512204  FC 00 00 50 */	fneg f0, f0
/* 80512208  FC 00 00 1E */	fctiwz f0, f0
/* 8051220C  D8 01 02 C8 */	stfd f0, 0x2c8(r1)
/* 80512210  80 01 02 CC */	lwz r0, 0x2cc(r1)
/* 80512214  B0 1F 0A E6 */	sth r0, 0xae6(r31)
/* 80512218  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 8051221C  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 80512220  FC 00 00 50 */	fneg f0, f0
/* 80512224  EC 01 00 32 */	fmuls f0, f1, f0
/* 80512228  FC 00 00 1E */	fctiwz f0, f0
/* 8051222C  D8 01 02 D0 */	stfd f0, 0x2d0(r1)
/* 80512230  80 01 02 D4 */	lwz r0, 0x2d4(r1)
/* 80512234  B0 1F 0A E4 */	sth r0, 0xae4(r31)
/* 80512238  A8 1F 0A E4 */	lha r0, 0xae4(r31)
/* 8051223C  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80512240  40 81 00 0C */	ble lbl_8051224C
/* 80512244  38 00 27 10 */	li r0, 0x2710
/* 80512248  B0 1F 0A E4 */	sth r0, 0xae4(r31)
lbl_8051224C:
/* 8051224C  3A C0 00 00 */	li r22, 0
/* 80512250  3A E0 00 00 */	li r23, 0
/* 80512254  3B 00 00 00 */	li r24, 0
/* 80512258  3B 20 00 00 */	li r25, 0
/* 8051225C  3C 60 80 52 */	lis r3, j_spd@ha /* 0x80518D28@ha */
/* 80512260  3B A3 8D 28 */	addi r29, r3, j_spd@l /* 0x80518D28@l */
lbl_80512264:
/* 80512264  7E BF CA 14 */	add r21, r31, r25
/* 80512268  38 75 0A 32 */	addi r3, r21, 0xa32
/* 8051226C  A8 95 0A 74 */	lha r4, 0xa74(r21)
/* 80512270  38 A0 00 02 */	li r5, 2
/* 80512274  7C DD C2 AE */	lhax r6, r29, r24
/* 80512278  4B D5 E3 91 */	bl cLib_addCalcAngleS2__FPssss
/* 8051227C  38 75 0A 34 */	addi r3, r21, 0xa34
/* 80512280  A8 95 0A 76 */	lha r4, 0xa76(r21)
/* 80512284  38 A0 00 02 */	li r5, 2
/* 80512288  7C DD C2 AE */	lhax r6, r29, r24
/* 8051228C  4B D5 E3 7D */	bl cLib_addCalcAngleS2__FPssss
/* 80512290  38 75 0A 36 */	addi r3, r21, 0xa36
/* 80512294  A8 95 0A 78 */	lha r4, 0xa78(r21)
/* 80512298  38 A0 00 02 */	li r5, 2
/* 8051229C  7C DD C2 AE */	lhax r6, r29, r24
/* 805122A0  4B D5 E3 69 */	bl cLib_addCalcAngleS2__FPssss
/* 805122A4  38 00 00 00 */	li r0, 0
/* 805122A8  B0 15 0A 78 */	sth r0, 0xa78(r21)
/* 805122AC  B0 15 0A 74 */	sth r0, 0xa74(r21)
/* 805122B0  2C 16 00 03 */	cmpwi r22, 3
/* 805122B4  41 80 00 58 */	blt lbl_8051230C
/* 805122B8  2C 16 00 06 */	cmpwi r22, 6
/* 805122BC  41 81 00 50 */	bgt lbl_8051230C
/* 805122C0  38 98 0A CC */	addi r4, r24, 0xacc
/* 805122C4  7C 7F 22 AE */	lhax r3, r31, r4
/* 805122C8  2C 03 00 00 */	cmpwi r3, 0
/* 805122CC  40 82 00 34 */	bne lbl_80512300
/* 805122D0  2C 16 00 04 */	cmpwi r22, 4
/* 805122D4  41 82 00 0C */	beq lbl_805122E0
/* 805122D8  2C 16 00 06 */	cmpwi r22, 6
/* 805122DC  40 82 00 0C */	bne lbl_805122E8
lbl_805122E0:
/* 805122E0  38 C0 06 00 */	li r6, 0x600
/* 805122E4  48 00 00 08 */	b lbl_805122EC
lbl_805122E8:
/* 805122E8  38 C0 08 00 */	li r6, 0x800
lbl_805122EC:
/* 805122EC  38 75 0A 76 */	addi r3, r21, 0xa76
/* 805122F0  38 80 00 00 */	li r4, 0
/* 805122F4  38 A0 00 01 */	li r5, 1
/* 805122F8  4B D5 E3 11 */	bl cLib_addCalcAngleS2__FPssss
/* 805122FC  48 00 00 18 */	b lbl_80512314
lbl_80512300:
/* 80512300  38 03 FF FF */	addi r0, r3, -1
/* 80512304  7C 1F 23 2E */	sthx r0, r31, r4
/* 80512308  48 00 00 0C */	b lbl_80512314
lbl_8051230C:
/* 8051230C  38 00 00 00 */	li r0, 0
/* 80512310  B0 15 0A 76 */	sth r0, 0xa76(r21)
lbl_80512314:
/* 80512314  2C 16 00 03 */	cmpwi r22, 3
/* 80512318  41 80 00 40 */	blt lbl_80512358
/* 8051231C  A8 1F 09 70 */	lha r0, 0x970(r31)
/* 80512320  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80512324  7C 00 BA 14 */	add r0, r0, r23
/* 80512328  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 8051232C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80512330  38 03 9A 20 */	addi r0, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80512334  7C 60 22 14 */	add r3, r0, r4
/* 80512338  C0 23 00 04 */	lfs f1, 4(r3)
/* 8051233C  C0 1F 0A B8 */	lfs f0, 0xab8(r31)
/* 80512340  EC 00 00 72 */	fmuls f0, f0, f1
/* 80512344  FC 00 00 1E */	fctiwz f0, f0
/* 80512348  D8 01 02 D0 */	stfd f0, 0x2d0(r1)
/* 8051234C  80 61 02 D4 */	lwz r3, 0x2d4(r1)
/* 80512350  38 18 0A BC */	addi r0, r24, 0xabc
/* 80512354  7C 7F 03 2E */	sthx r3, r31, r0
lbl_80512358:
/* 80512358  3A D6 00 01 */	addi r22, r22, 1
/* 8051235C  2C 16 00 0B */	cmpwi r22, 0xb
/* 80512360  3A F7 4E 20 */	addi r23, r23, 0x4e20
/* 80512364  3B 18 00 02 */	addi r24, r24, 2
/* 80512368  3B 39 00 06 */	addi r25, r25, 6
/* 8051236C  41 80 FE F8 */	blt lbl_80512264
/* 80512370  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 80512374  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80512378  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8051237C  4B D5 D7 05 */	bl cLib_addCalc0__FPfff
/* 80512380  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80512384  A8 9F 0A E6 */	lha r4, 0xae6(r31)
/* 80512388  38 A0 00 02 */	li r5, 2
/* 8051238C  38 C0 08 00 */	li r6, 0x800
/* 80512390  4B D5 E2 79 */	bl cLib_addCalcAngleS2__FPssss
/* 80512394  38 7F 0A DE */	addi r3, r31, 0xade
/* 80512398  A8 9F 0A E4 */	lha r4, 0xae4(r31)
/* 8051239C  38 A0 00 02 */	li r5, 2
/* 805123A0  38 C0 08 00 */	li r6, 0x800
/* 805123A4  4B D5 E2 65 */	bl cLib_addCalcAngleS2__FPssss
/* 805123A8  38 00 00 00 */	li r0, 0
/* 805123AC  B0 1F 0A E4 */	sth r0, 0xae4(r31)
/* 805123B0  B0 1F 0A E6 */	sth r0, 0xae6(r31)
/* 805123B4  3A C0 00 00 */	li r22, 0
/* 805123B8  3A E0 00 00 */	li r23, 0
/* 805123BC  88 7F 0A 1E */	lbz r3, 0xa1e(r31)
/* 805123C0  7C 60 07 75 */	extsb. r0, r3
/* 805123C4  41 82 02 EC */	beq lbl_805126B0
/* 805123C8  38 03 FF FF */	addi r0, r3, -1
/* 805123CC  98 1F 0A 1E */	stb r0, 0xa1e(r31)
/* 805123D0  A8 1F 0A 0C */	lha r0, 0xa0c(r31)
/* 805123D4  2C 00 00 00 */	cmpwi r0, 0
/* 805123D8  41 82 02 D8 */	beq lbl_805126B0
/* 805123DC  38 61 01 CC */	addi r3, r1, 0x1cc
/* 805123E0  4B B6 51 9D */	bl __ct__11dBgS_GndChkFv
/* 805123E4  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805123E8  80 63 00 04 */	lwz r3, 4(r3)
/* 805123EC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805123F0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805123F4  38 63 00 30 */	addi r3, r3, 0x30
/* 805123F8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805123FC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80512400  80 84 00 00 */	lwz r4, 0(r4)
/* 80512404  4B E3 40 AD */	bl PSMTXCopy
/* 80512408  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8051240C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80512410  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80512414  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80512418  38 61 00 FC */	addi r3, r1, 0xfc
/* 8051241C  38 81 00 CC */	addi r4, r1, 0xcc
/* 80512420  4B D5 EA CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80512424  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80512428  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8051242C  EC 00 08 2A */	fadds f0, f0, f1
/* 80512430  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80512434  EC 00 08 2A */	fadds f0, f0, f1
/* 80512438  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 8051243C  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80512440  38 81 00 CC */	addi r4, r1, 0xcc
/* 80512444  4B D5 58 E5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80512448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051244C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80512450  3A A3 0F 38 */	addi r21, r3, 0xf38
/* 80512454  7E A3 AB 78 */	mr r3, r21
/* 80512458  38 81 01 CC */	addi r4, r1, 0x1cc
/* 8051245C  4B B6 20 45 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80512460  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80512464  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80512468  FC 20 08 18 */	frsp f1, f1
/* 8051246C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80512470  41 82 01 0C */	beq lbl_8051257C
/* 80512474  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 80512478  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8051247C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80512480  EC 00 08 2A */	fadds f0, f0, f1
/* 80512484  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80512488  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 8051248C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80512490  EC 01 00 2A */	fadds f0, f1, f0
/* 80512494  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80512498  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8051249C  38 81 00 D8 */	addi r4, r1, 0xd8
/* 805124A0  4B D5 58 6D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 805124A4  7E A3 AB 78 */	mr r3, r21
/* 805124A8  38 81 01 CC */	addi r4, r1, 0x1cc
/* 805124AC  4B B6 1F F5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805124B0  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 805124B4  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 805124B8  FC 20 08 18 */	frsp f1, f1
/* 805124BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805124C0  41 82 00 38 */	beq lbl_805124F8
/* 805124C4  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 805124C8  EC 21 00 28 */	fsubs f1, f1, f0
/* 805124CC  C0 41 00 E0 */	lfs f2, 0xe0(r1)
/* 805124D0  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 805124D4  EC 42 00 28 */	fsubs f2, f2, f0
/* 805124D8  4B D5 51 9D */	bl cM_atan2s__Fff
/* 805124DC  7C 03 00 D0 */	neg r0, r3
/* 805124E0  7C 17 07 34 */	extsh r23, r0
/* 805124E4  2C 17 30 00 */	cmpwi r23, 0x3000
/* 805124E8  41 81 00 0C */	bgt lbl_805124F4
/* 805124EC  2C 17 D0 00 */	cmpwi r23, -12288
/* 805124F0  40 80 00 08 */	bge lbl_805124F8
lbl_805124F4:
/* 805124F4  3A E0 00 00 */	li r23, 0
lbl_805124F8:
/* 805124F8  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 805124FC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80512500  EC 01 00 2A */	fadds f0, f1, f0
/* 80512504  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80512508  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8051250C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80512510  EC 01 00 2A */	fadds f0, f1, f0
/* 80512514  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80512518  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8051251C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80512520  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80512524  38 81 00 D8 */	addi r4, r1, 0xd8
/* 80512528  4B D5 57 E5 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8051252C  7E A3 AB 78 */	mr r3, r21
/* 80512530  38 81 01 CC */	addi r4, r1, 0x1cc
/* 80512534  4B B6 1F 6D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80512538  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 8051253C  C0 1E 01 78 */	lfs f0, 0x178(r30)
/* 80512540  FC 20 08 18 */	frsp f1, f1
/* 80512544  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80512548  41 82 00 34 */	beq lbl_8051257C
/* 8051254C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80512550  EC 21 00 28 */	fsubs f1, f1, f0
/* 80512554  C0 41 00 D8 */	lfs f2, 0xd8(r1)
/* 80512558  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8051255C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80512560  4B D5 51 15 */	bl cM_atan2s__Fff
/* 80512564  7C 76 07 34 */	extsh r22, r3
/* 80512568  2C 16 30 00 */	cmpwi r22, 0x3000
/* 8051256C  41 81 00 0C */	bgt lbl_80512578
/* 80512570  2C 16 D0 00 */	cmpwi r22, -12288
/* 80512574  40 80 00 08 */	bge lbl_8051257C
lbl_80512578:
/* 80512578  3A C0 00 00 */	li r22, 0
lbl_8051257C:
/* 8051257C  38 61 01 5C */	addi r3, r1, 0x15c
/* 80512580  4B B6 56 E9 */	bl __ct__11dBgS_LinChkFv
/* 80512584  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80512588  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8051258C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80512590  D0 21 00 B8 */	stfs f1, 0xb8(r1)
/* 80512594  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80512598  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8051259C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805125A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805125A4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 805125A8  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805125AC  80 63 00 04 */	lwz r3, 4(r3)
/* 805125B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805125B4  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 805125B8  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 805125BC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 805125C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805125C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805125C8  38 63 02 70 */	addi r3, r3, 0x270
/* 805125CC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805125D0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805125D4  80 84 00 00 */	lwz r4, 0(r4)
/* 805125D8  4B E3 3E D9 */	bl PSMTXCopy
/* 805125DC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 805125E0  38 81 00 A8 */	addi r4, r1, 0xa8
/* 805125E4  4B D5 E9 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805125E8  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 805125EC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 805125F0  EC 01 00 2A */	fadds f0, f1, f0
/* 805125F4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805125F8  38 61 01 5C */	addi r3, r1, 0x15c
/* 805125FC  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80512600  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 80512604  7F E6 FB 78 */	mr r6, r31
/* 80512608  4B B6 57 5D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8051260C  7E A3 AB 78 */	mr r3, r21
/* 80512610  38 81 01 5C */	addi r4, r1, 0x15c
/* 80512614  4B B6 1D A1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80512618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8051261C  41 82 00 74 */	beq lbl_80512690
/* 80512620  38 61 00 3C */	addi r3, r1, 0x3c
/* 80512624  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80512628  38 A1 00 A8 */	addi r5, r1, 0xa8
/* 8051262C  4B D5 45 09 */	bl __mi__4cXyzCFRC3Vec
/* 80512630  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80512634  D0 21 00 C0 */	stfs f1, 0xc0(r1)
/* 80512638  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8051263C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 80512640  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80512644  D0 41 00 C8 */	stfs f2, 0xc8(r1)
/* 80512648  4B D5 50 2D */	bl cM_atan2s__Fff
/* 8051264C  7C 64 1B 78 */	mr r4, r3
/* 80512650  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80512654  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80512658  80 63 00 00 */	lwz r3, 0(r3)
/* 8051265C  4B AF 9D 81 */	bl mDoMtx_YrotS__FPA4_fs
/* 80512660  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80512664  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 80512668  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8051266C  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80512670  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80512674  38 61 00 C0 */	addi r3, r1, 0xc0
/* 80512678  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8051267C  4B D5 E8 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80512680  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80512684  38 81 00 F0 */	addi r4, r1, 0xf0
/* 80512688  7C 65 1B 78 */	mr r5, r3
/* 8051268C  4B E3 4A 05 */	bl PSVECAdd
lbl_80512690:
/* 80512690  B2 FF 0A 18 */	sth r23, 0xa18(r31)
/* 80512694  B2 DF 0A 1C */	sth r22, 0xa1c(r31)
/* 80512698  38 61 01 5C */	addi r3, r1, 0x15c
/* 8051269C  38 80 FF FF */	li r4, -1
/* 805126A0  4B B6 56 3D */	bl __dt__11dBgS_LinChkFv
/* 805126A4  38 61 01 CC */	addi r3, r1, 0x1cc
/* 805126A8  38 80 FF FF */	li r4, -1
/* 805126AC  4B B6 4F 45 */	bl __dt__11dBgS_GndChkFv
lbl_805126B0:
/* 805126B0  38 7F 0A 12 */	addi r3, r31, 0xa12
/* 805126B4  A8 9F 0A 18 */	lha r4, 0xa18(r31)
/* 805126B8  38 A0 00 01 */	li r5, 1
/* 805126BC  38 C0 04 00 */	li r6, 0x400
/* 805126C0  4B D5 DF 49 */	bl cLib_addCalcAngleS2__FPssss
/* 805126C4  38 7F 0A 16 */	addi r3, r31, 0xa16
/* 805126C8  A8 9F 0A 1C */	lha r4, 0xa1c(r31)
/* 805126CC  38 A0 00 01 */	li r5, 1
/* 805126D0  38 C0 04 00 */	li r6, 0x400
/* 805126D4  4B D5 DF 35 */	bl cLib_addCalcAngleS2__FPssss
/* 805126D8  88 7F 12 9C */	lbz r3, 0x129c(r31)
/* 805126DC  7C 60 07 75 */	extsb. r0, r3
/* 805126E0  41 82 00 64 */	beq lbl_80512744
/* 805126E4  38 03 FF FF */	addi r0, r3, -1
/* 805126E8  98 1F 12 9C */	stb r0, 0x129c(r31)
/* 805126EC  88 1F 12 9C */	lbz r0, 0x129c(r31)
/* 805126F0  7C 00 07 75 */	extsb. r0, r0
/* 805126F4  40 82 00 50 */	bne lbl_80512744
/* 805126F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805126FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80512700  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80512704  38 80 00 00 */	li r4, 0
/* 80512708  90 81 00 08 */	stw r4, 8(r1)
/* 8051270C  38 00 FF FF */	li r0, -1
/* 80512710  90 01 00 0C */	stw r0, 0xc(r1)
/* 80512714  90 81 00 10 */	stw r4, 0x10(r1)
/* 80512718  90 81 00 14 */	stw r4, 0x14(r1)
/* 8051271C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80512720  38 80 00 00 */	li r4, 0
/* 80512724  38 A0 01 5E */	li r5, 0x15e
/* 80512728  38 DF 05 38 */	addi r6, r31, 0x538
/* 8051272C  38 E0 00 00 */	li r7, 0
/* 80512730  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80512734  39 20 00 00 */	li r9, 0
/* 80512738  39 40 00 FF */	li r10, 0xff
/* 8051273C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80512740  4B B3 A3 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80512744:
/* 80512744  88 1F 12 5D */	lbz r0, 0x125d(r31)
/* 80512748  7C 00 07 75 */	extsb. r0, r0
/* 8051274C  41 82 01 8C */	beq lbl_805128D8
/* 80512750  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80512754  80 63 00 04 */	lwz r3, 4(r3)
/* 80512758  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8051275C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80512760  38 63 02 10 */	addi r3, r3, 0x210
/* 80512764  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80512768  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8051276C  80 84 00 00 */	lwz r4, 0(r4)
/* 80512770  4B E3 3D 41 */	bl PSMTXCopy
/* 80512774  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80512778  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 8051277C  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 80512780  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 80512784  38 61 00 FC */	addi r3, r1, 0xfc
/* 80512788  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8051278C  4B D5 E7 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80512790  38 61 01 08 */	addi r3, r1, 0x108
/* 80512794  4B B6 50 1D */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80512798  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 8051279C  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 805127A0  C0 21 00 F4 */	lfs f1, 0xf4(r1)
/* 805127A4  D0 21 01 00 */	stfs f1, 0x100(r1)
/* 805127A8  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 805127AC  D0 01 01 04 */	stfs f0, 0x104(r1)
/* 805127B0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805127B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805127B8  D0 01 01 00 */	stfs f0, 0x100(r1)
/* 805127BC  38 61 01 08 */	addi r3, r1, 0x108
/* 805127C0  38 81 00 FC */	addi r4, r1, 0xfc
/* 805127C4  4B D5 55 65 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805127C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805127CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805127D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805127D4  38 81 01 08 */	addi r4, r1, 0x108
/* 805127D8  4B B6 1C C9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805127DC  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 805127E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 805127E4  FC 00 02 10 */	fabs f0, f0
/* 805127E8  FC 20 00 18 */	frsp f1, f0
/* 805127EC  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805127F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805127F4  40 80 00 B0 */	bge lbl_805128A4
/* 805127F8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805127FC  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80512800  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80512804  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80512808  38 61 00 34 */	addi r3, r1, 0x34
/* 8051280C  38 80 00 00 */	li r4, 0
/* 80512810  38 A0 00 00 */	li r5, 0
/* 80512814  38 C0 00 00 */	li r6, 0
/* 80512818  4B D5 4B DD */	bl __ct__5csXyzFsss
/* 8051281C  3B 40 00 00 */	li r26, 0
/* 80512820  3A C0 00 00 */	li r22, 0
/* 80512824  3A E0 00 00 */	li r23, 0
/* 80512828  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051282C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80512830  3C 60 80 52 */	lis r3, w_eff_name@ha /* 0x80518D40@ha */
/* 80512834  3B 03 8D 40 */	addi r24, r3, w_eff_name@l /* 0x80518D40@l */
lbl_80512838:
/* 80512838  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8051283C  38 00 00 FF */	li r0, 0xff
/* 80512840  90 01 00 08 */	stw r0, 8(r1)
/* 80512844  38 80 00 00 */	li r4, 0
/* 80512848  90 81 00 0C */	stw r4, 0xc(r1)
/* 8051284C  38 00 FF FF */	li r0, -1
/* 80512850  90 01 00 10 */	stw r0, 0x10(r1)
/* 80512854  90 81 00 14 */	stw r4, 0x14(r1)
/* 80512858  90 81 00 18 */	stw r4, 0x18(r1)
/* 8051285C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80512860  3A B7 12 68 */	addi r21, r23, 0x1268
/* 80512864  7C 9F A8 2E */	lwzx r4, r31, r21
/* 80512868  38 A0 00 00 */	li r5, 0
/* 8051286C  7C D8 B2 2E */	lhzx r6, r24, r22
/* 80512870  38 E1 00 F0 */	addi r7, r1, 0xf0
/* 80512874  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80512878  39 21 00 34 */	addi r9, r1, 0x34
/* 8051287C  39 41 00 9C */	addi r10, r1, 0x9c
/* 80512880  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80512884  4B B3 AC 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80512888  7C 7F A9 2E */	stwx r3, r31, r21
/* 8051288C  3B 5A 00 01 */	addi r26, r26, 1
/* 80512890  2C 1A 00 03 */	cmpwi r26, 3
/* 80512894  3A D6 00 02 */	addi r22, r22, 2
/* 80512898  3A F7 00 04 */	addi r23, r23, 4
/* 8051289C  41 80 FF 9C */	blt lbl_80512838
/* 805128A0  48 00 00 24 */	b lbl_805128C4
lbl_805128A4:
/* 805128A4  38 7F 12 60 */	addi r3, r31, 0x1260
/* 805128A8  38 9F 12 64 */	addi r4, r31, 0x1264
/* 805128AC  38 A1 00 F0 */	addi r5, r1, 0xf0
/* 805128B0  38 C0 00 00 */	li r6, 0
/* 805128B4  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 805128B8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805128BC  39 00 00 01 */	li r8, 1
/* 805128C0  4B B0 A7 61 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_805128C4:
/* 805128C4  38 00 00 00 */	li r0, 0
/* 805128C8  98 1F 12 5D */	stb r0, 0x125d(r31)
/* 805128CC  38 61 01 08 */	addi r3, r1, 0x108
/* 805128D0  38 80 FF FF */	li r4, -1
/* 805128D4  4B B6 4F 75 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_805128D8:
/* 805128D8  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 805128DC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 805128E0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 805128E4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805128E8  7F E3 FB 78 */	mr r3, r31
/* 805128EC  38 9F 05 D4 */	addi r4, r31, 0x5d4
/* 805128F0  38 BF 05 38 */	addi r5, r31, 0x538
/* 805128F4  38 C1 00 90 */	addi r6, r1, 0x90
/* 805128F8  48 00 57 ED */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
lbl_805128FC:
/* 805128FC  39 61 03 10 */	addi r11, r1, 0x310
/* 80512900  4B E4 F9 09 */	bl _restgpr_21
/* 80512904  80 01 03 14 */	lwz r0, 0x314(r1)
/* 80512908  7C 08 03 A6 */	mtlr r0
/* 8051290C  38 21 03 10 */	addi r1, r1, 0x310
/* 80512910  4E 80 00 20 */	blr 
