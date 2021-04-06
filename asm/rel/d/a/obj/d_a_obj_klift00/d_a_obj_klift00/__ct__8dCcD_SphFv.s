lbl_8058C1F4:
/* 8058C1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058C1F8  7C 08 02 A6 */	mflr r0
/* 8058C1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058C200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058C204  7C 7F 1B 78 */	mr r31, r3
/* 8058C208  4B AF 78 21 */	bl __ct__12dCcD_GObjInfFv
/* 8058C20C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8058C210  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8058C214  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8058C218  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha /* 0x8058C500@ha */
/* 8058C21C  38 03 C5 00 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8058C500@l */
/* 8058C220  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8058C224  3C 60 80 59 */	lis r3, __vt__8cM3dGSph@ha /* 0x8058C4F4@ha */
/* 8058C228  38 03 C4 F4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8058C4F4@l */
/* 8058C22C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8058C230  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8058C234  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8058C238  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8058C23C  38 03 00 58 */	addi r0, r3, 0x58
/* 8058C240  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8058C244  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8058C248  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8058C24C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8058C250  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058C254  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8058C258  38 03 00 84 */	addi r0, r3, 0x84
/* 8058C25C  90 1F 01 34 */	stw r0, 0x134(r31)
/* 8058C260  7F E3 FB 78 */	mr r3, r31
/* 8058C264  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058C268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058C26C  7C 08 03 A6 */	mtlr r0
/* 8058C270  38 21 00 10 */	addi r1, r1, 0x10
/* 8058C274  4E 80 00 20 */	blr 
