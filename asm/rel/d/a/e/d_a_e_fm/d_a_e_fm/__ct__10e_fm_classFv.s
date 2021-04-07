lbl_804F9B64:
/* 804F9B64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F9B68  7C 08 02 A6 */	mflr r0
/* 804F9B6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F9B70  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9B74  4B E6 86 61 */	bl _savegpr_27
/* 804F9B78  7C 7C 1B 78 */	mr r28, r3
/* 804F9B7C  4B B1 EF E9 */	bl __ct__10fopAc_ac_cFv
/* 804F9B80  38 7C 06 3C */	addi r3, r28, 0x63c
/* 804F9B84  4B DC 83 D1 */	bl __ct__12Z2CreatureFMFv
/* 804F9B88  38 7C 07 C8 */	addi r3, r28, 0x7c8
/* 804F9B8C  3C 80 80 50 */	lis r4, __ct__4cXyzFv@ha /* 0x804FA38C@ha */
/* 804F9B90  38 84 A3 8C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804FA38C@l */
/* 804F9B94  3C A0 80 4F */	lis r5, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9B98  38 A5 F6 78 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9B9C  38 C0 00 0C */	li r6, 0xc
/* 804F9BA0  38 E0 00 02 */	li r7, 2
/* 804F9BA4  4B E6 81 BD */	bl __construct_array
/* 804F9BA8  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 804F9BAC  3C 80 80 50 */	lis r4, __ct__4cXyzFv@ha /* 0x804FA38C@ha */
/* 804F9BB0  38 84 A3 8C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804FA38C@l */
/* 804F9BB4  3C A0 80 4F */	lis r5, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9BB8  38 A5 F6 78 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9BBC  38 C0 00 0C */	li r6, 0xc
/* 804F9BC0  38 E0 00 02 */	li r7, 2
/* 804F9BC4  4B E6 81 9D */	bl __construct_array
/* 804F9BC8  38 7C 08 0C */	addi r3, r28, 0x80c
/* 804F9BCC  4B B7 C2 E1 */	bl __ct__12dBgS_AcchCirFv
/* 804F9BD0  3B BC 08 4C */	addi r29, r28, 0x84c
/* 804F9BD4  7F A3 EB 78 */	mr r3, r29
/* 804F9BD8  4B B7 C4 C9 */	bl __ct__9dBgS_AcchFv
/* 804F9BDC  3C 60 80 50 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x804FAE14@ha */
/* 804F9BE0  38 63 AE 14 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x804FAE14@l */
/* 804F9BE4  90 7D 00 10 */	stw r3, 0x10(r29)
/* 804F9BE8  38 03 00 0C */	addi r0, r3, 0xc
/* 804F9BEC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 804F9BF0  38 03 00 18 */	addi r0, r3, 0x18
/* 804F9BF4  90 1D 00 24 */	stw r0, 0x24(r29)
/* 804F9BF8  38 7D 00 14 */	addi r3, r29, 0x14
/* 804F9BFC  4B B7 F2 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 804F9C00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804F9C04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804F9C08  90 1C 0A 3C */	stw r0, 0xa3c(r28)
/* 804F9C0C  38 7C 0A 40 */	addi r3, r28, 0xa40
/* 804F9C10  4B B8 9B 51 */	bl __ct__10dCcD_GSttsFv
/* 804F9C14  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804F9C18  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804F9C1C  90 7C 0A 3C */	stw r3, 0xa3c(r28)
/* 804F9C20  3B A3 00 20 */	addi r29, r3, 0x20
/* 804F9C24  93 BC 0A 40 */	stw r29, 0xa40(r28)
/* 804F9C28  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804F9C2C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804F9C30  90 1C 0A 78 */	stw r0, 0xa78(r28)
/* 804F9C34  38 7C 0A 7C */	addi r3, r28, 0xa7c
/* 804F9C38  4B B8 9B 29 */	bl __ct__10dCcD_GSttsFv
/* 804F9C3C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804F9C40  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804F9C44  90 1C 0A 78 */	stw r0, 0xa78(r28)
/* 804F9C48  93 BC 0A 7C */	stw r29, 0xa7c(r28)
/* 804F9C4C  38 7C 0A 9C */	addi r3, r28, 0xa9c
/* 804F9C50  3C 80 80 50 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x804FA1CC@ha */
/* 804F9C54  38 84 A1 CC */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x804FA1CC@l */
/* 804F9C58  3C A0 80 50 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x804FA100@ha */
/* 804F9C5C  38 A5 A1 00 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x804FA100@l */
/* 804F9C60  38 C0 01 38 */	li r6, 0x138
/* 804F9C64  38 E0 00 08 */	li r7, 8
/* 804F9C68  4B E6 80 F9 */	bl __construct_array
/* 804F9C6C  3B 7C 14 5C */	addi r27, r28, 0x145c
/* 804F9C70  7F 63 DB 78 */	mr r3, r27
/* 804F9C74  4B B8 9D B5 */	bl __ct__12dCcD_GObjInfFv
/* 804F9C78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804F9C7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804F9C80  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804F9C84  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x804FAE08@ha */
/* 804F9C88  38 03 AE 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804FAE08@l */
/* 804F9C8C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 804F9C90  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x804FADFC@ha */
/* 804F9C94  38 03 AD FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804FADFC@l */
/* 804F9C98  90 1B 01 34 */	stw r0, 0x134(r27)
/* 804F9C9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804F9CA0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804F9CA4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 804F9CA8  3B E3 00 58 */	addi r31, r3, 0x58
/* 804F9CAC  93 FB 01 34 */	stw r31, 0x134(r27)
/* 804F9CB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804F9CB4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804F9CB8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 804F9CBC  3B C3 00 2C */	addi r30, r3, 0x2c
/* 804F9CC0  93 DB 01 20 */	stw r30, 0x120(r27)
/* 804F9CC4  3B A3 00 84 */	addi r29, r3, 0x84
/* 804F9CC8  93 BB 01 34 */	stw r29, 0x134(r27)
/* 804F9CCC  3B 7C 15 94 */	addi r27, r28, 0x1594
/* 804F9CD0  7F 63 DB 78 */	mr r3, r27
/* 804F9CD4  4B B8 9D 55 */	bl __ct__12dCcD_GObjInfFv
/* 804F9CD8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804F9CDC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804F9CE0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804F9CE4  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x804FAE08@ha */
/* 804F9CE8  38 03 AE 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804FAE08@l */
/* 804F9CEC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 804F9CF0  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x804FADFC@ha */
/* 804F9CF4  38 03 AD FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804FADFC@l */
/* 804F9CF8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 804F9CFC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804F9D00  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804F9D04  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804F9D08  93 FB 01 34 */	stw r31, 0x134(r27)
/* 804F9D0C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804F9D10  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804F9D14  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 804F9D18  93 DB 01 20 */	stw r30, 0x120(r27)
/* 804F9D1C  93 BB 01 34 */	stw r29, 0x134(r27)
/* 804F9D20  3B 7C 16 CC */	addi r27, r28, 0x16cc
/* 804F9D24  7F 63 DB 78 */	mr r3, r27
/* 804F9D28  4B B8 9D 01 */	bl __ct__12dCcD_GObjInfFv
/* 804F9D2C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804F9D30  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804F9D34  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804F9D38  3C 60 80 50 */	lis r3, __vt__8cM3dGAab@ha /* 0x804FAE08@ha */
/* 804F9D3C  38 03 AE 08 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804FAE08@l */
/* 804F9D40  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 804F9D44  3C 60 80 50 */	lis r3, __vt__8cM3dGSph@ha /* 0x804FADFC@ha */
/* 804F9D48  38 03 AD FC */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804FADFC@l */
/* 804F9D4C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 804F9D50  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804F9D54  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804F9D58  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804F9D5C  93 FB 01 34 */	stw r31, 0x134(r27)
/* 804F9D60  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804F9D64  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804F9D68  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 804F9D6C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 804F9D70  93 BB 01 34 */	stw r29, 0x134(r27)
/* 804F9D74  38 7C 18 D0 */	addi r3, r28, 0x18d0
/* 804F9D78  3C 80 80 50 */	lis r4, __ct__4cXyzFv@ha /* 0x804FA38C@ha */
/* 804F9D7C  38 84 A3 8C */	addi r4, r4, __ct__4cXyzFv@l /* 0x804FA38C@l */
/* 804F9D80  3C A0 80 4F */	lis r5, __dt__4cXyzFv@ha /* 0x804EF678@ha */
/* 804F9D84  38 A5 F6 78 */	addi r5, r5, __dt__4cXyzFv@l /* 0x804EF678@l */
/* 804F9D88  38 C0 00 0C */	li r6, 0xc
/* 804F9D8C  38 E0 00 08 */	li r7, 8
/* 804F9D90  4B E6 7F D1 */	bl __construct_array
/* 804F9D94  38 7C 19 90 */	addi r3, r28, 0x1990
/* 804F9D98  3C 80 80 50 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x804FA1CC@ha */
/* 804F9D9C  38 84 A1 CC */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x804FA1CC@l */
/* 804F9DA0  3C A0 80 50 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x804FA100@ha */
/* 804F9DA4  38 A5 A1 00 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x804FA100@l */
/* 804F9DA8  38 C0 01 38 */	li r6, 0x138
/* 804F9DAC  38 E0 00 08 */	li r7, 8
/* 804F9DB0  4B E6 7F B1 */	bl __construct_array
/* 804F9DB4  38 7C 23 BC */	addi r3, r28, 0x23bc
/* 804F9DB8  3C 80 80 50 */	lis r4, __ct__7chain_sFv@ha /* 0x804F9F14@ha */
/* 804F9DBC  38 84 9F 14 */	addi r4, r4, __ct__7chain_sFv@l /* 0x804F9F14@l */
/* 804F9DC0  3C A0 80 50 */	lis r5, __dt__7chain_sFv@ha /* 0x804F9E14@ha */
/* 804F9DC4  38 A5 9E 14 */	addi r5, r5, __dt__7chain_sFv@l /* 0x804F9E14@l */
/* 804F9DC8  38 C0 61 D4 */	li r6, 0x61d4
/* 804F9DCC  38 E0 00 04 */	li r7, 4
/* 804F9DD0  4B E6 7F 91 */	bl __construct_array
/* 804F9DD4  3C 7C 00 02 */	addis r3, r28, 2
/* 804F9DD8  3C 80 80 50 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x804FA1CC@ha */
/* 804F9DDC  38 84 A1 CC */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x804FA1CC@l */
/* 804F9DE0  3C A0 80 50 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x804FA100@ha */
/* 804F9DE4  38 A5 A1 00 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x804FA100@l */
/* 804F9DE8  38 C0 01 38 */	li r6, 0x138
/* 804F9DEC  38 E0 00 04 */	li r7, 4
/* 804F9DF0  38 63 AB 10 */	addi r3, r3, -21744
/* 804F9DF4  4B E6 7F 6D */	bl __construct_array
/* 804F9DF8  7F 83 E3 78 */	mr r3, r28
/* 804F9DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804F9E00  4B E6 84 21 */	bl _restgpr_27
/* 804F9E04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F9E08  7C 08 03 A6 */	mtlr r0
/* 804F9E0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804F9E10  4E 80 00 20 */	blr 
