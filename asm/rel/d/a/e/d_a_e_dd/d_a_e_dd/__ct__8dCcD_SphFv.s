lbl_806A69A4:
/* 806A69A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A69A8  7C 08 02 A6 */	mflr r0
/* 806A69AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A69B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A69B4  7C 7F 1B 78 */	mr r31, r3
/* 806A69B8  4B 9D D0 70 */	b __ct__12dCcD_GObjInfFv
/* 806A69BC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 806A69C0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 806A69C4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806A69C8  3C 60 80 6A */	lis r3, __vt__8cM3dGAab@ha
/* 806A69CC  38 03 74 64 */	addi r0, r3, __vt__8cM3dGAab@l
/* 806A69D0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 806A69D4  3C 60 80 6A */	lis r3, __vt__8cM3dGSph@ha
/* 806A69D8  38 03 74 58 */	addi r0, r3, __vt__8cM3dGSph@l
/* 806A69DC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A69E0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 806A69E4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 806A69E8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 806A69EC  38 03 00 58 */	addi r0, r3, 0x58
/* 806A69F0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A69F4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 806A69F8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 806A69FC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 806A6A00  38 03 00 2C */	addi r0, r3, 0x2c
/* 806A6A04  90 1F 01 20 */	stw r0, 0x120(r31)
/* 806A6A08  38 03 00 84 */	addi r0, r3, 0x84
/* 806A6A0C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 806A6A10  7F E3 FB 78 */	mr r3, r31
/* 806A6A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A6A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A6A1C  7C 08 03 A6 */	mtlr r0
/* 806A6A20  38 21 00 10 */	addi r1, r1, 0x10
/* 806A6A24  4E 80 00 20 */	blr 
