lbl_804E9B68:
/* 804E9B68  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804E9B6C  7C 08 02 A6 */	mflr r0
/* 804E9B70  90 01 00 74 */	stw r0, 0x74(r1)
/* 804E9B74  39 61 00 70 */	addi r11, r1, 0x70
/* 804E9B78  4B E7 86 5D */	bl _savegpr_27
/* 804E9B7C  7C 7D 1B 78 */	mr r29, r3
/* 804E9B80  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E9B84  3B C3 E8 AC */	addi r30, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804E9B88  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804E9B8C  2C 00 00 00 */	cmpwi r0, 0
/* 804E9B90  41 81 00 18 */	bgt lbl_804E9BA8
/* 804E9B94  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 804E9B98  54 00 00 3E */	slwi r0, r0, 0
/* 804E9B9C  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 804E9BA0  38 00 00 00 */	li r0, 0
/* 804E9BA4  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_804E9BA8:
/* 804E9BA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E9BAC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E9BB0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804E9BB4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804E9BB8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804E9BBC  41 82 00 9C */	beq lbl_804E9C58
/* 804E9BC0  88 1D 06 F3 */	lbz r0, 0x6f3(r29)
/* 804E9BC4  7C 00 07 75 */	extsb. r0, r0
/* 804E9BC8  40 82 01 34 */	bne lbl_804E9CFC
/* 804E9BCC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804E9BD0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804E9BD4  41 82 01 28 */	beq lbl_804E9CFC
/* 804E9BD8  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804E9BDC  2C 00 00 28 */	cmpwi r0, 0x28
/* 804E9BE0  40 81 00 10 */	ble lbl_804E9BF0
/* 804E9BE4  38 00 00 5A */	li r0, 0x5a
/* 804E9BE8  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804E9BEC  48 00 00 20 */	b lbl_804E9C0C
lbl_804E9BF0:
/* 804E9BF0  2C 00 00 14 */	cmpwi r0, 0x14
/* 804E9BF4  40 81 00 10 */	ble lbl_804E9C04
/* 804E9BF8  38 00 00 46 */	li r0, 0x46
/* 804E9BFC  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804E9C00  48 00 00 0C */	b lbl_804E9C0C
lbl_804E9C04:
/* 804E9C04  38 00 00 32 */	li r0, 0x32
/* 804E9C08  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
lbl_804E9C0C:
/* 804E9C0C  38 00 00 1E */	li r0, 0x1e
/* 804E9C10  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804E9C14  38 00 00 01 */	li r0, 1
/* 804E9C18  98 1D 06 F3 */	stb r0, 0x6f3(r29)
/* 804E9C1C  88 1D 05 B7 */	lbz r0, 0x5b7(r29)
/* 804E9C20  28 00 00 01 */	cmplwi r0, 1
/* 804E9C24  40 82 00 1C */	bne lbl_804E9C40
/* 804E9C28  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804E9C2C  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804E9C30  A8 63 00 20 */	lha r3, 0x20(r3)
/* 804E9C34  38 03 00 01 */	addi r0, r3, 1
/* 804E9C38  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
/* 804E9C3C  48 00 00 C0 */	b lbl_804E9CFC
lbl_804E9C40:
/* 804E9C40  3C 60 80 4F */	lis r3, l_HIO@ha /* 0x804EEF3C@ha */
/* 804E9C44  38 63 EF 3C */	addi r3, r3, l_HIO@l /* 0x804EEF3C@l */
/* 804E9C48  A8 63 00 1E */	lha r3, 0x1e(r3)
/* 804E9C4C  38 03 00 01 */	addi r0, r3, 1
/* 804E9C50  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
/* 804E9C54  48 00 00 A8 */	b lbl_804E9CFC
lbl_804E9C58:
/* 804E9C58  28 1D 00 00 */	cmplwi r29, 0
/* 804E9C5C  41 82 00 A0 */	beq lbl_804E9CFC
/* 804E9C60  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804E9C64  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804E9C68  41 82 00 94 */	beq lbl_804E9CFC
/* 804E9C6C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804E9C70  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804E9C74  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804E9C78  38 00 00 03 */	li r0, 3
/* 804E9C7C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804E9C80  38 80 00 00 */	li r4, 0
/* 804E9C84  B0 9D 05 62 */	sth r4, 0x562(r29)
/* 804E9C88  38 00 00 64 */	li r0, 0x64
/* 804E9C8C  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804E9C90  38 00 00 2E */	li r0, 0x2e
/* 804E9C94  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
/* 804E9C98  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 804E9C9C  38 00 FF E8 */	li r0, -24
/* 804E9CA0  7C 60 00 38 */	and r0, r3, r0
/* 804E9CA4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804E9CA8  B0 9D 05 62 */	sth r4, 0x562(r29)
/* 804E9CAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070022@ha */
/* 804E9CB0  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00070022@l */
/* 804E9CB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E9CB8  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804E9CBC  38 81 00 1C */	addi r4, r1, 0x1c
/* 804E9CC0  38 A0 FF FF */	li r5, -1
/* 804E9CC4  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804E9CC8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E9CCC  7D 89 03 A6 */	mtctr r12
/* 804E9CD0  4E 80 04 21 */	bctrl 
/* 804E9CD4  38 00 00 01 */	li r0, 1
/* 804E9CD8  98 1D 06 C4 */	stb r0, 0x6c4(r29)
/* 804E9CDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E9CE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E9CE4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E9CE8  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804E9CEC  64 00 01 00 */	oris r0, r0, 0x100
/* 804E9CF0  90 03 05 88 */	stw r0, 0x588(r3)
/* 804E9CF4  38 00 00 0F */	li r0, 0xf
/* 804E9CF8  B0 1D 08 0C */	sth r0, 0x80c(r29)
lbl_804E9CFC:
/* 804E9CFC  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 804E9D00  28 00 00 1F */	cmplwi r0, 0x1f
/* 804E9D04  41 81 09 64 */	bgt lbl_804EA668
/* 804E9D08  3C 60 80 4F */	lis r3, lit_5981@ha /* 0x804EEB08@ha */
/* 804E9D0C  38 63 EB 08 */	addi r3, r3, lit_5981@l /* 0x804EEB08@l */
/* 804E9D10  54 00 10 3A */	slwi r0, r0, 2
/* 804E9D14  7C 03 00 2E */	lwzx r0, r3, r0
/* 804E9D18  7C 09 03 A6 */	mtctr r0
/* 804E9D1C  4E 80 04 20 */	bctr 
lbl_804E9D20:
/* 804E9D20  7F A3 EB 78 */	mr r3, r29
/* 804E9D24  38 80 00 09 */	li r4, 9
/* 804E9D28  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804E9D2C  38 A0 00 00 */	li r5, 0
/* 804E9D30  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804E9D34  4B FF B5 9D */	bl anm_init__FP10e_dn_classifUcf
/* 804E9D38  38 00 00 01 */	li r0, 1
/* 804E9D3C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804E9D40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E9D44  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804E9D48  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804E9D4C  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804E9D50  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804E9D54  2C 00 00 00 */	cmpwi r0, 0
/* 804E9D58  41 81 00 50 */	bgt lbl_804E9DA8
/* 804E9D5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070022@ha */
/* 804E9D60  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00070022@l */
/* 804E9D64  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E9D68  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804E9D6C  38 81 00 18 */	addi r4, r1, 0x18
/* 804E9D70  38 A0 FF FF */	li r5, -1
/* 804E9D74  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804E9D78  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E9D7C  7D 89 03 A6 */	mtctr r12
/* 804E9D80  4E 80 04 21 */	bctrl 
/* 804E9D84  38 00 00 01 */	li r0, 1
/* 804E9D88  98 1D 06 C4 */	stb r0, 0x6c4(r29)
/* 804E9D8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E9D90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E9D94  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804E9D98  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804E9D9C  64 00 01 00 */	oris r0, r0, 0x100
/* 804E9DA0  90 03 05 88 */	stw r0, 0x588(r3)
/* 804E9DA4  48 00 00 2C */	b lbl_804E9DD0
lbl_804E9DA8:
/* 804E9DA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004D@ha */
/* 804E9DAC  38 03 00 4D */	addi r0, r3, 0x004D /* 0x0007004D@l */
/* 804E9DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9DB4  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804E9DB8  38 81 00 14 */	addi r4, r1, 0x14
/* 804E9DBC  38 A0 FF FF */	li r5, -1
/* 804E9DC0  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804E9DC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E9DC8  7D 89 03 A6 */	mtctr r12
/* 804E9DCC  4E 80 04 21 */	bctrl 
lbl_804E9DD0:
/* 804E9DD0  38 00 00 00 */	li r0, 0
/* 804E9DD4  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804E9DD8  48 00 08 90 */	b lbl_804EA668
lbl_804E9DDC:
/* 804E9DDC  80 1D 08 B0 */	lwz r0, 0x8b0(r29)
/* 804E9DE0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804E9DE4  41 82 00 DC */	beq lbl_804E9EC0
/* 804E9DE8  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804E9DEC  2C 00 00 00 */	cmpwi r0, 0
/* 804E9DF0  40 82 00 D0 */	bne lbl_804E9EC0
/* 804E9DF4  7F A3 EB 78 */	mr r3, r29
/* 804E9DF8  4B FF F9 F5 */	bl kado_check__FP10e_dn_class
/* 804E9DFC  2C 03 00 00 */	cmpwi r3, 0
/* 804E9E00  41 82 00 60 */	beq lbl_804E9E60
/* 804E9E04  2C 03 00 02 */	cmpwi r3, 2
/* 804E9E08  40 82 00 1C */	bne lbl_804E9E24
/* 804E9E0C  38 00 0C 00 */	li r0, 0xc00
/* 804E9E10  B0 1D 07 0E */	sth r0, 0x70e(r29)
/* 804E9E14  A8 7D 07 26 */	lha r3, 0x726(r29)
/* 804E9E18  38 03 E4 A8 */	addi r0, r3, -7000
/* 804E9E1C  B0 1D 07 26 */	sth r0, 0x726(r29)
/* 804E9E20  48 00 00 18 */	b lbl_804E9E38
lbl_804E9E24:
/* 804E9E24  38 00 F4 00 */	li r0, -3072
/* 804E9E28  B0 1D 07 0E */	sth r0, 0x70e(r29)
/* 804E9E2C  A8 7D 07 26 */	lha r3, 0x726(r29)
/* 804E9E30  38 03 1B 58 */	addi r0, r3, 0x1b58
/* 804E9E34  B0 1D 07 26 */	sth r0, 0x726(r29)
lbl_804E9E38:
/* 804E9E38  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804E9E3C  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804E9E40  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804E9E44  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804E9E48  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 804E9E4C  38 00 00 28 */	li r0, 0x28
/* 804E9E50  B0 1D 08 28 */	sth r0, 0x828(r29)
/* 804E9E54  38 00 00 3C */	li r0, 0x3c
/* 804E9E58  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804E9E5C  48 00 08 0C */	b lbl_804EA668
lbl_804E9E60:
/* 804E9E60  38 00 00 0A */	li r0, 0xa
/* 804E9E64  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804E9E68  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E9E6C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804E9E70  C0 3D 07 04 */	lfs f1, 0x704(r29)
/* 804E9E74  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 804E9E78  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E9E7C  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804E9E80  A8 7D 07 26 */	lha r3, 0x726(r29)
/* 804E9E84  3C 63 00 01 */	addis r3, r3, 1
/* 804E9E88  38 03 80 00 */	addi r0, r3, -32768
/* 804E9E8C  B0 1D 07 26 */	sth r0, 0x726(r29)
/* 804E9E90  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804E9E94  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804E9E98  38 00 00 05 */	li r0, 5
/* 804E9E9C  B0 1D 08 40 */	sth r0, 0x840(r29)
/* 804E9EA0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804E9EA4  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804E9EA8  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 804E9EAC  38 00 00 28 */	li r0, 0x28
/* 804E9EB0  B0 1D 08 28 */	sth r0, 0x828(r29)
/* 804E9EB4  38 00 00 00 */	li r0, 0
/* 804E9EB8  B0 1D 07 0E */	sth r0, 0x70e(r29)
/* 804E9EBC  48 00 07 AC */	b lbl_804EA668
lbl_804E9EC0:
/* 804E9EC0  38 7D 07 24 */	addi r3, r29, 0x724
/* 804E9EC4  38 80 C0 00 */	li r4, -16384
/* 804E9EC8  38 A0 00 01 */	li r5, 1
/* 804E9ECC  38 C0 03 00 */	li r6, 0x300
/* 804E9ED0  4B D8 67 39 */	bl cLib_addCalcAngleS2__FPssss
/* 804E9ED4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 804E9ED8  A8 1D 07 0E */	lha r0, 0x70e(r29)
/* 804E9EDC  7C 03 02 14 */	add r0, r3, r0
/* 804E9EE0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804E9EE4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804E9EE8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 804E9EEC  A8 1D 07 24 */	lha r0, 0x724(r29)
/* 804E9EF0  2C 00 D0 00 */	cmpwi r0, -12288
/* 804E9EF4  41 81 07 74 */	bgt lbl_804EA668
/* 804E9EF8  80 1D 08 B0 */	lwz r0, 0x8b0(r29)
/* 804E9EFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804E9F00  41 82 07 68 */	beq lbl_804EA668
/* 804E9F04  38 00 00 02 */	li r0, 2
/* 804E9F08  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804E9F0C  38 00 00 0A */	li r0, 0xa
/* 804E9F10  98 1D 07 36 */	stb r0, 0x736(r29)
/* 804E9F14  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 804E9F18  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 804E9F1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E9F20  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804E9F24  38 81 00 10 */	addi r4, r1, 0x10
/* 804E9F28  38 A0 00 00 */	li r5, 0
/* 804E9F2C  38 C0 FF FF */	li r6, -1
/* 804E9F30  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804E9F34  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804E9F38  7D 89 03 A6 */	mtctr r12
/* 804E9F3C  4E 80 04 21 */	bctrl 
/* 804E9F40  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804E9F44  7C 00 07 75 */	extsb. r0, r0
/* 804E9F48  40 82 00 20 */	bne lbl_804E9F68
/* 804E9F4C  7F A3 EB 78 */	mr r3, r29
/* 804E9F50  38 80 00 0D */	li r4, 0xd
/* 804E9F54  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804E9F58  38 A0 00 00 */	li r5, 0
/* 804E9F5C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804E9F60  4B FF B3 71 */	bl anm_init__FP10e_dn_classifUcf
/* 804E9F64  48 00 00 1C */	b lbl_804E9F80
lbl_804E9F68:
/* 804E9F68  7F A3 EB 78 */	mr r3, r29
/* 804E9F6C  38 80 00 0F */	li r4, 0xf
/* 804E9F70  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 804E9F74  38 A0 00 00 */	li r5, 0
/* 804E9F78  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804E9F7C  4B FF B3 55 */	bl anm_init__FP10e_dn_classifUcf
lbl_804E9F80:
/* 804E9F80  88 1D 07 10 */	lbz r0, 0x710(r29)
/* 804E9F84  7C 00 07 75 */	extsb. r0, r0
/* 804E9F88  41 82 00 18 */	beq lbl_804E9FA0
/* 804E9F8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804E9F90  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804E9F94  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 804E9F98  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804E9F9C  48 00 06 CC */	b lbl_804EA668
lbl_804E9FA0:
/* 804E9FA0  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804E9FA4  7C 00 07 75 */	extsb. r0, r0
/* 804E9FA8  40 82 00 14 */	bne lbl_804E9FBC
/* 804E9FAC  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 804E9FB0  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804E9FB4  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 804E9FB8  48 00 00 10 */	b lbl_804E9FC8
lbl_804E9FBC:
/* 804E9FBC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804E9FC0  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804E9FC4  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_804E9FC8:
/* 804E9FC8  38 00 B0 00 */	li r0, -20480
/* 804E9FCC  B0 1D 07 58 */	sth r0, 0x758(r29)
/* 804E9FD0  38 00 C0 00 */	li r0, -16384
/* 804E9FD4  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 804E9FD8  38 00 00 28 */	li r0, 0x28
/* 804E9FDC  B0 1D 08 28 */	sth r0, 0x828(r29)
/* 804E9FE0  C0 3D 07 04 */	lfs f1, 0x704(r29)
/* 804E9FE4  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804E9FE8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E9FEC  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804E9FF0  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804E9FF4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804E9FF8  A8 1D 07 0E */	lha r0, 0x70e(r29)
/* 804E9FFC  7C 00 0E 70 */	srawi r0, r0, 1
/* 804EA000  7C 00 01 94 */	addze r0, r0
/* 804EA004  B0 1D 07 0E */	sth r0, 0x70e(r29)
/* 804EA008  A8 1D 07 26 */	lha r0, 0x726(r29)
/* 804EA00C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804EA010  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804EA014  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804EA018  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804EA01C  80 63 00 04 */	lwz r3, 4(r3)
/* 804EA020  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EA024  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EA028  38 63 00 60 */	addi r3, r3, 0x60
/* 804EA02C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EA030  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EA034  80 84 00 00 */	lwz r4, 0(r4)
/* 804EA038  4B E5 C4 79 */	bl PSMTXCopy
/* 804EA03C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA040  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804EA044  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804EA048  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804EA04C  38 61 00 38 */	addi r3, r1, 0x38
/* 804EA050  38 81 00 2C */	addi r4, r1, 0x2c
/* 804EA054  4B D8 6E 99 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EA058  38 7D 10 DC */	addi r3, r29, 0x10dc
/* 804EA05C  38 9D 10 E0 */	addi r4, r29, 0x10e0
/* 804EA060  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804EA064  38 C0 00 00 */	li r6, 0
/* 804EA068  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 804EA06C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 804EA070  39 00 00 01 */	li r8, 1
/* 804EA074  4B B3 2F AD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 804EA078  48 00 05 F0 */	b lbl_804EA668
lbl_804EA07C:
/* 804EA07C  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 804EA080  A8 1D 07 0E */	lha r0, 0x70e(r29)
/* 804EA084  7C 03 02 14 */	add r0, r3, r0
/* 804EA088  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804EA08C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 804EA090  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 804EA094  38 7D 07 24 */	addi r3, r29, 0x724
/* 804EA098  38 80 C0 00 */	li r4, -16384
/* 804EA09C  38 A0 00 01 */	li r5, 1
/* 804EA0A0  38 C0 03 00 */	li r6, 0x300
/* 804EA0A4  4B D8 65 65 */	bl cLib_addCalcAngleS2__FPssss
/* 804EA0A8  80 1D 08 B0 */	lwz r0, 0x8b0(r29)
/* 804EA0AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804EA0B0  41 82 05 B8 */	beq lbl_804EA668
/* 804EA0B4  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804EA0B8  2C 00 00 00 */	cmpwi r0, 0
/* 804EA0BC  40 81 00 20 */	ble lbl_804EA0DC
/* 804EA0C0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804EA0C4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804EA0C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804EA0CC  40 82 00 10 */	bne lbl_804EA0DC
/* 804EA0D0  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804EA0D4  60 00 00 01 */	ori r0, r0, 1
/* 804EA0D8  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_804EA0DC:
/* 804EA0DC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804EA0E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804EA0E4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804EA0E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804EA0EC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804EA0F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804EA0F4  38 61 00 20 */	addi r3, r1, 0x20
/* 804EA0F8  38 80 00 64 */	li r4, 0x64
/* 804EA0FC  28 1D 00 00 */	cmplwi r29, 0
/* 804EA100  41 82 00 0C */	beq lbl_804EA10C
/* 804EA104  80 BD 00 04 */	lwz r5, 4(r29)
/* 804EA108  48 00 00 08 */	b lbl_804EA110
lbl_804EA10C:
/* 804EA10C  38 A0 FF FF */	li r5, -1
lbl_804EA110:
/* 804EA110  38 C0 00 05 */	li r6, 5
/* 804EA114  4B CB E0 AD */	bl dKy_Sound_set__F4cXyziUii
/* 804EA118  38 00 00 0A */	li r0, 0xa
/* 804EA11C  98 1D 07 36 */	stb r0, 0x736(r29)
/* 804EA120  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804EA124  7C 00 07 75 */	extsb. r0, r0
/* 804EA128  40 82 00 20 */	bne lbl_804EA148
/* 804EA12C  7F A3 EB 78 */	mr r3, r29
/* 804EA130  38 80 00 0D */	li r4, 0xd
/* 804EA134  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA138  38 A0 00 00 */	li r5, 0
/* 804EA13C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA140  4B FF B1 91 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA144  48 00 00 1C */	b lbl_804EA160
lbl_804EA148:
/* 804EA148  7F A3 EB 78 */	mr r3, r29
/* 804EA14C  38 80 00 0F */	li r4, 0xf
/* 804EA150  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA154  38 A0 00 00 */	li r5, 0
/* 804EA158  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA15C  4B FF B1 75 */	bl anm_init__FP10e_dn_classifUcf
lbl_804EA160:
/* 804EA160  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA164  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804EA168  38 00 C0 00 */	li r0, -16384
/* 804EA16C  B0 1D 07 24 */	sth r0, 0x724(r29)
/* 804EA170  3B 60 00 00 */	li r27, 0
/* 804EA174  3B 80 00 00 */	li r28, 0
lbl_804EA178:
/* 804EA178  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804EA17C  4B D7 D7 D9 */	bl cM_rndF__Ff
/* 804EA180  FC 00 08 1E */	fctiwz f0, f1
/* 804EA184  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804EA188  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 804EA18C  38 1C 08 02 */	addi r0, r28, 0x802
/* 804EA190  7C 7D 03 2E */	sthx r3, r29, r0
/* 804EA194  3B 7B 00 01 */	addi r27, r27, 1
/* 804EA198  2C 1B 00 04 */	cmpwi r27, 4
/* 804EA19C  3B 9C 00 02 */	addi r28, r28, 2
/* 804EA1A0  41 80 FF D8 */	blt lbl_804EA178
/* 804EA1A4  A8 1D 07 26 */	lha r0, 0x726(r29)
/* 804EA1A8  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804EA1AC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804EA1B0  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804EA1B4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804EA1B8  41 82 00 18 */	beq lbl_804EA1D0
/* 804EA1BC  38 00 00 50 */	li r0, 0x50
/* 804EA1C0  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA1C4  38 00 00 37 */	li r0, 0x37
/* 804EA1C8  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
/* 804EA1CC  48 00 00 2C */	b lbl_804EA1F8
lbl_804EA1D0:
/* 804EA1D0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804EA1D4  4B D7 D7 81 */	bl cM_rndF__Ff
/* 804EA1D8  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 804EA1DC  EC 00 08 2A */	fadds f0, f0, f1
/* 804EA1E0  FC 00 00 1E */	fctiwz f0, f0
/* 804EA1E4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804EA1E8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804EA1EC  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA1F0  38 00 00 23 */	li r0, 0x23
/* 804EA1F4  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
lbl_804EA1F8:
/* 804EA1F8  38 00 00 03 */	li r0, 3
/* 804EA1FC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA200  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804EA204  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804EA208  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804EA20C  80 63 00 04 */	lwz r3, 4(r3)
/* 804EA210  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EA214  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EA218  38 63 00 60 */	addi r3, r3, 0x60
/* 804EA21C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EA220  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EA224  80 84 00 00 */	lwz r4, 0(r4)
/* 804EA228  4B E5 C2 89 */	bl PSMTXCopy
/* 804EA22C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA230  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804EA234  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804EA238  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804EA23C  38 61 00 38 */	addi r3, r1, 0x38
/* 804EA240  38 81 00 2C */	addi r4, r1, 0x2c
/* 804EA244  4B D8 6C A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EA248  38 7D 10 DC */	addi r3, r29, 0x10dc
/* 804EA24C  38 9D 10 E0 */	addi r4, r29, 0x10e0
/* 804EA250  38 A1 00 2C */	addi r5, r1, 0x2c
/* 804EA254  38 C0 00 00 */	li r6, 0
/* 804EA258  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804EA25C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 804EA260  39 00 00 01 */	li r8, 1
/* 804EA264  4B B3 2D BD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 804EA268  48 00 04 00 */	b lbl_804EA668
lbl_804EA26C:
/* 804EA26C  7F A3 EB 78 */	mr r3, r29
/* 804EA270  4B FF F7 31 */	bl body_gake__FP10e_dn_class
/* 804EA274  2C 03 00 00 */	cmpwi r3, 0
/* 804EA278  41 82 00 18 */	beq lbl_804EA290
/* 804EA27C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 804EA280  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804EA284  A8 7D 07 24 */	lha r3, 0x724(r29)
/* 804EA288  38 03 FD 00 */	addi r0, r3, -768
/* 804EA28C  B0 1D 07 24 */	sth r0, 0x724(r29)
lbl_804EA290:
/* 804EA290  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 804EA294  2C 00 00 00 */	cmpwi r0, 0
/* 804EA298  41 81 00 64 */	bgt lbl_804EA2FC
/* 804EA29C  A8 1D 06 E2 */	lha r0, 0x6e2(r29)
/* 804EA2A0  2C 00 00 00 */	cmpwi r0, 0
/* 804EA2A4  40 82 00 58 */	bne lbl_804EA2FC
/* 804EA2A8  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804EA2AC  80 63 00 04 */	lwz r3, 4(r3)
/* 804EA2B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EA2B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EA2B8  38 63 00 60 */	addi r3, r3, 0x60
/* 804EA2BC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EA2C0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EA2C4  80 84 00 00 */	lwz r4, 0(r4)
/* 804EA2C8  4B E5 C1 E9 */	bl PSMTXCopy
/* 804EA2CC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA2D0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804EA2D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804EA2D8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804EA2DC  38 61 00 38 */	addi r3, r1, 0x38
/* 804EA2E0  38 81 00 2C */	addi r4, r1, 0x2c
/* 804EA2E4  4B D8 6C 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EA2E8  7F A3 EB 78 */	mr r3, r29
/* 804EA2EC  4B FF AF 35 */	bl dn_disappear__FP10e_dn_class
/* 804EA2F0  7F A3 EB 78 */	mr r3, r29
/* 804EA2F4  4B B2 F9 89 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 804EA2F8  48 00 03 F0 */	b lbl_804EA6E8
lbl_804EA2FC:
/* 804EA2FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804EA300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804EA304  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804EA308  88 03 05 68 */	lbz r0, 0x568(r3)
/* 804EA30C  28 00 00 27 */	cmplwi r0, 0x27
/* 804EA310  41 82 03 58 */	beq lbl_804EA668
/* 804EA314  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804EA318  2C 00 00 00 */	cmpwi r0, 0
/* 804EA31C  40 82 03 4C */	bne lbl_804EA668
/* 804EA320  38 00 00 14 */	li r0, 0x14
/* 804EA324  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA328  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804EA32C  7C 00 07 75 */	extsb. r0, r0
/* 804EA330  40 82 00 20 */	bne lbl_804EA350
/* 804EA334  7F A3 EB 78 */	mr r3, r29
/* 804EA338  38 80 00 0E */	li r4, 0xe
/* 804EA33C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA340  38 A0 00 00 */	li r5, 0
/* 804EA344  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA348  4B FF AF 89 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA34C  48 00 00 1C */	b lbl_804EA368
lbl_804EA350:
/* 804EA350  7F A3 EB 78 */	mr r3, r29
/* 804EA354  38 80 00 10 */	li r4, 0x10
/* 804EA358  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA35C  38 A0 00 00 */	li r5, 0
/* 804EA360  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA364  4B FF AF 6D */	bl anm_init__FP10e_dn_classifUcf
lbl_804EA368:
/* 804EA368  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004B@ha */
/* 804EA36C  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0007004B@l */
/* 804EA370  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EA374  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804EA378  38 81 00 0C */	addi r4, r1, 0xc
/* 804EA37C  38 A0 FF FF */	li r5, -1
/* 804EA380  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804EA384  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804EA388  7D 89 03 A6 */	mtctr r12
/* 804EA38C  4E 80 04 21 */	bctrl 
/* 804EA390  28 1D 00 00 */	cmplwi r29, 0
/* 804EA394  41 82 02 D4 */	beq lbl_804EA668
/* 804EA398  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 804EA39C  38 00 FF E8 */	li r0, -24
/* 804EA3A0  7C 60 00 38 */	and r0, r3, r0
/* 804EA3A4  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804EA3A8  48 00 02 C0 */	b lbl_804EA668
lbl_804EA3AC:
/* 804EA3AC  A8 1D 08 40 */	lha r0, 0x840(r29)
/* 804EA3B0  2C 00 00 00 */	cmpwi r0, 0
/* 804EA3B4  41 82 00 1C */	beq lbl_804EA3D0
/* 804EA3B8  38 7D 07 24 */	addi r3, r29, 0x724
/* 804EA3BC  38 80 00 00 */	li r4, 0
/* 804EA3C0  38 A0 00 01 */	li r5, 1
/* 804EA3C4  38 C0 03 00 */	li r6, 0x300
/* 804EA3C8  4B D8 62 41 */	bl cLib_addCalcAngleS2__FPssss
/* 804EA3CC  48 00 02 9C */	b lbl_804EA668
lbl_804EA3D0:
/* 804EA3D0  38 7D 07 24 */	addi r3, r29, 0x724
/* 804EA3D4  38 80 C0 00 */	li r4, -16384
/* 804EA3D8  38 A0 00 01 */	li r5, 1
/* 804EA3DC  38 C0 08 00 */	li r6, 0x800
/* 804EA3E0  4B D8 62 29 */	bl cLib_addCalcAngleS2__FPssss
/* 804EA3E4  80 1D 08 B0 */	lwz r0, 0x8b0(r29)
/* 804EA3E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804EA3EC  41 82 02 7C */	beq lbl_804EA668
/* 804EA3F0  38 00 00 02 */	li r0, 2
/* 804EA3F4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA3F8  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804EA3FC  7C 00 07 75 */	extsb. r0, r0
/* 804EA400  40 82 00 14 */	bne lbl_804EA414
/* 804EA404  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 804EA408  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804EA40C  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 804EA410  48 00 00 10 */	b lbl_804EA420
lbl_804EA414:
/* 804EA414  C0 1E 00 00 */	lfs f0, 0(r30)
/* 804EA418  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 804EA41C  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_804EA420:
/* 804EA420  38 00 B0 00 */	li r0, -20480
/* 804EA424  B0 1D 07 58 */	sth r0, 0x758(r29)
/* 804EA428  38 00 C0 00 */	li r0, -16384
/* 804EA42C  B0 1D 07 60 */	sth r0, 0x760(r29)
/* 804EA430  C0 3D 07 04 */	lfs f1, 0x704(r29)
/* 804EA434  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804EA438  EC 01 00 32 */	fmuls f0, f1, f0
/* 804EA43C  D0 1D 07 04 */	stfs f0, 0x704(r29)
/* 804EA440  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804EA444  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804EA448  A8 1D 07 26 */	lha r0, 0x726(r29)
/* 804EA44C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 804EA450  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 804EA454  D0 1D 07 E8 */	stfs f0, 0x7e8(r29)
/* 804EA458  48 00 02 10 */	b lbl_804EA668
lbl_804EA45C:
/* 804EA45C  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804EA460  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 804EA464  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804EA468  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EA46C  4C 41 13 82 */	cror 2, 1, 2
/* 804EA470  40 82 00 10 */	bne lbl_804EA480
/* 804EA474  38 00 00 00 */	li r0, 0
/* 804EA478  B0 1D 07 34 */	sth r0, 0x734(r29)
/* 804EA47C  B0 1D 07 30 */	sth r0, 0x730(r29)
lbl_804EA480:
/* 804EA480  80 7D 05 DC */	lwz r3, 0x5dc(r29)
/* 804EA484  38 80 00 01 */	li r4, 1
/* 804EA488  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804EA48C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804EA490  40 82 00 18 */	bne lbl_804EA4A8
/* 804EA494  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804EA498  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804EA49C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804EA4A0  41 82 00 08 */	beq lbl_804EA4A8
/* 804EA4A4  38 80 00 00 */	li r4, 0
lbl_804EA4A8:
/* 804EA4A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804EA4AC  41 82 01 BC */	beq lbl_804EA668
/* 804EA4B0  38 00 00 00 */	li r0, 0
/* 804EA4B4  B0 1D 07 26 */	sth r0, 0x726(r29)
/* 804EA4B8  B0 1D 07 24 */	sth r0, 0x724(r29)
/* 804EA4BC  7F A3 EB 78 */	mr r3, r29
/* 804EA4C0  38 80 00 1F */	li r4, 0x1f
/* 804EA4C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 804EA4C8  38 A0 00 02 */	li r5, 2
/* 804EA4CC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA4D0  4B FF AE 01 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA4D4  38 00 00 05 */	li r0, 5
/* 804EA4D8  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA4DC  38 00 00 15 */	li r0, 0x15
/* 804EA4E0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA4E4  28 1D 00 00 */	cmplwi r29, 0
/* 804EA4E8  41 82 01 80 */	beq lbl_804EA668
/* 804EA4EC  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 804EA4F0  38 00 FF E8 */	li r0, -24
/* 804EA4F4  7C 60 00 38 */	and r0, r3, r0
/* 804EA4F8  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804EA4FC  48 00 01 6C */	b lbl_804EA668
lbl_804EA500:
/* 804EA500  38 60 00 00 */	li r3, 0
/* 804EA504  B0 7D 06 E8 */	sth r3, 0x6e8(r29)
/* 804EA508  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804EA50C  2C 00 00 00 */	cmpwi r0, 0
/* 804EA510  40 82 01 58 */	bne lbl_804EA668
/* 804EA514  B0 7D 06 CE */	sth r3, 0x6ce(r29)
/* 804EA518  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 804EA51C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804EA520  4B D7 D4 35 */	bl cM_rndF__Ff
/* 804EA524  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 804EA528  EC 00 08 2A */	fadds f0, f0, f1
/* 804EA52C  FC 00 00 1E */	fctiwz f0, f0
/* 804EA530  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 804EA534  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 804EA538  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA53C  7F A3 EB 78 */	mr r3, r29
/* 804EA540  38 80 00 21 */	li r4, 0x21
/* 804EA544  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 804EA548  38 A0 00 02 */	li r5, 2
/* 804EA54C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA550  4B FF AD 81 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA554  48 00 01 14 */	b lbl_804EA668
lbl_804EA558:
/* 804EA558  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804EA55C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804EA560  40 82 00 0C */	bne lbl_804EA56C
/* 804EA564  38 00 00 00 */	li r0, 0
/* 804EA568  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
lbl_804EA56C:
/* 804EA56C  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804EA570  2C 00 00 00 */	cmpwi r0, 0
/* 804EA574  40 82 00 80 */	bne lbl_804EA5F4
/* 804EA578  38 00 00 1F */	li r0, 0x1f
/* 804EA57C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA580  88 1D 07 37 */	lbz r0, 0x737(r29)
/* 804EA584  7C 00 07 75 */	extsb. r0, r0
/* 804EA588  40 82 00 20 */	bne lbl_804EA5A8
/* 804EA58C  7F A3 EB 78 */	mr r3, r29
/* 804EA590  38 80 00 0A */	li r4, 0xa
/* 804EA594  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA598  38 A0 00 00 */	li r5, 0
/* 804EA59C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA5A0  4B FF AD 31 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA5A4  48 00 00 1C */	b lbl_804EA5C0
lbl_804EA5A8:
/* 804EA5A8  7F A3 EB 78 */	mr r3, r29
/* 804EA5AC  38 80 00 0B */	li r4, 0xb
/* 804EA5B0  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA5B4  38 A0 00 00 */	li r5, 0
/* 804EA5B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA5BC  4B FF AD 15 */	bl anm_init__FP10e_dn_classifUcf
lbl_804EA5C0:
/* 804EA5C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004B@ha */
/* 804EA5C4  38 03 00 4B */	addi r0, r3, 0x004B /* 0x0007004B@l */
/* 804EA5C8  90 01 00 08 */	stw r0, 8(r1)
/* 804EA5CC  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 804EA5D0  38 81 00 08 */	addi r4, r1, 8
/* 804EA5D4  38 A0 FF FF */	li r5, -1
/* 804EA5D8  81 9D 05 E8 */	lwz r12, 0x5e8(r29)
/* 804EA5DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804EA5E0  7D 89 03 A6 */	mtctr r12
/* 804EA5E4  4E 80 04 21 */	bctrl 
/* 804EA5E8  38 00 00 0A */	li r0, 0xa
/* 804EA5EC  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA5F0  48 00 00 78 */	b lbl_804EA668
lbl_804EA5F4:
/* 804EA5F4  A8 1D 06 E2 */	lha r0, 0x6e2(r29)
/* 804EA5F8  2C 00 00 01 */	cmpwi r0, 1
/* 804EA5FC  40 82 00 6C */	bne lbl_804EA668
/* 804EA600  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804EA604  60 00 00 20 */	ori r0, r0, 0x20
/* 804EA608  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804EA60C  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804EA610  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804EA614  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804EA618  38 00 00 00 */	li r0, 0
/* 804EA61C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 804EA620  38 00 03 E8 */	li r0, 0x3e8
/* 804EA624  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 804EA628  38 00 00 23 */	li r0, 0x23
/* 804EA62C  B0 1D 06 E2 */	sth r0, 0x6e2(r29)
/* 804EA630  38 00 00 03 */	li r0, 3
/* 804EA634  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA638  48 00 00 30 */	b lbl_804EA668
lbl_804EA63C:
/* 804EA63C  A8 1D 06 E0 */	lha r0, 0x6e0(r29)
/* 804EA640  2C 00 00 00 */	cmpwi r0, 0
/* 804EA644  40 82 00 24 */	bne lbl_804EA668
/* 804EA648  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 804EA64C  38 00 FF E8 */	li r0, -24
/* 804EA650  7C 60 00 38 */	and r0, r3, r0
/* 804EA654  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 804EA658  38 00 00 14 */	li r0, 0x14
/* 804EA65C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 804EA660  38 00 00 00 */	li r0, 0
/* 804EA664  98 1D 06 F3 */	stb r0, 0x6f3(r29)
lbl_804EA668:
/* 804EA668  28 1D 00 00 */	cmplwi r29, 0
/* 804EA66C  41 82 00 18 */	beq lbl_804EA684
/* 804EA670  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 804EA674  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804EA678  41 82 00 0C */	beq lbl_804EA684
/* 804EA67C  38 00 00 00 */	li r0, 0
/* 804EA680  98 1D 06 F2 */	stb r0, 0x6f2(r29)
lbl_804EA684:
/* 804EA684  A8 7D 08 0C */	lha r3, 0x80c(r29)
/* 804EA688  2C 03 00 00 */	cmpwi r3, 0
/* 804EA68C  41 82 00 5C */	beq lbl_804EA6E8
/* 804EA690  38 03 FF FF */	addi r0, r3, -1
/* 804EA694  B0 1D 08 0C */	sth r0, 0x80c(r29)
/* 804EA698  A8 9D 08 0C */	lha r4, 0x80c(r29)
/* 804EA69C  1C 04 38 00 */	mulli r0, r4, 0x3800
/* 804EA6A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804EA6A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804EA6A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804EA6AC  7C 63 04 2E */	lfsx f3, r3, r0
/* 804EA6B0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804EA6B4  C8 3E 00 90 */	lfd f1, 0x90(r30)
/* 804EA6B8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804EA6BC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804EA6C0  3C 00 43 30 */	lis r0, 0x4330
/* 804EA6C4  90 01 00 48 */	stw r0, 0x48(r1)
/* 804EA6C8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 804EA6CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804EA6D0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804EA6D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804EA6D8  FC 00 00 1E */	fctiwz f0, f0
/* 804EA6DC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 804EA6E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804EA6E4  B0 1D 08 0A */	sth r0, 0x80a(r29)
lbl_804EA6E8:
/* 804EA6E8  39 61 00 70 */	addi r11, r1, 0x70
/* 804EA6EC  4B E7 7B 35 */	bl _restgpr_27
/* 804EA6F0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804EA6F4  7C 08 03 A6 */	mtlr r0
/* 804EA6F8  38 21 00 70 */	addi r1, r1, 0x70
/* 804EA6FC  4E 80 00 20 */	blr 
