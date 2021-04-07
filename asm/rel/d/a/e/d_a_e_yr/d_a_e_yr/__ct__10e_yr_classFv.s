lbl_80827D64:
/* 80827D64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80827D68  7C 08 02 A6 */	mflr r0
/* 80827D6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80827D70  39 61 00 20 */	addi r11, r1, 0x20
/* 80827D74  4B B3 A4 61 */	bl _savegpr_27
/* 80827D78  7C 7C 1B 78 */	mr r28, r3
/* 80827D7C  4B 7F 0D E9 */	bl __ct__10fopAc_ac_cFv
/* 80827D80  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 80827D84  4B A9 91 E1 */	bl __ct__15Z2CreatureEnemyFv
/* 80827D88  38 7C 07 0C */	addi r3, r28, 0x70c
/* 80827D8C  4B 84 E1 21 */	bl __ct__12dBgS_AcchCirFv
/* 80827D90  3B BC 07 4C */	addi r29, r28, 0x74c
/* 80827D94  7F A3 EB 78 */	mr r3, r29
/* 80827D98  4B 84 E3 09 */	bl __ct__9dBgS_AcchFv
/* 80827D9C  3C 60 80 83 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80828D5C@ha */
/* 80827DA0  38 63 8D 5C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80828D5C@l */
/* 80827DA4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80827DA8  38 03 00 0C */	addi r0, r3, 0xc
/* 80827DAC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80827DB0  38 03 00 18 */	addi r0, r3, 0x18
/* 80827DB4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80827DB8  38 7D 00 14 */	addi r3, r29, 0x14
/* 80827DBC  4B 85 10 AD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80827DC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80827DC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80827DC8  90 1C 09 44 */	stw r0, 0x944(r28)
/* 80827DCC  38 7C 09 48 */	addi r3, r28, 0x948
/* 80827DD0  4B 85 B9 91 */	bl __ct__10dCcD_GSttsFv
/* 80827DD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80827DD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80827DDC  90 7C 09 44 */	stw r3, 0x944(r28)
/* 80827DE0  38 03 00 20 */	addi r0, r3, 0x20
/* 80827DE4  90 1C 09 48 */	stw r0, 0x948(r28)
/* 80827DE8  3B 7C 09 68 */	addi r27, r28, 0x968
/* 80827DEC  7F 63 DB 78 */	mr r3, r27
/* 80827DF0  4B 85 BC 39 */	bl __ct__12dCcD_GObjInfFv
/* 80827DF4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80827DF8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80827DFC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827E00  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha /* 0x80828D50@ha */
/* 80827E04  38 03 8D 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80828D50@l */
/* 80827E08  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80827E0C  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha /* 0x80828D44@ha */
/* 80827E10  38 03 8D 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80828D44@l */
/* 80827E14  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80827E18  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80827E1C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80827E20  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80827E24  3B E3 00 58 */	addi r31, r3, 0x58
/* 80827E28  93 FB 01 34 */	stw r31, 0x134(r27)
/* 80827E2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80827E30  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80827E34  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80827E38  3B C3 00 2C */	addi r30, r3, 0x2c
/* 80827E3C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80827E40  3B A3 00 84 */	addi r29, r3, 0x84
/* 80827E44  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80827E48  3B 7C 0A A0 */	addi r27, r28, 0xaa0
/* 80827E4C  7F 63 DB 78 */	mr r3, r27
/* 80827E50  4B 85 BB D9 */	bl __ct__12dCcD_GObjInfFv
/* 80827E54  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80827E58  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80827E5C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827E60  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha /* 0x80828D50@ha */
/* 80827E64  38 03 8D 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80828D50@l */
/* 80827E68  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80827E6C  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha /* 0x80828D44@ha */
/* 80827E70  38 03 8D 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80828D44@l */
/* 80827E74  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80827E78  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80827E7C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80827E80  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827E84  93 FB 01 34 */	stw r31, 0x134(r27)
/* 80827E88  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80827E8C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80827E90  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80827E94  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80827E98  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80827E9C  3B 7C 0B D8 */	addi r27, r28, 0xbd8
/* 80827EA0  7F 63 DB 78 */	mr r3, r27
/* 80827EA4  4B 85 BB 85 */	bl __ct__12dCcD_GObjInfFv
/* 80827EA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80827EAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80827EB0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827EB4  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha /* 0x80828D50@ha */
/* 80827EB8  38 03 8D 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80828D50@l */
/* 80827EBC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80827EC0  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha /* 0x80828D44@ha */
/* 80827EC4  38 03 8D 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80828D44@l */
/* 80827EC8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80827ECC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80827ED0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80827ED4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827ED8  93 FB 01 34 */	stw r31, 0x134(r27)
/* 80827EDC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80827EE0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80827EE4  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80827EE8  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80827EEC  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80827EF0  3B 7C 0D 10 */	addi r27, r28, 0xd10
/* 80827EF4  7F 63 DB 78 */	mr r3, r27
/* 80827EF8  4B 85 BB 31 */	bl __ct__12dCcD_GObjInfFv
/* 80827EFC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80827F00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80827F04  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827F08  3C 60 80 83 */	lis r3, __vt__8cM3dGAab@ha /* 0x80828D50@ha */
/* 80827F0C  38 03 8D 50 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80828D50@l */
/* 80827F10  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80827F14  3C 60 80 83 */	lis r3, __vt__8cM3dGSph@ha /* 0x80828D44@ha */
/* 80827F18  38 03 8D 44 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80828D44@l */
/* 80827F1C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80827F20  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80827F24  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80827F28  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80827F2C  93 FB 01 34 */	stw r31, 0x134(r27)
/* 80827F30  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80827F34  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80827F38  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80827F3C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80827F40  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80827F44  38 7C 0E 6C */	addi r3, r28, 0xe6c
/* 80827F48  3C 80 80 82 */	lis r4, __ct__4cXyzFv@ha /* 0x80827F80@ha */
/* 80827F4C  38 84 7F 80 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80827F80@l */
/* 80827F50  3C A0 80 83 */	lis r5, __dt__4cXyzFv@ha /* 0x80828800@ha */
/* 80827F54  38 A5 88 00 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80828800@l */
/* 80827F58  38 C0 00 0C */	li r6, 0xc
/* 80827F5C  38 E0 00 02 */	li r7, 2
/* 80827F60  4B B3 9E 01 */	bl __construct_array
/* 80827F64  7F 83 E3 78 */	mr r3, r28
/* 80827F68  39 61 00 20 */	addi r11, r1, 0x20
/* 80827F6C  4B B3 A2 B5 */	bl _restgpr_27
/* 80827F70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80827F74  7C 08 03 A6 */	mtlr r0
/* 80827F78  38 21 00 20 */	addi r1, r1, 0x20
/* 80827F7C  4E 80 00 20 */	blr 
