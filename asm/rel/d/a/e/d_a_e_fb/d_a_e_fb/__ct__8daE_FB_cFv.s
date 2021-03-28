lbl_806B8C1C:
/* 806B8C1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B8C20  7C 08 02 A6 */	mflr r0
/* 806B8C24  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B8C28  39 61 00 20 */	addi r11, r1, 0x20
/* 806B8C2C  4B CA 95 A8 */	b _savegpr_27
/* 806B8C30  7C 7C 1B 78 */	mr r28, r3
/* 806B8C34  4B 95 FF 30 */	b __ct__10fopAc_ac_cFv
/* 806B8C38  38 7C 05 C4 */	addi r3, r28, 0x5c4
/* 806B8C3C  4B C0 83 28 */	b __ct__15Z2CreatureEnemyFv
/* 806B8C40  38 7C 06 A4 */	addi r3, r28, 0x6a4
/* 806B8C44  4B 9B D2 68 */	b __ct__12dBgS_AcchCirFv
/* 806B8C48  3B BC 06 E4 */	addi r29, r28, 0x6e4
/* 806B8C4C  7F A3 EB 78 */	mr r3, r29
/* 806B8C50  4B 9B D4 50 */	b __ct__9dBgS_AcchFv
/* 806B8C54  3C 60 80 6C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806B8C58  38 63 91 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806B8C5C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806B8C60  38 03 00 0C */	addi r0, r3, 0xc
/* 806B8C64  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806B8C68  38 03 00 18 */	addi r0, r3, 0x18
/* 806B8C6C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806B8C70  38 7D 00 14 */	addi r3, r29, 0x14
/* 806B8C74  4B 9C 01 F4 */	b SetObj__16dBgS_PolyPassChkFv
/* 806B8C78  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806B8C7C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806B8C80  90 1C 08 D4 */	stw r0, 0x8d4(r28)
/* 806B8C84  38 7C 08 D8 */	addi r3, r28, 0x8d8
/* 806B8C88  4B 9C AA D8 */	b __ct__10dCcD_GSttsFv
/* 806B8C8C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806B8C90  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806B8C94  90 7C 08 D4 */	stw r3, 0x8d4(r28)
/* 806B8C98  38 03 00 20 */	addi r0, r3, 0x20
/* 806B8C9C  90 1C 08 D8 */	stw r0, 0x8d8(r28)
/* 806B8CA0  3B 7C 08 F8 */	addi r27, r28, 0x8f8
/* 806B8CA4  7F 63 DB 78 */	mr r3, r27
/* 806B8CA8  4B 9C AD 80 */	b __ct__12dCcD_GObjInfFv
/* 806B8CAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806B8CB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806B8CB4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806B8CB8  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha
/* 806B8CBC  38 03 91 5C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806B8CC0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806B8CC4  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha
/* 806B8CC8  38 03 91 50 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806B8CCC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806B8CD0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806B8CD4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806B8CD8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806B8CDC  3B E3 00 58 */	addi r31, r3, 0x58
/* 806B8CE0  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806B8CE4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806B8CE8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806B8CEC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806B8CF0  3B C3 00 2C */	addi r30, r3, 0x2c
/* 806B8CF4  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806B8CF8  3B A3 00 84 */	addi r29, r3, 0x84
/* 806B8CFC  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806B8D00  3B 7C 0A 30 */	addi r27, r28, 0xa30
/* 806B8D04  7F 63 DB 78 */	mr r3, r27
/* 806B8D08  4B 9C AD 20 */	b __ct__12dCcD_GObjInfFv
/* 806B8D0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806B8D10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806B8D14  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806B8D18  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha
/* 806B8D1C  38 03 91 5C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806B8D20  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806B8D24  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha
/* 806B8D28  38 03 91 50 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806B8D2C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806B8D30  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806B8D34  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806B8D38  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806B8D3C  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806B8D40  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806B8D44  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806B8D48  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806B8D4C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806B8D50  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806B8D54  3B 7C 0B 68 */	addi r27, r28, 0xb68
/* 806B8D58  7F 63 DB 78 */	mr r3, r27
/* 806B8D5C  4B 9C AC CC */	b __ct__12dCcD_GObjInfFv
/* 806B8D60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806B8D64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806B8D68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806B8D6C  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha
/* 806B8D70  38 03 91 5C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806B8D74  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806B8D78  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha
/* 806B8D7C  38 03 91 50 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806B8D80  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806B8D84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806B8D88  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806B8D8C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806B8D90  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806B8D94  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806B8D98  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806B8D9C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806B8DA0  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806B8DA4  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806B8DA8  7F 83 E3 78 */	mr r3, r28
/* 806B8DAC  39 61 00 20 */	addi r11, r1, 0x20
/* 806B8DB0  4B CA 94 70 */	b _restgpr_27
/* 806B8DB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B8DB8  7C 08 03 A6 */	mtlr r0
/* 806B8DBC  38 21 00 20 */	addi r1, r1, 0x20
/* 806B8DC0  4E 80 00 20 */	blr 
