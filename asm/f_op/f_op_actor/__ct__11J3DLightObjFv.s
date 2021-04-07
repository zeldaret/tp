lbl_80018C0C:
/* 80018C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018C10  7C 08 02 A6 */	mflr r0
/* 80018C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80018C1C  7C 7F 1B 78 */	mr r31, r3
/* 80018C20  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80018C24  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80018C28  48 30 CA 9D */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80018C2C  7F E3 FB 78 */	mr r3, r31
/* 80018C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80018C34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018C38  7C 08 03 A6 */	mtlr r0
/* 80018C3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80018C40  4E 80 00 20 */	blr 
