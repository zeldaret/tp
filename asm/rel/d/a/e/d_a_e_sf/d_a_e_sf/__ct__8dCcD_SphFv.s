lbl_80789574:
/* 80789574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80789578  7C 08 02 A6 */	mflr r0
/* 8078957C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80789580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80789584  7C 7F 1B 78 */	mr r31, r3
/* 80789588  4B 8F A4 A1 */	bl __ct__12dCcD_GObjInfFv
/* 8078958C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80789590  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80789594  90 1F 01 20 */	stw r0, 0x120(r31)
/* 80789598  3C 60 80 79 */	lis r3, __vt__8cM3dGAab@ha /* 0x80789FEC@ha */
/* 8078959C  38 03 9F EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80789FEC@l */
/* 807895A0  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 807895A4  3C 60 80 79 */	lis r3, __vt__8cM3dGSph@ha /* 0x80789FE0@ha */
/* 807895A8  38 03 9F E0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80789FE0@l */
/* 807895AC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807895B0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807895B4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807895B8  90 7F 01 20 */	stw r3, 0x120(r31)
/* 807895BC  38 03 00 58 */	addi r0, r3, 0x58
/* 807895C0  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807895C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807895C8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807895CC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 807895D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 807895D4  90 1F 01 20 */	stw r0, 0x120(r31)
/* 807895D8  38 03 00 84 */	addi r0, r3, 0x84
/* 807895DC  90 1F 01 34 */	stw r0, 0x134(r31)
/* 807895E0  7F E3 FB 78 */	mr r3, r31
/* 807895E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807895E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807895EC  7C 08 03 A6 */	mtlr r0
/* 807895F0  38 21 00 10 */	addi r1, r1, 0x10
/* 807895F4  4E 80 00 20 */	blr 
