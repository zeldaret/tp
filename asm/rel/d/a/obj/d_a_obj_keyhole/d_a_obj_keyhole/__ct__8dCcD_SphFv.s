lbl_80C43878:
/* 80C43878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4387C  7C 08 02 A6 */	mflr r0
/* 80C43880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C43884  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C43888  7C 7F 1B 78 */	mr r31, r3
/* 80C4388C  4B 44 01 9D */	bl __ct__12dCcD_GObjInfFv
/* 80C43890  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C43894  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C43898  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C4389C  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C43C88@ha */
/* 80C438A0  38 03 3C 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C43C88@l */
/* 80C438A4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80C438A8  3C 60 80 C4 */	lis r3, __vt__8cM3dGSph@ha /* 0x80C43C7C@ha */
/* 80C438AC  38 03 3C 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80C43C7C@l */
/* 80C438B0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C438B4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80C438B8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80C438BC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80C438C0  38 03 00 58 */	addi r0, r3, 0x58
/* 80C438C4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C438C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80C438CC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80C438D0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80C438D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C438D8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80C438DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80C438E0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80C438E4  7F E3 FB 78 */	mr r3, r31
/* 80C438E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C438EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C438F0  7C 08 03 A6 */	mtlr r0
/* 80C438F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C438F8  4E 80 00 20 */	blr 
