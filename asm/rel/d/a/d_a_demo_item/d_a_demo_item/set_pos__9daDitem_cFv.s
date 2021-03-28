lbl_804E0DB4:
/* 804E0DB4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804E0DB8  7C 08 02 A6 */	mflr r0
/* 804E0DBC  90 01 00 64 */	stw r0, 0x64(r1)
/* 804E0DC0  39 61 00 60 */	addi r11, r1, 0x60
/* 804E0DC4  4B E8 14 14 */	b _savegpr_28
/* 804E0DC8  7C 7D 1B 78 */	mr r29, r3
/* 804E0DCC  3C 60 80 4E */	lis r3, lit_1109@ha
/* 804E0DD0  3B E3 1B E8 */	addi r31, r3, lit_1109@l
/* 804E0DD4  3C 60 80 4E */	lis r3, l_light_color@ha
/* 804E0DD8  3B 83 19 D4 */	addi r28, r3, l_light_color@l
/* 804E0DDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E0DE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E0DE4  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 804E0DE8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804E0DEC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E0DF0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804E0DF4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E0DF8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804E0DFC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804E0E00  88 1F 00 94 */	lbz r0, 0x94(r31)
/* 804E0E04  7C 00 07 75 */	extsb. r0, r0
/* 804E0E08  40 82 00 B8 */	bne lbl_804E0EC0
/* 804E0E0C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 804E0E10  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E0E14  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 804E0E18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E0E1C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804E0E20  D0 3F 00 B0 */	stfs f1, 0xb0(r31)
/* 804E0E24  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0E28  D0 03 00 04 */	stfs f0, 4(r3)
/* 804E0E2C  D0 23 00 08 */	stfs f1, 8(r3)
/* 804E0E30  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha
/* 804E0E34  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l
/* 804E0E38  38 BF 00 88 */	addi r5, r31, 0x88
/* 804E0E3C  4B FF ED 1D */	bl __register_global_object
/* 804E0E40  C0 5C 00 08 */	lfs f2, 8(r28)
/* 804E0E44  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804E0E48  C0 3C 00 34 */	lfs f1, 0x34(r28)
/* 804E0E4C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804E0E50  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 804E0E54  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E0E58  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0E5C  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 804E0E60  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804E0E64  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 804E0E68  38 63 00 0C */	addi r3, r3, 0xc
/* 804E0E6C  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha
/* 804E0E70  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l
/* 804E0E74  38 BF 00 98 */	addi r5, r31, 0x98
/* 804E0E78  4B FF EC E1 */	bl __register_global_object
/* 804E0E7C  C0 5C 00 3C */	lfs f2, 0x3c(r28)
/* 804E0E80  D0 41 00 08 */	stfs f2, 8(r1)
/* 804E0E84  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 804E0E88  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E0E8C  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 804E0E90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804E0E94  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0E98  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 804E0E9C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 804E0EA0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804E0EA4  38 63 00 18 */	addi r3, r3, 0x18
/* 804E0EA8  3C 80 80 4E */	lis r4, __dt__4cXyzFv@ha
/* 804E0EAC  38 84 00 A0 */	addi r4, r4, __dt__4cXyzFv@l
/* 804E0EB0  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 804E0EB4  4B FF EC A5 */	bl __register_global_object
/* 804E0EB8  38 00 00 01 */	li r0, 1
/* 804E0EBC  98 1F 00 94 */	stb r0, 0x94(r31)
lbl_804E0EC0:
/* 804E0EC0  88 7D 09 3D */	lbz r3, 0x93d(r29)
/* 804E0EC4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 804E0EC8  41 82 00 20 */	beq lbl_804E0EE8
/* 804E0ECC  C0 1D 09 2C */	lfs f0, 0x92c(r29)
/* 804E0ED0  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804E0ED4  C0 1D 09 30 */	lfs f0, 0x930(r29)
/* 804E0ED8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804E0EDC  C0 1D 09 34 */	lfs f0, 0x934(r29)
/* 804E0EE0  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804E0EE4  48 00 01 60 */	b lbl_804E1044
lbl_804E0EE8:
/* 804E0EE8  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804E0EEC  41 82 00 24 */	beq lbl_804E0F10
/* 804E0EF0  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0EF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804E0EF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0EFC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804E0F00  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0F04  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 804E0F08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E0F0C  48 00 00 6C */	b lbl_804E0F78
lbl_804E0F10:
/* 804E0F10  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E0F14  41 82 00 24 */	beq lbl_804E0F38
/* 804E0F18  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0F1C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804E0F20  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0F24  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 804E0F28  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0F2C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 804E0F30  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E0F34  48 00 00 44 */	b lbl_804E0F78
lbl_804E0F38:
/* 804E0F38  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804E0F3C  41 82 00 20 */	beq lbl_804E0F5C
/* 804E0F40  C0 1D 09 2C */	lfs f0, 0x92c(r29)
/* 804E0F44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0F48  C0 1D 09 30 */	lfs f0, 0x930(r29)
/* 804E0F4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0F50  C0 1D 09 34 */	lfs f0, 0x934(r29)
/* 804E0F54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E0F58  48 00 00 20 */	b lbl_804E0F78
lbl_804E0F5C:
/* 804E0F5C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 804E0F60  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0F64  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 804E0F68  C0 03 00 04 */	lfs f0, 4(r3)
/* 804E0F6C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0F70  C0 03 00 08 */	lfs f0, 8(r3)
/* 804E0F74  D0 01 00 40 */	stfs f0, 0x40(r1)
lbl_804E0F78:
/* 804E0F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E0F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E0F80  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804E0F84  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804E0F88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804E0F8C  41 82 00 2C */	beq lbl_804E0FB8
/* 804E0F90  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 804E0F94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0F98  38 7F 00 64 */	addi r3, r31, 0x64
/* 804E0F9C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804E0FA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0FA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804E0FA8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E0FAC  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 804E0FB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E0FB4  48 00 00 64 */	b lbl_804E1018
lbl_804E0FB8:
/* 804E0FB8  7F C3 F3 78 */	mr r3, r30
/* 804E0FBC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 804E0FC0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 804E0FC4  7D 89 03 A6 */	mtctr r12
/* 804E0FC8  4E 80 04 21 */	bctrl 
/* 804E0FCC  28 03 00 00 */	cmplwi r3, 0
/* 804E0FD0  41 82 00 24 */	beq lbl_804E0FF4
/* 804E0FD4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804E0FD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0FDC  38 7F 00 7C */	addi r3, r31, 0x7c
/* 804E0FE0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804E0FE4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E0FE8  C0 03 00 08 */	lfs f0, 8(r3)
/* 804E0FEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E0FF0  48 00 00 28 */	b lbl_804E1018
lbl_804E0FF4:
/* 804E0FF4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E0FF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804E0FFC  38 7F 00 4C */	addi r3, r31, 0x4c
/* 804E1000  C0 03 00 04 */	lfs f0, 4(r3)
/* 804E1004  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804E1008  C0 03 00 08 */	lfs f0, 8(r3)
/* 804E100C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804E1010  C0 1E 05 E4 */	lfs f0, 0x5e4(r30)
/* 804E1014  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_804E1018:
/* 804E1018  38 61 00 44 */	addi r3, r1, 0x44
/* 804E101C  38 81 00 2C */	addi r4, r1, 0x2c
/* 804E1020  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 804E1024  38 C1 00 38 */	addi r6, r1, 0x38
/* 804E1028  4B D8 FD 98 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 804E102C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804E1030  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804E1034  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804E1038  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804E103C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804E1040  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_804E1044:
/* 804E1044  39 61 00 60 */	addi r11, r1, 0x60
/* 804E1048  4B E8 11 DC */	b _restgpr_28
/* 804E104C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804E1050  7C 08 03 A6 */	mtlr r0
/* 804E1054  38 21 00 60 */	addi r1, r1, 0x60
/* 804E1058  4E 80 00 20 */	blr 
