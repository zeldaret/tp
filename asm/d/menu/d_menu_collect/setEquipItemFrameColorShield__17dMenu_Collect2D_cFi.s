lbl_801B3CF4:
/* 801B3CF4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B3CF8  7C 08 02 A6 */	mflr r0
/* 801B3CFC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B3D00  39 61 00 60 */	addi r11, r1, 0x60
/* 801B3D04  48 1A E4 D1 */	bl _savegpr_27
/* 801B3D08  7C 7D 1B 78 */	mr r29, r3
/* 801B3D0C  7C 9E 23 78 */	mr r30, r4
/* 801B3D10  2C 1E FF FF */	cmpwi r30, -1
/* 801B3D14  40 82 01 80 */	bne lbl_801B3E94
/* 801B3D18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B3D1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B3D20  88 83 00 15 */	lbz r4, 0x15(r3)
/* 801B3D24  88 7D 02 5C */	lbz r3, 0x25c(r29)
/* 801B3D28  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 801B3D2C  7C 03 00 40 */	cmplw r3, r0
/* 801B3D30  41 82 02 94 */	beq lbl_801B3FC4
/* 801B3D34  98 9D 02 5C */	stb r4, 0x25c(r29)
/* 801B3D38  88 1D 02 5C */	lbz r0, 0x25c(r29)
/* 801B3D3C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 801B3D40  41 82 00 1C */	beq lbl_801B3D5C
/* 801B3D44  40 80 00 1C */	bge lbl_801B3D60
/* 801B3D48  2C 00 00 2A */	cmpwi r0, 0x2a
/* 801B3D4C  40 80 00 08 */	bge lbl_801B3D54
/* 801B3D50  48 00 00 10 */	b lbl_801B3D60
lbl_801B3D54:
/* 801B3D54  3B C0 00 00 */	li r30, 0
/* 801B3D58  48 00 00 08 */	b lbl_801B3D60
lbl_801B3D5C:
/* 801B3D5C  3B C0 00 01 */	li r30, 1
lbl_801B3D60:
/* 801B3D60  3B E0 00 00 */	li r31, 0
/* 801B3D64  3B 60 00 00 */	li r27, 0
/* 801B3D68  3B 80 00 00 */	li r28, 0
lbl_801B3D6C:
/* 801B3D6C  7C 1F F0 00 */	cmpw r31, r30
/* 801B3D70  40 82 00 90 */	bne lbl_801B3E00
/* 801B3D74  38 1C 02 40 */	addi r0, r28, 0x240
/* 801B3D78  7C 1D 00 AE */	lbzx r0, r29, r0
/* 801B3D7C  28 00 00 00 */	cmplwi r0, 0
/* 801B3D80  41 82 00 80 */	beq lbl_801B3E00
/* 801B3D84  38 00 00 FF */	li r0, 0xff
/* 801B3D88  98 01 00 38 */	stb r0, 0x38(r1)
/* 801B3D8C  98 01 00 39 */	stb r0, 0x39(r1)
/* 801B3D90  38 60 00 00 */	li r3, 0
/* 801B3D94  98 61 00 3A */	stb r3, 0x3a(r1)
/* 801B3D98  98 01 00 3B */	stb r0, 0x3b(r1)
/* 801B3D9C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 801B3DA0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801B3DA4  98 61 00 40 */	stb r3, 0x40(r1)
/* 801B3DA8  98 61 00 41 */	stb r3, 0x41(r1)
/* 801B3DAC  98 61 00 42 */	stb r3, 0x42(r1)
/* 801B3DB0  98 61 00 43 */	stb r3, 0x43(r1)
/* 801B3DB4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 801B3DB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 801B3DBC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3DC0  3C 80 80 39 */	lis r4, tag_6100@ha /* 0x803950A8@ha */
/* 801B3DC4  38 04 50 A8 */	addi r0, r4, tag_6100@l /* 0x803950A8@l */
/* 801B3DC8  7C 80 DA 14 */	add r4, r0, r27
/* 801B3DCC  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3DD0  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3DD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3DD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3DDC  7D 89 03 A6 */	mtctr r12
/* 801B3DE0  4E 80 04 21 */	bctrl 
/* 801B3DE4  38 81 00 44 */	addi r4, r1, 0x44
/* 801B3DE8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 801B3DEC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3DF0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3DF4  7D 89 03 A6 */	mtctr r12
/* 801B3DF8  4E 80 04 21 */	bctrl 
/* 801B3DFC  48 00 00 80 */	b lbl_801B3E7C
lbl_801B3E00:
/* 801B3E00  38 00 00 6B */	li r0, 0x6b
/* 801B3E04  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B3E08  98 01 00 29 */	stb r0, 0x29(r1)
/* 801B3E0C  98 01 00 2A */	stb r0, 0x2a(r1)
/* 801B3E10  38 00 00 FF */	li r0, 0xff
/* 801B3E14  98 01 00 2B */	stb r0, 0x2b(r1)
/* 801B3E18  80 01 00 28 */	lwz r0, 0x28(r1)
/* 801B3E1C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801B3E20  38 00 00 00 */	li r0, 0
/* 801B3E24  98 01 00 30 */	stb r0, 0x30(r1)
/* 801B3E28  98 01 00 31 */	stb r0, 0x31(r1)
/* 801B3E2C  98 01 00 32 */	stb r0, 0x32(r1)
/* 801B3E30  98 01 00 33 */	stb r0, 0x33(r1)
/* 801B3E34  80 01 00 30 */	lwz r0, 0x30(r1)
/* 801B3E38  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B3E3C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3E40  3C 80 80 39 */	lis r4, tag_6100@ha /* 0x803950A8@ha */
/* 801B3E44  38 04 50 A8 */	addi r0, r4, tag_6100@l /* 0x803950A8@l */
/* 801B3E48  7C 80 DA 14 */	add r4, r0, r27
/* 801B3E4C  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3E50  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3E54  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3E58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3E5C  7D 89 03 A6 */	mtctr r12
/* 801B3E60  4E 80 04 21 */	bctrl 
/* 801B3E64  38 81 00 34 */	addi r4, r1, 0x34
/* 801B3E68  38 A1 00 2C */	addi r5, r1, 0x2c
/* 801B3E6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3E70  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3E74  7D 89 03 A6 */	mtctr r12
/* 801B3E78  4E 80 04 21 */	bctrl 
lbl_801B3E7C:
/* 801B3E7C  3B FF 00 01 */	addi r31, r31, 1
/* 801B3E80  2C 1F 00 02 */	cmpwi r31, 2
/* 801B3E84  3B 7B 00 08 */	addi r27, r27, 8
/* 801B3E88  3B 9C 00 06 */	addi r28, r28, 6
/* 801B3E8C  41 80 FE E0 */	blt lbl_801B3D6C
/* 801B3E90  48 00 01 34 */	b lbl_801B3FC4
lbl_801B3E94:
/* 801B3E94  3B E0 00 00 */	li r31, 0
/* 801B3E98  3B 80 00 00 */	li r28, 0
/* 801B3E9C  3B 60 00 00 */	li r27, 0
lbl_801B3EA0:
/* 801B3EA0  7C 1F F0 00 */	cmpw r31, r30
/* 801B3EA4  40 82 00 90 */	bne lbl_801B3F34
/* 801B3EA8  38 1B 02 40 */	addi r0, r27, 0x240
/* 801B3EAC  7C 1D 00 AE */	lbzx r0, r29, r0
/* 801B3EB0  28 00 00 00 */	cmplwi r0, 0
/* 801B3EB4  41 82 00 80 */	beq lbl_801B3F34
/* 801B3EB8  38 00 00 FF */	li r0, 0xff
/* 801B3EBC  98 01 00 18 */	stb r0, 0x18(r1)
/* 801B3EC0  98 01 00 19 */	stb r0, 0x19(r1)
/* 801B3EC4  38 60 00 00 */	li r3, 0
/* 801B3EC8  98 61 00 1A */	stb r3, 0x1a(r1)
/* 801B3ECC  98 01 00 1B */	stb r0, 0x1b(r1)
/* 801B3ED0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801B3ED4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B3ED8  98 61 00 20 */	stb r3, 0x20(r1)
/* 801B3EDC  98 61 00 21 */	stb r3, 0x21(r1)
/* 801B3EE0  98 61 00 22 */	stb r3, 0x22(r1)
/* 801B3EE4  98 61 00 23 */	stb r3, 0x23(r1)
/* 801B3EE8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 801B3EEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B3EF0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3EF4  3C 80 80 39 */	lis r4, tag_6100@ha /* 0x803950A8@ha */
/* 801B3EF8  38 04 50 A8 */	addi r0, r4, tag_6100@l /* 0x803950A8@l */
/* 801B3EFC  7C 80 E2 14 */	add r4, r0, r28
/* 801B3F00  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3F04  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3F08  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3F0C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3F10  7D 89 03 A6 */	mtctr r12
/* 801B3F14  4E 80 04 21 */	bctrl 
/* 801B3F18  38 81 00 24 */	addi r4, r1, 0x24
/* 801B3F1C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 801B3F20  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3F24  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3F28  7D 89 03 A6 */	mtctr r12
/* 801B3F2C  4E 80 04 21 */	bctrl 
/* 801B3F30  48 00 00 80 */	b lbl_801B3FB0
lbl_801B3F34:
/* 801B3F34  38 00 00 6B */	li r0, 0x6b
/* 801B3F38  98 01 00 08 */	stb r0, 8(r1)
/* 801B3F3C  98 01 00 09 */	stb r0, 9(r1)
/* 801B3F40  98 01 00 0A */	stb r0, 0xa(r1)
/* 801B3F44  38 00 00 FF */	li r0, 0xff
/* 801B3F48  98 01 00 0B */	stb r0, 0xb(r1)
/* 801B3F4C  80 01 00 08 */	lwz r0, 8(r1)
/* 801B3F50  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B3F54  38 00 00 00 */	li r0, 0
/* 801B3F58  98 01 00 10 */	stb r0, 0x10(r1)
/* 801B3F5C  98 01 00 11 */	stb r0, 0x11(r1)
/* 801B3F60  98 01 00 12 */	stb r0, 0x12(r1)
/* 801B3F64  98 01 00 13 */	stb r0, 0x13(r1)
/* 801B3F68  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B3F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B3F70  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B3F74  3C 80 80 39 */	lis r4, tag_6100@ha /* 0x803950A8@ha */
/* 801B3F78  38 04 50 A8 */	addi r0, r4, tag_6100@l /* 0x803950A8@l */
/* 801B3F7C  7C 80 E2 14 */	add r4, r0, r28
/* 801B3F80  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B3F84  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B3F88  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3F8C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B3F90  7D 89 03 A6 */	mtctr r12
/* 801B3F94  4E 80 04 21 */	bctrl 
/* 801B3F98  38 81 00 14 */	addi r4, r1, 0x14
/* 801B3F9C  38 A1 00 0C */	addi r5, r1, 0xc
/* 801B3FA0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B3FA4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B3FA8  7D 89 03 A6 */	mtctr r12
/* 801B3FAC  4E 80 04 21 */	bctrl 
lbl_801B3FB0:
/* 801B3FB0  3B FF 00 01 */	addi r31, r31, 1
/* 801B3FB4  2C 1F 00 02 */	cmpwi r31, 2
/* 801B3FB8  3B 9C 00 08 */	addi r28, r28, 8
/* 801B3FBC  3B 7B 00 06 */	addi r27, r27, 6
/* 801B3FC0  41 80 FE E0 */	blt lbl_801B3EA0
lbl_801B3FC4:
/* 801B3FC4  39 61 00 60 */	addi r11, r1, 0x60
/* 801B3FC8  48 1A E2 59 */	bl _restgpr_27
/* 801B3FCC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B3FD0  7C 08 03 A6 */	mtlr r0
/* 801B3FD4  38 21 00 60 */	addi r1, r1, 0x60
/* 801B3FD8  4E 80 00 20 */	blr 
