lbl_8071C190:
/* 8071C190  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8071C194  7C 08 02 A6 */	mflr r0
/* 8071C198  90 01 00 24 */	stw r0, 0x24(r1)
/* 8071C19C  39 61 00 20 */	addi r11, r1, 0x20
/* 8071C1A0  4B C4 60 35 */	bl _savegpr_27
/* 8071C1A4  7C 7F 1B 78 */	mr r31, r3
/* 8071C1A8  4B 8F C9 BD */	bl __ct__10fopAc_ac_cFv
/* 8071C1AC  38 7F 06 10 */	addi r3, r31, 0x610
/* 8071C1B0  4B BA 4D B5 */	bl __ct__15Z2CreatureEnemyFv
/* 8071C1B4  38 7F 07 20 */	addi r3, r31, 0x720
/* 8071C1B8  4B 95 9C F5 */	bl __ct__12dBgS_AcchCirFv
/* 8071C1BC  3B 9F 07 60 */	addi r28, r31, 0x760
/* 8071C1C0  7F 83 E3 78 */	mr r3, r28
/* 8071C1C4  4B 95 9E DD */	bl __ct__9dBgS_AcchFv
/* 8071C1C8  3C 60 80 72 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8071CA20@ha */
/* 8071C1CC  38 63 CA 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8071CA20@l */
/* 8071C1D0  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8071C1D4  38 03 00 0C */	addi r0, r3, 0xc
/* 8071C1D8  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8071C1DC  38 03 00 18 */	addi r0, r3, 0x18
/* 8071C1E0  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8071C1E4  38 7C 00 14 */	addi r3, r28, 0x14
/* 8071C1E8  4B 95 CC 81 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8071C1EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8071C1F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8071C1F4  90 1F 09 74 */	stw r0, 0x974(r31)
/* 8071C1F8  38 7F 09 78 */	addi r3, r31, 0x978
/* 8071C1FC  4B 96 75 65 */	bl __ct__10dCcD_GSttsFv
/* 8071C200  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8071C204  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8071C208  90 7F 09 74 */	stw r3, 0x974(r31)
/* 8071C20C  38 03 00 20 */	addi r0, r3, 0x20
/* 8071C210  90 1F 09 78 */	stw r0, 0x978(r31)
/* 8071C214  3B 7F 09 98 */	addi r27, r31, 0x998
/* 8071C218  7F 63 DB 78 */	mr r3, r27
/* 8071C21C  4B 96 78 0D */	bl __ct__12dCcD_GObjInfFv
/* 8071C220  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8071C224  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8071C228  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8071C22C  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha /* 0x8071CA14@ha */
/* 8071C230  38 03 CA 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8071CA14@l */
/* 8071C234  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8071C238  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha /* 0x8071CA08@ha */
/* 8071C23C  38 03 CA 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8071CA08@l */
/* 8071C240  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8071C244  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8071C248  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8071C24C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8071C250  3B C3 00 58 */	addi r30, r3, 0x58
/* 8071C254  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8071C258  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8071C25C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8071C260  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8071C264  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8071C268  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8071C26C  3B 83 00 84 */	addi r28, r3, 0x84
/* 8071C270  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8071C274  3B 7F 0A D0 */	addi r27, r31, 0xad0
/* 8071C278  7F 63 DB 78 */	mr r3, r27
/* 8071C27C  4B 96 77 AD */	bl __ct__12dCcD_GObjInfFv
/* 8071C280  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8071C284  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8071C288  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8071C28C  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha /* 0x8071CA14@ha */
/* 8071C290  38 03 CA 14 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8071CA14@l */
/* 8071C294  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8071C298  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha /* 0x8071CA08@ha */
/* 8071C29C  38 03 CA 08 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8071CA08@l */
/* 8071C2A0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8071C2A4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8071C2A8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8071C2AC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8071C2B0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8071C2B4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8071C2B8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8071C2BC  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8071C2C0  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8071C2C4  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8071C2C8  38 7F 0C A4 */	addi r3, r31, 0xca4
/* 8071C2CC  4B B2 DC 35 */	bl __ct__10dMsgFlow_cFv
/* 8071C2D0  7F E3 FB 78 */	mr r3, r31
/* 8071C2D4  39 61 00 20 */	addi r11, r1, 0x20
/* 8071C2D8  4B C4 5F 49 */	bl _restgpr_27
/* 8071C2DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8071C2E0  7C 08 03 A6 */	mtlr r0
/* 8071C2E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8071C2E8  4E 80 00 20 */	blr 
