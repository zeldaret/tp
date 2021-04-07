lbl_8063D8FC:
/* 8063D8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063D900  7C 08 02 A6 */	mflr r0
/* 8063D904  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063D908  39 61 00 20 */	addi r11, r1, 0x20
/* 8063D90C  4B D2 48 C9 */	bl _savegpr_27
/* 8063D910  7C 7C 1B 78 */	mr r28, r3
/* 8063D914  4B 9D B2 51 */	bl __ct__10fopAc_ac_cFv
/* 8063D918  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8063D91C  4B C8 2A AD */	bl __ct__10Z2CreatureFv
/* 8063D920  38 7C 06 48 */	addi r3, r28, 0x648
/* 8063D924  4B C8 0F 21 */	bl __ct__16Z2SoundObjSimpleFv
/* 8063D928  38 7C 06 C8 */	addi r3, r28, 0x6c8
/* 8063D92C  4B A3 9C 51 */	bl __ct__11dBgS_GndChkFv
/* 8063D930  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8063D934  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8063D938  90 1C 07 34 */	stw r0, 0x734(r28)
/* 8063D93C  38 7C 07 38 */	addi r3, r28, 0x738
/* 8063D940  4B A4 5E 21 */	bl __ct__10dCcD_GSttsFv
/* 8063D944  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8063D948  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8063D94C  90 7C 07 34 */	stw r3, 0x734(r28)
/* 8063D950  38 03 00 20 */	addi r0, r3, 0x20
/* 8063D954  90 1C 07 38 */	stw r0, 0x738(r28)
/* 8063D958  3B 7C 07 58 */	addi r27, r28, 0x758
/* 8063D95C  7F 63 DB 78 */	mr r3, r27
/* 8063D960  4B A4 60 C9 */	bl __ct__12dCcD_GObjInfFv
/* 8063D964  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063D968  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063D96C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8063D970  3C 60 80 64 */	lis r3, __vt__8cM3dGAab@ha /* 0x8063DFC4@ha */
/* 8063D974  38 03 DF C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8063DFC4@l */
/* 8063D978  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8063D97C  3C 60 80 64 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8063DFB8@ha */
/* 8063D980  38 03 DF B8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8063DFB8@l */
/* 8063D984  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8063D988  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8063D98C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8063D990  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8063D994  3B E3 00 58 */	addi r31, r3, 0x58
/* 8063D998  93 FB 01 38 */	stw r31, 0x138(r27)
/* 8063D99C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8063D9A0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8063D9A4  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8063D9A8  3B C3 00 2C */	addi r30, r3, 0x2c
/* 8063D9AC  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8063D9B0  3B A3 00 84 */	addi r29, r3, 0x84
/* 8063D9B4  93 BB 01 38 */	stw r29, 0x138(r27)
/* 8063D9B8  3B 7C 08 94 */	addi r27, r28, 0x894
/* 8063D9BC  7F 63 DB 78 */	mr r3, r27
/* 8063D9C0  4B A4 60 69 */	bl __ct__12dCcD_GObjInfFv
/* 8063D9C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063D9C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063D9CC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8063D9D0  3C 60 80 64 */	lis r3, __vt__8cM3dGAab@ha /* 0x8063DFC4@ha */
/* 8063D9D4  38 03 DF C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8063DFC4@l */
/* 8063D9D8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8063D9DC  3C 60 80 64 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8063DFB8@ha */
/* 8063D9E0  38 03 DF B8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8063DFB8@l */
/* 8063D9E4  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8063D9E8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8063D9EC  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8063D9F0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8063D9F4  93 FB 01 38 */	stw r31, 0x138(r27)
/* 8063D9F8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8063D9FC  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8063DA00  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8063DA04  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8063DA08  93 BB 01 38 */	stw r29, 0x138(r27)
/* 8063DA0C  3B 7C 09 D0 */	addi r27, r28, 0x9d0
/* 8063DA10  7F 63 DB 78 */	mr r3, r27
/* 8063DA14  4B A4 60 15 */	bl __ct__12dCcD_GObjInfFv
/* 8063DA18  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8063DA1C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8063DA20  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8063DA24  3C 60 80 64 */	lis r3, __vt__8cM3dGAab@ha /* 0x8063DFC4@ha */
/* 8063DA28  38 03 DF C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8063DFC4@l */
/* 8063DA2C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8063DA30  3C 60 80 64 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8063DFB8@ha */
/* 8063DA34  38 03 DF B8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8063DFB8@l */
/* 8063DA38  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8063DA3C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8063DA40  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8063DA44  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8063DA48  93 FB 01 38 */	stw r31, 0x138(r27)
/* 8063DA4C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8063DA50  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8063DA54  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8063DA58  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8063DA5C  93 BB 01 38 */	stw r29, 0x138(r27)
/* 8063DA60  7F 83 E3 78 */	mr r3, r28
/* 8063DA64  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DA68  4B D2 47 B9 */	bl _restgpr_27
/* 8063DA6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DA70  7C 08 03 A6 */	mtlr r0
/* 8063DA74  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DA78  4E 80 00 20 */	blr 
