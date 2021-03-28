lbl_805F38E4:
/* 805F38E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805F38E8  7C 08 02 A6 */	mflr r0
/* 805F38EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805F38F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805F38F4  4B D6 E8 E0 */	b _savegpr_27
/* 805F38F8  7C 7C 1B 78 */	mr r28, r3
/* 805F38FC  4B A2 52 68 */	b __ct__10fopAc_ac_cFv
/* 805F3900  38 7C 05 E0 */	addi r3, r28, 0x5e0
/* 805F3904  4B CC D6 60 */	b __ct__15Z2CreatureEnemyFv
/* 805F3908  38 7C 06 84 */	addi r3, r28, 0x684
/* 805F390C  4B CC AF 38 */	b __ct__16Z2SoundObjSimpleFv
/* 805F3910  38 7C 07 48 */	addi r3, r28, 0x748
/* 805F3914  4B A8 25 98 */	b __ct__12dBgS_AcchCirFv
/* 805F3918  3B BC 07 88 */	addi r29, r28, 0x788
/* 805F391C  7F A3 EB 78 */	mr r3, r29
/* 805F3920  4B A8 27 80 */	b __ct__9dBgS_AcchFv
/* 805F3924  3C 60 80 5F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805F3928  38 63 47 40 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805F392C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 805F3930  38 03 00 0C */	addi r0, r3, 0xc
/* 805F3934  90 1D 00 14 */	stw r0, 0x14(r29)
/* 805F3938  38 03 00 18 */	addi r0, r3, 0x18
/* 805F393C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 805F3940  38 7D 00 14 */	addi r3, r29, 0x14
/* 805F3944  4B A8 55 24 */	b SetObj__16dBgS_PolyPassChkFv
/* 805F3948  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805F394C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805F3950  90 1C 09 78 */	stw r0, 0x978(r28)
/* 805F3954  38 7C 09 7C */	addi r3, r28, 0x97c
/* 805F3958  4B A8 FE 08 */	b __ct__10dCcD_GSttsFv
/* 805F395C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805F3960  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805F3964  90 7C 09 78 */	stw r3, 0x978(r28)
/* 805F3968  38 03 00 20 */	addi r0, r3, 0x20
/* 805F396C  90 1C 09 7C */	stw r0, 0x97c(r28)
/* 805F3970  3B 7C 09 9C */	addi r27, r28, 0x99c
/* 805F3974  7F 63 DB 78 */	mr r3, r27
/* 805F3978  4B A9 00 B0 */	b __ct__12dCcD_GObjInfFv
/* 805F397C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805F3980  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805F3984  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805F3988  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805F398C  38 03 47 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805F3990  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805F3994  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805F3998  38 03 47 28 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805F399C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805F39A0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805F39A4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805F39A8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805F39AC  3B E3 00 58 */	addi r31, r3, 0x58
/* 805F39B0  93 FB 01 34 */	stw r31, 0x134(r27)
/* 805F39B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805F39B8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805F39BC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 805F39C0  3B C3 00 2C */	addi r30, r3, 0x2c
/* 805F39C4  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805F39C8  3B A3 00 84 */	addi r29, r3, 0x84
/* 805F39CC  93 BB 01 34 */	stw r29, 0x134(r27)
/* 805F39D0  38 7C 0A D4 */	addi r3, r28, 0xad4
/* 805F39D4  3C 80 80 5F */	lis r4, __ct__8dCcD_SphFv@ha
/* 805F39D8  38 84 3B 00 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805F39DC  3C A0 80 5F */	lis r5, __dt__8dCcD_SphFv@ha
/* 805F39E0  38 A5 3B 84 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805F39E4  38 C0 01 38 */	li r6, 0x138
/* 805F39E8  38 E0 00 02 */	li r7, 2
/* 805F39EC  4B D6 E3 74 */	b __construct_array
/* 805F39F0  38 7C 0D 44 */	addi r3, r28, 0xd44
/* 805F39F4  3C 80 80 5F */	lis r4, __ct__8dCcD_SphFv@ha
/* 805F39F8  38 84 3B 00 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805F39FC  3C A0 80 5F */	lis r5, __dt__8dCcD_SphFv@ha
/* 805F3A00  38 A5 3B 84 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805F3A04  38 C0 01 38 */	li r6, 0x138
/* 805F3A08  38 E0 00 02 */	li r7, 2
/* 805F3A0C  4B D6 E3 54 */	b __construct_array
/* 805F3A10  38 7C 0F B4 */	addi r3, r28, 0xfb4
/* 805F3A14  3C 80 80 5F */	lis r4, __ct__8dCcD_SphFv@ha
/* 805F3A18  38 84 3B 00 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805F3A1C  3C A0 80 5F */	lis r5, __dt__8dCcD_SphFv@ha
/* 805F3A20  38 A5 3B 84 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805F3A24  38 C0 01 38 */	li r6, 0x138
/* 805F3A28  38 E0 00 08 */	li r7, 8
/* 805F3A2C  4B D6 E3 34 */	b __construct_array
/* 805F3A30  3B 7C 19 74 */	addi r27, r28, 0x1974
/* 805F3A34  7F 63 DB 78 */	mr r3, r27
/* 805F3A38  4B A8 FF F0 */	b __ct__12dCcD_GObjInfFv
/* 805F3A3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805F3A40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805F3A44  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805F3A48  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805F3A4C  38 03 47 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805F3A50  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805F3A54  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805F3A58  38 03 47 28 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805F3A5C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805F3A60  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805F3A64  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 805F3A68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805F3A6C  93 FB 01 34 */	stw r31, 0x134(r27)
/* 805F3A70  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805F3A74  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 805F3A78  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 805F3A7C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 805F3A80  93 BB 01 34 */	stw r29, 0x134(r27)
/* 805F3A84  38 7C 1A E8 */	addi r3, r28, 0x1ae8
/* 805F3A88  3C 80 80 5F */	lis r4, __ct__9b_gm_footFv@ha
/* 805F3A8C  38 84 3A FC */	addi r4, r4, __ct__9b_gm_footFv@l
/* 805F3A90  3C A0 80 5F */	lis r5, __dt__9b_gm_footFv@ha
/* 805F3A94  38 A5 3A C0 */	addi r5, r5, __dt__9b_gm_footFv@l
/* 805F3A98  38 C0 00 28 */	li r6, 0x28
/* 805F3A9C  38 E0 00 0A */	li r7, 0xa
/* 805F3AA0  4B D6 E2 C0 */	b __construct_array
/* 805F3AA4  7F 83 E3 78 */	mr r3, r28
/* 805F3AA8  39 61 00 20 */	addi r11, r1, 0x20
/* 805F3AAC  4B D6 E7 74 */	b _restgpr_27
/* 805F3AB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F3AB4  7C 08 03 A6 */	mtlr r0
/* 805F3AB8  38 21 00 20 */	addi r1, r1, 0x20
/* 805F3ABC  4E 80 00 20 */	blr 
