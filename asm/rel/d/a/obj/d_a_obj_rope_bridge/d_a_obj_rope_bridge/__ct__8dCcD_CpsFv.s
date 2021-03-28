lbl_80597BE4:
/* 80597BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80597BE8  7C 08 02 A6 */	mflr r0
/* 80597BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80597BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80597BF4  7C 7F 1B 78 */	mr r31, r3
/* 80597BF8  4B AE BE 30 */	b __ct__12dCcD_GObjInfFv
/* 80597BFC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80597C00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80597C04  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80597C08  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 80597C0C  38 03 80 B0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80597C10  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80597C14  38 7F 01 24 */	addi r3, r31, 0x124
/* 80597C18  4B CD 73 70 */	b __ct__8cM3dGCpsFv
/* 80597C1C  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 80597C20  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 80597C24  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80597C28  38 03 00 58 */	addi r0, r3, 0x58
/* 80597C2C  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80597C30  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 80597C34  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 80597C38  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80597C3C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80597C40  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80597C44  38 03 00 84 */	addi r0, r3, 0x84
/* 80597C48  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80597C4C  7F E3 FB 78 */	mr r3, r31
/* 80597C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80597C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80597C58  7C 08 03 A6 */	mtlr r0
/* 80597C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80597C60  4E 80 00 20 */	blr 
