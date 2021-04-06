lbl_80797CE0:
/* 80797CE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80797CE4  7C 08 02 A6 */	mflr r0
/* 80797CE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80797CEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80797CF0  4B BC A4 E5 */	bl _savegpr_27
/* 80797CF4  7C 7F 1B 78 */	mr r31, r3
/* 80797CF8  4B 88 0E 6D */	bl __ct__10fopAc_ac_cFv
/* 80797CFC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80797D00  4B B2 92 65 */	bl __ct__15Z2CreatureEnemyFv
/* 80797D04  38 7F 06 60 */	addi r3, r31, 0x660
/* 80797D08  4B B2 6B 3D */	bl __ct__16Z2SoundObjSimpleFv
/* 80797D0C  38 7F 08 08 */	addi r3, r31, 0x808
/* 80797D10  3C 80 80 7A */	lis r4, __ct__5csXyzFv@ha /* 0x8079809C@ha */
/* 80797D14  38 84 80 9C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8079809C@l */
/* 80797D18  3C A0 80 7A */	lis r5, __dt__5csXyzFv@ha /* 0x80798590@ha */
/* 80797D1C  38 A5 85 90 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80798590@l */
/* 80797D20  38 C0 00 06 */	li r6, 6
/* 80797D24  38 E0 00 1E */	li r7, 0x1e
/* 80797D28  4B BC A0 39 */	bl __construct_array
/* 80797D2C  38 7F 08 BC */	addi r3, r31, 0x8bc
/* 80797D30  3C 80 80 7A */	lis r4, __ct__5csXyzFv@ha /* 0x8079809C@ha */
/* 80797D34  38 84 80 9C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8079809C@l */
/* 80797D38  3C A0 80 7A */	lis r5, __dt__5csXyzFv@ha /* 0x80798590@ha */
/* 80797D3C  38 A5 85 90 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80798590@l */
/* 80797D40  38 C0 00 06 */	li r6, 6
/* 80797D44  38 E0 00 1E */	li r7, 0x1e
/* 80797D48  4B BC A0 19 */	bl __construct_array
/* 80797D4C  38 7F 0A 20 */	addi r3, r31, 0xa20
/* 80797D50  4B 8D E1 5D */	bl __ct__12dBgS_AcchCirFv
/* 80797D54  3B 9F 0A 60 */	addi r28, r31, 0xa60
/* 80797D58  7F 83 E3 78 */	mr r3, r28
/* 80797D5C  4B 8D E3 45 */	bl __ct__9dBgS_AcchFv
/* 80797D60  3C 60 80 7A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80798944@ha */
/* 80797D64  38 63 89 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80798944@l */
/* 80797D68  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80797D6C  3B C3 00 0C */	addi r30, r3, 0xc
/* 80797D70  93 DC 00 14 */	stw r30, 0x14(r28)
/* 80797D74  3B A3 00 18 */	addi r29, r3, 0x18
/* 80797D78  93 BC 00 24 */	stw r29, 0x24(r28)
/* 80797D7C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80797D80  4B 8E 10 E9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80797D84  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 80797D88  4B 8D E1 25 */	bl __ct__12dBgS_AcchCirFv
/* 80797D8C  3B 9F 0C 78 */	addi r28, r31, 0xc78
/* 80797D90  7F 83 E3 78 */	mr r3, r28
/* 80797D94  4B 8D E3 0D */	bl __ct__9dBgS_AcchFv
/* 80797D98  3C 60 80 7A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80798944@ha */
/* 80797D9C  38 03 89 44 */	addi r0, r3, __vt__12dBgS_ObjAcch@l /* 0x80798944@l */
/* 80797DA0  90 1C 00 10 */	stw r0, 0x10(r28)
/* 80797DA4  93 DC 00 14 */	stw r30, 0x14(r28)
/* 80797DA8  93 BC 00 24 */	stw r29, 0x24(r28)
/* 80797DAC  38 7C 00 14 */	addi r3, r28, 0x14
/* 80797DB0  4B 8E 10 B9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80797DB4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80797DB8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80797DBC  90 1F 0E 68 */	stw r0, 0xe68(r31)
/* 80797DC0  38 7F 0E 6C */	addi r3, r31, 0xe6c
/* 80797DC4  4B 8E B9 9D */	bl __ct__10dCcD_GSttsFv
/* 80797DC8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80797DCC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80797DD0  90 7F 0E 68 */	stw r3, 0xe68(r31)
/* 80797DD4  3B A3 00 20 */	addi r29, r3, 0x20
/* 80797DD8  93 BF 0E 6C */	stw r29, 0xe6c(r31)
/* 80797DDC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80797DE0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80797DE4  90 1F 0E A4 */	stw r0, 0xea4(r31)
/* 80797DE8  38 7F 0E A8 */	addi r3, r31, 0xea8
/* 80797DEC  4B 8E B9 75 */	bl __ct__10dCcD_GSttsFv
/* 80797DF0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80797DF4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80797DF8  90 1F 0E A4 */	stw r0, 0xea4(r31)
/* 80797DFC  93 BF 0E A8 */	stw r29, 0xea8(r31)
/* 80797E00  3B 7F 0E C8 */	addi r27, r31, 0xec8
/* 80797E04  7F 63 DB 78 */	mr r3, r27
/* 80797E08  4B 8E BC 21 */	bl __ct__12dCcD_GObjInfFv
/* 80797E0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80797E10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80797E14  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80797E18  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x80798938@ha */
/* 80797E1C  38 03 89 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80798938@l */
/* 80797E20  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80797E24  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x8079892C@ha */
/* 80797E28  38 03 89 2C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8079892C@l */
/* 80797E2C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80797E30  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80797E34  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80797E38  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80797E3C  3B A3 00 58 */	addi r29, r3, 0x58
/* 80797E40  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80797E44  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80797E48  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80797E4C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80797E50  3B C3 00 2C */	addi r30, r3, 0x2c
/* 80797E54  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80797E58  3B 83 00 84 */	addi r28, r3, 0x84
/* 80797E5C  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80797E60  3B 7F 10 00 */	addi r27, r31, 0x1000
/* 80797E64  7F 63 DB 78 */	mr r3, r27
/* 80797E68  4B 8E BB C1 */	bl __ct__12dCcD_GObjInfFv
/* 80797E6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80797E70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80797E74  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80797E78  3C 60 80 7A */	lis r3, __vt__8cM3dGAab@ha /* 0x80798938@ha */
/* 80797E7C  38 03 89 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80798938@l */
/* 80797E80  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80797E84  3C 60 80 7A */	lis r3, __vt__8cM3dGSph@ha /* 0x8079892C@ha */
/* 80797E88  38 03 89 2C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8079892C@l */
/* 80797E8C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80797E90  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80797E94  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80797E98  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80797E9C  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80797EA0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80797EA4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80797EA8  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80797EAC  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80797EB0  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80797EB4  7F E3 FB 78 */	mr r3, r31
/* 80797EB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80797EBC  4B BC A3 65 */	bl _restgpr_27
/* 80797EC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80797EC4  7C 08 03 A6 */	mtlr r0
/* 80797EC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80797ECC  4E 80 00 20 */	blr 
