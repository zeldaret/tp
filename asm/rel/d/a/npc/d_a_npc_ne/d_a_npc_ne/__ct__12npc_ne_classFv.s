lbl_80A92118:
/* 80A92118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9211C  7C 08 02 A6 */	mflr r0
/* 80A92120  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A92124  39 61 00 20 */	addi r11, r1, 0x20
/* 80A92128  4B 8D 00 AC */	b _savegpr_27
/* 80A9212C  7C 7F 1B 78 */	mr r31, r3
/* 80A92130  4B 58 6A 34 */	b __ct__10fopAc_ac_cFv
/* 80A92134  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80A92138  4B 82 C7 0C */	b __ct__16Z2SoundObjSimpleFv
/* 80A9213C  38 7F 07 04 */	addi r3, r31, 0x704
/* 80A92140  4B 5E 3D 6C */	b __ct__12dBgS_AcchCirFv
/* 80A92144  3B 9F 07 44 */	addi r28, r31, 0x744
/* 80A92148  7F 83 E3 78 */	mr r3, r28
/* 80A9214C  4B 5E 3F 54 */	b __ct__9dBgS_AcchFv
/* 80A92150  3C 60 80 A9 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A92154  38 63 2A 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A92158  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80A9215C  38 03 00 0C */	addi r0, r3, 0xc
/* 80A92160  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80A92164  38 03 00 18 */	addi r0, r3, 0x18
/* 80A92168  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80A9216C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80A92170  4B 5E 6C F8 */	b SetObj__16dBgS_PolyPassChkFv
/* 80A92174  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A92178  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A9217C  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80A92180  38 7F 09 3C */	addi r3, r31, 0x93c
/* 80A92184  4B 5F 15 DC */	b __ct__10dCcD_GSttsFv
/* 80A92188  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A9218C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A92190  90 7F 09 38 */	stw r3, 0x938(r31)
/* 80A92194  38 03 00 20 */	addi r0, r3, 0x20
/* 80A92198  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 80A9219C  3B 7F 09 5C */	addi r27, r31, 0x95c
/* 80A921A0  7F 63 DB 78 */	mr r3, r27
/* 80A921A4  4B 5F 18 84 */	b __ct__12dCcD_GObjInfFv
/* 80A921A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A921AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A921B0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A921B4  3C 60 80 A9 */	lis r3, __vt__8cM3dGAab@ha
/* 80A921B8  38 03 2A 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A921BC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80A921C0  3C 60 80 A9 */	lis r3, __vt__8cM3dGSph@ha
/* 80A921C4  38 03 2A 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80A921C8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80A921CC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80A921D0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80A921D4  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80A921D8  3B C3 00 58 */	addi r30, r3, 0x58
/* 80A921DC  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80A921E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80A921E4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80A921E8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80A921EC  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80A921F0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80A921F4  3B 83 00 84 */	addi r28, r3, 0x84
/* 80A921F8  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80A921FC  3B 7F 0A 94 */	addi r27, r31, 0xa94
/* 80A92200  7F 63 DB 78 */	mr r3, r27
/* 80A92204  4B 5F 18 24 */	b __ct__12dCcD_GObjInfFv
/* 80A92208  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A9220C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A92210  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A92214  3C 60 80 A9 */	lis r3, __vt__8cM3dGAab@ha
/* 80A92218  38 03 2A 2C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A9221C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80A92220  3C 60 80 A9 */	lis r3, __vt__8cM3dGSph@ha
/* 80A92224  38 03 2A 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80A92228  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80A9222C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80A92230  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80A92234  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80A92238  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80A9223C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80A92240  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80A92244  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80A92248  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80A9224C  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80A92250  38 7F 0C 10 */	addi r3, r31, 0xc10
/* 80A92254  4B 7B 7C AC */	b __ct__10dMsgFlow_cFv
/* 80A92258  7F E3 FB 78 */	mr r3, r31
/* 80A9225C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A92260  4B 8C FF C0 */	b _restgpr_27
/* 80A92264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A92268  7C 08 03 A6 */	mtlr r0
/* 80A9226C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A92270  4E 80 00 20 */	blr 
