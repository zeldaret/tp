lbl_806AD0AC:
/* 806AD0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806AD0B0  7C 08 02 A6 */	mflr r0
/* 806AD0B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806AD0B8  39 61 00 20 */	addi r11, r1, 0x20
/* 806AD0BC  4B CB 51 19 */	bl _savegpr_27
/* 806AD0C0  7C 7C 1B 78 */	mr r28, r3
/* 806AD0C4  4B 96 BA A1 */	bl __ct__10fopAc_ac_cFv
/* 806AD0C8  38 7C 05 CC */	addi r3, r28, 0x5cc
/* 806AD0CC  4B C1 3E 99 */	bl __ct__15Z2CreatureEnemyFv
/* 806AD0D0  38 7C 06 BC */	addi r3, r28, 0x6bc
/* 806AD0D4  4B 9C 8D D9 */	bl __ct__12dBgS_AcchCirFv
/* 806AD0D8  3B BC 06 FC */	addi r29, r28, 0x6fc
/* 806AD0DC  7F A3 EB 78 */	mr r3, r29
/* 806AD0E0  4B 9C 8F C1 */	bl __ct__9dBgS_AcchFv
/* 806AD0E4  3C 60 80 6B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806AD7B0@ha */
/* 806AD0E8  38 63 D7 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806AD7B0@l */
/* 806AD0EC  90 7D 00 10 */	stw r3, 0x10(r29)
/* 806AD0F0  38 03 00 0C */	addi r0, r3, 0xc
/* 806AD0F4  90 1D 00 14 */	stw r0, 0x14(r29)
/* 806AD0F8  38 03 00 18 */	addi r0, r3, 0x18
/* 806AD0FC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 806AD100  38 7D 00 14 */	addi r3, r29, 0x14
/* 806AD104  4B 9C BD 65 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806AD108  38 7C 08 D4 */	addi r3, r28, 0x8d4
/* 806AD10C  4B 9C B9 09 */	bl __ct__11dBgS_SphChkFv
/* 806AD110  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806AD114  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806AD118  90 1C 09 40 */	stw r0, 0x940(r28)
/* 806AD11C  38 7C 09 44 */	addi r3, r28, 0x944
/* 806AD120  4B 9D 66 41 */	bl __ct__10dCcD_GSttsFv
/* 806AD124  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806AD128  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806AD12C  90 7C 09 40 */	stw r3, 0x940(r28)
/* 806AD130  38 03 00 20 */	addi r0, r3, 0x20
/* 806AD134  90 1C 09 44 */	stw r0, 0x944(r28)
/* 806AD138  3B 7C 09 64 */	addi r27, r28, 0x964
/* 806AD13C  7F 63 DB 78 */	mr r3, r27
/* 806AD140  4B 9D 68 E9 */	bl __ct__12dCcD_GObjInfFv
/* 806AD144  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806AD148  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806AD14C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806AD150  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha /* 0x806AD7A4@ha */
/* 806AD154  38 03 D7 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806AD7A4@l */
/* 806AD158  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806AD15C  3C 60 80 6B */	lis r3, __vt__8cM3dGSph@ha /* 0x806AD798@ha */
/* 806AD160  38 03 D7 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806AD798@l */
/* 806AD164  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806AD168  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806AD16C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806AD170  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806AD174  3B E3 00 58 */	addi r31, r3, 0x58
/* 806AD178  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806AD17C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806AD180  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806AD184  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806AD188  3B C3 00 2C */	addi r30, r3, 0x2c
/* 806AD18C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806AD190  3B A3 00 84 */	addi r29, r3, 0x84
/* 806AD194  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806AD198  3B 7C 0A 9C */	addi r27, r28, 0xa9c
/* 806AD19C  7F 63 DB 78 */	mr r3, r27
/* 806AD1A0  4B 9D 68 89 */	bl __ct__12dCcD_GObjInfFv
/* 806AD1A4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806AD1A8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806AD1AC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806AD1B0  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha /* 0x806AD7A4@ha */
/* 806AD1B4  38 03 D7 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806AD7A4@l */
/* 806AD1B8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806AD1BC  3C 60 80 6B */	lis r3, __vt__8cM3dGSph@ha /* 0x806AD798@ha */
/* 806AD1C0  38 03 D7 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806AD798@l */
/* 806AD1C4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806AD1C8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806AD1CC  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806AD1D0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806AD1D4  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806AD1D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806AD1DC  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806AD1E0  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806AD1E4  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806AD1E8  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806AD1EC  3B 7C 0B D4 */	addi r27, r28, 0xbd4
/* 806AD1F0  7F 63 DB 78 */	mr r3, r27
/* 806AD1F4  4B 9D 68 35 */	bl __ct__12dCcD_GObjInfFv
/* 806AD1F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806AD1FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806AD200  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806AD204  3C 60 80 6B */	lis r3, __vt__8cM3dGAab@ha /* 0x806AD7A4@ha */
/* 806AD208  38 03 D7 A4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806AD7A4@l */
/* 806AD20C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806AD210  3C 60 80 6B */	lis r3, __vt__8cM3dGSph@ha /* 0x806AD798@ha */
/* 806AD214  38 03 D7 98 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806AD798@l */
/* 806AD218  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806AD21C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806AD220  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806AD224  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806AD228  93 FB 01 34 */	stw r31, 0x134(r27)
/* 806AD22C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806AD230  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806AD234  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 806AD238  93 DB 01 20 */	stw r30, 0x120(r27)
/* 806AD23C  93 BB 01 34 */	stw r29, 0x134(r27)
/* 806AD240  7F 83 E3 78 */	mr r3, r28
/* 806AD244  39 61 00 20 */	addi r11, r1, 0x20
/* 806AD248  4B CB 4F D9 */	bl _restgpr_27
/* 806AD24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806AD250  7C 08 03 A6 */	mtlr r0
/* 806AD254  38 21 00 20 */	addi r1, r1, 0x20
/* 806AD258  4E 80 00 20 */	blr 
