lbl_80C92A50:
/* 80C92A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92A54  7C 08 02 A6 */	mflr r0
/* 80C92A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92A5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92A60  93 C1 00 08 */	stw r30, 8(r1)
/* 80C92A64  7C 7F 1B 78 */	mr r31, r3
/* 80C92A68  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C92A6C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C92A70  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80C92A74  38 7F 00 20 */	addi r3, r31, 0x20
/* 80C92A78  4B 3F 0C E8 */	b __ct__10dCcD_GSttsFv
/* 80C92A7C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C92A80  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C92A84  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 80C92A88  38 03 00 20 */	addi r0, r3, 0x20
/* 80C92A8C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80C92A90  3B DF 00 40 */	addi r30, r31, 0x40
/* 80C92A94  7F C3 F3 78 */	mr r3, r30
/* 80C92A98  4B 3F 0F 90 */	b __ct__12dCcD_GObjInfFv
/* 80C92A9C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C92AA0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C92AA4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C92AA8  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha
/* 80C92AAC  38 03 2D C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C92AB0  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C92AB4  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C92AB8  38 03 2D D0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C92ABC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C92AC0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C92AC4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C92AC8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C92ACC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C92AD0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C92AD4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C92AD8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C92ADC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C92AE0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C92AE4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C92AE8  38 03 00 84 */	addi r0, r3, 0x84
/* 80C92AEC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C92AF0  7F E3 FB 78 */	mr r3, r31
/* 80C92AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92AF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C92AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92B00  7C 08 03 A6 */	mtlr r0
/* 80C92B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92B08  4E 80 00 20 */	blr 
