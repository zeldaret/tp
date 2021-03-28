lbl_80740C3C:
/* 80740C3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80740C40  7C 08 02 A6 */	mflr r0
/* 80740C44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80740C48  39 61 00 40 */	addi r11, r1, 0x40
/* 80740C4C  4B C2 15 90 */	b _savegpr_29
/* 80740C50  7C 7E 1B 78 */	mr r30, r3
/* 80740C54  3C 60 80 74 */	lis r3, lit_3767@ha
/* 80740C58  3B A3 1B F4 */	addi r29, r3, lit_3767@l
/* 80740C5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80740C60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80740C64  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80740C68  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80740C6C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80740C70  41 82 00 50 */	beq lbl_80740CC0
/* 80740C74  2C 00 00 0C */	cmpwi r0, 0xc
/* 80740C78  41 82 00 48 */	beq lbl_80740CC0
/* 80740C7C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80740C80  41 82 00 40 */	beq lbl_80740CC0
/* 80740C84  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80740C88  3C 80 80 74 */	lis r4, stringBase0@ha
/* 80740C8C  38 84 1D 0C */	addi r4, r4, stringBase0@l
/* 80740C90  38 84 00 05 */	addi r4, r4, 5
/* 80740C94  4B C2 7D 00 */	b strcmp
/* 80740C98  2C 03 00 00 */	cmpwi r3, 0
/* 80740C9C  40 82 00 10 */	bne lbl_80740CAC
/* 80740CA0  38 00 00 52 */	li r0, 0x52
/* 80740CA4  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80740CA8  48 00 00 0C */	b lbl_80740CB4
lbl_80740CAC:
/* 80740CAC  38 00 00 53 */	li r0, 0x53
/* 80740CB0  98 1E 05 46 */	stb r0, 0x546(r30)
lbl_80740CB4:
/* 80740CB4  38 00 00 04 */	li r0, 4
/* 80740CB8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80740CBC  48 00 01 74 */	b lbl_80740E30
lbl_80740CC0:
/* 80740CC0  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80740CC4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80740CC8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80740CCC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 80740CD0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80740CD4  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80740CD8  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80740CDC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80740CE0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80740CE4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80740CE8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80740CEC  38 61 00 0C */	addi r3, r1, 0xc
/* 80740CF0  38 81 00 18 */	addi r4, r1, 0x18
/* 80740CF4  4B C0 66 A8 */	b PSVECSquareDistance
/* 80740CF8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80740CFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80740D00  40 81 00 58 */	ble lbl_80740D58
/* 80740D04  FC 00 08 34 */	frsqrte f0, f1
/* 80740D08  C8 9D 00 60 */	lfd f4, 0x60(r29)
/* 80740D0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80740D10  C8 7D 00 68 */	lfd f3, 0x68(r29)
/* 80740D14  FC 00 00 32 */	fmul f0, f0, f0
/* 80740D18  FC 01 00 32 */	fmul f0, f1, f0
/* 80740D1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80740D20  FC 02 00 32 */	fmul f0, f2, f0
/* 80740D24  FC 44 00 32 */	fmul f2, f4, f0
/* 80740D28  FC 00 00 32 */	fmul f0, f0, f0
/* 80740D2C  FC 01 00 32 */	fmul f0, f1, f0
/* 80740D30  FC 03 00 28 */	fsub f0, f3, f0
/* 80740D34  FC 02 00 32 */	fmul f0, f2, f0
/* 80740D38  FC 44 00 32 */	fmul f2, f4, f0
/* 80740D3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80740D40  FC 01 00 32 */	fmul f0, f1, f0
/* 80740D44  FC 03 00 28 */	fsub f0, f3, f0
/* 80740D48  FC 02 00 32 */	fmul f0, f2, f0
/* 80740D4C  FC 21 00 32 */	fmul f1, f1, f0
/* 80740D50  FC 20 08 18 */	frsp f1, f1
/* 80740D54  48 00 00 88 */	b lbl_80740DDC
lbl_80740D58:
/* 80740D58  C8 1D 00 70 */	lfd f0, 0x70(r29)
/* 80740D5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80740D60  40 80 00 10 */	bge lbl_80740D70
/* 80740D64  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80740D68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80740D6C  48 00 00 70 */	b lbl_80740DDC
lbl_80740D70:
/* 80740D70  D0 21 00 08 */	stfs f1, 8(r1)
/* 80740D74  80 81 00 08 */	lwz r4, 8(r1)
/* 80740D78  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80740D7C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80740D80  7C 03 00 00 */	cmpw r3, r0
/* 80740D84  41 82 00 14 */	beq lbl_80740D98
/* 80740D88  40 80 00 40 */	bge lbl_80740DC8
/* 80740D8C  2C 03 00 00 */	cmpwi r3, 0
/* 80740D90  41 82 00 20 */	beq lbl_80740DB0
/* 80740D94  48 00 00 34 */	b lbl_80740DC8
lbl_80740D98:
/* 80740D98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80740D9C  41 82 00 0C */	beq lbl_80740DA8
/* 80740DA0  38 00 00 01 */	li r0, 1
/* 80740DA4  48 00 00 28 */	b lbl_80740DCC
lbl_80740DA8:
/* 80740DA8  38 00 00 02 */	li r0, 2
/* 80740DAC  48 00 00 20 */	b lbl_80740DCC
lbl_80740DB0:
/* 80740DB0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80740DB4  41 82 00 0C */	beq lbl_80740DC0
/* 80740DB8  38 00 00 05 */	li r0, 5
/* 80740DBC  48 00 00 10 */	b lbl_80740DCC
lbl_80740DC0:
/* 80740DC0  38 00 00 03 */	li r0, 3
/* 80740DC4  48 00 00 08 */	b lbl_80740DCC
lbl_80740DC8:
/* 80740DC8  38 00 00 04 */	li r0, 4
lbl_80740DCC:
/* 80740DCC  2C 00 00 01 */	cmpwi r0, 1
/* 80740DD0  40 82 00 0C */	bne lbl_80740DDC
/* 80740DD4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80740DD8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80740DDC:
/* 80740DDC  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 80740DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80740DE4  40 81 00 40 */	ble lbl_80740E24
/* 80740DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80740DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80740DF0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80740DF4  3C 80 80 74 */	lis r4, stringBase0@ha
/* 80740DF8  38 84 1D 0C */	addi r4, r4, stringBase0@l
/* 80740DFC  38 84 00 05 */	addi r4, r4, 5
/* 80740E00  4B C2 7B 94 */	b strcmp
/* 80740E04  2C 03 00 00 */	cmpwi r3, 0
/* 80740E08  40 82 00 10 */	bne lbl_80740E18
/* 80740E0C  38 00 00 52 */	li r0, 0x52
/* 80740E10  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80740E14  48 00 00 1C */	b lbl_80740E30
lbl_80740E18:
/* 80740E18  38 00 00 53 */	li r0, 0x53
/* 80740E1C  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80740E20  48 00 00 10 */	b lbl_80740E30
lbl_80740E24:
/* 80740E24  38 00 00 00 */	li r0, 0
/* 80740E28  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80740E2C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80740E30:
/* 80740E30  7F E3 FB 78 */	mr r3, r31
/* 80740E34  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80740E38  81 8C 02 64 */	lwz r12, 0x264(r12)
/* 80740E3C  7D 89 03 A6 */	mtctr r12
/* 80740E40  4E 80 04 21 */	bctrl 
/* 80740E44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80740E48  41 82 00 10 */	beq lbl_80740E58
/* 80740E4C  38 00 00 00 */	li r0, 0
/* 80740E50  98 1E 05 46 */	stb r0, 0x546(r30)
/* 80740E54  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80740E58:
/* 80740E58  39 61 00 40 */	addi r11, r1, 0x40
/* 80740E5C  4B C2 13 CC */	b _restgpr_29
/* 80740E60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80740E64  7C 08 03 A6 */	mtlr r0
/* 80740E68  38 21 00 40 */	addi r1, r1, 0x40
/* 80740E6C  4E 80 00 20 */	blr 
