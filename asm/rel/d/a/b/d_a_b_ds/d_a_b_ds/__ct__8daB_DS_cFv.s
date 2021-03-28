lbl_805DC1E8:
/* 805DC1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DC1EC  7C 08 02 A6 */	mflr r0
/* 805DC1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DC1F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC1F8  4B D8 5F DC */	b _savegpr_27
/* 805DC1FC  7C 7C 1B 78 */	mr r28, r3
/* 805DC200  4B A3 C9 64 */	b __ct__10fopAc_ac_cFv
/* 805DC204  38 7C 05 DC */	addi r3, r28, 0x5dc
/* 805DC208  4B CE 4D 5C */	b __ct__15Z2CreatureEnemyFv
/* 805DC20C  38 7C 07 60 */	addi r3, r28, 0x760
/* 805DC210  3C 80 80 5E */	lis r4, __ct__4cXyzFv@ha
/* 805DC214  38 84 C8 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 805DC218  3C A0 80 5E */	lis r5, __dt__4cXyzFv@ha
/* 805DC21C  38 A5 C9 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 805DC220  38 C0 00 0C */	li r6, 0xc
/* 805DC224  38 E0 00 02 */	li r7, 2
/* 805DC228  4B D8 5B 38 */	b __construct_array
/* 805DC22C  38 7C 07 78 */	addi r3, r28, 0x778
/* 805DC230  3C 80 80 5E */	lis r4, __ct__4cXyzFv@ha
/* 805DC234  38 84 C8 30 */	addi r4, r4, __ct__4cXyzFv@l
/* 805DC238  3C A0 80 5E */	lis r5, __dt__4cXyzFv@ha
/* 805DC23C  38 A5 C9 68 */	addi r5, r5, __dt__4cXyzFv@l
/* 805DC240  38 C0 00 0C */	li r6, 0xc
/* 805DC244  38 E0 00 02 */	li r7, 2
/* 805DC248  4B D8 5B 18 */	b __construct_array
/* 805DC24C  38 7C 08 70 */	addi r3, r28, 0x870
/* 805DC250  4B A9 9C 5C */	b __ct__12dBgS_AcchCirFv
/* 805DC254  3B BC 08 B0 */	addi r29, r28, 0x8b0
/* 805DC258  7F A3 EB 78 */	mr r3, r29
/* 805DC25C  4B A9 9E 44 */	b __ct__9dBgS_AcchFv
/* 805DC260  3C 60 80 5E */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805DC264  38 63 DA 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805DC268  90 7D 00 10 */	stw r3, 0x10(r29)
/* 805DC26C  38 03 00 0C */	addi r0, r3, 0xc
/* 805DC270  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805DC274  38 03 00 18 */	addi r0, r3, 0x18
/* 805DC278  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805DC27C  38 7D 00 14 */	addi r3, r29, 0x14
/* 805DC280  4B A9 CB E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 805DC284  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805DC288  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805DC28C  90 1C 0A A0 */	stw r0, 0xaa0(r28)
/* 805DC290  38 7C 0A A4 */	addi r3, r28, 0xaa4
/* 805DC294  4B AA 74 CC */	b __ct__10dCcD_GSttsFv
/* 805DC298  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805DC29C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805DC2A0  90 7C 0A A0 */	stw r3, 0xaa0(r28)
/* 805DC2A4  38 03 00 20 */	addi r0, r3, 0x20
/* 805DC2A8  90 1C 0A A4 */	stw r0, 0xaa4(r28)
/* 805DC2AC  3B 7C 0A C4 */	addi r27, r28, 0xac4
/* 805DC2B0  7F 63 DB 78 */	mr r3, r27
/* 805DC2B4  4B AA 77 74 */	b __ct__12dCcD_GObjInfFv
/* 805DC2B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC2BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC2C0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC2C4  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC2C8  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC2CC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805DC2D0  3C 60 80 5E */	lis r3, __vt__8cM3dGSph@ha
/* 805DC2D4  38 03 DA 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805DC2D8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805DC2DC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805DC2E0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805DC2E4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805DC2E8  3B A3 00 58 */	addi r29, r3, 0x58
/* 805DC2EC  93 BB 01 34 */	stw r29, 0x134(r27)
/* 805DC2F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805DC2F4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805DC2F8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 805DC2FC  3B C3 00 2C */	addi r30, r3, 0x2c
/* 805DC300  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805DC304  3B E3 00 84 */	addi r31, r3, 0x84
/* 805DC308  93 FB 01 34 */	stw r31, 0x134(r27)
/* 805DC30C  38 7C 0B FC */	addi r3, r28, 0xbfc
/* 805DC310  3C 80 80 5E */	lis r4, __ct__8dCcD_SphFv@ha
/* 805DC314  38 84 C5 14 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805DC318  3C A0 80 5E */	lis r5, __dt__8dCcD_SphFv@ha
/* 805DC31C  38 A5 C5 98 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805DC320  38 C0 01 38 */	li r6, 0x138
/* 805DC324  38 E0 00 05 */	li r7, 5
/* 805DC328  4B D8 5A 38 */	b __construct_array
/* 805DC32C  3B 7C 12 14 */	addi r27, r28, 0x1214
/* 805DC330  7F 63 DB 78 */	mr r3, r27
/* 805DC334  4B AA 76 F4 */	b __ct__12dCcD_GObjInfFv
/* 805DC338  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC33C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC340  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC344  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC348  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC34C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805DC350  3C 60 80 5E */	lis r3, __vt__8cM3dGSph@ha
/* 805DC354  38 03 DA 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805DC358  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805DC35C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805DC360  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 805DC364  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC368  93 BB 01 34 */	stw r29, 0x134(r27)
/* 805DC36C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805DC370  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 805DC374  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 805DC378  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805DC37C  93 FB 01 34 */	stw r31, 0x134(r27)
/* 805DC380  38 7C 13 4C */	addi r3, r28, 0x134c
/* 805DC384  3C 80 80 5E */	lis r4, __ct__8dCcD_SphFv@ha
/* 805DC388  38 84 C5 14 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805DC38C  3C A0 80 5E */	lis r5, __dt__8dCcD_SphFv@ha
/* 805DC390  38 A5 C5 98 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805DC394  38 C0 01 38 */	li r6, 0x138
/* 805DC398  38 E0 00 12 */	li r7, 0x12
/* 805DC39C  4B D8 59 C4 */	b __construct_array
/* 805DC3A0  3B 7C 29 3C */	addi r27, r28, 0x293c
/* 805DC3A4  7F 63 DB 78 */	mr r3, r27
/* 805DC3A8  4B AA 76 80 */	b __ct__12dCcD_GObjInfFv
/* 805DC3AC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC3B0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC3B4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC3B8  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC3BC  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC3C0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805DC3C4  3C 60 80 5E */	lis r3, __vt__8cM3dGCyl@ha
/* 805DC3C8  38 03 DA 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805DC3CC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805DC3D0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805DC3D4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805DC3D8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805DC3DC  3B E3 00 58 */	addi r31, r3, 0x58
/* 805DC3E0  93 FB 01 38 */	stw r31, 0x138(r27)
/* 805DC3E4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805DC3E8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 805DC3EC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 805DC3F0  3B C3 00 2C */	addi r30, r3, 0x2c
/* 805DC3F4  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805DC3F8  3B A3 00 84 */	addi r29, r3, 0x84
/* 805DC3FC  93 BB 01 38 */	stw r29, 0x138(r27)
/* 805DC400  3B 7C 2A 78 */	addi r27, r28, 0x2a78
/* 805DC404  7F 63 DB 78 */	mr r3, r27
/* 805DC408  4B AA 76 20 */	b __ct__12dCcD_GObjInfFv
/* 805DC40C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC410  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC414  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC418  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC41C  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC420  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805DC424  3C 60 80 5E */	lis r3, __vt__8cM3dGCyl@ha
/* 805DC428  38 03 DA 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805DC42C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805DC430  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805DC434  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 805DC438  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC43C  93 FB 01 38 */	stw r31, 0x138(r27)
/* 805DC440  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805DC444  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 805DC448  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 805DC44C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805DC450  93 BB 01 38 */	stw r29, 0x138(r27)
/* 805DC454  3B 7C 2B B4 */	addi r27, r28, 0x2bb4
/* 805DC458  7F 63 DB 78 */	mr r3, r27
/* 805DC45C  4B AA 75 CC */	b __ct__12dCcD_GObjInfFv
/* 805DC460  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805DC464  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805DC468  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC46C  3C 60 80 5E */	lis r3, __vt__8cM3dGAab@ha
/* 805DC470  38 03 DA 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805DC474  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805DC478  3C 60 80 5E */	lis r3, __vt__8cM3dGCyl@ha
/* 805DC47C  38 03 DA 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805DC480  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805DC484  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805DC488  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 805DC48C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805DC490  93 FB 01 38 */	stw r31, 0x138(r27)
/* 805DC494  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805DC498  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 805DC49C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 805DC4A0  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805DC4A4  93 BB 01 38 */	stw r29, 0x138(r27)
/* 805DC4A8  38 7C 2E DC */	addi r3, r28, 0x2edc
/* 805DC4AC  4B C6 DA 54 */	b __ct__10dMsgFlow_cFv
/* 805DC4B0  7F 83 E3 78 */	mr r3, r28
/* 805DC4B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DC4B8  4B D8 5D 68 */	b _restgpr_27
/* 805DC4BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DC4C0  7C 08 03 A6 */	mtlr r0
/* 805DC4C4  38 21 00 20 */	addi r1, r1, 0x20
/* 805DC4C8  4E 80 00 20 */	blr 
