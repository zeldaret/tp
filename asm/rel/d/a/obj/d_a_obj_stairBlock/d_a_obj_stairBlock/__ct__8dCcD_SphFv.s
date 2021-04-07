lbl_80CE867C:
/* 80CE867C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8680  7C 08 02 A6 */	mflr r0
/* 80CE8684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE868C  7C 7F 1B 78 */	mr r31, r3
/* 80CE8690  4B 39 B3 99 */	bl __ct__12dCcD_GObjInfFv
/* 80CE8694  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CE8698  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CE869C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CE86A0  3C 60 80 CF */	lis r3, __vt__8cM3dGAab@ha /* 0x80CE8F74@ha */
/* 80CE86A4  38 03 8F 74 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CE8F74@l */
/* 80CE86A8  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80CE86AC  3C 60 80 CF */	lis r3, __vt__8cM3dGSph@ha /* 0x80CE8F80@ha */
/* 80CE86B0  38 03 8F 80 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CE8F80@l */
/* 80CE86B4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CE86B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CE86BC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CE86C0  90 7F 01 20 */	stw r3, 0x120(r31)
/* 80CE86C4  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE86C8  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CE86CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CE86D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CE86D4  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 80CE86D8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE86DC  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80CE86E0  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE86E4  90 1F 01 34 */	stw r0, 0x134(r31)
/* 80CE86E8  7F E3 FB 78 */	mr r3, r31
/* 80CE86EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE86F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE86F4  7C 08 03 A6 */	mtlr r0
/* 80CE86F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE86FC  4E 80 00 20 */	blr 
