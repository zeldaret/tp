lbl_80332DA4:
/* 80332DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332DA8  7C 08 02 A6 */	mflr r0
/* 80332DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80332DB8  7C 7E 1B 78 */	mr r30, r3
/* 80332DBC  7C 9F 23 78 */	mr r31, r4
/* 80332DC0  A0 04 00 08 */	lhz r0, 8(r4)
/* 80332DC4  B0 03 00 00 */	sth r0, 0(r3)
/* 80332DC8  7F E3 FB 78 */	mr r3, r31
/* 80332DCC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80332DD0  48 00 13 49 */	bl func_80334118
/* 80332DD4  90 7E 00 04 */	stw r3, 4(r30)
/* 80332DD8  7F E3 FB 78 */	mr r3, r31
/* 80332DDC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 80332DE0  4B FC 14 E1 */	bl func_802F42C0
/* 80332DE4  90 7E 00 08 */	stw r3, 8(r30)
/* 80332DE8  7F E3 FB 78 */	mr r3, r31
/* 80332DEC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80332DF0  4B FC 14 A1 */	bl func_802F4290
/* 80332DF4  90 7E 00 30 */	stw r3, 0x30(r30)
/* 80332DF8  7F E3 FB 78 */	mr r3, r31
/* 80332DFC  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80332E00  4B FC 14 79 */	bl func_802F4278
/* 80332E04  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80332E08  7F E3 FB 78 */	mr r3, r31
/* 80332E0C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80332E10  4B FC 14 51 */	bl func_802F4260
/* 80332E14  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80332E18  7F E3 FB 78 */	mr r3, r31
/* 80332E1C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80332E20  4B FF FF 3D */	bl func_80332D5C
/* 80332E24  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80332E28  7F E3 FB 78 */	mr r3, r31
/* 80332E2C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80332E30  4B FC 14 31 */	bl func_802F4260
/* 80332E34  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80332E38  7F E3 FB 78 */	mr r3, r31
/* 80332E3C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80332E40  4B FF FE ED */	bl func_80332D2C
/* 80332E44  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80332E48  7F E3 FB 78 */	mr r3, r31
/* 80332E4C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80332E50  4B FF FE C5 */	bl func_80332D14
/* 80332E54  90 7E 00 20 */	stw r3, 0x20(r30)
/* 80332E58  7F E3 FB 78 */	mr r3, r31
/* 80332E5C  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80332E60  4B FF FE 9D */	bl func_80332CFC
/* 80332E64  90 7E 00 24 */	stw r3, 0x24(r30)
/* 80332E68  7F E3 FB 78 */	mr r3, r31
/* 80332E6C  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80332E70  4B FF FE 8D */	bl func_80332CFC
/* 80332E74  90 7E 00 28 */	stw r3, 0x28(r30)
/* 80332E78  7F E3 FB 78 */	mr r3, r31
/* 80332E7C  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 80332E80  4B FC 14 41 */	bl func_802F42C0
/* 80332E84  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 80332E88  7F E3 FB 78 */	mr r3, r31
/* 80332E8C  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 80332E90  4B FF FE 55 */	bl func_80332CE4
/* 80332E94  90 7E 00 34 */	stw r3, 0x34(r30)
/* 80332E98  7F E3 FB 78 */	mr r3, r31
/* 80332E9C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 80332EA0  4B FC 13 49 */	bl func_802F41E8
/* 80332EA4  90 7E 00 38 */	stw r3, 0x38(r30)
/* 80332EA8  7F E3 FB 78 */	mr r3, r31
/* 80332EAC  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 80332EB0  4B FC 13 C9 */	bl func_802F4278
/* 80332EB4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80332EB8  7F E3 FB 78 */	mr r3, r31
/* 80332EBC  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 80332EC0  4B FC 13 A1 */	bl func_802F4260
/* 80332EC4  90 7E 00 40 */	stw r3, 0x40(r30)
/* 80332EC8  7F E3 FB 78 */	mr r3, r31
/* 80332ECC  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 80332ED0  4B FF FD FD */	bl func_80332CCC
/* 80332ED4  90 7E 00 44 */	stw r3, 0x44(r30)
/* 80332ED8  7F E3 FB 78 */	mr r3, r31
/* 80332EDC  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 80332EE0  4B FF FD D5 */	bl func_80332CB4
/* 80332EE4  90 7E 00 48 */	stw r3, 0x48(r30)
/* 80332EE8  7F E3 FB 78 */	mr r3, r31
/* 80332EEC  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 80332EF0  4B FF FD AD */	bl func_80332C9C
/* 80332EF4  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 80332EF8  7F E3 FB 78 */	mr r3, r31
/* 80332EFC  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 80332F00  4B FF FD 85 */	bl func_80332C84
/* 80332F04  90 7E 00 50 */	stw r3, 0x50(r30)
/* 80332F08  7F E3 FB 78 */	mr r3, r31
/* 80332F0C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80332F10  4B FF FD 5D */	bl func_80332C6C
/* 80332F14  90 7E 00 54 */	stw r3, 0x54(r30)
/* 80332F18  7F E3 FB 78 */	mr r3, r31
/* 80332F1C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 80332F20  4B FF FD 35 */	bl func_80332C54
/* 80332F24  90 7E 00 58 */	stw r3, 0x58(r30)
/* 80332F28  7F E3 FB 78 */	mr r3, r31
/* 80332F2C  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 80332F30  4B FF FD 0D */	bl func_80332C3C
/* 80332F34  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 80332F38  7F E3 FB 78 */	mr r3, r31
/* 80332F3C  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 80332F40  4B FC 13 21 */	bl func_802F4260
/* 80332F44  90 7E 00 60 */	stw r3, 0x60(r30)
/* 80332F48  7F E3 FB 78 */	mr r3, r31
/* 80332F4C  80 9F 00 70 */	lwz r4, 0x70(r31)
/* 80332F50  4B FC 13 11 */	bl func_802F4260
/* 80332F54  90 7E 00 64 */	stw r3, 0x64(r30)
/* 80332F58  7F E3 FB 78 */	mr r3, r31
/* 80332F5C  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 80332F60  4B FF FC C5 */	bl func_80332C24
/* 80332F64  90 7E 00 68 */	stw r3, 0x68(r30)
/* 80332F68  7F C3 F3 78 */	mr r3, r30
/* 80332F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80332F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332F78  7C 08 03 A6 */	mtlr r0
/* 80332F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80332F80  4E 80 00 20 */	blr 
