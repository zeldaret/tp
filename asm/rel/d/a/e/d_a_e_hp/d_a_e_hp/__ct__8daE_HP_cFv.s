lbl_806E9900:
/* 806E9900  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E9904  7C 08 02 A6 */	mflr r0
/* 806E9908  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E990C  39 61 00 20 */	addi r11, r1, 0x20
/* 806E9910  4B C7 88 C4 */	b _savegpr_27
/* 806E9914  7C 7F 1B 78 */	mr r31, r3
/* 806E9918  4B 92 F2 4C */	b __ct__10fopAc_ac_cFv
/* 806E991C  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806E9920  4B BD 76 44 */	b __ct__15Z2CreatureEnemyFv
/* 806E9924  38 7F 06 6C */	addi r3, r31, 0x66c
/* 806E9928  4B BD 76 3C */	b __ct__15Z2CreatureEnemyFv
/* 806E992C  38 7F 07 AC */	addi r3, r31, 0x7ac
/* 806E9930  4B 98 C5 7C */	b __ct__12dBgS_AcchCirFv
/* 806E9934  3B 9F 07 EC */	addi r28, r31, 0x7ec
/* 806E9938  7F 83 E3 78 */	mr r3, r28
/* 806E993C  4B 98 C7 64 */	b __ct__9dBgS_AcchFv
/* 806E9940  3C 60 80 6F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806E9944  38 63 A4 A0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806E9948  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806E994C  38 03 00 0C */	addi r0, r3, 0xc
/* 806E9950  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806E9954  38 03 00 18 */	addi r0, r3, 0x18
/* 806E9958  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806E995C  38 7C 00 14 */	addi r3, r28, 0x14
/* 806E9960  4B 98 F5 08 */	b SetObj__16dBgS_PolyPassChkFv
/* 806E9964  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806E9968  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806E996C  90 1F 09 DC */	stw r0, 0x9dc(r31)
/* 806E9970  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 806E9974  4B 99 9D EC */	b __ct__10dCcD_GSttsFv
/* 806E9978  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806E997C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806E9980  90 7F 09 DC */	stw r3, 0x9dc(r31)
/* 806E9984  38 03 00 20 */	addi r0, r3, 0x20
/* 806E9988  90 1F 09 E0 */	stw r0, 0x9e0(r31)
/* 806E998C  3B 7F 0A 00 */	addi r27, r31, 0xa00
/* 806E9990  7F 63 DB 78 */	mr r3, r27
/* 806E9994  4B 99 A0 94 */	b __ct__12dCcD_GObjInfFv
/* 806E9998  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806E999C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806E99A0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806E99A4  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806E99A8  38 03 A4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806E99AC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806E99B0  3C 60 80 6F */	lis r3, __vt__8cM3dGCyl@ha
/* 806E99B4  38 03 A4 88 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806E99B8  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806E99BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 806E99C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 806E99C4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806E99C8  3B C3 00 58 */	addi r30, r3, 0x58
/* 806E99CC  93 DB 01 38 */	stw r30, 0x138(r27)
/* 806E99D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 806E99D4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 806E99D8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806E99DC  3B A3 00 2C */	addi r29, r3, 0x2c
/* 806E99E0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 806E99E4  3B 83 00 84 */	addi r28, r3, 0x84
/* 806E99E8  93 9B 01 38 */	stw r28, 0x138(r27)
/* 806E99EC  3B 7F 0B 3C */	addi r27, r31, 0xb3c
/* 806E99F0  7F 63 DB 78 */	mr r3, r27
/* 806E99F4  4B 99 A0 34 */	b __ct__12dCcD_GObjInfFv
/* 806E99F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806E99FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806E9A00  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806E9A04  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806E9A08  38 03 A4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806E9A0C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806E9A10  3C 60 80 6F */	lis r3, __vt__8cM3dGCyl@ha
/* 806E9A14  38 03 A4 88 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806E9A18  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806E9A1C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 806E9A20  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 806E9A24  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806E9A28  93 DB 01 38 */	stw r30, 0x138(r27)
/* 806E9A2C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 806E9A30  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 806E9A34  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806E9A38  93 BB 01 20 */	stw r29, 0x120(r27)
/* 806E9A3C  93 9B 01 38 */	stw r28, 0x138(r27)
/* 806E9A40  3B 7F 0C 78 */	addi r27, r31, 0xc78
/* 806E9A44  7F 63 DB 78 */	mr r3, r27
/* 806E9A48  4B 99 9F E0 */	b __ct__12dCcD_GObjInfFv
/* 806E9A4C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806E9A50  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806E9A54  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806E9A58  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806E9A5C  38 03 A4 94 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806E9A60  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806E9A64  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806E9A68  38 03 A4 7C */	addi r0, r3, __vt__8cM3dGSph@l
/* 806E9A6C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806E9A70  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806E9A74  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806E9A78  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806E9A7C  38 03 00 58 */	addi r0, r3, 0x58
/* 806E9A80  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806E9A84  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806E9A88  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806E9A8C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806E9A90  38 03 00 2C */	addi r0, r3, 0x2c
/* 806E9A94  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806E9A98  38 03 00 84 */	addi r0, r3, 0x84
/* 806E9A9C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806E9AA0  7F E3 FB 78 */	mr r3, r31
/* 806E9AA4  39 61 00 20 */	addi r11, r1, 0x20
/* 806E9AA8  4B C7 87 78 */	b _restgpr_27
/* 806E9AAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E9AB0  7C 08 03 A6 */	mtlr r0
/* 806E9AB4  38 21 00 20 */	addi r1, r1, 0x20
/* 806E9AB8  4E 80 00 20 */	blr 
