lbl_8058A8E8:
/* 8058A8E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A8EC  7C 08 02 A6 */	mflr r0
/* 8058A8F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A8F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A8F8  7C 7F 1B 78 */	mr r31, r3
/* 8058A8FC  4B AF 91 2D */	bl __ct__12dCcD_GObjInfFv
/* 8058A900  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8058A904  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8058A908  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8058A90C  3C 60 80 59 */	lis r3, __vt__8cM3dGAab@ha /* 0x8058AE64@ha */
/* 8058A910  38 03 AE 64 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8058AE64@l */
/* 8058A914  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 8058A918  3C 60 80 59 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8058AE70@ha */
/* 8058A91C  38 03 AE 70 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8058AE70@l */
/* 8058A920  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8058A924  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8058A928  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8058A92C  90 7F 01 20 */	stw r3, 0x120(r31)
/* 8058A930  38 03 00 58 */	addi r0, r3, 0x58
/* 8058A934  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8058A938  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8058A93C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8058A940  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8058A944  38 03 00 2C */	addi r0, r3, 0x2c
/* 8058A948  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8058A94C  38 03 00 84 */	addi r0, r3, 0x84
/* 8058A950  90 1F 01 38 */	stw r0, 0x138(r31)
/* 8058A954  7F E3 FB 78 */	mr r3, r31
/* 8058A958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A95C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A960  7C 08 03 A6 */	mtlr r0
/* 8058A964  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A968  4E 80 00 20 */	blr 
