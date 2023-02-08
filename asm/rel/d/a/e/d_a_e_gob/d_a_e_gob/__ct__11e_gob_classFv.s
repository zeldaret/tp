lbl_806DEA10:
/* 806DEA10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806DEA14  7C 08 02 A6 */	mflr r0
/* 806DEA18  90 01 00 24 */	stw r0, 0x24(r1)
/* 806DEA1C  39 61 00 20 */	addi r11, r1, 0x20
/* 806DEA20  4B C8 37 B5 */	bl _savegpr_27
/* 806DEA24  7C 7C 1B 78 */	mr r28, r3
/* 806DEA28  4B 93 A1 3D */	bl __ct__10fopAc_ac_cFv
/* 806DEA2C  3B BC 05 B8 */	addi r29, r28, 0x5b8
/* 806DEA30  7F A3 EB 78 */	mr r3, r29
/* 806DEA34  4B BE 19 95 */	bl __ct__10Z2CreatureFv
/* 806DEA38  3C 60 80 3D */	lis r3, __vt__13Z2CreatureGob@ha /* 0x803CB7B0@ha */
/* 806DEA3C  38 03 B7 B0 */	addi r0, r3, __vt__13Z2CreatureGob@l /* 0x803CB7B0@l */
/* 806DEA40  90 1D 00 00 */	stw r0, 0(r29)
/* 806DEA44  38 7C 06 FC */	addi r3, r28, 0x6fc
/* 806DEA48  4B 99 74 65 */	bl __ct__12dBgS_AcchCirFv
/* 806DEA4C  3B BC 07 3C */	addi r29, r28, 0x73c
/* 806DEA50  7F A3 EB 78 */	mr r3, r29
/* 806DEA54  4B 99 76 4D */	bl __ct__9dBgS_AcchFv
/* 806DEA58  3C 60 80 6E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806DF21C@ha */
/* 806DEA5C  38 63 F2 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806DF21C@l */
/* 806DEA60  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806DEA64  38 03 00 0C */	addi r0, r3, 0xc
/* 806DEA68  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806DEA6C  38 03 00 18 */	addi r0, r3, 0x18
/* 806DEA70  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806DEA74  38 7D 00 14 */	addi r3, r29, 0x14
/* 806DEA78  4B 99 A3 F1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806DEA7C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806DEA80  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806DEA84  90 1C 09 2C */	stw r0, 0x92c(r28)
/* 806DEA88  38 7C 09 30 */	addi r3, r28, 0x930
/* 806DEA8C  4B 9A 4C D5 */	bl __ct__10dCcD_GSttsFv
/* 806DEA90  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806DEA94  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806DEA98  90 7C 09 2C */	stw r3, 0x92c(r28)
/* 806DEA9C  38 03 00 20 */	addi r0, r3, 0x20
/* 806DEAA0  90 1C 09 30 */	stw r0, 0x930(r28)
/* 806DEAA4  3B 7C 09 50 */	addi r27, r28, 0x950
/* 806DEAA8  7F 63 DB 78 */	mr r3, r27
/* 806DEAAC  4B 9A 4F 7D */	bl __ct__12dCcD_GObjInfFv
/* 806DEAB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806DEAB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806DEAB8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806DEABC  3C 60 80 6E */	lis r3, __vt__8cM3dGAab@ha /* 0x806DF210@ha */
/* 806DEAC0  38 03 F2 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806DF210@l */
/* 806DEAC4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806DEAC8  3C 60 80 6E */	lis r3, __vt__8cM3dGSph@ha /* 0x806DF204@ha */
/* 806DEACC  38 03 F2 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806DF204@l */
/* 806DEAD0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806DEAD4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806DEAD8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806DEADC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806DEAE0  3B E3 00 58 */	addi r31, r3, 0x58
/* 806DEAE4  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806DEAE8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806DEAEC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806DEAF0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806DEAF4  3B C3 00 2C */	addi r30, r3, 0x2c
/* 806DEAF8  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806DEAFC  3B A3 00 84 */	addi r29, r3, 0x84
/* 806DEB00  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806DEB04  3B 7C 0A 88 */	addi r27, r28, 0xa88
/* 806DEB08  7F 63 DB 78 */	mr r3, r27
/* 806DEB0C  4B 9A 4F 1D */	bl __ct__12dCcD_GObjInfFv
/* 806DEB10  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806DEB14  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806DEB18  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806DEB1C  3C 60 80 6E */	lis r3, __vt__8cM3dGAab@ha /* 0x806DF210@ha */
/* 806DEB20  38 03 F2 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806DF210@l */
/* 806DEB24  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806DEB28  3C 60 80 6E */	lis r3, __vt__8cM3dGSph@ha /* 0x806DF204@ha */
/* 806DEB2C  38 03 F2 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806DF204@l */
/* 806DEB30  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806DEB34  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806DEB38  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806DEB3C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806DEB40  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806DEB44  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806DEB48  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806DEB4C  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806DEB50  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806DEB54  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806DEB58  3B 7C 0B C0 */	addi r27, r28, 0xbc0
/* 806DEB5C  7F 63 DB 78 */	mr r3, r27
/* 806DEB60  4B 9A 4E C9 */	bl __ct__12dCcD_GObjInfFv
/* 806DEB64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806DEB68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806DEB6C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806DEB70  3C 60 80 6E */	lis r3, __vt__8cM3dGAab@ha /* 0x806DF210@ha */
/* 806DEB74  38 03 F2 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806DF210@l */
/* 806DEB78  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806DEB7C  3C 60 80 6E */	lis r3, __vt__8cM3dGSph@ha /* 0x806DF204@ha */
/* 806DEB80  38 03 F2 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806DF204@l */
/* 806DEB84  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806DEB88  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806DEB8C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806DEB90  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806DEB94  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806DEB98  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806DEB9C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806DEBA0  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806DEBA4  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806DEBA8  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806DEBAC  38 7C 0D 94 */	addi r3, r28, 0xd94
/* 806DEBB0  4B B6 B3 51 */	bl __ct__10dMsgFlow_cFv
/* 806DEBB4  7F 83 E3 78 */	mr r3, r28
/* 806DEBB8  39 61 00 20 */	addi r11, r1, 0x20
/* 806DEBBC  4B C8 36 65 */	bl _restgpr_27
/* 806DEBC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806DEBC4  7C 08 03 A6 */	mtlr r0
/* 806DEBC8  38 21 00 20 */	addi r1, r1, 0x20
/* 806DEBCC  4E 80 00 20 */	blr 
