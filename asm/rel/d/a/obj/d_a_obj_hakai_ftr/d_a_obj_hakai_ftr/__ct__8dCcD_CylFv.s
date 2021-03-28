lbl_80C17608:
/* 80C17608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1760C  7C 08 02 A6 */	mflr r0
/* 80C17610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17614  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17618  7C 7F 1B 78 */	mr r31, r3
/* 80C1761C  4B 46 C4 0C */	b __ct__12dCcD_GObjInfFv
/* 80C17620  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C17624  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C17628  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C1762C  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha
/* 80C17630  38 03 81 FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C17634  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C17638  3C 60 80 C2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C1763C  38 03 82 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C17640  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C17644  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C17648  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C1764C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C17650  38 03 00 58 */	addi r0, r3, 0x58
/* 80C17654  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C17658  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C1765C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C17660  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C17664  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C17668  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C1766C  38 03 00 84 */	addi r0, r3, 0x84
/* 80C17670  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80C17674  7F E3 FB 78 */	mr r3, r31
/* 80C17678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1767C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17680  7C 08 03 A6 */	mtlr r0
/* 80C17684  38 21 00 10 */	addi r1, r1, 0x10
/* 80C17688  4E 80 00 20 */	blr 
