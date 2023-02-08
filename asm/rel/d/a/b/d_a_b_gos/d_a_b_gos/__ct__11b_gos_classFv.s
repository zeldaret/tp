lbl_80605024:
/* 80605024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80605028  7C 08 02 A6 */	mflr r0
/* 8060502C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605030  39 61 00 20 */	addi r11, r1, 0x20
/* 80605034  4B D5 D1 A1 */	bl _savegpr_27
/* 80605038  7C 7F 1B 78 */	mr r31, r3
/* 8060503C  4B A1 3B 29 */	bl __ct__10fopAc_ac_cFv
/* 80605040  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80605044  4B CB BF 21 */	bl __ct__15Z2CreatureEnemyFv
/* 80605048  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 8060504C  4B A7 0E 61 */	bl __ct__12dBgS_AcchCirFv
/* 80605050  3B 9F 06 E4 */	addi r28, r31, 0x6e4
/* 80605054  7F 83 E3 78 */	mr r3, r28
/* 80605058  4B A7 10 49 */	bl __ct__9dBgS_AcchFv
/* 8060505C  3C 60 80 60 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806055CC@ha */
/* 80605060  38 63 55 CC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806055CC@l */
/* 80605064  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80605068  38 03 00 0C */	addi r0, r3, 0xc
/* 8060506C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80605070  38 03 00 18 */	addi r0, r3, 0x18
/* 80605074  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80605078  38 7C 00 14 */	addi r3, r28, 0x14
/* 8060507C  4B A7 3D ED */	bl SetObj__16dBgS_PolyPassChkFv
/* 80605080  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80605084  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80605088  90 1F 08 D4 */	stw r0, 0x8d4(r31)
/* 8060508C  38 7F 08 D8 */	addi r3, r31, 0x8d8
/* 80605090  4B A7 E6 D1 */	bl __ct__10dCcD_GSttsFv
/* 80605094  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80605098  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8060509C  90 7F 08 D4 */	stw r3, 0x8d4(r31)
/* 806050A0  38 03 00 20 */	addi r0, r3, 0x20
/* 806050A4  90 1F 08 D8 */	stw r0, 0x8d8(r31)
/* 806050A8  3B 7F 08 F8 */	addi r27, r31, 0x8f8
/* 806050AC  7F 63 DB 78 */	mr r3, r27
/* 806050B0  4B A7 E9 79 */	bl __ct__12dCcD_GObjInfFv
/* 806050B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806050B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806050BC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806050C0  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806055C0@ha */
/* 806050C4  38 03 55 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806055C0@l */
/* 806050C8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 806050CC  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x806055B4@ha */
/* 806050D0  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806055B4@l */
/* 806050D4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 806050D8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806050DC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806050E0  90 7B 01 20 */	stw r3, 0x120(r27)
/* 806050E4  3B C3 00 58 */	addi r30, r3, 0x58
/* 806050E8  93 DB 01 34 */	stw r30, 0x134(r27)
/* 806050EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806050F0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806050F4  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806050F8  3B A3 00 2C */	addi r29, r3, 0x2c
/* 806050FC  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80605100  3B 83 00 84 */	addi r28, r3, 0x84
/* 80605104  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80605108  3B 7F 0A 30 */	addi r27, r31, 0xa30
/* 8060510C  7F 63 DB 78 */	mr r3, r27
/* 80605110  4B A7 E9 19 */	bl __ct__12dCcD_GObjInfFv
/* 80605114  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80605118  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8060511C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80605120  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806055C0@ha */
/* 80605124  38 03 55 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806055C0@l */
/* 80605128  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8060512C  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x806055B4@ha */
/* 80605130  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806055B4@l */
/* 80605134  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80605138  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8060513C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80605140  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80605144  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80605148  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8060514C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80605150  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80605154  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80605158  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8060515C  3B 7F 0B 68 */	addi r27, r31, 0xb68
/* 80605160  7F 63 DB 78 */	mr r3, r27
/* 80605164  4B A7 E8 C5 */	bl __ct__12dCcD_GObjInfFv
/* 80605168  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8060516C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80605170  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80605174  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x806055C0@ha */
/* 80605178  38 03 55 C0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806055C0@l */
/* 8060517C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80605180  3C 60 80 60 */	lis r3, __vt__8cM3dGCyl@ha /* 0x806055A8@ha */
/* 80605184  38 03 55 A8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x806055A8@l */
/* 80605188  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8060518C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80605190  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80605194  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80605198  38 03 00 58 */	addi r0, r3, 0x58
/* 8060519C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806051A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 806051A4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 806051A8  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 806051AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 806051B0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 806051B4  38 03 00 84 */	addi r0, r3, 0x84
/* 806051B8  90 1B 01 38 */	stw r0, 0x138(r27)
/* 806051BC  7F E3 FB 78 */	mr r3, r31
/* 806051C0  39 61 00 20 */	addi r11, r1, 0x20
/* 806051C4  4B D5 D0 5D */	bl _restgpr_27
/* 806051C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806051CC  7C 08 03 A6 */	mtlr r0
/* 806051D0  38 21 00 20 */	addi r1, r1, 0x20
/* 806051D4  4E 80 00 20 */	blr 
