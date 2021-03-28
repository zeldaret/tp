lbl_80756900:
/* 80756900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80756904  7C 08 02 A6 */	mflr r0
/* 80756908  90 01 00 24 */	stw r0, 0x24(r1)
/* 8075690C  39 61 00 20 */	addi r11, r1, 0x20
/* 80756910  4B C0 B8 C4 */	b _savegpr_27
/* 80756914  7C 7F 1B 78 */	mr r31, r3
/* 80756918  4B 8C 22 4C */	b __ct__10fopAc_ac_cFv
/* 8075691C  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80756920  4B B6 A6 44 */	b __ct__15Z2CreatureEnemyFv
/* 80756924  38 7F 06 9C */	addi r3, r31, 0x69c
/* 80756928  4B B6 A6 3C */	b __ct__15Z2CreatureEnemyFv
/* 8075692C  38 7F 07 E6 */	addi r3, r31, 0x7e6
/* 80756930  3C 80 80 75 */	lis r4, __ct__5csXyzFv@ha
/* 80756934  38 84 6D 8C */	addi r4, r4, __ct__5csXyzFv@l
/* 80756938  3C A0 80 75 */	lis r5, __dt__5csXyzFv@ha
/* 8075693C  38 A5 72 90 */	addi r5, r5, __dt__5csXyzFv@l
/* 80756940  38 C0 00 06 */	li r6, 6
/* 80756944  38 E0 00 04 */	li r7, 4
/* 80756948  4B C0 B4 18 */	b __construct_array
/* 8075694C  38 7F 08 50 */	addi r3, r31, 0x850
/* 80756950  4B 91 F5 5C */	b __ct__12dBgS_AcchCirFv
/* 80756954  3B 9F 08 90 */	addi r28, r31, 0x890
/* 80756958  7F 83 E3 78 */	mr r3, r28
/* 8075695C  4B 91 F7 44 */	b __ct__9dBgS_AcchFv
/* 80756960  3C 60 80 75 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80756964  38 63 7D D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80756968  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8075696C  38 03 00 0C */	addi r0, r3, 0xc
/* 80756970  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80756974  38 03 00 18 */	addi r0, r3, 0x18
/* 80756978  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8075697C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80756980  4B 92 24 E8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80756984  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80756988  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8075698C  90 1F 0A 84 */	stw r0, 0xa84(r31)
/* 80756990  38 7F 0A 88 */	addi r3, r31, 0xa88
/* 80756994  4B 92 CD CC */	b __ct__10dCcD_GSttsFv
/* 80756998  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8075699C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807569A0  90 7F 0A 84 */	stw r3, 0xa84(r31)
/* 807569A4  38 03 00 20 */	addi r0, r3, 0x20
/* 807569A8  90 1F 0A 88 */	stw r0, 0xa88(r31)
/* 807569AC  3B 9F 0A A8 */	addi r28, r31, 0xaa8
/* 807569B0  7F 83 E3 78 */	mr r3, r28
/* 807569B4  4B 92 D0 74 */	b __ct__12dCcD_GObjInfFv
/* 807569B8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807569BC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807569C0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807569C4  3C 60 80 75 */	lis r3, __vt__8cM3dGAab@ha
/* 807569C8  38 03 7D CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 807569CC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807569D0  3C 60 80 75 */	lis r3, __vt__8cM3dGCyl@ha
/* 807569D4  38 03 7D C0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 807569D8  90 1C 01 38 */	stw r0, 0x138(r28)
/* 807569DC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 807569E0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 807569E4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807569E8  38 03 00 58 */	addi r0, r3, 0x58
/* 807569EC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 807569F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 807569F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 807569F8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807569FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80756A00  90 1C 01 20 */	stw r0, 0x120(r28)
/* 80756A04  38 03 00 84 */	addi r0, r3, 0x84
/* 80756A08  90 1C 01 38 */	stw r0, 0x138(r28)
/* 80756A0C  3B 7F 0B E4 */	addi r27, r31, 0xbe4
/* 80756A10  7F 63 DB 78 */	mr r3, r27
/* 80756A14  4B 92 D0 14 */	b __ct__12dCcD_GObjInfFv
/* 80756A18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80756A1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80756A20  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80756A24  3C 60 80 75 */	lis r3, __vt__8cM3dGAab@ha
/* 80756A28  38 03 7D CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80756A2C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80756A30  3C 60 80 75 */	lis r3, __vt__8cM3dGSph@ha
/* 80756A34  38 03 7D B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80756A38  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80756A3C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80756A40  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80756A44  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80756A48  3B C3 00 58 */	addi r30, r3, 0x58
/* 80756A4C  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80756A50  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80756A54  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80756A58  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80756A5C  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80756A60  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80756A64  3B 83 00 84 */	addi r28, r3, 0x84
/* 80756A68  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80756A6C  3B 7F 0D 1C */	addi r27, r31, 0xd1c
/* 80756A70  7F 63 DB 78 */	mr r3, r27
/* 80756A74  4B 92 CF B4 */	b __ct__12dCcD_GObjInfFv
/* 80756A78  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80756A7C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80756A80  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80756A84  3C 60 80 75 */	lis r3, __vt__8cM3dGAab@ha
/* 80756A88  38 03 7D CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80756A8C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80756A90  3C 60 80 75 */	lis r3, __vt__8cM3dGSph@ha
/* 80756A94  38 03 7D B4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80756A98  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80756A9C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80756AA0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80756AA4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80756AA8  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80756AAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80756AB0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80756AB4  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80756AB8  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80756ABC  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80756AC0  3C 60 80 75 */	lis r3, __vt__18JPAEmitterCallBack@ha
/* 80756AC4  38 03 7D 98 */	addi r0, r3, __vt__18JPAEmitterCallBack@l
/* 80756AC8  90 1F 0E B4 */	stw r0, 0xeb4(r31)
/* 80756ACC  3C 60 80 75 */	lis r3, __vt__18dPa_levelEcallBack@ha
/* 80756AD0  38 03 7D 74 */	addi r0, r3, __vt__18dPa_levelEcallBack@l
/* 80756AD4  90 1F 0E B4 */	stw r0, 0xeb4(r31)
/* 80756AD8  3C 60 80 3B */	lis r3, __vt__22dPa_hermiteEcallBack_c@ha
/* 80756ADC  38 03 83 A0 */	addi r0, r3, __vt__22dPa_hermiteEcallBack_c@l
/* 80756AE0  90 1F 0E B4 */	stw r0, 0xeb4(r31)
/* 80756AE4  7F E3 FB 78 */	mr r3, r31
/* 80756AE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80756AEC  4B C0 B7 34 */	b _restgpr_27
/* 80756AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80756AF4  7C 08 03 A6 */	mtlr r0
/* 80756AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80756AFC  4E 80 00 20 */	blr 
