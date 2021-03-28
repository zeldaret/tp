lbl_80267C1C:
/* 80267C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267C20  7C 08 02 A6 */	mflr r0
/* 80267C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267C2C  7C 7F 1B 78 */	mr r31, r3
/* 80267C30  4B FF FF 1D */	bl __ct__8cBgS_ChkFv
/* 80267C34  38 7F 00 14 */	addi r3, r31, 0x14
/* 80267C38  48 00 04 3D */	bl __ct__13cBgS_PolyInfoFv
/* 80267C3C  3C 60 80 3C */	lis r3, __vt__11cBgS_GndChk@ha
/* 80267C40  38 63 3F 90 */	addi r3, r3, __vt__11cBgS_GndChk@l
/* 80267C44  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80267C48  38 03 00 0C */	addi r0, r3, 0xc
/* 80267C4C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80267C50  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 80267C54  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 80267C58  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80267C5C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80267C60  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80267C64  C0 03 00 08 */	lfs f0, 8(r3)
/* 80267C68  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80267C6C  38 00 FF FF */	li r0, -1
/* 80267C70  90 1F 00 08 */	stw r0, 8(r31)
/* 80267C74  38 00 00 02 */	li r0, 2
/* 80267C78  90 1F 00 30 */	stw r0, 0x30(r31)
/* 80267C7C  7F E3 FB 78 */	mr r3, r31
/* 80267C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267C88  7C 08 03 A6 */	mtlr r0
/* 80267C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80267C90  4E 80 00 20 */	blr 
