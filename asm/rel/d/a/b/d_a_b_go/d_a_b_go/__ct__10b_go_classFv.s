lbl_80603CA0:
/* 80603CA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80603CA4  7C 08 02 A6 */	mflr r0
/* 80603CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80603CAC  39 61 00 20 */	addi r11, r1, 0x20
/* 80603CB0  4B D5 E5 25 */	bl _savegpr_27
/* 80603CB4  7C 7F 1B 78 */	mr r31, r3
/* 80603CB8  4B A1 4E AD */	bl __ct__10fopAc_ac_cFv
/* 80603CBC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80603CC0  4B CB D2 A5 */	bl __ct__15Z2CreatureEnemyFv
/* 80603CC4  38 7F 06 94 */	addi r3, r31, 0x694
/* 80603CC8  4B A7 21 E5 */	bl __ct__12dBgS_AcchCirFv
/* 80603CCC  3B 9F 06 D4 */	addi r28, r31, 0x6d4
/* 80603CD0  7F 83 E3 78 */	mr r3, r28
/* 80603CD4  4B A7 23 CD */	bl __ct__9dBgS_AcchFv
/* 80603CD8  3C 60 80 60 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80604108@ha */
/* 80603CDC  38 63 41 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80604108@l */
/* 80603CE0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80603CE4  38 03 00 0C */	addi r0, r3, 0xc
/* 80603CE8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80603CEC  38 03 00 18 */	addi r0, r3, 0x18
/* 80603CF0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80603CF4  38 7C 00 14 */	addi r3, r28, 0x14
/* 80603CF8  4B A7 51 71 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80603CFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80603D00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80603D04  90 1F 08 C4 */	stw r0, 0x8c4(r31)
/* 80603D08  38 7F 08 C8 */	addi r3, r31, 0x8c8
/* 80603D0C  4B A7 FA 55 */	bl __ct__10dCcD_GSttsFv
/* 80603D10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80603D14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80603D18  90 7F 08 C4 */	stw r3, 0x8c4(r31)
/* 80603D1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80603D20  90 1F 08 C8 */	stw r0, 0x8c8(r31)
/* 80603D24  3B 7F 08 E8 */	addi r27, r31, 0x8e8
/* 80603D28  7F 63 DB 78 */	mr r3, r27
/* 80603D2C  4B A7 FC FD */	bl __ct__12dCcD_GObjInfFv
/* 80603D30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80603D34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80603D38  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80603D3C  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806040FC@ha */
/* 80603D40  38 03 40 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806040FC@l */
/* 80603D44  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80603D48  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x806040F0@ha */
/* 80603D4C  38 03 40 F0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806040F0@l */
/* 80603D50  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80603D54  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80603D58  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80603D5C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80603D60  3B C3 00 58 */	addi r30, r3, 0x58
/* 80603D64  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80603D68  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80603D6C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80603D70  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80603D74  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80603D78  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80603D7C  3B 83 00 84 */	addi r28, r3, 0x84
/* 80603D80  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80603D84  3B 7F 0A 20 */	addi r27, r31, 0xa20
/* 80603D88  7F 63 DB 78 */	mr r3, r27
/* 80603D8C  4B A7 FC 9D */	bl __ct__12dCcD_GObjInfFv
/* 80603D90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80603D94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80603D98  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80603D9C  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806040FC@ha */
/* 80603DA0  38 03 40 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806040FC@l */
/* 80603DA4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80603DA8  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x806040F0@ha */
/* 80603DAC  38 03 40 F0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806040F0@l */
/* 80603DB0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80603DB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80603DB8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80603DBC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80603DC0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80603DC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80603DC8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80603DCC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80603DD0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80603DD4  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80603DD8  3B 7F 0B 58 */	addi r27, r31, 0xb58
/* 80603DDC  7F 63 DB 78 */	mr r3, r27
/* 80603DE0  4B A7 FC 49 */	bl __ct__12dCcD_GObjInfFv
/* 80603DE4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80603DE8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80603DEC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80603DF0  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806040FC@ha */
/* 80603DF4  38 03 40 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806040FC@l */
/* 80603DF8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80603DFC  3C 60 80 60 */	lis r3, __vt__8cM3dGCyl@ha /* 0x806040E4@ha */
/* 80603E00  38 03 40 E4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x806040E4@l */
/* 80603E04  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80603E08  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80603E0C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80603E10  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80603E14  38 03 00 58 */	addi r0, r3, 0x58
/* 80603E18  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80603E1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80603E20  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80603E24  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80603E28  38 03 00 2C */	addi r0, r3, 0x2c
/* 80603E2C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80603E30  38 03 00 84 */	addi r0, r3, 0x84
/* 80603E34  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80603E38  7F E3 FB 78 */	mr r3, r31
/* 80603E3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80603E40  4B D5 E3 E1 */	bl _restgpr_27
/* 80603E44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80603E48  7C 08 03 A6 */	mtlr r0
/* 80603E4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80603E50  4E 80 00 20 */	blr 
