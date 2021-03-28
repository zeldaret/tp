lbl_806F4E48:
/* 806F4E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F4E4C  7C 08 02 A6 */	mflr r0
/* 806F4E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F4E54  39 61 00 20 */	addi r11, r1, 0x20
/* 806F4E58  4B C6 D3 78 */	b _savegpr_26
/* 806F4E5C  7C 7B 1B 78 */	mr r27, r3
/* 806F4E60  4B 92 3D 04 */	b __ct__10fopAc_ac_cFv
/* 806F4E64  38 7B 05 D8 */	addi r3, r27, 0x5d8
/* 806F4E68  4B BC C0 FC */	b __ct__15Z2CreatureEnemyFv
/* 806F4E6C  38 7B 07 40 */	addi r3, r27, 0x740
/* 806F4E70  4B 98 10 3C */	b __ct__12dBgS_AcchCirFv
/* 806F4E74  3B 9B 07 80 */	addi r28, r27, 0x780
/* 806F4E78  7F 83 E3 78 */	mr r3, r28
/* 806F4E7C  4B 98 12 24 */	b __ct__9dBgS_AcchFv
/* 806F4E80  3C 60 80 6F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806F4E84  38 63 58 E0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806F4E88  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806F4E8C  38 03 00 0C */	addi r0, r3, 0xc
/* 806F4E90  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806F4E94  38 03 00 18 */	addi r0, r3, 0x18
/* 806F4E98  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806F4E9C  38 7C 00 14 */	addi r3, r28, 0x14
/* 806F4EA0  4B 98 3F C8 */	b SetObj__16dBgS_PolyPassChkFv
/* 806F4EA4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806F4EA8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806F4EAC  90 1B 09 70 */	stw r0, 0x970(r27)
/* 806F4EB0  38 7B 09 74 */	addi r3, r27, 0x974
/* 806F4EB4  4B 98 E8 AC */	b __ct__10dCcD_GSttsFv
/* 806F4EB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806F4EBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806F4EC0  90 7B 09 70 */	stw r3, 0x970(r27)
/* 806F4EC4  3B E3 00 20 */	addi r31, r3, 0x20
/* 806F4EC8  93 FB 09 74 */	stw r31, 0x974(r27)
/* 806F4ECC  38 7B 09 94 */	addi r3, r27, 0x994
/* 806F4ED0  3C 80 80 6F */	lis r4, __ct__8dCcD_SphFv@ha
/* 806F4ED4  38 84 52 64 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 806F4ED8  3C A0 80 6F */	lis r5, __dt__8dCcD_SphFv@ha
/* 806F4EDC  38 A5 51 98 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 806F4EE0  38 C0 01 38 */	li r6, 0x138
/* 806F4EE4  38 E0 00 03 */	li r7, 3
/* 806F4EE8  4B C6 CE 78 */	b __construct_array
/* 806F4EEC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806F4EF0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806F4EF4  90 1B 0D 54 */	stw r0, 0xd54(r27)
/* 806F4EF8  38 7B 0D 58 */	addi r3, r27, 0xd58
/* 806F4EFC  4B 98 E8 64 */	b __ct__10dCcD_GSttsFv
/* 806F4F00  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806F4F04  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 806F4F08  90 1B 0D 54 */	stw r0, 0xd54(r27)
/* 806F4F0C  93 FB 0D 58 */	stw r31, 0xd58(r27)
/* 806F4F10  3B 5B 0D 78 */	addi r26, r27, 0xd78
/* 806F4F14  7F 43 D3 78 */	mr r3, r26
/* 806F4F18  4B 98 EB 10 */	b __ct__12dCcD_GObjInfFv
/* 806F4F1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F4F20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F4F24  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F4F28  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F4F2C  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F4F30  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806F4F34  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F4F38  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F4F3C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806F4F40  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F4F44  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806F4F48  90 7A 01 20 */	stw r3, 0x120(r26)
/* 806F4F4C  3B C3 00 58 */	addi r30, r3, 0x58
/* 806F4F50  93 DA 01 34 */	stw r30, 0x134(r26)
/* 806F4F54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F4F58  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806F4F5C  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 806F4F60  3B A3 00 2C */	addi r29, r3, 0x2c
/* 806F4F64  93 BA 01 20 */	stw r29, 0x120(r26)
/* 806F4F68  3B 83 00 84 */	addi r28, r3, 0x84
/* 806F4F6C  93 9A 01 34 */	stw r28, 0x134(r26)
/* 806F4F70  3B 5B 0E D4 */	addi r26, r27, 0xed4
/* 806F4F74  7F 43 D3 78 */	mr r3, r26
/* 806F4F78  4B 98 EA B0 */	b __ct__12dCcD_GObjInfFv
/* 806F4F7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F4F80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F4F84  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F4F88  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F4F8C  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F4F90  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806F4F94  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F4F98  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F4F9C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806F4FA0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F4FA4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806F4FA8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F4FAC  93 DA 01 34 */	stw r30, 0x134(r26)
/* 806F4FB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F4FB4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806F4FB8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 806F4FBC  93 BA 01 20 */	stw r29, 0x120(r26)
/* 806F4FC0  93 9A 01 34 */	stw r28, 0x134(r26)
/* 806F4FC4  3B 5B 10 0C */	addi r26, r27, 0x100c
/* 806F4FC8  7F 43 D3 78 */	mr r3, r26
/* 806F4FCC  4B 98 EA 5C */	b __ct__12dCcD_GObjInfFv
/* 806F4FD0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F4FD4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F4FD8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F4FDC  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F4FE0  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F4FE4  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806F4FE8  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F4FEC  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F4FF0  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806F4FF4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F4FF8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806F4FFC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F5000  93 DA 01 34 */	stw r30, 0x134(r26)
/* 806F5004  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F5008  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806F500C  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 806F5010  93 BA 01 20 */	stw r29, 0x120(r26)
/* 806F5014  93 9A 01 34 */	stw r28, 0x134(r26)
/* 806F5018  3B 5B 11 44 */	addi r26, r27, 0x1144
/* 806F501C  7F 43 D3 78 */	mr r3, r26
/* 806F5020  4B 98 EA 08 */	b __ct__12dCcD_GObjInfFv
/* 806F5024  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F5028  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F502C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F5030  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F5034  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F5038  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806F503C  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F5040  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F5044  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806F5048  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F504C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806F5050  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F5054  93 DA 01 34 */	stw r30, 0x134(r26)
/* 806F5058  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F505C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806F5060  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 806F5064  93 BA 01 20 */	stw r29, 0x120(r26)
/* 806F5068  93 9A 01 34 */	stw r28, 0x134(r26)
/* 806F506C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806F5070  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806F5074  90 1B 12 94 */	stw r0, 0x1294(r27)
/* 806F5078  38 7B 12 98 */	addi r3, r27, 0x1298
/* 806F507C  4B 98 E6 E4 */	b __ct__10dCcD_GSttsFv
/* 806F5080  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806F5084  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 806F5088  90 1B 12 94 */	stw r0, 0x1294(r27)
/* 806F508C  93 FB 12 98 */	stw r31, 0x1298(r27)
/* 806F5090  3B 5B 12 B8 */	addi r26, r27, 0x12b8
/* 806F5094  7F 43 D3 78 */	mr r3, r26
/* 806F5098  4B 98 E9 90 */	b __ct__12dCcD_GObjInfFv
/* 806F509C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F50A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F50A4  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F50A8  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F50AC  38 03 58 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F50B0  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 806F50B4  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F50B8  38 03 58 C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F50BC  90 1A 01 34 */	stw r0, 0x134(r26)
/* 806F50C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F50C4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806F50C8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 806F50CC  93 DA 01 34 */	stw r30, 0x134(r26)
/* 806F50D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F50D4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806F50D8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 806F50DC  93 BA 01 20 */	stw r29, 0x120(r26)
/* 806F50E0  93 9A 01 34 */	stw r28, 0x134(r26)
/* 806F50E4  38 7B 13 F0 */	addi r3, r27, 0x13f0
/* 806F50E8  4B BC 97 5C */	b __ct__16Z2SoundObjSimpleFv
/* 806F50EC  7F 63 DB 78 */	mr r3, r27
/* 806F50F0  39 61 00 20 */	addi r11, r1, 0x20
/* 806F50F4  4B C6 D1 28 */	b _restgpr_26
/* 806F50F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F50FC  7C 08 03 A6 */	mtlr r0
/* 806F5100  38 21 00 20 */	addi r1, r1, 0x20
/* 806F5104  4E 80 00 20 */	blr 
