lbl_806523C0:
/* 806523C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806523C4  7C 08 02 A6 */	mflr r0
/* 806523C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806523CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806523D0  7C 7F 1B 78 */	mr r31, r3
/* 806523D4  4B A3 16 54 */	b __ct__12dCcD_GObjInfFv
/* 806523D8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806523DC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806523E0  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806523E4  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha
/* 806523E8  38 03 28 BC */	addi r0, r3, __vt__8cM3dGAab@l
/* 806523EC  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806523F0  3C 60 80 65 */	lis r3, __vt__8cM3dGCyl@ha
/* 806523F4  38 03 28 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 806523F8  90 1F 01 38 */	stw r0, 0x138(r31)
/* 806523FC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80652400  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80652404  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80652408  38 03 00 58 */	addi r0, r3, 0x58
/* 8065240C  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80652410  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80652414  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80652418  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8065241C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80652420  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80652424  38 03 00 84 */	addi r0, r3, 0x84
/* 80652428  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8065242C  7F E3 FB 78 */	mr r3, r31
/* 80652430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80652434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80652438  7C 08 03 A6 */	mtlr r0
/* 8065243C  38 21 00 10 */	addi r1, r1, 0x10
/* 80652440  4E 80 00 20 */	blr 
