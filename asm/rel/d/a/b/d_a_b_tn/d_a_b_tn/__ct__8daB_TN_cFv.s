lbl_8062D2F0:
/* 8062D2F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8062D2F4  7C 08 02 A6 */	mflr r0
/* 8062D2F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062D2FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D300  4B D3 4E D5 */	bl _savegpr_27
/* 8062D304  7C 7F 1B 78 */	mr r31, r3
/* 8062D308  4B 9E B8 5D */	bl __ct__10fopAc_ac_cFv
/* 8062D30C  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062D310  4B C9 3C 55 */	bl __ct__15Z2CreatureEnemyFv
/* 8062D314  38 7F 07 5C */	addi r3, r31, 0x75c
/* 8062D318  3C 80 80 63 */	lis r4, __ct__4cXyzFv@ha /* 0x8062D920@ha */
/* 8062D31C  38 84 D9 20 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8062D920@l */
/* 8062D320  3C A0 80 63 */	lis r5, __dt__4cXyzFv@ha /* 0x8062E5CC@ha */
/* 8062D324  38 A5 E5 CC */	addi r5, r5, __dt__4cXyzFv@l /* 0x8062E5CC@l */
/* 8062D328  38 C0 00 0C */	li r6, 0xc
/* 8062D32C  38 E0 00 10 */	li r7, 0x10
/* 8062D330  4B D3 4A 31 */	bl __construct_array
/* 8062D334  38 7F 08 1C */	addi r3, r31, 0x81c
/* 8062D338  3C 80 80 63 */	lis r4, __ct__4cXyzFv@ha /* 0x8062D920@ha */
/* 8062D33C  38 84 D9 20 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8062D920@l */
/* 8062D340  3C A0 80 63 */	lis r5, __dt__4cXyzFv@ha /* 0x8062E5CC@ha */
/* 8062D344  38 A5 E5 CC */	addi r5, r5, __dt__4cXyzFv@l /* 0x8062E5CC@l */
/* 8062D348  38 C0 00 0C */	li r6, 0xc
/* 8062D34C  38 E0 00 10 */	li r7, 0x10
/* 8062D350  4B D3 4A 11 */	bl __construct_array
/* 8062D354  38 7F 08 DC */	addi r3, r31, 0x8dc
/* 8062D358  3C 80 80 63 */	lis r4, __ct__4cXyzFv@ha /* 0x8062D920@ha */
/* 8062D35C  38 84 D9 20 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8062D920@l */
/* 8062D360  3C A0 80 63 */	lis r5, __dt__4cXyzFv@ha /* 0x8062E5CC@ha */
/* 8062D364  38 A5 E5 CC */	addi r5, r5, __dt__4cXyzFv@l /* 0x8062E5CC@l */
/* 8062D368  38 C0 00 0C */	li r6, 0xc
/* 8062D36C  38 E0 00 10 */	li r7, 0x10
/* 8062D370  4B D3 49 F1 */	bl __construct_array
/* 8062D374  38 7F 09 9C */	addi r3, r31, 0x99c
/* 8062D378  3C 80 80 63 */	lis r4, __ct__5csXyzFv@ha /* 0x8062D91C@ha */
/* 8062D37C  38 84 D9 1C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8062D91C@l */
/* 8062D380  3C A0 80 63 */	lis r5, __dt__5csXyzFv@ha /* 0x8062E590@ha */
/* 8062D384  38 A5 E5 90 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8062E590@l */
/* 8062D388  38 C0 00 06 */	li r6, 6
/* 8062D38C  38 E0 00 10 */	li r7, 0x10
/* 8062D390  4B D3 49 D1 */	bl __construct_array
/* 8062D394  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 8062D398  4B A4 8B 15 */	bl __ct__12dBgS_AcchCirFv
/* 8062D39C  3B 9F 0A F8 */	addi r28, r31, 0xaf8
/* 8062D3A0  7F 83 E3 78 */	mr r3, r28
/* 8062D3A4  4B A4 8C FD */	bl __ct__9dBgS_AcchFv
/* 8062D3A8  3C 60 80 63 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8062EF84@ha */
/* 8062D3AC  38 63 EF 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8062EF84@l */
/* 8062D3B0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8062D3B4  38 03 00 0C */	addi r0, r3, 0xc
/* 8062D3B8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8062D3BC  38 03 00 18 */	addi r0, r3, 0x18
/* 8062D3C0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8062D3C4  38 7C 00 14 */	addi r3, r28, 0x14
/* 8062D3C8  4B A4 BA A1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8062D3CC  38 7F 0C D0 */	addi r3, r31, 0xcd0
/* 8062D3D0  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha /* 0x80075EAC@ha */
/* 8062D3D4  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l /* 0x80075EAC@l */
/* 8062D3D8  3C A0 80 63 */	lis r5, __dt__12dBgS_AcchCirFv@ha /* 0x8062D8AC@ha */
/* 8062D3DC  38 A5 D8 AC */	addi r5, r5, __dt__12dBgS_AcchCirFv@l /* 0x8062D8AC@l */
/* 8062D3E0  38 C0 00 40 */	li r6, 0x40
/* 8062D3E4  38 E0 00 10 */	li r7, 0x10
/* 8062D3E8  4B D3 49 79 */	bl __construct_array
/* 8062D3EC  38 7F 10 D0 */	addi r3, r31, 0x10d0
/* 8062D3F0  3C 80 80 63 */	lis r4, __ct__12dBgS_ObjAcchFv@ha /* 0x8062D7E8@ha */
/* 8062D3F4  38 84 D7 E8 */	addi r4, r4, __ct__12dBgS_ObjAcchFv@l /* 0x8062D7E8@l */
/* 8062D3F8  3C A0 80 63 */	lis r5, __dt__12dBgS_ObjAcchFv@ha /* 0x8062D83C@ha */
/* 8062D3FC  38 A5 D8 3C */	addi r5, r5, __dt__12dBgS_ObjAcchFv@l /* 0x8062D83C@l */
/* 8062D400  38 C0 01 D8 */	li r6, 0x1d8
/* 8062D404  38 E0 00 10 */	li r7, 0x10
/* 8062D408  4B D3 49 59 */	bl __construct_array
/* 8062D40C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8062D410  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8062D414  90 1F 2E 68 */	stw r0, 0x2e68(r31)
/* 8062D418  38 7F 2E 6C */	addi r3, r31, 0x2e6c
/* 8062D41C  4B A5 63 45 */	bl __ct__10dCcD_GSttsFv
/* 8062D420  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8062D424  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8062D428  90 7F 2E 68 */	stw r3, 0x2e68(r31)
/* 8062D42C  3B 83 00 20 */	addi r28, r3, 0x20
/* 8062D430  93 9F 2E 6C */	stw r28, 0x2e6c(r31)
/* 8062D434  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8062D438  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8062D43C  90 1F 2E A4 */	stw r0, 0x2ea4(r31)
/* 8062D440  38 7F 2E A8 */	addi r3, r31, 0x2ea8
/* 8062D444  4B A5 63 1D */	bl __ct__10dCcD_GSttsFv
/* 8062D448  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8062D44C  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8062D450  90 1F 2E A4 */	stw r0, 0x2ea4(r31)
/* 8062D454  93 9F 2E A8 */	stw r28, 0x2ea8(r31)
/* 8062D458  38 7F 2E C8 */	addi r3, r31, 0x2ec8
/* 8062D45C  3C 80 80 63 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8062D678@ha */
/* 8062D460  38 84 D6 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8062D678@l */
/* 8062D464  3C A0 80 62 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80622674@ha */
/* 8062D468  38 A5 26 74 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80622674@l */
/* 8062D46C  38 C0 01 38 */	li r6, 0x138
/* 8062D470  38 E0 00 03 */	li r7, 3
/* 8062D474  4B D3 48 ED */	bl __construct_array
/* 8062D478  38 7F 32 70 */	addi r3, r31, 0x3270
/* 8062D47C  3C 80 80 63 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8062D678@ha */
/* 8062D480  38 84 D6 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8062D678@l */
/* 8062D484  3C A0 80 62 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80622674@ha */
/* 8062D488  38 A5 26 74 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80622674@l */
/* 8062D48C  38 C0 01 38 */	li r6, 0x138
/* 8062D490  38 E0 00 03 */	li r7, 3
/* 8062D494  4B D3 48 CD */	bl __construct_array
/* 8062D498  3B 7F 36 18 */	addi r27, r31, 0x3618
/* 8062D49C  7F 63 DB 78 */	mr r3, r27
/* 8062D4A0  4B A5 65 89 */	bl __ct__12dCcD_GObjInfFv
/* 8062D4A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8062D4A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8062D4AC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8062D4B0  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha /* 0x8062EFC0@ha */
/* 8062D4B4  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8062EFC0@l */
/* 8062D4B8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8062D4BC  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha /* 0x8062EFB4@ha */
/* 8062D4C0  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8062EFB4@l */
/* 8062D4C4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8062D4C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8062D4CC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8062D4D0  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8062D4D4  3B C3 00 58 */	addi r30, r3, 0x58
/* 8062D4D8  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8062D4DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8062D4E0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8062D4E4  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8062D4E8  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8062D4EC  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8062D4F0  3B 83 00 84 */	addi r28, r3, 0x84
/* 8062D4F4  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8062D4F8  38 7F 37 50 */	addi r3, r31, 0x3750
/* 8062D4FC  3C 80 80 63 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8062D678@ha */
/* 8062D500  38 84 D6 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8062D678@l */
/* 8062D504  3C A0 80 62 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80622674@ha */
/* 8062D508  38 A5 26 74 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80622674@l */
/* 8062D50C  38 C0 01 38 */	li r6, 0x138
/* 8062D510  38 E0 00 04 */	li r7, 4
/* 8062D514  4B D3 48 4D */	bl __construct_array
/* 8062D518  3B 7F 3C 30 */	addi r27, r31, 0x3c30
/* 8062D51C  7F 63 DB 78 */	mr r3, r27
/* 8062D520  4B A5 65 09 */	bl __ct__12dCcD_GObjInfFv
/* 8062D524  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8062D528  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8062D52C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8062D530  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha /* 0x8062EFC0@ha */
/* 8062D534  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8062EFC0@l */
/* 8062D538  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8062D53C  38 7B 01 24 */	addi r3, r27, 0x124
/* 8062D540  4B C4 1A 49 */	bl __ct__8cM3dGCpsFv
/* 8062D544  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 8062D548  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 8062D54C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8062D550  38 03 00 58 */	addi r0, r3, 0x58
/* 8062D554  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 8062D558  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 8062D55C  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 8062D560  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8062D564  38 03 00 2C */	addi r0, r3, 0x2c
/* 8062D568  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8062D56C  38 03 00 84 */	addi r0, r3, 0x84
/* 8062D570  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 8062D574  3B 7F 3D 74 */	addi r27, r31, 0x3d74
/* 8062D578  7F 63 DB 78 */	mr r3, r27
/* 8062D57C  4B A5 64 AD */	bl __ct__12dCcD_GObjInfFv
/* 8062D580  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8062D584  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8062D588  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8062D58C  3C 60 80 63 */	lis r3, __vt__8cM3dGAab@ha /* 0x8062EFC0@ha */
/* 8062D590  38 03 EF C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8062EFC0@l */
/* 8062D594  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8062D598  3C 60 80 63 */	lis r3, __vt__8cM3dGSph@ha /* 0x8062EFB4@ha */
/* 8062D59C  38 03 EF B4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8062EFB4@l */
/* 8062D5A0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8062D5A4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8062D5A8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8062D5AC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8062D5B0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8062D5B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8062D5B8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8062D5BC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8062D5C0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8062D5C4  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8062D5C8  38 7F 3E DC */	addi r3, r31, 0x3edc
/* 8062D5CC  3C 80 80 63 */	lis r4, __ct__9dCcD_SttsFv@ha /* 0x8062D624@ha */
/* 8062D5D0  38 84 D6 24 */	addi r4, r4, __ct__9dCcD_SttsFv@l /* 0x8062D624@l */
/* 8062D5D4  3C A0 80 63 */	lis r5, __dt__9dCcD_SttsFv@ha /* 0x8062D6FC@ha */
/* 8062D5D8  38 A5 D6 FC */	addi r5, r5, __dt__9dCcD_SttsFv@l /* 0x8062D6FC@l */
/* 8062D5DC  38 C0 00 3C */	li r6, 0x3c
/* 8062D5E0  38 E0 00 10 */	li r7, 0x10
/* 8062D5E4  4B D3 47 7D */	bl __construct_array
/* 8062D5E8  38 7F 42 9C */	addi r3, r31, 0x429c
/* 8062D5EC  3C 80 80 63 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8062D678@ha */
/* 8062D5F0  38 84 D6 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8062D678@l */
/* 8062D5F4  3C A0 80 62 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80622674@ha */
/* 8062D5F8  38 A5 26 74 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80622674@l */
/* 8062D5FC  38 C0 01 38 */	li r6, 0x138
/* 8062D600  38 E0 00 10 */	li r7, 0x10
/* 8062D604  4B D3 47 5D */	bl __construct_array
/* 8062D608  7F E3 FB 78 */	mr r3, r31
/* 8062D60C  39 61 00 20 */	addi r11, r1, 0x20
/* 8062D610  4B D3 4C 11 */	bl _restgpr_27
/* 8062D614  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8062D618  7C 08 03 A6 */	mtlr r0
/* 8062D61C  38 21 00 20 */	addi r1, r1, 0x20
/* 8062D620  4E 80 00 20 */	blr 
