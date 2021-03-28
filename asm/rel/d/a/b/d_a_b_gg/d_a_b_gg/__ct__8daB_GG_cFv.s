lbl_805EC424:
/* 805EC424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EC428  7C 08 02 A6 */	mflr r0
/* 805EC42C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EC430  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC434  4B D7 5D A0 */	b _savegpr_27
/* 805EC438  7C 7F 1B 78 */	mr r31, r3
/* 805EC43C  4B A2 C7 28 */	b __ct__10fopAc_ac_cFv
/* 805EC440  3B 7F 06 D8 */	addi r27, r31, 0x6d8
/* 805EC444  7F 63 DB 78 */	mr r3, r27
/* 805EC448  4B A9 75 E0 */	b __ct__12dCcD_GObjInfFv
/* 805EC44C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805EC450  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805EC454  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805EC458  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805EC45C  38 03 D6 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805EC460  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805EC464  3C 60 80 5F */	lis r3, __vt__8cM3dGCyl@ha
/* 805EC468  38 03 D6 84 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805EC46C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805EC470  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805EC474  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805EC478  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805EC47C  3B C3 00 58 */	addi r30, r3, 0x58
/* 805EC480  93 DB 01 38 */	stw r30, 0x138(r27)
/* 805EC484  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805EC488  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 805EC48C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 805EC490  3B A3 00 2C */	addi r29, r3, 0x2c
/* 805EC494  93 BB 01 20 */	stw r29, 0x120(r27)
/* 805EC498  3B 83 00 84 */	addi r28, r3, 0x84
/* 805EC49C  93 9B 01 38 */	stw r28, 0x138(r27)
/* 805EC4A0  38 7F 08 14 */	addi r3, r31, 0x814
/* 805EC4A4  3C 80 80 5F */	lis r4, __ct__8dCcD_SphFv@ha
/* 805EC4A8  38 84 C8 48 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 805EC4AC  3C A0 80 5F */	lis r5, __dt__8dCcD_SphFv@ha
/* 805EC4B0  38 A5 C7 7C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 805EC4B4  38 C0 01 38 */	li r6, 0x138
/* 805EC4B8  38 E0 00 03 */	li r7, 3
/* 805EC4BC  4B D7 58 A4 */	b __construct_array
/* 805EC4C0  3B 7F 0B BC */	addi r27, r31, 0xbbc
/* 805EC4C4  7F 63 DB 78 */	mr r3, r27
/* 805EC4C8  4B A9 75 60 */	b __ct__12dCcD_GObjInfFv
/* 805EC4CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805EC4D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805EC4D4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805EC4D8  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805EC4DC  38 03 D6 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805EC4E0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805EC4E4  3C 60 80 5F */	lis r3, __vt__8cM3dGCyl@ha
/* 805EC4E8  38 03 D6 84 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805EC4EC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 805EC4F0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805EC4F4  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 805EC4F8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805EC4FC  93 DB 01 38 */	stw r30, 0x138(r27)
/* 805EC500  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805EC504  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 805EC508  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 805EC50C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 805EC510  93 9B 01 38 */	stw r28, 0x138(r27)
/* 805EC514  3B 7F 0C F8 */	addi r27, r31, 0xcf8
/* 805EC518  7F 63 DB 78 */	mr r3, r27
/* 805EC51C  4B A9 75 0C */	b __ct__12dCcD_GObjInfFv
/* 805EC520  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805EC524  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805EC528  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805EC52C  3C 60 80 5F */	lis r3, __vt__8cM3dGAab@ha
/* 805EC530  38 03 D6 90 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805EC534  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 805EC538  3C 60 80 5F */	lis r3, __vt__8cM3dGSph@ha
/* 805EC53C  38 03 D6 78 */	addi r0, r3, __vt__8cM3dGSph@l
/* 805EC540  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805EC544  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805EC548  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805EC54C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 805EC550  38 03 00 58 */	addi r0, r3, 0x58
/* 805EC554  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805EC558  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805EC55C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805EC560  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 805EC564  38 03 00 2C */	addi r0, r3, 0x2c
/* 805EC568  90 1B 01 20 */	stw r0, 0x120(r27)
/* 805EC56C  38 03 00 84 */	addi r0, r3, 0x84
/* 805EC570  90 1B 01 34 */	stw r0, 0x134(r27)
/* 805EC574  38 7F 0E 4C */	addi r3, r31, 0xe4c
/* 805EC578  4B CD 49 EC */	b __ct__15Z2CreatureEnemyFv
/* 805EC57C  38 7F 0E F0 */	addi r3, r31, 0xef0
/* 805EC580  4B A8 99 2C */	b __ct__12dBgS_AcchCirFv
/* 805EC584  3B 7F 0F 30 */	addi r27, r31, 0xf30
/* 805EC588  7F 63 DB 78 */	mr r3, r27
/* 805EC58C  4B A8 9B 14 */	b __ct__9dBgS_AcchFv
/* 805EC590  3C 60 80 5F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805EC594  38 63 D6 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805EC598  90 7B 00 10 */	stw r3, 0x10(r27)
/* 805EC59C  38 03 00 0C */	addi r0, r3, 0xc
/* 805EC5A0  90 1B 00 14 */	stw r0, 0x14(r27)
/* 805EC5A4  38 03 00 18 */	addi r0, r3, 0x18
/* 805EC5A8  90 1B 00 24 */	stw r0, 0x24(r27)
/* 805EC5AC  38 7B 00 14 */	addi r3, r27, 0x14
/* 805EC5B0  4B A8 C8 B8 */	b SetObj__16dBgS_PolyPassChkFv
/* 805EC5B4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805EC5B8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805EC5BC  90 1F 11 20 */	stw r0, 0x1120(r31)
/* 805EC5C0  38 7F 11 24 */	addi r3, r31, 0x1124
/* 805EC5C4  4B A9 71 9C */	b __ct__10dCcD_GSttsFv
/* 805EC5C8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805EC5CC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805EC5D0  90 7F 11 20 */	stw r3, 0x1120(r31)
/* 805EC5D4  38 03 00 20 */	addi r0, r3, 0x20
/* 805EC5D8  90 1F 11 24 */	stw r0, 0x1124(r31)
/* 805EC5DC  7F E3 FB 78 */	mr r3, r31
/* 805EC5E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC5E4  4B D7 5C 3C */	b _restgpr_27
/* 805EC5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EC5EC  7C 08 03 A6 */	mtlr r0
/* 805EC5F0  38 21 00 20 */	addi r1, r1, 0x20
/* 805EC5F4  4E 80 00 20 */	blr 
