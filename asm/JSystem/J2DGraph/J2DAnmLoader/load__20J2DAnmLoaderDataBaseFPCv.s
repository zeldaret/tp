lbl_80308A6C:
/* 80308A6C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80308A70  7C 08 02 A6 */	mflr r0
/* 80308A74  90 01 00 64 */	stw r0, 0x64(r1)
/* 80308A78  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80308A7C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80308A80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80308A84  40 82 00 0C */	bne lbl_80308A90
/* 80308A88  38 60 00 00 */	li r3, 0
/* 80308A8C  48 00 07 EC */	b lbl_80309278
lbl_80308A90:
/* 80308A90  80 7F 00 00 */	lwz r3, 0(r31)
/* 80308A94  3C 03 B5 CD */	addis r0, r3, 0xb5cd
/* 80308A98  28 00 44 31 */	cmplwi r0, 0x4431
/* 80308A9C  40 82 07 D8 */	bne lbl_80309274
/* 80308AA0  80 BF 00 04 */	lwz r5, 4(r31)
/* 80308AA4  3C 60 62 72 */	lis r3, 0x6272 /* 0x62726B31@ha */
/* 80308AA8  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62726B31@l */
/* 80308AAC  7C 05 00 00 */	cmpw r5, r0
/* 80308AB0  41 82 02 E4 */	beq lbl_80308D94
/* 80308AB4  40 80 00 70 */	bge lbl_80308B24
/* 80308AB8  3C 80 62 6C */	lis r4, 0x626C /* 0x626C6B31@ha */
/* 80308ABC  38 04 6B 31 */	addi r0, r4, 0x6B31 /* 0x626C6B31@l */
/* 80308AC0  7C 05 00 00 */	cmpw r5, r0
/* 80308AC4  41 82 01 FC */	beq lbl_80308CC0
/* 80308AC8  40 80 00 38 */	bge lbl_80308B00
/* 80308ACC  3C 60 62 63 */	lis r3, 0x6263 /* 0x62636B31@ha */
/* 80308AD0  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62636B31@l */
/* 80308AD4  7C 05 00 00 */	cmpw r5, r0
/* 80308AD8  41 82 00 A8 */	beq lbl_80308B80
/* 80308ADC  40 80 00 14 */	bge lbl_80308AF0
/* 80308AE0  38 03 61 31 */	addi r0, r3, 0x6131
/* 80308AE4  7C 05 00 00 */	cmpw r5, r0
/* 80308AE8  41 82 04 58 */	beq lbl_80308F40
/* 80308AEC  48 00 07 80 */	b lbl_8030926C
lbl_80308AF0:
/* 80308AF0  38 04 61 31 */	addi r0, r4, 0x6131
/* 80308AF4  7C 05 00 00 */	cmpw r5, r0
/* 80308AF8  41 82 06 94 */	beq lbl_8030918C
/* 80308AFC  48 00 07 70 */	b lbl_8030926C
lbl_80308B00:
/* 80308B00  3C 60 62 70 */	lis r3, 0x6270 /* 0x62706B31@ha */
/* 80308B04  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62706B31@l */
/* 80308B08  7C 05 00 00 */	cmpw r5, r0
/* 80308B0C  41 82 01 00 */	beq lbl_80308C0C
/* 80308B10  40 80 07 5C */	bge lbl_8030926C
/* 80308B14  38 03 61 31 */	addi r0, r3, 0x6131
/* 80308B18  7C 05 00 00 */	cmpw r5, r0
/* 80308B1C  41 82 04 AC */	beq lbl_80308FC8
/* 80308B20  48 00 07 4C */	b lbl_8030926C
lbl_80308B24:
/* 80308B24  3C 60 62 76 */	lis r3, 0x6276 /* 0x62766131@ha */
/* 80308B28  38 03 61 31 */	addi r0, r3, 0x6131 /* 0x62766131@l */
/* 80308B2C  7C 05 00 00 */	cmpw r5, r0
/* 80308B30  41 82 05 DC */	beq lbl_8030910C
/* 80308B34  40 80 00 28 */	bge lbl_80308B5C
/* 80308B38  3C 60 62 74 */	lis r3, 0x6274 /* 0x62747031@ha */
/* 80308B3C  38 03 70 31 */	addi r0, r3, 0x7031 /* 0x62747031@l */
/* 80308B40  7C 05 00 00 */	cmpw r5, r0
/* 80308B44  41 82 05 38 */	beq lbl_8030907C
/* 80308B48  40 80 07 24 */	bge lbl_8030926C
/* 80308B4C  38 03 6B 31 */	addi r0, r3, 0x6b31
/* 80308B50  7C 05 00 00 */	cmpw r5, r0
/* 80308B54  41 82 01 74 */	beq lbl_80308CC8
/* 80308B58  48 00 07 14 */	b lbl_8030926C
lbl_80308B5C:
/* 80308B5C  3C 60 62 78 */	lis r3, 0x6278 /* 0x62786B31@ha */
/* 80308B60  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62786B31@l */
/* 80308B64  7C 05 00 00 */	cmpw r5, r0
/* 80308B68  41 82 03 00 */	beq lbl_80308E68
/* 80308B6C  40 80 07 00 */	bge lbl_8030926C
/* 80308B70  38 03 61 31 */	addi r0, r3, 0x6131
/* 80308B74  7C 05 00 00 */	cmpw r5, r0
/* 80308B78  41 82 06 1C */	beq lbl_80309194
/* 80308B7C  48 00 06 F0 */	b lbl_8030926C
lbl_80308B80:
/* 80308B80  38 61 00 50 */	addi r3, r1, 0x50
/* 80308B84  48 00 07 0D */	bl __ct__19J2DAnmKeyLoader_v15Fv
/* 80308B88  38 60 00 2C */	li r3, 0x2c
/* 80308B8C  4B FC 60 C1 */	bl __nw__FUl
/* 80308B90  28 03 00 00 */	cmplwi r3, 0
/* 80308B94  41 82 00 50 */	beq lbl_80308BE4
/* 80308B98  3C 80 80 3B */	lis r4, __vt__10J2DAnmBase@ha
/* 80308B9C  38 04 8E 04 */	addi r0, r4, __vt__10J2DAnmBase@l
/* 80308BA0  90 03 00 00 */	stw r0, 0(r3)
/* 80308BA4  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308BA8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80308BAC  38 A0 00 00 */	li r5, 0
/* 80308BB0  B0 A3 00 06 */	sth r5, 6(r3)
/* 80308BB4  3C 80 80 3C */	lis r4, __vt__15J2DAnmTransform@ha
/* 80308BB8  38 04 B3 B8 */	addi r0, r4, __vt__15J2DAnmTransform@l
/* 80308BBC  90 03 00 00 */	stw r0, 0(r3)
/* 80308BC0  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80308BC4  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80308BC8  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80308BCC  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80308BD0  3C 80 80 3D */	lis r4, __vt__18J2DAnmTransformKey@ha
/* 80308BD4  38 04 D7 BC */	addi r0, r4, __vt__18J2DAnmTransformKey@l
/* 80308BD8  90 03 00 00 */	stw r0, 0(r3)
/* 80308BDC  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80308BE0  90 A3 00 28 */	stw r5, 0x28(r3)
lbl_80308BE4:
/* 80308BE4  90 61 00 54 */	stw r3, 0x54(r1)
/* 80308BE8  38 61 00 50 */	addi r3, r1, 0x50
/* 80308BEC  7F E4 FB 78 */	mr r4, r31
/* 80308BF0  48 00 07 19 */	bl load__19J2DAnmKeyLoader_v15FPCv
/* 80308BF4  7C 7F 1B 78 */	mr r31, r3
/* 80308BF8  38 61 00 50 */	addi r3, r1, 0x50
/* 80308BFC  38 80 FF FF */	li r4, -1
/* 80308C00  48 00 06 AD */	bl __dt__19J2DAnmKeyLoader_v15Fv
/* 80308C04  7F E3 FB 78 */	mr r3, r31
/* 80308C08  48 00 06 70 */	b lbl_80309278
lbl_80308C0C:
/* 80308C0C  38 61 00 48 */	addi r3, r1, 0x48
/* 80308C10  48 00 06 81 */	bl __ct__19J2DAnmKeyLoader_v15Fv
/* 80308C14  38 60 00 44 */	li r3, 0x44
/* 80308C18  4B FC 60 35 */	bl __nw__FUl
/* 80308C1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80308C20  41 82 00 78 */	beq lbl_80308C98
/* 80308C24  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80308C28  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 80308C2C  90 1E 00 00 */	stw r0, 0(r30)
/* 80308C30  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308C34  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80308C38  38 00 00 00 */	li r0, 0
/* 80308C3C  B0 1E 00 06 */	sth r0, 6(r30)
/* 80308C40  3C 60 80 3D */	lis r3, __vt__11J2DAnmColor@ha
/* 80308C44  38 03 D7 A8 */	addi r0, r3, __vt__11J2DAnmColor@l
/* 80308C48  90 1E 00 00 */	stw r0, 0(r30)
/* 80308C4C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80308C50  4B FD 5D 51 */	bl __ct__10JUTNameTabFv
/* 80308C54  38 80 00 00 */	li r4, 0
/* 80308C58  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 80308C5C  B0 9E 00 14 */	sth r4, 0x14(r30)
/* 80308C60  B0 9E 00 12 */	sth r4, 0x12(r30)
/* 80308C64  B0 9E 00 10 */	sth r4, 0x10(r30)
/* 80308C68  B0 9E 00 18 */	sth r4, 0x18(r30)
/* 80308C6C  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 80308C70  38 00 00 01 */	li r0, 1
/* 80308C74  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80308C78  3C 60 80 3D */	lis r3, __vt__14J2DAnmColorKey@ha
/* 80308C7C  38 03 D7 80 */	addi r0, r3, __vt__14J2DAnmColorKey@l
/* 80308C80  90 1E 00 00 */	stw r0, 0(r30)
/* 80308C84  90 9E 00 30 */	stw r4, 0x30(r30)
/* 80308C88  90 9E 00 34 */	stw r4, 0x34(r30)
/* 80308C8C  90 9E 00 38 */	stw r4, 0x38(r30)
/* 80308C90  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 80308C94  90 9E 00 40 */	stw r4, 0x40(r30)
lbl_80308C98:
/* 80308C98  93 C1 00 4C */	stw r30, 0x4c(r1)
/* 80308C9C  38 61 00 48 */	addi r3, r1, 0x48
/* 80308CA0  7F E4 FB 78 */	mr r4, r31
/* 80308CA4  48 00 06 65 */	bl load__19J2DAnmKeyLoader_v15FPCv
/* 80308CA8  7C 7F 1B 78 */	mr r31, r3
/* 80308CAC  38 61 00 48 */	addi r3, r1, 0x48
/* 80308CB0  38 80 FF FF */	li r4, -1
/* 80308CB4  48 00 05 F9 */	bl __dt__19J2DAnmKeyLoader_v15Fv
/* 80308CB8  7F E3 FB 78 */	mr r3, r31
/* 80308CBC  48 00 05 BC */	b lbl_80309278
lbl_80308CC0:
/* 80308CC0  38 60 00 00 */	li r3, 0
/* 80308CC4  48 00 05 B4 */	b lbl_80309278
lbl_80308CC8:
/* 80308CC8  38 61 00 40 */	addi r3, r1, 0x40
/* 80308CCC  48 00 05 C5 */	bl __ct__19J2DAnmKeyLoader_v15Fv
/* 80308CD0  38 60 00 80 */	li r3, 0x80
/* 80308CD4  4B FC 5F 79 */	bl __nw__FUl
/* 80308CD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80308CDC  41 82 00 90 */	beq lbl_80308D6C
/* 80308CE0  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80308CE4  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 80308CE8  90 1E 00 00 */	stw r0, 0(r30)
/* 80308CEC  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308CF0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80308CF4  38 00 00 00 */	li r0, 0
/* 80308CF8  B0 1E 00 06 */	sth r0, 6(r30)
/* 80308CFC  3C 60 80 3D */	lis r3, __vt__19J2DAnmTextureSRTKey@ha
/* 80308D00  38 03 D7 48 */	addi r0, r3, __vt__19J2DAnmTextureSRTKey@l
/* 80308D04  90 1E 00 00 */	stw r0, 0(r30)
/* 80308D08  38 7E 00 34 */	addi r3, r30, 0x34
/* 80308D0C  4B FD 5C 95 */	bl __ct__10JUTNameTabFv
/* 80308D10  38 7E 00 68 */	addi r3, r30, 0x68
/* 80308D14  4B FD 5C 8D */	bl __ct__10JUTNameTabFv
/* 80308D18  38 00 00 00 */	li r0, 0
/* 80308D1C  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80308D20  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 80308D24  B0 1E 00 1C */	sth r0, 0x1c(r30)
/* 80308D28  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 80308D2C  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 80308D30  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80308D34  90 1E 00 28 */	stw r0, 0x28(r30)
/* 80308D38  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80308D3C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80308D40  B0 1E 00 4C */	sth r0, 0x4c(r30)
/* 80308D44  B0 1E 00 4A */	sth r0, 0x4a(r30)
/* 80308D48  B0 1E 00 48 */	sth r0, 0x48(r30)
/* 80308D4C  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 80308D50  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80308D54  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80308D58  90 1E 00 50 */	stw r0, 0x50(r30)
/* 80308D5C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 80308D60  90 1E 00 7C */	stw r0, 0x7c(r30)
/* 80308D64  38 00 00 04 */	li r0, 4
/* 80308D68  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_80308D6C:
/* 80308D6C  93 C1 00 44 */	stw r30, 0x44(r1)
/* 80308D70  38 61 00 40 */	addi r3, r1, 0x40
/* 80308D74  7F E4 FB 78 */	mr r4, r31
/* 80308D78  48 00 05 91 */	bl load__19J2DAnmKeyLoader_v15FPCv
/* 80308D7C  7C 7F 1B 78 */	mr r31, r3
/* 80308D80  38 61 00 40 */	addi r3, r1, 0x40
/* 80308D84  38 80 FF FF */	li r4, -1
/* 80308D88  48 00 05 25 */	bl __dt__19J2DAnmKeyLoader_v15Fv
/* 80308D8C  7F E3 FB 78 */	mr r3, r31
/* 80308D90  48 00 04 E8 */	b lbl_80309278
lbl_80308D94:
/* 80308D94  38 61 00 38 */	addi r3, r1, 0x38
/* 80308D98  48 00 04 F9 */	bl __ct__19J2DAnmKeyLoader_v15Fv
/* 80308D9C  38 60 00 74 */	li r3, 0x74
/* 80308DA0  4B FC 5E AD */	bl __nw__FUl
/* 80308DA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80308DA8  41 82 00 98 */	beq lbl_80308E40
/* 80308DAC  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80308DB0  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 80308DB4  90 1E 00 00 */	stw r0, 0(r30)
/* 80308DB8  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308DBC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80308DC0  38 00 00 00 */	li r0, 0
/* 80308DC4  B0 1E 00 06 */	sth r0, 6(r30)
/* 80308DC8  3C 60 80 3D */	lis r3, __vt__15J2DAnmTevRegKey@ha
/* 80308DCC  38 03 D7 28 */	addi r0, r3, __vt__15J2DAnmTevRegKey@l
/* 80308DD0  90 1E 00 00 */	stw r0, 0(r30)
/* 80308DD4  38 7E 00 28 */	addi r3, r30, 0x28
/* 80308DD8  4B FD 5B C9 */	bl __ct__10JUTNameTabFv
/* 80308DDC  38 7E 00 3C */	addi r3, r30, 0x3c
/* 80308DE0  4B FD 5B C1 */	bl __ct__10JUTNameTabFv
/* 80308DE4  38 00 00 00 */	li r0, 0
/* 80308DE8  B0 1E 00 12 */	sth r0, 0x12(r30)
/* 80308DEC  B0 1E 00 10 */	sth r0, 0x10(r30)
/* 80308DF0  B0 1E 00 1A */	sth r0, 0x1a(r30)
/* 80308DF4  B0 1E 00 18 */	sth r0, 0x18(r30)
/* 80308DF8  B0 1E 00 16 */	sth r0, 0x16(r30)
/* 80308DFC  B0 1E 00 14 */	sth r0, 0x14(r30)
/* 80308E00  B0 1E 00 22 */	sth r0, 0x22(r30)
/* 80308E04  B0 1E 00 20 */	sth r0, 0x20(r30)
/* 80308E08  B0 1E 00 1E */	sth r0, 0x1e(r30)
/* 80308E0C  B0 1E 00 1C */	sth r0, 0x1c(r30)
/* 80308E10  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80308E14  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80308E18  90 1E 00 60 */	stw r0, 0x60(r30)
/* 80308E1C  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 80308E20  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80308E24  90 1E 00 54 */	stw r0, 0x54(r30)
/* 80308E28  90 1E 00 70 */	stw r0, 0x70(r30)
/* 80308E2C  90 1E 00 6C */	stw r0, 0x6c(r30)
/* 80308E30  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80308E34  90 1E 00 64 */	stw r0, 0x64(r30)
/* 80308E38  38 00 00 05 */	li r0, 5
/* 80308E3C  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_80308E40:
/* 80308E40  93 C1 00 3C */	stw r30, 0x3c(r1)
/* 80308E44  38 61 00 38 */	addi r3, r1, 0x38
/* 80308E48  7F E4 FB 78 */	mr r4, r31
/* 80308E4C  48 00 04 BD */	bl load__19J2DAnmKeyLoader_v15FPCv
/* 80308E50  7C 7F 1B 78 */	mr r31, r3
/* 80308E54  38 61 00 38 */	addi r3, r1, 0x38
/* 80308E58  38 80 FF FF */	li r4, -1
/* 80308E5C  48 00 04 51 */	bl __dt__19J2DAnmKeyLoader_v15Fv
/* 80308E60  7F E3 FB 78 */	mr r3, r31
/* 80308E64  48 00 04 14 */	b lbl_80309278
lbl_80308E68:
/* 80308E68  38 61 00 30 */	addi r3, r1, 0x30
/* 80308E6C  48 00 04 25 */	bl __ct__19J2DAnmKeyLoader_v15Fv
/* 80308E70  38 60 00 3C */	li r3, 0x3c
/* 80308E74  4B FC 5D D9 */	bl __nw__FUl
/* 80308E78  28 03 00 00 */	cmplwi r3, 0
/* 80308E7C  41 82 00 9C */	beq lbl_80308F18
/* 80308E80  3C 80 80 3B */	lis r4, __vt__10J2DAnmBase@ha
/* 80308E84  38 04 8E 04 */	addi r0, r4, __vt__10J2DAnmBase@l
/* 80308E88  90 03 00 00 */	stw r0, 0(r3)
/* 80308E8C  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308E90  D0 03 00 08 */	stfs f0, 8(r3)
/* 80308E94  38 A0 00 00 */	li r5, 0
/* 80308E98  B0 A3 00 06 */	sth r5, 6(r3)
/* 80308E9C  3C 80 80 3D */	lis r4, __vt__14J2DAnmVtxColor@ha
/* 80308EA0  38 04 D7 14 */	addi r0, r4, __vt__14J2DAnmVtxColor@l
/* 80308EA4  90 03 00 00 */	stw r0, 0(r3)
/* 80308EA8  38 00 00 07 */	li r0, 7
/* 80308EAC  90 03 00 0C */	stw r0, 0xc(r3)
/* 80308EB0  7C A4 2B 78 */	mr r4, r5
/* 80308EB4  38 00 00 02 */	li r0, 2
/* 80308EB8  7C 09 03 A6 */	mtctr r0
lbl_80308EBC:
/* 80308EBC  38 04 00 10 */	addi r0, r4, 0x10
/* 80308EC0  7C A3 03 2E */	sthx r5, r3, r0
/* 80308EC4  38 84 00 02 */	addi r4, r4, 2
/* 80308EC8  42 00 FF F4 */	bdnz lbl_80308EBC
/* 80308ECC  38 A0 00 00 */	li r5, 0
/* 80308ED0  38 80 00 00 */	li r4, 0
/* 80308ED4  38 00 00 02 */	li r0, 2
/* 80308ED8  7C 09 03 A6 */	mtctr r0
lbl_80308EDC:
/* 80308EDC  38 04 00 14 */	addi r0, r4, 0x14
/* 80308EE0  7C A3 01 2E */	stwx r5, r3, r0
/* 80308EE4  38 84 00 04 */	addi r4, r4, 4
/* 80308EE8  42 00 FF F4 */	bdnz lbl_80308EDC
/* 80308EEC  3C 80 80 3D */	lis r4, __vt__17J2DAnmVtxColorKey@ha
/* 80308EF0  38 04 D7 58 */	addi r0, r4, __vt__17J2DAnmVtxColorKey@l
/* 80308EF4  90 03 00 00 */	stw r0, 0(r3)
/* 80308EF8  38 A0 00 00 */	li r5, 0
/* 80308EFC  38 80 00 00 */	li r4, 0
/* 80308F00  38 00 00 02 */	li r0, 2
/* 80308F04  7C 09 03 A6 */	mtctr r0
lbl_80308F08:
/* 80308F08  38 04 00 24 */	addi r0, r4, 0x24
/* 80308F0C  7C A3 01 2E */	stwx r5, r3, r0
/* 80308F10  38 84 00 04 */	addi r4, r4, 4
/* 80308F14  42 00 FF F4 */	bdnz lbl_80308F08
lbl_80308F18:
/* 80308F18  90 61 00 34 */	stw r3, 0x34(r1)
/* 80308F1C  38 61 00 30 */	addi r3, r1, 0x30
/* 80308F20  7F E4 FB 78 */	mr r4, r31
/* 80308F24  48 00 03 E5 */	bl load__19J2DAnmKeyLoader_v15FPCv
/* 80308F28  7C 7F 1B 78 */	mr r31, r3
/* 80308F2C  38 61 00 30 */	addi r3, r1, 0x30
/* 80308F30  38 80 FF FF */	li r4, -1
/* 80308F34  48 00 03 79 */	bl __dt__19J2DAnmKeyLoader_v15Fv
/* 80308F38  7F E3 FB 78 */	mr r3, r31
/* 80308F3C  48 00 03 3C */	b lbl_80309278
lbl_80308F40:
/* 80308F40  38 61 00 28 */	addi r3, r1, 0x28
/* 80308F44  48 00 0D A5 */	bl __ct__20J2DAnmFullLoader_v15Fv
/* 80308F48  38 60 00 28 */	li r3, 0x28
/* 80308F4C  4B FC 5D 01 */	bl __nw__FUl
/* 80308F50  28 03 00 00 */	cmplwi r3, 0
/* 80308F54  41 82 00 4C */	beq lbl_80308FA0
/* 80308F58  3C 80 80 3B */	lis r4, __vt__10J2DAnmBase@ha
/* 80308F5C  38 04 8E 04 */	addi r0, r4, __vt__10J2DAnmBase@l
/* 80308F60  90 03 00 00 */	stw r0, 0(r3)
/* 80308F64  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308F68  D0 03 00 08 */	stfs f0, 8(r3)
/* 80308F6C  38 A0 00 00 */	li r5, 0
/* 80308F70  B0 A3 00 06 */	sth r5, 6(r3)
/* 80308F74  3C 80 80 3C */	lis r4, __vt__15J2DAnmTransform@ha
/* 80308F78  38 04 B3 B8 */	addi r0, r4, __vt__15J2DAnmTransform@l
/* 80308F7C  90 03 00 00 */	stw r0, 0(r3)
/* 80308F80  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80308F84  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80308F88  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80308F8C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80308F90  3C 80 80 3D */	lis r4, __vt__19J2DAnmTransformFull@ha
/* 80308F94  38 04 D7 D4 */	addi r0, r4, __vt__19J2DAnmTransformFull@l
/* 80308F98  90 03 00 00 */	stw r0, 0(r3)
/* 80308F9C  90 A3 00 24 */	stw r5, 0x24(r3)
lbl_80308FA0:
/* 80308FA0  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80308FA4  38 61 00 28 */	addi r3, r1, 0x28
/* 80308FA8  7F E4 FB 78 */	mr r4, r31
/* 80308FAC  48 00 0A D5 */	bl load__20J2DAnmFullLoader_v15FPCv
/* 80308FB0  7C 7F 1B 78 */	mr r31, r3
/* 80308FB4  38 61 00 28 */	addi r3, r1, 0x28
/* 80308FB8  38 80 FF FF */	li r4, -1
/* 80308FBC  48 00 0D 49 */	bl __dt__20J2DAnmFullLoader_v15Fv
/* 80308FC0  7F E3 FB 78 */	mr r3, r31
/* 80308FC4  48 00 02 B4 */	b lbl_80309278
lbl_80308FC8:
/* 80308FC8  38 61 00 20 */	addi r3, r1, 0x20
/* 80308FCC  48 00 0D 1D */	bl __ct__20J2DAnmFullLoader_v15Fv
/* 80308FD0  38 60 00 44 */	li r3, 0x44
/* 80308FD4  4B FC 5C 79 */	bl __nw__FUl
/* 80308FD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80308FDC  41 82 00 78 */	beq lbl_80309054
/* 80308FE0  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80308FE4  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 80308FE8  90 1E 00 00 */	stw r0, 0(r30)
/* 80308FEC  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80308FF0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80308FF4  38 00 00 00 */	li r0, 0
/* 80308FF8  B0 1E 00 06 */	sth r0, 6(r30)
/* 80308FFC  3C 60 80 3D */	lis r3, __vt__11J2DAnmColor@ha
/* 80309000  38 03 D7 A8 */	addi r0, r3, __vt__11J2DAnmColor@l
/* 80309004  90 1E 00 00 */	stw r0, 0(r30)
/* 80309008  38 7E 00 20 */	addi r3, r30, 0x20
/* 8030900C  4B FD 59 95 */	bl __ct__10JUTNameTabFv
/* 80309010  38 80 00 00 */	li r4, 0
/* 80309014  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 80309018  B0 9E 00 14 */	sth r4, 0x14(r30)
/* 8030901C  B0 9E 00 12 */	sth r4, 0x12(r30)
/* 80309020  B0 9E 00 10 */	sth r4, 0x10(r30)
/* 80309024  B0 9E 00 18 */	sth r4, 0x18(r30)
/* 80309028  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8030902C  38 00 00 01 */	li r0, 1
/* 80309030  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80309034  3C 60 80 3D */	lis r3, __vt__15J2DAnmColorFull@ha
/* 80309038  38 03 D7 94 */	addi r0, r3, __vt__15J2DAnmColorFull@l
/* 8030903C  90 1E 00 00 */	stw r0, 0(r30)
/* 80309040  90 9E 00 30 */	stw r4, 0x30(r30)
/* 80309044  90 9E 00 34 */	stw r4, 0x34(r30)
/* 80309048  90 9E 00 38 */	stw r4, 0x38(r30)
/* 8030904C  90 9E 00 3C */	stw r4, 0x3c(r30)
/* 80309050  90 9E 00 40 */	stw r4, 0x40(r30)
lbl_80309054:
/* 80309054  93 C1 00 24 */	stw r30, 0x24(r1)
/* 80309058  38 61 00 20 */	addi r3, r1, 0x20
/* 8030905C  7F E4 FB 78 */	mr r4, r31
/* 80309060  48 00 0A 21 */	bl load__20J2DAnmFullLoader_v15FPCv
/* 80309064  7C 7F 1B 78 */	mr r31, r3
/* 80309068  38 61 00 20 */	addi r3, r1, 0x20
/* 8030906C  38 80 FF FF */	li r4, -1
/* 80309070  48 00 0C 95 */	bl __dt__20J2DAnmFullLoader_v15Fv
/* 80309074  7F E3 FB 78 */	mr r3, r31
/* 80309078  48 00 02 00 */	b lbl_80309278
lbl_8030907C:
/* 8030907C  38 61 00 18 */	addi r3, r1, 0x18
/* 80309080  48 00 0C 69 */	bl __ct__20J2DAnmFullLoader_v15Fv
/* 80309084  38 60 00 34 */	li r3, 0x34
/* 80309088  4B FC 5B C5 */	bl __nw__FUl
/* 8030908C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80309090  41 82 00 54 */	beq lbl_803090E4
/* 80309094  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha
/* 80309098  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l
/* 8030909C  90 1E 00 00 */	stw r0, 0(r30)
/* 803090A0  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 803090A4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 803090A8  38 00 00 00 */	li r0, 0
/* 803090AC  B0 1E 00 06 */	sth r0, 6(r30)
/* 803090B0  3C 60 80 3D */	lis r3, __vt__16J2DAnmTexPattern@ha
/* 803090B4  38 03 D7 38 */	addi r0, r3, __vt__16J2DAnmTexPattern@l
/* 803090B8  90 1E 00 00 */	stw r0, 0(r30)
/* 803090BC  38 7E 00 20 */	addi r3, r30, 0x20
/* 803090C0  4B FD 58 E1 */	bl __ct__10JUTNameTabFv
/* 803090C4  38 60 00 00 */	li r3, 0
/* 803090C8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 803090CC  90 7E 00 14 */	stw r3, 0x14(r30)
/* 803090D0  38 00 00 02 */	li r0, 2
/* 803090D4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 803090D8  B0 7E 00 1A */	sth r3, 0x1a(r30)
/* 803090DC  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 803090E0  90 7E 00 30 */	stw r3, 0x30(r30)
lbl_803090E4:
/* 803090E4  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 803090E8  38 61 00 18 */	addi r3, r1, 0x18
/* 803090EC  7F E4 FB 78 */	mr r4, r31
/* 803090F0  48 00 09 91 */	bl load__20J2DAnmFullLoader_v15FPCv
/* 803090F4  7C 7F 1B 78 */	mr r31, r3
/* 803090F8  38 61 00 18 */	addi r3, r1, 0x18
/* 803090FC  38 80 FF FF */	li r4, -1
/* 80309100  48 00 0C 05 */	bl __dt__20J2DAnmFullLoader_v15Fv
/* 80309104  7F E3 FB 78 */	mr r3, r31
/* 80309108  48 00 01 70 */	b lbl_80309278
lbl_8030910C:
/* 8030910C  38 61 00 10 */	addi r3, r1, 0x10
/* 80309110  48 00 0B D9 */	bl __ct__20J2DAnmFullLoader_v15Fv
/* 80309114  38 60 00 1C */	li r3, 0x1c
/* 80309118  4B FC 5B 35 */	bl __nw__FUl
/* 8030911C  28 03 00 00 */	cmplwi r3, 0
/* 80309120  41 82 00 44 */	beq lbl_80309164
/* 80309124  3C 80 80 3B */	lis r4, __vt__10J2DAnmBase@ha
/* 80309128  38 04 8E 04 */	addi r0, r4, __vt__10J2DAnmBase@l
/* 8030912C  90 03 00 00 */	stw r0, 0(r3)
/* 80309130  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80309134  D0 03 00 08 */	stfs f0, 8(r3)
/* 80309138  38 A0 00 00 */	li r5, 0
/* 8030913C  B0 A3 00 06 */	sth r5, 6(r3)
/* 80309140  3C 80 80 3D */	lis r4, __vt__20J2DAnmVisibilityFull@ha
/* 80309144  38 04 D7 04 */	addi r0, r4, __vt__20J2DAnmVisibilityFull@l
/* 80309148  90 03 00 00 */	stw r0, 0(r3)
/* 8030914C  B0 A3 00 10 */	sth r5, 0x10(r3)
/* 80309150  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80309154  B0 A3 00 12 */	sth r5, 0x12(r3)
/* 80309158  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8030915C  38 00 00 06 */	li r0, 6
/* 80309160  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80309164:
/* 80309164  90 61 00 14 */	stw r3, 0x14(r1)
/* 80309168  38 61 00 10 */	addi r3, r1, 0x10
/* 8030916C  7F E4 FB 78 */	mr r4, r31
/* 80309170  48 00 09 11 */	bl load__20J2DAnmFullLoader_v15FPCv
/* 80309174  7C 7F 1B 78 */	mr r31, r3
/* 80309178  38 61 00 10 */	addi r3, r1, 0x10
/* 8030917C  38 80 FF FF */	li r4, -1
/* 80309180  48 00 0B 85 */	bl __dt__20J2DAnmFullLoader_v15Fv
/* 80309184  7F E3 FB 78 */	mr r3, r31
/* 80309188  48 00 00 F0 */	b lbl_80309278
lbl_8030918C:
/* 8030918C  38 60 00 00 */	li r3, 0
/* 80309190  48 00 00 E8 */	b lbl_80309278
lbl_80309194:
/* 80309194  38 61 00 08 */	addi r3, r1, 8
/* 80309198  48 00 0B 51 */	bl __ct__20J2DAnmFullLoader_v15Fv
/* 8030919C  38 60 00 3C */	li r3, 0x3c
/* 803091A0  4B FC 5A AD */	bl __nw__FUl
/* 803091A4  28 03 00 00 */	cmplwi r3, 0
/* 803091A8  41 82 00 9C */	beq lbl_80309244
/* 803091AC  3C 80 80 3B */	lis r4, __vt__10J2DAnmBase@ha
/* 803091B0  38 04 8E 04 */	addi r0, r4, __vt__10J2DAnmBase@l
/* 803091B4  90 03 00 00 */	stw r0, 0(r3)
/* 803091B8  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 803091BC  D0 03 00 08 */	stfs f0, 8(r3)
/* 803091C0  38 A0 00 00 */	li r5, 0
/* 803091C4  B0 A3 00 06 */	sth r5, 6(r3)
/* 803091C8  3C 80 80 3D */	lis r4, __vt__14J2DAnmVtxColor@ha
/* 803091CC  38 04 D7 14 */	addi r0, r4, __vt__14J2DAnmVtxColor@l
/* 803091D0  90 03 00 00 */	stw r0, 0(r3)
/* 803091D4  38 00 00 07 */	li r0, 7
/* 803091D8  90 03 00 0C */	stw r0, 0xc(r3)
/* 803091DC  38 80 00 00 */	li r4, 0
/* 803091E0  38 00 00 02 */	li r0, 2
/* 803091E4  7C 09 03 A6 */	mtctr r0
lbl_803091E8:
/* 803091E8  38 04 00 10 */	addi r0, r4, 0x10
/* 803091EC  7C A3 03 2E */	sthx r5, r3, r0
/* 803091F0  38 84 00 02 */	addi r4, r4, 2
/* 803091F4  42 00 FF F4 */	bdnz lbl_803091E8
/* 803091F8  38 A0 00 00 */	li r5, 0
/* 803091FC  38 80 00 00 */	li r4, 0
/* 80309200  38 00 00 02 */	li r0, 2
/* 80309204  7C 09 03 A6 */	mtctr r0
lbl_80309208:
/* 80309208  38 04 00 14 */	addi r0, r4, 0x14
/* 8030920C  7C A3 01 2E */	stwx r5, r3, r0
/* 80309210  38 84 00 04 */	addi r4, r4, 4
/* 80309214  42 00 FF F4 */	bdnz lbl_80309208
/* 80309218  3C 80 80 3D */	lis r4, __vt__18J2DAnmVtxColorFull@ha
/* 8030921C  38 04 D7 6C */	addi r0, r4, __vt__18J2DAnmVtxColorFull@l
/* 80309220  90 03 00 00 */	stw r0, 0(r3)
/* 80309224  38 A0 00 00 */	li r5, 0
/* 80309228  38 80 00 00 */	li r4, 0
/* 8030922C  38 00 00 02 */	li r0, 2
/* 80309230  7C 09 03 A6 */	mtctr r0
lbl_80309234:
/* 80309234  38 04 00 24 */	addi r0, r4, 0x24
/* 80309238  7C A3 01 2E */	stwx r5, r3, r0
/* 8030923C  38 84 00 04 */	addi r4, r4, 4
/* 80309240  42 00 FF F4 */	bdnz lbl_80309234
lbl_80309244:
/* 80309244  90 61 00 0C */	stw r3, 0xc(r1)
/* 80309248  38 61 00 08 */	addi r3, r1, 8
/* 8030924C  7F E4 FB 78 */	mr r4, r31
/* 80309250  48 00 08 31 */	bl load__20J2DAnmFullLoader_v15FPCv
/* 80309254  7C 7F 1B 78 */	mr r31, r3
/* 80309258  38 61 00 08 */	addi r3, r1, 8
/* 8030925C  38 80 FF FF */	li r4, -1
/* 80309260  48 00 0A A5 */	bl __dt__20J2DAnmFullLoader_v15Fv
/* 80309264  7F E3 FB 78 */	mr r3, r31
/* 80309268  48 00 00 10 */	b lbl_80309278
lbl_8030926C:
/* 8030926C  38 60 00 00 */	li r3, 0
/* 80309270  48 00 00 08 */	b lbl_80309278
lbl_80309274:
/* 80309274  38 60 00 00 */	li r3, 0
lbl_80309278:
/* 80309278  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8030927C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80309280  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80309284  7C 08 03 A6 */	mtlr r0
/* 80309288  38 21 00 60 */	addi r1, r1, 0x60
/* 8030928C  4E 80 00 20 */	blr 
