lbl_807A5CF4:
/* 807A5CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807A5CF8  7C 08 02 A6 */	mflr r0
/* 807A5CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A5D00  39 61 00 20 */	addi r11, r1, 0x20
/* 807A5D04  4B BB C4 D1 */	bl _savegpr_27
/* 807A5D08  7C 7C 1B 78 */	mr r28, r3
/* 807A5D0C  4B 87 2E 59 */	bl __ct__10fopAc_ac_cFv
/* 807A5D10  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 807A5D14  4B B1 B2 51 */	bl __ct__15Z2CreatureEnemyFv
/* 807A5D18  38 7C 06 E0 */	addi r3, r28, 0x6e0
/* 807A5D1C  3C 80 80 7A */	lis r4, __ct__4cXyzFv@ha /* 0x807A61B0@ha */
/* 807A5D20  38 84 61 B0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x807A61B0@l */
/* 807A5D24  3C A0 80 7A */	lis r5, __dt__4cXyzFv@ha /* 0x807A67B8@ha */
/* 807A5D28  38 A5 67 B8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x807A67B8@l */
/* 807A5D2C  38 C0 00 0C */	li r6, 0xc
/* 807A5D30  38 E0 00 03 */	li r7, 3
/* 807A5D34  4B BB C0 2D */	bl __construct_array
/* 807A5D38  3C 60 80 7A */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x807A6D44@ha */
/* 807A5D3C  38 83 6D 44 */	addi r4, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x807A6D44@l */
/* 807A5D40  90 9C 07 28 */	stw r4, 0x728(r28)
/* 807A5D44  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha /* 0x803A325C@ha */
/* 807A5D48  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l /* 0x803A325C@l */
/* 807A5D4C  90 1C 07 28 */	stw r0, 0x728(r28)
/* 807A5D50  90 9C 07 68 */	stw r4, 0x768(r28)
/* 807A5D54  90 1C 07 68 */	stw r0, 0x768(r28)
/* 807A5D58  38 7C 08 00 */	addi r3, r28, 0x800
/* 807A5D5C  4B 8D 01 51 */	bl __ct__12dBgS_AcchCirFv
/* 807A5D60  3B BC 08 40 */	addi r29, r28, 0x840
/* 807A5D64  7F A3 EB 78 */	mr r3, r29
/* 807A5D68  4B 8D 03 39 */	bl __ct__9dBgS_AcchFv
/* 807A5D6C  3C 60 80 7A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x807A6D20@ha */
/* 807A5D70  38 63 6D 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x807A6D20@l */
/* 807A5D74  90 7D 00 10 */	stw r3, 0x10(r29)
/* 807A5D78  38 03 00 0C */	addi r0, r3, 0xc
/* 807A5D7C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 807A5D80  38 03 00 18 */	addi r0, r3, 0x18
/* 807A5D84  90 1D 00 24 */	stw r0, 0x24(r29)
/* 807A5D88  38 7D 00 14 */	addi r3, r29, 0x14
/* 807A5D8C  4B 8D 30 DD */	bl SetObj__16dBgS_PolyPassChkFv
/* 807A5D90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 807A5D94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 807A5D98  90 1C 0A 34 */	stw r0, 0xa34(r28)
/* 807A5D9C  38 7C 0A 38 */	addi r3, r28, 0xa38
/* 807A5DA0  4B 8D D9 C1 */	bl __ct__10dCcD_GSttsFv
/* 807A5DA4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 807A5DA8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 807A5DAC  90 7C 0A 34 */	stw r3, 0xa34(r28)
/* 807A5DB0  38 03 00 20 */	addi r0, r3, 0x20
/* 807A5DB4  90 1C 0A 38 */	stw r0, 0xa38(r28)
/* 807A5DB8  3B 7C 0A 5C */	addi r27, r28, 0xa5c
/* 807A5DBC  7F 63 DB 78 */	mr r3, r27
/* 807A5DC0  4B 8D DC 69 */	bl __ct__12dCcD_GObjInfFv
/* 807A5DC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807A5DC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807A5DCC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5DD0  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x807A6D14@ha */
/* 807A5DD4  38 03 6D 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807A6D14@l */
/* 807A5DD8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807A5DDC  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x807A6D08@ha */
/* 807A5DE0  38 03 6D 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807A6D08@l */
/* 807A5DE4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807A5DE8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807A5DEC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807A5DF0  90 7B 01 20 */	stw r3, 0x120(r27)
/* 807A5DF4  3B E3 00 58 */	addi r31, r3, 0x58
/* 807A5DF8  93 FB 01 34 */	stw r31, 0x134(r27)
/* 807A5DFC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807A5E00  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807A5E04  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 807A5E08  3B C3 00 2C */	addi r30, r3, 0x2c
/* 807A5E0C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 807A5E10  3B A3 00 84 */	addi r29, r3, 0x84
/* 807A5E14  93 BB 01 34 */	stw r29, 0x134(r27)
/* 807A5E18  3B 7C 0B 98 */	addi r27, r28, 0xb98
/* 807A5E1C  7F 63 DB 78 */	mr r3, r27
/* 807A5E20  4B 8D DC 09 */	bl __ct__12dCcD_GObjInfFv
/* 807A5E24  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807A5E28  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807A5E2C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5E30  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x807A6D14@ha */
/* 807A5E34  38 03 6D 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807A6D14@l */
/* 807A5E38  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807A5E3C  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x807A6D08@ha */
/* 807A5E40  38 03 6D 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807A6D08@l */
/* 807A5E44  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807A5E48  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807A5E4C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807A5E50  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5E54  93 FB 01 34 */	stw r31, 0x134(r27)
/* 807A5E58  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807A5E5C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807A5E60  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 807A5E64  93 DB 01 20 */	stw r30, 0x120(r27)
/* 807A5E68  93 BB 01 34 */	stw r29, 0x134(r27)
/* 807A5E6C  3B 7C 0C F8 */	addi r27, r28, 0xcf8
/* 807A5E70  7F 63 DB 78 */	mr r3, r27
/* 807A5E74  4B 8D DB B5 */	bl __ct__12dCcD_GObjInfFv
/* 807A5E78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807A5E7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807A5E80  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5E84  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x807A6D14@ha */
/* 807A5E88  38 03 6D 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807A6D14@l */
/* 807A5E8C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807A5E90  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x807A6D08@ha */
/* 807A5E94  38 03 6D 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x807A6D08@l */
/* 807A5E98  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807A5E9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807A5EA0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807A5EA4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5EA8  93 FB 01 34 */	stw r31, 0x134(r27)
/* 807A5EAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807A5EB0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807A5EB4  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 807A5EB8  93 DB 01 20 */	stw r30, 0x120(r27)
/* 807A5EBC  93 BB 01 34 */	stw r29, 0x134(r27)
/* 807A5EC0  3B 7C 0E 30 */	addi r27, r28, 0xe30
/* 807A5EC4  7F 63 DB 78 */	mr r3, r27
/* 807A5EC8  4B 8D DB 61 */	bl __ct__12dCcD_GObjInfFv
/* 807A5ECC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807A5ED0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807A5ED4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5ED8  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x807A6D14@ha */
/* 807A5EDC  38 03 6D 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x807A6D14@l */
/* 807A5EE0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807A5EE4  3C 60 80 7A */	lis r3, __vt__8cM3dGCyl@ha /* 0x807A6CFC@ha */
/* 807A5EE8  38 03 6C FC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x807A6CFC@l */
/* 807A5EEC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 807A5EF0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 807A5EF4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 807A5EF8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 807A5EFC  38 03 00 58 */	addi r0, r3, 0x58
/* 807A5F00  90 1B 01 38 */	stw r0, 0x138(r27)
/* 807A5F04  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 807A5F08  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 807A5F0C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 807A5F10  38 03 00 2C */	addi r0, r3, 0x2c
/* 807A5F14  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807A5F18  38 03 00 84 */	addi r0, r3, 0x84
/* 807A5F1C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 807A5F20  38 7C 0F 94 */	addi r3, r28, 0xf94
/* 807A5F24  3C 80 80 7A */	lis r4, __ct__7st_footFv@ha /* 0x807A5F98@ha */
/* 807A5F28  38 84 5F 98 */	addi r4, r4, __ct__7st_footFv@l /* 0x807A5F98@l */
/* 807A5F2C  3C A0 80 7A */	lis r5, __dt__7st_footFv@ha /* 0x807A5F5C@ha */
/* 807A5F30  38 A5 5F 5C */	addi r5, r5, __dt__7st_footFv@l /* 0x807A5F5C@l */
/* 807A5F34  38 C0 00 18 */	li r6, 0x18
/* 807A5F38  38 E0 00 08 */	li r7, 8
/* 807A5F3C  4B BB BE 25 */	bl __construct_array
/* 807A5F40  7F 83 E3 78 */	mr r3, r28
/* 807A5F44  39 61 00 20 */	addi r11, r1, 0x20
/* 807A5F48  4B BB C2 D9 */	bl _restgpr_27
/* 807A5F4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807A5F50  7C 08 03 A6 */	mtlr r0
/* 807A5F54  38 21 00 20 */	addi r1, r1, 0x20
/* 807A5F58  4E 80 00 20 */	blr 
