lbl_80337B40:
/* 80337B40  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80337B44  7C 08 02 A6 */	mflr r0
/* 80337B48  90 01 00 74 */	stw r0, 0x74(r1)
/* 80337B4C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80337B50  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80337B54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80337B58  7C 9E 23 78 */	mr r30, r4
/* 80337B5C  40 82 00 0C */	bne lbl_80337B68
/* 80337B60  38 60 00 00 */	li r3, 0
/* 80337B64  48 00 05 B8 */	b lbl_8033811C
lbl_80337B68:
/* 80337B68  80 7F 00 00 */	lwz r3, 0(r31)
/* 80337B6C  3C 03 B5 CD */	addis r0, r3, 0xb5cd
/* 80337B70  28 00 44 31 */	cmplwi r0, 0x4431
/* 80337B74  40 82 05 A4 */	bne lbl_80338118
/* 80337B78  80 BF 00 04 */	lwz r5, 4(r31)
/* 80337B7C  3C 60 62 72 */	lis r3, 0x6272 /* 0x62726B31@ha */
/* 80337B80  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62726B31@l */
/* 80337B84  7C 05 00 00 */	cmpw r5, r0
/* 80337B88  41 82 02 50 */	beq lbl_80337DD8
/* 80337B8C  40 80 00 70 */	bge lbl_80337BFC
/* 80337B90  3C 80 62 6C */	lis r4, 0x626C /* 0x626C6B31@ha */
/* 80337B94  38 04 6B 31 */	addi r0, r4, 0x6B31 /* 0x626C6B31@l */
/* 80337B98  7C 05 00 00 */	cmpw r5, r0
/* 80337B9C  41 82 01 70 */	beq lbl_80337D0C
/* 80337BA0  40 80 00 38 */	bge lbl_80337BD8
/* 80337BA4  3C 60 62 63 */	lis r3, 0x6263 /* 0x62636B31@ha */
/* 80337BA8  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62636B31@l */
/* 80337BAC  7C 05 00 00 */	cmpw r5, r0
/* 80337BB0  41 82 00 A8 */	beq lbl_80337C58
/* 80337BB4  40 80 00 14 */	bge lbl_80337BC8
/* 80337BB8  38 03 61 31 */	addi r0, r3, 0x6131
/* 80337BBC  7C 05 00 00 */	cmpw r5, r0
/* 80337BC0  41 82 02 A8 */	beq lbl_80337E68
/* 80337BC4  48 00 05 3C */	b lbl_80338100
lbl_80337BC8:
/* 80337BC8  38 04 61 31 */	addi r0, r4, 0x6131
/* 80337BCC  7C 05 00 00 */	cmpw r5, r0
/* 80337BD0  41 82 04 64 */	beq lbl_80338034
/* 80337BD4  48 00 05 2C */	b lbl_80338100
lbl_80337BD8:
/* 80337BD8  3C 60 62 70 */	lis r3, 0x6270 /* 0x62706B31@ha */
/* 80337BDC  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62706B31@l */
/* 80337BE0  7C 05 00 00 */	cmpw r5, r0
/* 80337BE4  41 82 00 E0 */	beq lbl_80337CC4
/* 80337BE8  40 80 05 18 */	bge lbl_80338100
/* 80337BEC  38 03 61 31 */	addi r0, r3, 0x6131
/* 80337BF0  7C 05 00 00 */	cmpw r5, r0
/* 80337BF4  41 82 03 30 */	beq lbl_80337F24
/* 80337BF8  48 00 05 08 */	b lbl_80338100
lbl_80337BFC:
/* 80337BFC  3C 60 62 76 */	lis r3, 0x6276 /* 0x62766131@ha */
/* 80337C00  38 03 61 31 */	addi r0, r3, 0x6131 /* 0x62766131@l */
/* 80337C04  7C 05 00 00 */	cmpw r5, r0
/* 80337C08  41 82 03 AC */	beq lbl_80337FB4
/* 80337C0C  40 80 00 28 */	bge lbl_80337C34
/* 80337C10  3C 60 62 74 */	lis r3, 0x6274 /* 0x62747031@ha */
/* 80337C14  38 03 70 31 */	addi r0, r3, 0x7031 /* 0x62747031@l */
/* 80337C18  7C 05 00 00 */	cmpw r5, r0
/* 80337C1C  41 82 03 50 */	beq lbl_80337F6C
/* 80337C20  40 80 04 E0 */	bge lbl_80338100
/* 80337C24  38 03 6B 31 */	addi r0, r3, 0x6b31
/* 80337C28  7C 05 00 00 */	cmpw r5, r0
/* 80337C2C  41 82 01 64 */	beq lbl_80337D90
/* 80337C30  48 00 04 D0 */	b lbl_80338100
lbl_80337C34:
/* 80337C34  3C 60 62 78 */	lis r3, 0x6278 /* 0x62786B31@ha */
/* 80337C38  38 03 6B 31 */	addi r0, r3, 0x6B31 /* 0x62786B31@l */
/* 80337C3C  7C 05 00 00 */	cmpw r5, r0
/* 80337C40  41 82 01 E0 */	beq lbl_80337E20
/* 80337C44  40 80 04 BC */	bge lbl_80338100
/* 80337C48  38 03 61 31 */	addi r0, r3, 0x6131
/* 80337C4C  7C 05 00 00 */	cmpw r5, r0
/* 80337C50  41 82 04 68 */	beq lbl_803380B8
/* 80337C54  48 00 04 AC */	b lbl_80338100
lbl_80337C58:
/* 80337C58  38 61 00 60 */	addi r3, r1, 0x60
/* 80337C5C  48 00 08 85 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337C60  38 60 00 28 */	li r3, 0x28
/* 80337C64  4B F9 6F E9 */	bl __nw__FUl
/* 80337C68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80337C6C  41 82 00 30 */	beq lbl_80337C9C
/* 80337C70  38 80 00 00 */	li r4, 0
/* 80337C74  38 A0 00 00 */	li r5, 0
/* 80337C78  38 C0 00 00 */	li r6, 0
/* 80337C7C  38 E0 00 00 */	li r7, 0
/* 80337C80  4B FF 11 C1 */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 80337C84  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha /* 0x803A7C70@ha */
/* 80337C88  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l /* 0x803A7C70@l */
/* 80337C8C  90 1E 00 00 */	stw r0, 0(r30)
/* 80337C90  38 00 00 00 */	li r0, 0
/* 80337C94  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80337C98  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_80337C9C:
/* 80337C9C  93 C1 00 64 */	stw r30, 0x64(r1)
/* 80337CA0  38 61 00 60 */	addi r3, r1, 0x60
/* 80337CA4  7F E4 FB 78 */	mr r4, r31
/* 80337CA8  48 00 10 9D */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337CAC  7C 7E 1B 78 */	mr r30, r3
/* 80337CB0  38 61 00 60 */	addi r3, r1, 0x60
/* 80337CB4  38 80 FF FF */	li r4, -1
/* 80337CB8  48 00 08 45 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337CBC  7F C3 F3 78 */	mr r3, r30
/* 80337CC0  48 00 04 5C */	b lbl_8033811C
lbl_80337CC4:
/* 80337CC4  38 61 00 58 */	addi r3, r1, 0x58
/* 80337CC8  48 00 08 19 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337CCC  38 60 00 40 */	li r3, 0x40
/* 80337CD0  4B F9 6F 7D */	bl __nw__FUl
/* 80337CD4  7C 60 1B 79 */	or. r0, r3, r3
/* 80337CD8  41 82 00 0C */	beq lbl_80337CE4
/* 80337CDC  4B FF 2E 25 */	bl __ct__14J3DAnmColorKeyFv
/* 80337CE0  7C 60 1B 78 */	mr r0, r3
lbl_80337CE4:
/* 80337CE4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80337CE8  38 61 00 58 */	addi r3, r1, 0x58
/* 80337CEC  7F E4 FB 78 */	mr r4, r31
/* 80337CF0  48 00 10 55 */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337CF4  7C 7E 1B 78 */	mr r30, r3
/* 80337CF8  38 61 00 58 */	addi r3, r1, 0x58
/* 80337CFC  38 80 FF FF */	li r4, -1
/* 80337D00  48 00 07 FD */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337D04  7F C3 F3 78 */	mr r3, r30
/* 80337D08  48 00 04 14 */	b lbl_8033811C
lbl_80337D0C:
/* 80337D0C  38 61 00 50 */	addi r3, r1, 0x50
/* 80337D10  48 00 07 D1 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337D14  38 60 00 14 */	li r3, 0x14
/* 80337D18  4B F9 6F 35 */	bl __nw__FUl
/* 80337D1C  28 03 00 00 */	cmplwi r3, 0
/* 80337D20  41 82 00 48 */	beq lbl_80337D68
/* 80337D24  3C 80 80 3A */	lis r4, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 80337D28  38 04 7C 38 */	addi r0, r4, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 80337D2C  90 03 00 00 */	stw r0, 0(r3)
/* 80337D30  38 A0 00 00 */	li r5, 0
/* 80337D34  98 A3 00 04 */	stb r5, 4(r3)
/* 80337D38  98 A3 00 05 */	stb r5, 5(r3)
/* 80337D3C  B0 A3 00 06 */	sth r5, 6(r3)
/* 80337D40  C0 02 CA C0 */	lfs f0, lit_889(r2)
/* 80337D44  D0 03 00 08 */	stfs f0, 8(r3)
/* 80337D48  3C 80 80 3D */	lis r4, __vt__13J3DAnmCluster@ha /* 0x803CEDFC@ha */
/* 80337D4C  38 04 ED FC */	addi r0, r4, __vt__13J3DAnmCluster@l /* 0x803CEDFC@l */
/* 80337D50  90 03 00 00 */	stw r0, 0(r3)
/* 80337D54  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80337D58  3C 80 80 3D */	lis r4, __vt__16J3DAnmClusterKey@ha /* 0x803CEDE8@ha */
/* 80337D5C  38 04 ED E8 */	addi r0, r4, __vt__16J3DAnmClusterKey@l /* 0x803CEDE8@l */
/* 80337D60  90 03 00 00 */	stw r0, 0(r3)
/* 80337D64  90 A3 00 10 */	stw r5, 0x10(r3)
lbl_80337D68:
/* 80337D68  90 61 00 54 */	stw r3, 0x54(r1)
/* 80337D6C  38 61 00 50 */	addi r3, r1, 0x50
/* 80337D70  7F E4 FB 78 */	mr r4, r31
/* 80337D74  48 00 0F D1 */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337D78  7C 7E 1B 78 */	mr r30, r3
/* 80337D7C  38 61 00 50 */	addi r3, r1, 0x50
/* 80337D80  38 80 FF FF */	li r4, -1
/* 80337D84  48 00 07 79 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337D88  7F C3 F3 78 */	mr r3, r30
/* 80337D8C  48 00 03 90 */	b lbl_8033811C
lbl_80337D90:
/* 80337D90  38 61 00 48 */	addi r3, r1, 0x48
/* 80337D94  48 00 07 4D */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337D98  38 60 00 7C */	li r3, 0x7c
/* 80337D9C  4B F9 6E B1 */	bl __nw__FUl
/* 80337DA0  7C 60 1B 79 */	or. r0, r3, r3
/* 80337DA4  41 82 00 0C */	beq lbl_80337DB0
/* 80337DA8  4B FF 20 B5 */	bl __ct__19J3DAnmTextureSRTKeyFv
/* 80337DAC  7C 60 1B 78 */	mr r0, r3
lbl_80337DB0:
/* 80337DB0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80337DB4  38 61 00 48 */	addi r3, r1, 0x48
/* 80337DB8  7F E4 FB 78 */	mr r4, r31
/* 80337DBC  48 00 0F 89 */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337DC0  7C 7E 1B 78 */	mr r30, r3
/* 80337DC4  38 61 00 48 */	addi r3, r1, 0x48
/* 80337DC8  38 80 FF FF */	li r4, -1
/* 80337DCC  48 00 07 31 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337DD0  7F C3 F3 78 */	mr r3, r30
/* 80337DD4  48 00 03 48 */	b lbl_8033811C
lbl_80337DD8:
/* 80337DD8  38 61 00 40 */	addi r3, r1, 0x40
/* 80337DDC  48 00 07 05 */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337DE0  38 60 00 70 */	li r3, 0x70
/* 80337DE4  4B F9 6E 69 */	bl __nw__FUl
/* 80337DE8  7C 60 1B 79 */	or. r0, r3, r3
/* 80337DEC  41 82 00 0C */	beq lbl_80337DF8
/* 80337DF0  4B FF 30 29 */	bl __ct__15J3DAnmTevRegKeyFv
/* 80337DF4  7C 60 1B 78 */	mr r0, r3
lbl_80337DF8:
/* 80337DF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80337DFC  38 61 00 40 */	addi r3, r1, 0x40
/* 80337E00  7F E4 FB 78 */	mr r4, r31
/* 80337E04  48 00 0F 41 */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337E08  7C 7E 1B 78 */	mr r30, r3
/* 80337E0C  38 61 00 40 */	addi r3, r1, 0x40
/* 80337E10  38 80 FF FF */	li r4, -1
/* 80337E14  48 00 06 E9 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337E18  7F C3 F3 78 */	mr r3, r30
/* 80337E1C  48 00 03 00 */	b lbl_8033811C
lbl_80337E20:
/* 80337E20  38 61 00 38 */	addi r3, r1, 0x38
/* 80337E24  48 00 06 BD */	bl __ct__19J3DAnmKeyLoader_v15Fv
/* 80337E28  38 60 00 30 */	li r3, 0x30
/* 80337E2C  4B F9 6E 21 */	bl __nw__FUl
/* 80337E30  7C 60 1B 79 */	or. r0, r3, r3
/* 80337E34  41 82 00 0C */	beq lbl_80337E40
/* 80337E38  4B FF 26 A9 */	bl __ct__17J3DAnmVtxColorKeyFv
/* 80337E3C  7C 60 1B 78 */	mr r0, r3
lbl_80337E40:
/* 80337E40  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80337E44  38 61 00 38 */	addi r3, r1, 0x38
/* 80337E48  7F E4 FB 78 */	mr r4, r31
/* 80337E4C  48 00 0E F9 */	bl load__19J3DAnmKeyLoader_v15FPCv
/* 80337E50  7C 7E 1B 78 */	mr r30, r3
/* 80337E54  38 61 00 38 */	addi r3, r1, 0x38
/* 80337E58  38 80 FF FF */	li r4, -1
/* 80337E5C  48 00 06 A1 */	bl __dt__19J3DAnmKeyLoader_v15Fv
/* 80337E60  7F C3 F3 78 */	mr r3, r30
/* 80337E64  48 00 02 B8 */	b lbl_8033811C
lbl_80337E68:
/* 80337E68  38 61 00 30 */	addi r3, r1, 0x30
/* 80337E6C  48 00 05 FD */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80337E70  57 C0 07 FF */	clrlwi. r0, r30, 0x1f
/* 80337E74  41 82 00 50 */	beq lbl_80337EC4
/* 80337E78  38 60 00 24 */	li r3, 0x24
/* 80337E7C  4B F9 6D D1 */	bl __nw__FUl
/* 80337E80  7C 7E 1B 79 */	or. r30, r3, r3
/* 80337E84  41 82 00 38 */	beq lbl_80337EBC
/* 80337E88  38 80 00 00 */	li r4, 0
/* 80337E8C  38 A0 00 00 */	li r5, 0
/* 80337E90  38 C0 00 00 */	li r6, 0
/* 80337E94  38 E0 00 00 */	li r7, 0
/* 80337E98  4B FF 0F A9 */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 80337E9C  3C 60 80 3D */	lis r3, __vt__19J3DAnmTransformFull@ha /* 0x803CEE48@ha */
/* 80337EA0  38 03 EE 48 */	addi r0, r3, __vt__19J3DAnmTransformFull@l /* 0x803CEE48@l */
/* 80337EA4  90 1E 00 00 */	stw r0, 0(r30)
/* 80337EA8  38 00 00 00 */	li r0, 0
/* 80337EAC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80337EB0  3C 60 80 3D */	lis r3, __vt__27J3DAnmTransformFullWithLerp@ha /* 0x803CEE34@ha */
/* 80337EB4  38 03 EE 34 */	addi r0, r3, __vt__27J3DAnmTransformFullWithLerp@l /* 0x803CEE34@l */
/* 80337EB8  90 1E 00 00 */	stw r0, 0(r30)
lbl_80337EBC:
/* 80337EBC  93 C1 00 34 */	stw r30, 0x34(r1)
/* 80337EC0  48 00 00 40 */	b lbl_80337F00
lbl_80337EC4:
/* 80337EC4  38 60 00 24 */	li r3, 0x24
/* 80337EC8  4B F9 6D 85 */	bl __nw__FUl
/* 80337ECC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80337ED0  41 82 00 2C */	beq lbl_80337EFC
/* 80337ED4  38 80 00 00 */	li r4, 0
/* 80337ED8  38 A0 00 00 */	li r5, 0
/* 80337EDC  38 C0 00 00 */	li r6, 0
/* 80337EE0  38 E0 00 00 */	li r7, 0
/* 80337EE4  4B FF 0F 5D */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 80337EE8  3C 60 80 3D */	lis r3, __vt__19J3DAnmTransformFull@ha /* 0x803CEE48@ha */
/* 80337EEC  38 03 EE 48 */	addi r0, r3, __vt__19J3DAnmTransformFull@l /* 0x803CEE48@l */
/* 80337EF0  90 1E 00 00 */	stw r0, 0(r30)
/* 80337EF4  38 00 00 00 */	li r0, 0
/* 80337EF8  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_80337EFC:
/* 80337EFC  93 C1 00 34 */	stw r30, 0x34(r1)
lbl_80337F00:
/* 80337F00  38 61 00 30 */	addi r3, r1, 0x30
/* 80337F04  7F E4 FB 78 */	mr r4, r31
/* 80337F08  48 00 06 51 */	bl load__20J3DAnmFullLoader_v15FPCv
/* 80337F0C  7C 7E 1B 78 */	mr r30, r3
/* 80337F10  38 61 00 30 */	addi r3, r1, 0x30
/* 80337F14  38 80 FF FF */	li r4, -1
/* 80337F18  48 00 05 6D */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 80337F1C  7F C3 F3 78 */	mr r3, r30
/* 80337F20  48 00 01 FC */	b lbl_8033811C
lbl_80337F24:
/* 80337F24  38 61 00 28 */	addi r3, r1, 0x28
/* 80337F28  48 00 05 41 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80337F2C  38 60 00 40 */	li r3, 0x40
/* 80337F30  4B F9 6D 1D */	bl __nw__FUl
/* 80337F34  7C 60 1B 79 */	or. r0, r3, r3
/* 80337F38  41 82 00 0C */	beq lbl_80337F44
/* 80337F3C  4B FF 2A 01 */	bl __ct__15J3DAnmColorFullFv
/* 80337F40  7C 60 1B 78 */	mr r0, r3
lbl_80337F44:
/* 80337F44  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80337F48  38 61 00 28 */	addi r3, r1, 0x28
/* 80337F4C  7F E4 FB 78 */	mr r4, r31
/* 80337F50  48 00 06 09 */	bl load__20J3DAnmFullLoader_v15FPCv
/* 80337F54  7C 7E 1B 78 */	mr r30, r3
/* 80337F58  38 61 00 28 */	addi r3, r1, 0x28
/* 80337F5C  38 80 FF FF */	li r4, -1
/* 80337F60  48 00 05 25 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 80337F64  7F C3 F3 78 */	mr r3, r30
/* 80337F68  48 00 01 B4 */	b lbl_8033811C
lbl_80337F6C:
/* 80337F6C  38 61 00 20 */	addi r3, r1, 0x20
/* 80337F70  48 00 04 F9 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80337F74  38 60 00 2C */	li r3, 0x2c
/* 80337F78  4B F9 6C D5 */	bl __nw__FUl
/* 80337F7C  7C 60 1B 79 */	or. r0, r3, r3
/* 80337F80  41 82 00 0C */	beq lbl_80337F8C
/* 80337F84  4B FF 2F 55 */	bl __ct__16J3DAnmTexPatternFv
/* 80337F88  7C 60 1B 78 */	mr r0, r3
lbl_80337F8C:
/* 80337F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80337F90  38 61 00 20 */	addi r3, r1, 0x20
/* 80337F94  7F E4 FB 78 */	mr r4, r31
/* 80337F98  48 00 05 C1 */	bl load__20J3DAnmFullLoader_v15FPCv
/* 80337F9C  7C 7E 1B 78 */	mr r30, r3
/* 80337FA0  38 61 00 20 */	addi r3, r1, 0x20
/* 80337FA4  38 80 FF FF */	li r4, -1
/* 80337FA8  48 00 04 DD */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 80337FAC  7F C3 F3 78 */	mr r3, r30
/* 80337FB0  48 00 01 6C */	b lbl_8033811C
lbl_80337FB4:
/* 80337FB4  38 61 00 18 */	addi r3, r1, 0x18
/* 80337FB8  48 00 04 B1 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 80337FBC  38 60 00 18 */	li r3, 0x18
/* 80337FC0  4B F9 6C 8D */	bl __nw__FUl
/* 80337FC4  28 03 00 00 */	cmplwi r3, 0
/* 80337FC8  41 82 00 44 */	beq lbl_8033800C
/* 80337FCC  3C 80 80 3A */	lis r4, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 80337FD0  38 04 7C 38 */	addi r0, r4, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 80337FD4  90 03 00 00 */	stw r0, 0(r3)
/* 80337FD8  38 A0 00 00 */	li r5, 0
/* 80337FDC  98 A3 00 04 */	stb r5, 4(r3)
/* 80337FE0  98 A3 00 05 */	stb r5, 5(r3)
/* 80337FE4  B0 A3 00 06 */	sth r5, 6(r3)
/* 80337FE8  C0 02 CA C0 */	lfs f0, lit_889(r2)
/* 80337FEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80337FF0  3C 80 80 3D */	lis r4, __vt__20J3DAnmVisibilityFull@ha /* 0x803CF274@ha */
/* 80337FF4  38 04 F2 74 */	addi r0, r4, __vt__20J3DAnmVisibilityFull@l /* 0x803CF274@l */
/* 80337FF8  90 03 00 00 */	stw r0, 0(r3)
/* 80337FFC  B0 A3 00 0C */	sth r5, 0xc(r3)
/* 80338000  B0 A3 00 0E */	sth r5, 0xe(r3)
/* 80338004  90 A3 00 10 */	stw r5, 0x10(r3)
/* 80338008  90 A3 00 14 */	stw r5, 0x14(r3)
lbl_8033800C:
/* 8033800C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80338010  38 61 00 18 */	addi r3, r1, 0x18
/* 80338014  7F E4 FB 78 */	mr r4, r31
/* 80338018  48 00 05 41 */	bl load__20J3DAnmFullLoader_v15FPCv
/* 8033801C  7C 7E 1B 78 */	mr r30, r3
/* 80338020  38 61 00 18 */	addi r3, r1, 0x18
/* 80338024  38 80 FF FF */	li r4, -1
/* 80338028  48 00 04 5D */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 8033802C  7F C3 F3 78 */	mr r3, r30
/* 80338030  48 00 00 EC */	b lbl_8033811C
lbl_80338034:
/* 80338034  38 61 00 10 */	addi r3, r1, 0x10
/* 80338038  48 00 04 31 */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 8033803C  38 60 00 14 */	li r3, 0x14
/* 80338040  4B F9 6C 0D */	bl __nw__FUl
/* 80338044  28 03 00 00 */	cmplwi r3, 0
/* 80338048  41 82 00 48 */	beq lbl_80338090
/* 8033804C  3C 80 80 3A */	lis r4, __vt__10J3DAnmBase@ha /* 0x803A7C38@ha */
/* 80338050  38 04 7C 38 */	addi r0, r4, __vt__10J3DAnmBase@l /* 0x803A7C38@l */
/* 80338054  90 03 00 00 */	stw r0, 0(r3)
/* 80338058  38 A0 00 00 */	li r5, 0
/* 8033805C  98 A3 00 04 */	stb r5, 4(r3)
/* 80338060  98 A3 00 05 */	stb r5, 5(r3)
/* 80338064  B0 A3 00 06 */	sth r5, 6(r3)
/* 80338068  C0 02 CA C0 */	lfs f0, lit_889(r2)
/* 8033806C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80338070  3C 80 80 3D */	lis r4, __vt__13J3DAnmCluster@ha /* 0x803CEDFC@ha */
/* 80338074  38 04 ED FC */	addi r0, r4, __vt__13J3DAnmCluster@l /* 0x803CEDFC@l */
/* 80338078  90 03 00 00 */	stw r0, 0(r3)
/* 8033807C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80338080  3C 80 80 3D */	lis r4, __vt__17J3DAnmClusterFull@ha /* 0x803CEE10@ha */
/* 80338084  38 04 EE 10 */	addi r0, r4, __vt__17J3DAnmClusterFull@l /* 0x803CEE10@l */
/* 80338088  90 03 00 00 */	stw r0, 0(r3)
/* 8033808C  90 A3 00 10 */	stw r5, 0x10(r3)
lbl_80338090:
/* 80338090  90 61 00 14 */	stw r3, 0x14(r1)
/* 80338094  38 61 00 10 */	addi r3, r1, 0x10
/* 80338098  7F E4 FB 78 */	mr r4, r31
/* 8033809C  48 00 04 BD */	bl load__20J3DAnmFullLoader_v15FPCv
/* 803380A0  7C 7E 1B 78 */	mr r30, r3
/* 803380A4  38 61 00 10 */	addi r3, r1, 0x10
/* 803380A8  38 80 FF FF */	li r4, -1
/* 803380AC  48 00 03 D9 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 803380B0  7F C3 F3 78 */	mr r3, r30
/* 803380B4  48 00 00 68 */	b lbl_8033811C
lbl_803380B8:
/* 803380B8  38 61 00 08 */	addi r3, r1, 8
/* 803380BC  48 00 03 AD */	bl __ct__20J3DAnmFullLoader_v15Fv
/* 803380C0  38 60 00 30 */	li r3, 0x30
/* 803380C4  4B F9 6B 89 */	bl __nw__FUl
/* 803380C8  7C 60 1B 79 */	or. r0, r3, r3
/* 803380CC  41 82 00 0C */	beq lbl_803380D8
/* 803380D0  4B FF 22 3D */	bl __ct__18J3DAnmVtxColorFullFv
/* 803380D4  7C 60 1B 78 */	mr r0, r3
lbl_803380D8:
/* 803380D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803380DC  38 61 00 08 */	addi r3, r1, 8
/* 803380E0  7F E4 FB 78 */	mr r4, r31
/* 803380E4  48 00 04 75 */	bl load__20J3DAnmFullLoader_v15FPCv
/* 803380E8  7C 7E 1B 78 */	mr r30, r3
/* 803380EC  38 61 00 08 */	addi r3, r1, 8
/* 803380F0  38 80 FF FF */	li r4, -1
/* 803380F4  48 00 03 91 */	bl __dt__20J3DAnmFullLoader_v15Fv
/* 803380F8  7F C3 F3 78 */	mr r3, r30
/* 803380FC  48 00 00 20 */	b lbl_8033811C
lbl_80338100:
/* 80338100  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha /* 0x803A2130@ha */
/* 80338104  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l /* 0x803A2130@l */
/* 80338108  4C C6 31 82 */	crclr 6
/* 8033810C  4B CC E9 B1 */	bl OSReport
/* 80338110  38 60 00 00 */	li r3, 0
/* 80338114  48 00 00 08 */	b lbl_8033811C
lbl_80338118:
/* 80338118  38 60 00 00 */	li r3, 0
lbl_8033811C:
/* 8033811C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80338120  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80338124  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80338128  7C 08 03 A6 */	mtlr r0
/* 8033812C  38 21 00 70 */	addi r1, r1, 0x70
/* 80338130  4E 80 00 20 */	blr 
