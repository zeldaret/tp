lbl_80197DD0:
/* 80197DD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80197DD4  7C 08 02 A6 */	mflr r0
/* 80197DD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80197DDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80197DE0  48 1C A3 FD */	bl _savegpr_29
/* 80197DE4  7C 7D 1B 78 */	mr r29, r3
/* 80197DE8  7C 9E 23 78 */	mr r30, r4
/* 80197DEC  8B E3 0F 6F */	lbz r31, 0xf6f(r3)
/* 80197DF0  80 83 0E 40 */	lwz r4, 0xe40(r3)
/* 80197DF4  48 00 2D 6D */	bl checkLeftTrigger__13dShopSystem_cFP9STControl
/* 80197DF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197DFC  41 82 01 5C */	beq lbl_80197F58
/* 80197E00  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 80197E04  28 03 00 02 */	cmplwi r3, 2
/* 80197E08  41 82 01 50 */	beq lbl_80197F58
/* 80197E0C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197E10  28 00 00 03 */	cmplwi r0, 3
/* 80197E14  40 82 00 84 */	bne lbl_80197E98
/* 80197E18  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197E1C  38 00 00 00 */	li r0, 0
/* 80197E20  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197E24  28 03 00 01 */	cmplwi r3, 1
/* 80197E28  41 82 00 68 */	beq lbl_80197E90
/* 80197E2C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197E30  28 00 00 00 */	cmplwi r0, 0
/* 80197E34  41 82 00 38 */	beq lbl_80197E6C
/* 80197E38  38 00 00 5F */	li r0, 0x5f
/* 80197E3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80197E40  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197E44  38 81 00 18 */	addi r4, r1, 0x18
/* 80197E48  38 A0 00 00 */	li r5, 0
/* 80197E4C  38 C0 00 00 */	li r6, 0
/* 80197E50  38 E0 00 00 */	li r7, 0
/* 80197E54  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197E58  FC 40 08 90 */	fmr f2, f1
/* 80197E5C  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197E60  FC 80 18 90 */	fmr f4, f3
/* 80197E64  39 00 00 00 */	li r8, 0
/* 80197E68  48 11 3B 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80197E6C:
/* 80197E6C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197E70  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197E74  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197E78  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197E7C  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197E80  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197E84  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197E88  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197E8C  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197E90:
/* 80197E90  38 60 00 03 */	li r3, 3
/* 80197E94  48 00 03 A4 */	b lbl_80198238
lbl_80197E98:
/* 80197E98  28 00 00 00 */	cmplwi r0, 0
/* 80197E9C  41 82 00 BC */	beq lbl_80197F58
/* 80197EA0  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197EA4  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197EA8  38 03 FF FF */	addi r0, r3, -1
/* 80197EAC  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197EB0  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197EB4  28 04 00 00 */	cmplwi r4, 0
/* 80197EB8  41 82 00 28 */	beq lbl_80197EE0
/* 80197EBC  7F A3 EB 78 */	mr r3, r29
/* 80197EC0  38 84 FF FF */	addi r4, r4, -1
/* 80197EC4  4B FF F7 35 */	bl isFlag__13dShopSystem_cFi
/* 80197EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80197ECC  41 82 00 14 */	beq lbl_80197EE0
/* 80197ED0  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197ED4  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197ED8  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197EDC  48 00 00 7C */	b lbl_80197F58
lbl_80197EE0:
/* 80197EE0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197EE4  28 00 00 01 */	cmplwi r0, 1
/* 80197EE8  41 82 00 68 */	beq lbl_80197F50
/* 80197EEC  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197EF0  28 00 00 00 */	cmplwi r0, 0
/* 80197EF4  41 82 00 38 */	beq lbl_80197F2C
/* 80197EF8  38 00 00 5F */	li r0, 0x5f
/* 80197EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197F00  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197F04  38 81 00 14 */	addi r4, r1, 0x14
/* 80197F08  38 A0 00 00 */	li r5, 0
/* 80197F0C  38 C0 00 00 */	li r6, 0
/* 80197F10  38 E0 00 00 */	li r7, 0
/* 80197F14  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197F18  FC 40 08 90 */	fmr f2, f1
/* 80197F1C  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197F20  FC 80 18 90 */	fmr f4, f3
/* 80197F24  39 00 00 00 */	li r8, 0
/* 80197F28  48 11 3A 5D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80197F2C:
/* 80197F2C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197F30  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197F34  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197F38  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197F3C  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197F40  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197F44  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197F48  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197F4C  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197F50:
/* 80197F50  38 60 00 03 */	li r3, 3
/* 80197F54  48 00 02 E4 */	b lbl_80198238
lbl_80197F58:
/* 80197F58  7F A3 EB 78 */	mr r3, r29
/* 80197F5C  80 9D 0E 40 */	lwz r4, 0xe40(r29)
/* 80197F60  48 00 2C 25 */	bl checkRightTrigger__13dShopSystem_cFP9STControl
/* 80197F64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197F68  41 82 00 D0 */	beq lbl_80198038
/* 80197F6C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197F70  28 00 00 02 */	cmplwi r0, 2
/* 80197F74  41 82 00 C4 */	beq lbl_80198038
/* 80197F78  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197F7C  28 00 00 02 */	cmplwi r0, 2
/* 80197F80  41 82 00 B8 */	beq lbl_80198038
/* 80197F84  28 00 00 05 */	cmplwi r0, 5
/* 80197F88  41 82 00 B0 */	beq lbl_80198038
/* 80197F8C  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197F90  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197F94  38 03 00 01 */	addi r0, r3, 1
/* 80197F98  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197F9C  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197FA0  28 04 00 00 */	cmplwi r4, 0
/* 80197FA4  41 82 00 28 */	beq lbl_80197FCC
/* 80197FA8  7F A3 EB 78 */	mr r3, r29
/* 80197FAC  38 84 FF FF */	addi r4, r4, -1
/* 80197FB0  4B FF F6 49 */	bl isFlag__13dShopSystem_cFi
/* 80197FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80197FB8  41 82 00 14 */	beq lbl_80197FCC
/* 80197FBC  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197FC0  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197FC4  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197FC8  48 00 00 70 */	b lbl_80198038
lbl_80197FCC:
/* 80197FCC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197FD0  28 00 00 01 */	cmplwi r0, 1
/* 80197FD4  41 82 00 5C */	beq lbl_80198030
/* 80197FD8  38 00 00 5F */	li r0, 0x5f
/* 80197FDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80197FE0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197FE4  38 81 00 10 */	addi r4, r1, 0x10
/* 80197FE8  38 A0 00 00 */	li r5, 0
/* 80197FEC  38 C0 00 00 */	li r6, 0
/* 80197FF0  38 E0 00 00 */	li r7, 0
/* 80197FF4  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197FF8  FC 40 08 90 */	fmr f2, f1
/* 80197FFC  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80198000  FC 80 18 90 */	fmr f4, f3
/* 80198004  39 00 00 00 */	li r8, 0
/* 80198008  48 11 39 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8019800C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80198010  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80198014  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80198018  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 8019801C  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80198020  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80198024  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80198028  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 8019802C  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80198030:
/* 80198030  38 60 00 04 */	li r3, 4
/* 80198034  48 00 02 04 */	b lbl_80198238
lbl_80198038:
/* 80198038  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 8019803C  4B E9 A4 E9 */	bl checkUpTrigger__9STControlFv
/* 80198040  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80198044  41 82 00 F8 */	beq lbl_8019813C
/* 80198048  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8019804C  28 00 00 02 */	cmplwi r0, 2
/* 80198050  41 82 00 EC */	beq lbl_8019813C
/* 80198054  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80198058  28 00 00 03 */	cmplwi r0, 3
/* 8019805C  41 82 00 0C */	beq lbl_80198068
/* 80198060  28 00 00 05 */	cmplwi r0, 5
/* 80198064  40 82 00 D8 */	bne lbl_8019813C
lbl_80198068:
/* 80198068  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 8019806C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80198070  28 00 00 03 */	cmplwi r0, 3
/* 80198074  40 82 00 10 */	bne lbl_80198084
/* 80198078  38 00 00 01 */	li r0, 1
/* 8019807C  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80198080  48 00 00 14 */	b lbl_80198094
lbl_80198084:
/* 80198084  28 00 00 05 */	cmplwi r0, 5
/* 80198088  40 82 00 0C */	bne lbl_80198094
/* 8019808C  38 00 00 02 */	li r0, 2
/* 80198090  98 1D 0F 6E */	stb r0, 0xf6e(r29)
lbl_80198094:
/* 80198094  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80198098  28 04 00 00 */	cmplwi r4, 0
/* 8019809C  41 82 00 28 */	beq lbl_801980C4
/* 801980A0  7F A3 EB 78 */	mr r3, r29
/* 801980A4  38 84 FF FF */	addi r4, r4, -1
/* 801980A8  4B FF F5 51 */	bl isFlag__13dShopSystem_cFi
/* 801980AC  2C 03 00 00 */	cmpwi r3, 0
/* 801980B0  41 82 00 14 */	beq lbl_801980C4
/* 801980B4  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 801980B8  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 801980BC  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 801980C0  48 00 00 7C */	b lbl_8019813C
lbl_801980C4:
/* 801980C4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801980C8  28 00 00 01 */	cmplwi r0, 1
/* 801980CC  41 82 00 68 */	beq lbl_80198134
/* 801980D0  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 801980D4  28 00 00 00 */	cmplwi r0, 0
/* 801980D8  41 82 00 38 */	beq lbl_80198110
/* 801980DC  38 00 00 5F */	li r0, 0x5f
/* 801980E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801980E4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801980E8  38 81 00 0C */	addi r4, r1, 0xc
/* 801980EC  38 A0 00 00 */	li r5, 0
/* 801980F0  38 C0 00 00 */	li r6, 0
/* 801980F4  38 E0 00 00 */	li r7, 0
/* 801980F8  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 801980FC  FC 40 08 90 */	fmr f2, f1
/* 80198100  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80198104  FC 80 18 90 */	fmr f4, f3
/* 80198108  39 00 00 00 */	li r8, 0
/* 8019810C  48 11 38 79 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80198110:
/* 80198110  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80198114  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80198118  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 8019811C  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80198120  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80198124  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80198128  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 8019812C  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80198130  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80198134:
/* 80198134  38 60 00 05 */	li r3, 5
/* 80198138  48 00 01 00 */	b lbl_80198238
lbl_8019813C:
/* 8019813C  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80198140  4B E9 A4 61 */	bl checkDownTrigger__9STControlFv
/* 80198144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80198148  41 82 00 EC */	beq lbl_80198234
/* 8019814C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80198150  28 00 00 02 */	cmplwi r0, 2
/* 80198154  41 82 00 E0 */	beq lbl_80198234
/* 80198158  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 8019815C  28 00 00 01 */	cmplwi r0, 1
/* 80198160  41 82 00 0C */	beq lbl_8019816C
/* 80198164  28 00 00 02 */	cmplwi r0, 2
/* 80198168  40 82 00 CC */	bne lbl_80198234
lbl_8019816C:
/* 8019816C  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80198170  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80198174  28 00 00 01 */	cmplwi r0, 1
/* 80198178  40 82 00 10 */	bne lbl_80198188
/* 8019817C  38 00 00 03 */	li r0, 3
/* 80198180  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80198184  48 00 00 14 */	b lbl_80198198
lbl_80198188:
/* 80198188  28 00 00 02 */	cmplwi r0, 2
/* 8019818C  40 82 00 0C */	bne lbl_80198198
/* 80198190  38 00 00 05 */	li r0, 5
/* 80198194  98 1D 0F 6E */	stb r0, 0xf6e(r29)
lbl_80198198:
/* 80198198  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 8019819C  28 04 00 00 */	cmplwi r4, 0
/* 801981A0  41 82 00 28 */	beq lbl_801981C8
/* 801981A4  7F A3 EB 78 */	mr r3, r29
/* 801981A8  38 84 FF FF */	addi r4, r4, -1
/* 801981AC  4B FF F4 4D */	bl isFlag__13dShopSystem_cFi
/* 801981B0  2C 03 00 00 */	cmpwi r3, 0
/* 801981B4  41 82 00 14 */	beq lbl_801981C8
/* 801981B8  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 801981BC  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 801981C0  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 801981C4  48 00 00 70 */	b lbl_80198234
lbl_801981C8:
/* 801981C8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801981CC  28 00 00 01 */	cmplwi r0, 1
/* 801981D0  41 82 00 5C */	beq lbl_8019822C
/* 801981D4  38 00 00 5F */	li r0, 0x5f
/* 801981D8  90 01 00 08 */	stw r0, 8(r1)
/* 801981DC  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801981E0  38 81 00 08 */	addi r4, r1, 8
/* 801981E4  38 A0 00 00 */	li r5, 0
/* 801981E8  38 C0 00 00 */	li r6, 0
/* 801981EC  38 E0 00 00 */	li r7, 0
/* 801981F0  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 801981F4  FC 40 08 90 */	fmr f2, f1
/* 801981F8  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 801981FC  FC 80 18 90 */	fmr f4, f3
/* 80198200  39 00 00 00 */	li r8, 0
/* 80198204  48 11 37 81 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80198208  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 8019820C  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80198210  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80198214  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80198218  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 8019821C  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80198220  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80198224  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80198228  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_8019822C:
/* 8019822C  38 60 00 06 */	li r3, 6
/* 80198230  48 00 00 08 */	b lbl_80198238
lbl_80198234:
/* 80198234  38 60 00 00 */	li r3, 0
lbl_80198238:
/* 80198238  39 61 00 30 */	addi r11, r1, 0x30
/* 8019823C  48 1C 9F ED */	bl _restgpr_29
/* 80198240  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80198244  7C 08 03 A6 */	mtlr r0
/* 80198248  38 21 00 30 */	addi r1, r1, 0x30
/* 8019824C  4E 80 00 20 */	blr 
