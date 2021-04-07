lbl_806021B0:
/* 806021B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806021B4  7C 08 02 A6 */	mflr r0
/* 806021B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806021BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806021C0  7C 7F 1B 78 */	mr r31, r3
/* 806021C4  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 806021C8  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 806021CC  4B D2 34 F9 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 806021D0  7F E3 FB 78 */	mr r3, r31
/* 806021D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806021D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806021DC  7C 08 03 A6 */	mtlr r0
/* 806021E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806021E4  4E 80 00 20 */	blr 
