lbl_80238CEC:
/* 80238CEC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80238CF0  7C 08 02 A6 */	mflr r0
/* 80238CF4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80238CF8  39 61 00 70 */	addi r11, r1, 0x70
/* 80238CFC  48 12 94 D5 */	bl _savegpr_26
/* 80238D00  7C 7B 1B 78 */	mr r27, r3
/* 80238D04  7C 9C 23 78 */	mr r28, r4
/* 80238D08  7C BD 2B 78 */	mr r29, r5
/* 80238D0C  7C DE 33 78 */	mr r30, r6
/* 80238D10  7C FF 3B 78 */	mr r31, r7
/* 80238D14  38 00 00 00 */	li r0, 0
/* 80238D18  98 06 00 00 */	stb r0, 0(r6)
/* 80238D1C  3C 1C FF FF */	addis r0, r28, 0xffff
/* 80238D20  28 00 00 00 */	cmplwi r0, 0
/* 80238D24  40 82 00 1C */	bne lbl_80238D40
/* 80238D28  7F C3 F3 78 */	mr r3, r30
/* 80238D2C  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238D30  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238D34  4C C6 31 82 */	crclr 6
/* 80238D38  48 12 D7 A5 */	bl sprintf
/* 80238D3C  48 00 03 28 */	b lbl_80239064
lbl_80238D40:
/* 80238D40  28 00 00 01 */	cmplwi r0, 1
/* 80238D44  40 82 00 30 */	bne lbl_80238D74
/* 80238D48  7F C3 F3 78 */	mr r3, r30
/* 80238D4C  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238D50  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238D54  38 84 00 03 */	addi r4, r4, 3
/* 80238D58  38 00 00 0A */	li r0, 0xa
/* 80238D5C  7C BD 03 D6 */	divw r5, r29, r0
/* 80238D60  7C 05 01 D6 */	mullw r0, r5, r0
/* 80238D64  7C C0 E8 50 */	subf r6, r0, r29
/* 80238D68  4C C6 31 82 */	crclr 6
/* 80238D6C  48 12 D7 71 */	bl sprintf
/* 80238D70  48 00 02 F4 */	b lbl_80239064
lbl_80238D74:
/* 80238D74  2C 1C 00 04 */	cmpwi r28, 4
/* 80238D78  40 82 00 64 */	bne lbl_80238DDC
/* 80238D7C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80238D80  28 00 00 01 */	cmplwi r0, 1
/* 80238D84  40 82 00 58 */	bne lbl_80238DDC
/* 80238D88  38 00 03 E8 */	li r0, 0x3e8
/* 80238D8C  7C DD 03 D6 */	divw r6, r29, r0
/* 80238D90  38 00 00 3C */	li r0, 0x3c
/* 80238D94  7C A6 03 D6 */	divw r5, r6, r0
/* 80238D98  1C 05 00 3C */	mulli r0, r5, 0x3c
/* 80238D9C  7C C0 30 50 */	subf r6, r0, r6
/* 80238DA0  2C 05 00 63 */	cmpwi r5, 0x63
/* 80238DA4  40 81 00 0C */	ble lbl_80238DB0
/* 80238DA8  38 A0 00 63 */	li r5, 0x63
/* 80238DAC  38 C0 00 3B */	li r6, 0x3b
lbl_80238DB0:
/* 80238DB0  2C 05 00 00 */	cmpwi r5, 0
/* 80238DB4  40 82 00 0C */	bne lbl_80238DC0
/* 80238DB8  2C 06 00 00 */	cmpwi r6, 0
/* 80238DBC  41 82 02 A8 */	beq lbl_80239064
lbl_80238DC0:
/* 80238DC0  7F C3 F3 78 */	mr r3, r30
/* 80238DC4  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238DC8  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238DCC  38 84 00 09 */	addi r4, r4, 9
/* 80238DD0  4C C6 31 82 */	crclr 6
/* 80238DD4  48 12 D7 09 */	bl sprintf
/* 80238DD8  48 00 02 8C */	b lbl_80239064
lbl_80238DDC:
/* 80238DDC  2C 1C 00 03 */	cmpwi r28, 3
/* 80238DE0  40 82 00 AC */	bne lbl_80238E8C
/* 80238DE4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80238DE8  28 00 00 01 */	cmplwi r0, 1
/* 80238DEC  40 82 00 A0 */	bne lbl_80238E8C
/* 80238DF0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80238DF4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80238DF8  4B F6 6C 11 */	bl getDaytime__18dScnKy_env_light_cFv
/* 80238DFC  C0 62 B1 40 */	lfs f3, lit_3702(r2)
/* 80238E00  EC 03 00 72 */	fmuls f0, f3, f1
/* 80238E04  FC 00 00 1E */	fctiwz f0, f0
/* 80238E08  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80238E0C  80 81 00 34 */	lwz r4, 0x34(r1)
/* 80238E10  3C 60 00 E5 */	lis r3, 0x00E5 /* 0x00E4E1C0@ha */
/* 80238E14  38 63 E1 C0 */	addi r3, r3, 0xE1C0 /* 0x00E4E1C0@l */
/* 80238E18  7C 04 1B D6 */	divw r0, r4, r3
/* 80238E1C  7C 00 19 D6 */	mullw r0, r0, r3
/* 80238E20  7C 00 20 50 */	subf r0, r0, r4
/* 80238E24  C8 42 B1 50 */	lfd f2, lit_3707(r2)
/* 80238E28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80238E2C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80238E30  3C 00 43 30 */	lis r0, 0x4330
/* 80238E34  90 01 00 38 */	stw r0, 0x38(r1)
/* 80238E38  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80238E3C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80238E40  EC 00 18 24 */	fdivs f0, f0, f3
/* 80238E44  C0 62 B1 44 */	lfs f3, lit_3703(r2)
/* 80238E48  C0 42 B1 48 */	lfs f2, lit_3704(r2)
/* 80238E4C  EC 00 10 24 */	fdivs f0, f0, f2
/* 80238E50  EC 63 00 32 */	fmuls f3, f3, f0
/* 80238E54  7F C3 F3 78 */	mr r3, r30
/* 80238E58  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238E5C  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238E60  38 84 00 09 */	addi r4, r4, 9
/* 80238E64  EC 01 10 24 */	fdivs f0, f1, f2
/* 80238E68  FC 00 00 1E */	fctiwz f0, f0
/* 80238E6C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80238E70  80 A1 00 44 */	lwz r5, 0x44(r1)
/* 80238E74  FC 00 18 1E */	fctiwz f0, f3
/* 80238E78  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80238E7C  80 C1 00 4C */	lwz r6, 0x4c(r1)
/* 80238E80  4C C6 31 82 */	crclr 6
/* 80238E84  48 12 D6 59 */	bl sprintf
/* 80238E88  48 00 01 DC */	b lbl_80239064
lbl_80238E8C:
/* 80238E8C  2C 1C 00 09 */	cmpwi r28, 9
/* 80238E90  40 82 00 28 */	bne lbl_80238EB8
/* 80238E94  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80238E98  28 00 00 01 */	cmplwi r0, 1
/* 80238E9C  40 82 00 1C */	bne lbl_80238EB8
/* 80238EA0  7F C3 F3 78 */	mr r3, r30
/* 80238EA4  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238EA8  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238EAC  7F A5 EB 78 */	mr r5, r29
/* 80238EB0  4C C6 31 82 */	crclr 6
/* 80238EB4  48 12 D6 29 */	bl sprintf
lbl_80238EB8:
/* 80238EB8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80238EBC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80238EC0  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80238EC4  38 C0 00 00 */	li r6, 0
/* 80238EC8  38 E0 00 00 */	li r7, 0
/* 80238ECC  39 00 00 20 */	li r8, 0x20
/* 80238ED0  81 23 00 08 */	lwz r9, 8(r3)
/* 80238ED4  39 43 00 20 */	addi r10, r3, 0x20
/* 80238ED8  3C 60 46 4C */	lis r3, 0x464C /* 0x464C5731@ha */
/* 80238EDC  38 83 57 31 */	addi r4, r3, 0x5731 /* 0x464C5731@l */
/* 80238EE0  48 00 00 80 */	b lbl_80238F60
lbl_80238EE4:
/* 80238EE4  80 AA 00 00 */	lwz r5, 0(r10)
/* 80238EE8  7C 05 20 00 */	cmpw r5, r4
/* 80238EEC  41 82 00 64 */	beq lbl_80238F50
/* 80238EF0  40 80 00 2C */	bge lbl_80238F1C
/* 80238EF4  3C 60 46 4C */	lis r3, 0x464C /* 0x464C4931@ha */
/* 80238EF8  38 03 49 31 */	addi r0, r3, 0x4931 /* 0x464C4931@l */
/* 80238EFC  7C 05 00 00 */	cmpw r5, r0
/* 80238F00  41 82 00 50 */	beq lbl_80238F50
/* 80238F04  40 80 00 4C */	bge lbl_80238F50
/* 80238F08  3C 60 44 41 */	lis r3, 0x4441 /* 0x44415431@ha */
/* 80238F0C  38 03 54 31 */	addi r0, r3, 0x5431 /* 0x44415431@l */
/* 80238F10  7C 05 00 00 */	cmpw r5, r0
/* 80238F14  41 82 00 3C */	beq lbl_80238F50
/* 80238F18  48 00 00 38 */	b lbl_80238F50
lbl_80238F1C:
/* 80238F1C  3C 60 53 54 */	lis r3, 0x5354 /* 0x53545231@ha */
/* 80238F20  38 03 52 31 */	addi r0, r3, 0x5231 /* 0x53545231@l */
/* 80238F24  7C 05 00 00 */	cmpw r5, r0
/* 80238F28  41 82 00 24 */	beq lbl_80238F4C
/* 80238F2C  40 80 00 24 */	bge lbl_80238F50
/* 80238F30  3C 60 49 4E */	lis r3, 0x494E /* 0x494E4631@ha */
/* 80238F34  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x494E4631@l */
/* 80238F38  7C 05 00 00 */	cmpw r5, r0
/* 80238F3C  41 82 00 08 */	beq lbl_80238F44
/* 80238F40  48 00 00 10 */	b lbl_80238F50
lbl_80238F44:
/* 80238F44  7D 46 53 78 */	mr r6, r10
/* 80238F48  48 00 00 08 */	b lbl_80238F50
lbl_80238F4C:
/* 80238F4C  7D 47 53 78 */	mr r7, r10
lbl_80238F50:
/* 80238F50  80 0A 00 04 */	lwz r0, 4(r10)
/* 80238F54  7D 4A 02 14 */	add r10, r10, r0
/* 80238F58  80 0A 00 04 */	lwz r0, 4(r10)
/* 80238F5C  7D 08 02 14 */	add r8, r8, r0
lbl_80238F60:
/* 80238F60  7C 08 48 40 */	cmplw r8, r9
/* 80238F64  41 80 FF 80 */	blt lbl_80238EE4
/* 80238F68  57 80 18 38 */	slwi r0, r28, 3
/* 80238F6C  7C 86 02 14 */	add r4, r6, r0
/* 80238F70  A0 64 00 14 */	lhz r3, 0x14(r4)
/* 80238F74  A0 84 00 16 */	lhz r4, 0x16(r4)
/* 80238F78  2C 1D 00 01 */	cmpwi r29, 1
/* 80238F7C  40 82 00 10 */	bne lbl_80238F8C
/* 80238F80  3B 43 00 08 */	addi r26, r3, 8
/* 80238F84  7F 47 D2 14 */	add r26, r7, r26
/* 80238F88  48 00 00 0C */	b lbl_80238F94
lbl_80238F8C:
/* 80238F8C  3B 44 00 08 */	addi r26, r4, 8
/* 80238F90  7F 47 D2 14 */	add r26, r7, r26
lbl_80238F94:
/* 80238F94  7F 43 D3 78 */	mr r3, r26
/* 80238F98  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238F9C  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238FA0  38 84 00 11 */	addi r4, r4, 0x11
/* 80238FA4  48 12 F9 F1 */	bl strcmp
/* 80238FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80238FAC  40 82 00 28 */	bne lbl_80238FD4
/* 80238FB0  7F C3 F3 78 */	mr r3, r30
/* 80238FB4  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238FB8  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238FBC  38 84 00 12 */	addi r4, r4, 0x12
/* 80238FC0  7F A5 EB 78 */	mr r5, r29
/* 80238FC4  7F 46 D3 78 */	mr r6, r26
/* 80238FC8  4C C6 31 82 */	crclr 6
/* 80238FCC  48 12 D5 11 */	bl sprintf
/* 80238FD0  48 00 00 24 */	b lbl_80238FF4
lbl_80238FD4:
/* 80238FD4  7F C3 F3 78 */	mr r3, r30
/* 80238FD8  3C 80 80 3A */	lis r4, d_msg_d_msg_unit__stringBase0@ha /* 0x803996E8@ha */
/* 80238FDC  38 84 96 E8 */	addi r4, r4, d_msg_d_msg_unit__stringBase0@l /* 0x803996E8@l */
/* 80238FE0  38 84 00 17 */	addi r4, r4, 0x17
/* 80238FE4  7F A5 EB 78 */	mr r5, r29
/* 80238FE8  7F 46 D3 78 */	mr r6, r26
/* 80238FEC  4C C6 31 82 */	crclr 6
/* 80238FF0  48 12 D4 ED */	bl sprintf
lbl_80238FF4:
/* 80238FF4  2C 1C 00 03 */	cmpwi r28, 3
/* 80238FF8  40 82 00 34 */	bne lbl_8023902C
/* 80238FFC  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80239000  28 00 00 01 */	cmplwi r0, 1
/* 80239004  40 82 00 28 */	bne lbl_8023902C
/* 80239008  7F 63 DB 78 */	mr r3, r27
/* 8023900C  38 80 00 04 */	li r4, 4
/* 80239010  38 A0 00 00 */	li r5, 0
/* 80239014  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80239018  38 E0 00 00 */	li r7, 0
/* 8023901C  4B FF FC D1 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80239020  7F C3 F3 78 */	mr r3, r30
/* 80239024  38 81 00 1C */	addi r4, r1, 0x1c
/* 80239028  48 12 FA 95 */	bl strcat
lbl_8023902C:
/* 8023902C  2C 1C 00 04 */	cmpwi r28, 4
/* 80239030  40 82 00 34 */	bne lbl_80239064
/* 80239034  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80239038  28 00 00 01 */	cmplwi r0, 1
/* 8023903C  40 82 00 28 */	bne lbl_80239064
/* 80239040  7F 63 DB 78 */	mr r3, r27
/* 80239044  38 80 00 05 */	li r4, 5
/* 80239048  7F A5 EB 78 */	mr r5, r29
/* 8023904C  38 C1 00 08 */	addi r6, r1, 8
/* 80239050  38 E0 00 00 */	li r7, 0
/* 80239054  4B FF FC 99 */	bl setTag__10dMsgUnit_cFiiPcb
/* 80239058  7F C3 F3 78 */	mr r3, r30
/* 8023905C  38 81 00 08 */	addi r4, r1, 8
/* 80239060  48 12 FA 5D */	bl strcat
lbl_80239064:
/* 80239064  39 61 00 70 */	addi r11, r1, 0x70
/* 80239068  48 12 91 B5 */	bl _restgpr_26
/* 8023906C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80239070  7C 08 03 A6 */	mtlr r0
/* 80239074  38 21 00 70 */	addi r1, r1, 0x70
/* 80239078  4E 80 00 20 */	blr 
