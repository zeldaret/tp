lbl_8066EAE4:
/* 8066EAE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8066EAE8  7C 08 02 A6 */	mflr r0
/* 8066EAEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8066EAF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8066EAF4  4B CF 36 E1 */	bl _savegpr_27
/* 8066EAF8  7C 7F 1B 78 */	mr r31, r3
/* 8066EAFC  4B 9A A0 69 */	bl __ct__10fopAc_ac_cFv
/* 8066EB00  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 8066EB04  4B A0 73 A9 */	bl __ct__12dBgS_AcchCirFv
/* 8066EB08  3B 9F 06 FC */	addi r28, r31, 0x6fc
/* 8066EB0C  7F 83 E3 78 */	mr r3, r28
/* 8066EB10  4B A0 75 91 */	bl __ct__9dBgS_AcchFv
/* 8066EB14  3C 60 80 67 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8066F234@ha */
/* 8066EB18  38 63 F2 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8066F234@l */
/* 8066EB1C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8066EB20  38 03 00 0C */	addi r0, r3, 0xc
/* 8066EB24  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8066EB28  38 03 00 18 */	addi r0, r3, 0x18
/* 8066EB2C  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8066EB30  38 7C 00 14 */	addi r3, r28, 0x14
/* 8066EB34  4B A0 A3 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8066EB38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8066EB3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8066EB40  90 1F 08 EC */	stw r0, 0x8ec(r31)
/* 8066EB44  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 8066EB48  4B A1 4C 19 */	bl __ct__10dCcD_GSttsFv
/* 8066EB4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8066EB50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8066EB54  90 7F 08 EC */	stw r3, 0x8ec(r31)
/* 8066EB58  38 03 00 20 */	addi r0, r3, 0x20
/* 8066EB5C  90 1F 08 F0 */	stw r0, 0x8f0(r31)
/* 8066EB60  3B 7F 09 10 */	addi r27, r31, 0x910
/* 8066EB64  7F 63 DB 78 */	mr r3, r27
/* 8066EB68  4B A1 4E C1 */	bl __ct__12dCcD_GObjInfFv
/* 8066EB6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8066EB70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8066EB74  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8066EB78  3C 60 80 67 */	lis r3, __vt__8cM3dGAab@ha /* 0x8066F228@ha */
/* 8066EB7C  38 03 F2 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8066F228@l */
/* 8066EB80  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8066EB84  3C 60 80 67 */	lis r3, __vt__8cM3dGSph@ha /* 0x8066F21C@ha */
/* 8066EB88  38 03 F2 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8066F21C@l */
/* 8066EB8C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8066EB90  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8066EB94  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8066EB98  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8066EB9C  3B C3 00 58 */	addi r30, r3, 0x58
/* 8066EBA0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8066EBA4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8066EBA8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8066EBAC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8066EBB0  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8066EBB4  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8066EBB8  3B 83 00 84 */	addi r28, r3, 0x84
/* 8066EBBC  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8066EBC0  3B 7F 0A 48 */	addi r27, r31, 0xa48
/* 8066EBC4  7F 63 DB 78 */	mr r3, r27
/* 8066EBC8  4B A1 4E 61 */	bl __ct__12dCcD_GObjInfFv
/* 8066EBCC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8066EBD0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8066EBD4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8066EBD8  3C 60 80 67 */	lis r3, __vt__8cM3dGAab@ha /* 0x8066F228@ha */
/* 8066EBDC  38 03 F2 28 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8066F228@l */
/* 8066EBE0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8066EBE4  3C 60 80 67 */	lis r3, __vt__8cM3dGSph@ha /* 0x8066F21C@ha */
/* 8066EBE8  38 03 F2 1C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8066F21C@l */
/* 8066EBEC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8066EBF0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8066EBF4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8066EBF8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8066EBFC  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8066EC00  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8066EC04  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8066EC08  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8066EC0C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8066EC10  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8066EC14  38 7F 0B E4 */	addi r3, r31, 0xbe4
/* 8066EC18  4B C4 FC 2D */	bl __ct__16Z2SoundObjSimpleFv
/* 8066EC1C  38 7F 0C 0C */	addi r3, r31, 0xc0c
/* 8066EC20  4B BD B2 E1 */	bl __ct__10dMsgFlow_cFv
/* 8066EC24  7F E3 FB 78 */	mr r3, r31
/* 8066EC28  39 61 00 20 */	addi r11, r1, 0x20
/* 8066EC2C  4B CF 35 F5 */	bl _restgpr_27
/* 8066EC30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8066EC34  7C 08 03 A6 */	mtlr r0
/* 8066EC38  38 21 00 20 */	addi r1, r1, 0x20
/* 8066EC3C  4E 80 00 20 */	blr 
