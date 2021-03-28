lbl_80601FF0:
/* 80601FF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601FF4  7C 08 02 A6 */	mflr r0
/* 80601FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601FFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80602000  7C 7F 1B 78 */	mr r31, r3
/* 80602004  4B A8 1A 24 */	b __ct__12dCcD_GObjInfFv
/* 80602008  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8060200C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80602010  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80602014  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha
/* 80602018  38 03 2F 0C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8060201C  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80602020  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha
/* 80602024  38 03 2F 00 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80602028  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8060202C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80602030  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80602034  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80602038  38 03 00 58 */	addi r0, r3, 0x58
/* 8060203C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80602040  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80602044  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80602048  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8060204C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80602050  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80602054  38 03 00 84 */	addi r0, r3, 0x84
/* 80602058  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8060205C  7F E3 FB 78 */	mr r3, r31
/* 80602060  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80602064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80602068  7C 08 03 A6 */	mtlr r0
/* 8060206C  38 21 00 10 */	addi r1, r1, 0x10
/* 80602070  4E 80 00 20 */	blr 
