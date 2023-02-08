lbl_805C6678:
/* 805C6678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C667C  7C 08 02 A6 */	mflr r0
/* 805C6680  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6688  7C 7F 1B 78 */	mr r31, r3
/* 805C668C  4B AB D3 9D */	bl __ct__12dCcD_GObjInfFv
/* 805C6690  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805C6694  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805C6698  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805C669C  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805C7870@ha */
/* 805C66A0  38 03 78 70 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805C7870@l */
/* 805C66A4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 805C66A8  3C 60 80 5C */	lis r3, __vt__8cM3dGCyl@ha /* 0x805C7864@ha */
/* 805C66AC  38 03 78 64 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x805C7864@l */
/* 805C66B0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 805C66B4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 805C66B8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 805C66BC  90 7F 01 20 */	stw r3, 0x120(r31)
/* 805C66C0  38 03 00 58 */	addi r0, r3, 0x58
/* 805C66C4  90 1F 01 38 */	stw r0, 0x138(r31)
/* 805C66C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 805C66CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 805C66D0  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805C66D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805C66D8  90 1F 01 20 */	stw r0, 0x120(r31)
/* 805C66DC  38 03 00 84 */	addi r0, r3, 0x84
/* 805C66E0  90 1F 01 38 */	stw r0, 0x138(r31)
/* 805C66E4  7F E3 FB 78 */	mr r3, r31
/* 805C66E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C66EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C66F0  7C 08 03 A6 */	mtlr r0
/* 805C66F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C66F8  4E 80 00 20 */	blr 
