lbl_806F76B4:
/* 806F76B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F76B8  7C 08 02 A6 */	mflr r0
/* 806F76BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F76C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806F76C4  4B C6 AB 10 */	b _savegpr_27
/* 806F76C8  7C 7F 1B 78 */	mr r31, r3
/* 806F76CC  4B 92 14 98 */	b __ct__10fopAc_ac_cFv
/* 806F76D0  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806F76D4  4B BC 98 90 */	b __ct__15Z2CreatureEnemyFv
/* 806F76D8  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 806F76DC  4B 97 E7 D0 */	b __ct__12dBgS_AcchCirFv
/* 806F76E0  3B 9F 07 04 */	addi r28, r31, 0x704
/* 806F76E4  7F 83 E3 78 */	mr r3, r28
/* 806F76E8  4B 97 E9 B8 */	b __ct__9dBgS_AcchFv
/* 806F76EC  3C 60 80 6F */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 806F76F0  38 63 7D 98 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 806F76F4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806F76F8  38 03 00 0C */	addi r0, r3, 0xc
/* 806F76FC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806F7700  38 03 00 18 */	addi r0, r3, 0x18
/* 806F7704  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806F7708  38 7C 00 14 */	addi r3, r28, 0x14
/* 806F770C  4B 98 17 5C */	b SetObj__16dBgS_PolyPassChkFv
/* 806F7710  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 806F7714  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 806F7718  90 1F 08 F4 */	stw r0, 0x8f4(r31)
/* 806F771C  38 7F 08 F8 */	addi r3, r31, 0x8f8
/* 806F7720  4B 98 C0 40 */	b __ct__10dCcD_GSttsFv
/* 806F7724  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 806F7728  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 806F772C  90 7F 08 F4 */	stw r3, 0x8f4(r31)
/* 806F7730  38 03 00 20 */	addi r0, r3, 0x20
/* 806F7734  90 1F 08 F8 */	stw r0, 0x8f8(r31)
/* 806F7738  3B 7F 09 18 */	addi r27, r31, 0x918
/* 806F773C  7F 63 DB 78 */	mr r3, r27
/* 806F7740  4B 98 C2 E8 */	b __ct__12dCcD_GObjInfFv
/* 806F7744  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F7748  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F774C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806F7750  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F7754  38 03 7D 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F7758  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806F775C  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F7760  38 03 7D 80 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F7764  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806F7768  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F776C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806F7770  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806F7774  3B C3 00 58 */	addi r30, r3, 0x58
/* 806F7778  93 DB 01 34 */	stw r30, 0x134(r27)
/* 806F777C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F7780  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806F7784  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806F7788  3B A3 00 2C */	addi r29, r3, 0x2c
/* 806F778C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 806F7790  3B 83 00 84 */	addi r28, r3, 0x84
/* 806F7794  93 9B 01 34 */	stw r28, 0x134(r27)
/* 806F7798  3B 7F 0A 50 */	addi r27, r31, 0xa50
/* 806F779C  7F 63 DB 78 */	mr r3, r27
/* 806F77A0  4B 98 C2 88 */	b __ct__12dCcD_GObjInfFv
/* 806F77A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F77A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F77AC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806F77B0  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F77B4  38 03 7D 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F77B8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806F77BC  3C 60 80 6F */	lis r3, __vt__8cM3dGSph@ha
/* 806F77C0  38 03 7D 80 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806F77C4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806F77C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806F77CC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 806F77D0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806F77D4  93 DB 01 34 */	stw r30, 0x134(r27)
/* 806F77D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806F77DC  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 806F77E0  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806F77E4  93 BB 01 20 */	stw r29, 0x120(r27)
/* 806F77E8  93 9B 01 34 */	stw r28, 0x134(r27)
/* 806F77EC  3B 7F 0B 88 */	addi r27, r31, 0xb88
/* 806F77F0  7F 63 DB 78 */	mr r3, r27
/* 806F77F4  4B 98 C2 34 */	b __ct__12dCcD_GObjInfFv
/* 806F77F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806F77FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806F7800  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806F7804  3C 60 80 6F */	lis r3, __vt__8cM3dGAab@ha
/* 806F7808  38 03 7D 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 806F780C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806F7810  3C 60 80 6F */	lis r3, __vt__8cM3dGCyl@ha
/* 806F7814  38 03 7D 74 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806F7818  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806F781C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 806F7820  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 806F7824  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806F7828  38 03 00 58 */	addi r0, r3, 0x58
/* 806F782C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806F7830  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 806F7834  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 806F7838  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806F783C  38 03 00 2C */	addi r0, r3, 0x2c
/* 806F7840  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806F7844  38 03 00 84 */	addi r0, r3, 0x84
/* 806F7848  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806F784C  7F E3 FB 78 */	mr r3, r31
/* 806F7850  39 61 00 20 */	addi r11, r1, 0x20
/* 806F7854  4B C6 A9 CC */	b _restgpr_27
/* 806F7858  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F785C  7C 08 03 A6 */	mtlr r0
/* 806F7860  38 21 00 20 */	addi r1, r1, 0x20
/* 806F7864  4E 80 00 20 */	blr 
