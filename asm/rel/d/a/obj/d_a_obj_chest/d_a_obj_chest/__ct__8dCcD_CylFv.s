lbl_80BC94BC:
/* 80BC94BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC94C0  7C 08 02 A6 */	mflr r0
/* 80BC94C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC94C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC94CC  7C 7F 1B 78 */	mr r31, r3
/* 80BC94D0  4B 4B A5 59 */	bl __ct__12dCcD_GObjInfFv
/* 80BC94D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BC94D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BC94DC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BC94E0  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha /* 0x80BCA198@ha */
/* 80BC94E4  38 03 A1 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BCA198@l */
/* 80BC94E8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80BC94EC  3C 60 80 BD */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BCA1A4@ha */
/* 80BC94F0  38 03 A1 A4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BCA1A4@l */
/* 80BC94F4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC94F8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BC94FC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BC9500  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80BC9504  38 03 00 58 */	addi r0, r3, 0x58
/* 80BC9508  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC950C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BC9510  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BC9514  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80BC9518  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BC951C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80BC9520  38 03 00 84 */	addi r0, r3, 0x84
/* 80BC9524  90 1F 01 38 */	stw r0, 0x138(r31)
/* 80BC9528  7F E3 FB 78 */	mr r3, r31
/* 80BC952C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC9530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC9534  7C 08 03 A6 */	mtlr r0
/* 80BC9538  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC953C  4E 80 00 20 */	blr 
