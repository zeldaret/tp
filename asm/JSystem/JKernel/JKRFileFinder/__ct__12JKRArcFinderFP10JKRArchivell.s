lbl_802D4638:
/* 802D4638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D463C  7C 08 02 A6 */	mflr r0
/* 802D4640  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D4644  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D4648  7C 7F 1B 78 */	mr r31, r3
/* 802D464C  3C E0 80 3D */	lis r7, __vt__13JKRFileFinder@ha /* 0x803CC228@ha */
/* 802D4650  38 07 C2 28 */	addi r0, r7, __vt__13JKRFileFinder@l /* 0x803CC228@l */
/* 802D4654  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D4658  38 00 00 00 */	li r0, 0
/* 802D465C  98 03 00 10 */	stb r0, 0x10(r3)
/* 802D4660  98 03 00 11 */	stb r0, 0x11(r3)
/* 802D4664  3C E0 80 3D */	lis r7, __vt__12JKRArcFinder@ha /* 0x803CC218@ha */
/* 802D4668  38 07 C2 18 */	addi r0, r7, __vt__12JKRArcFinder@l /* 0x803CC218@l */
/* 802D466C  90 03 00 0C */	stw r0, 0xc(r3)
/* 802D4670  90 83 00 14 */	stw r4, 0x14(r3)
/* 802D4674  7C 06 00 D0 */	neg r0, r6
/* 802D4678  7C 00 30 78 */	andc r0, r0, r6
/* 802D467C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802D4680  98 03 00 10 */	stb r0, 0x10(r3)
/* 802D4684  90 A3 00 18 */	stw r5, 0x18(r3)
/* 802D4688  38 06 FF FF */	addi r0, r6, -1
/* 802D468C  7C 05 02 14 */	add r0, r5, r0
/* 802D4690  90 03 00 1C */	stw r0, 0x1c(r3)
/* 802D4694  80 03 00 18 */	lwz r0, 0x18(r3)
/* 802D4698  90 03 00 20 */	stw r0, 0x20(r3)
/* 802D469C  81 83 00 0C */	lwz r12, 0xc(r3)
/* 802D46A0  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802D46A4  7D 89 03 A6 */	mtctr r12
/* 802D46A8  4E 80 04 21 */	bctrl 
/* 802D46AC  7F E3 FB 78 */	mr r3, r31
/* 802D46B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D46B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D46B8  7C 08 03 A6 */	mtlr r0
/* 802D46BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D46C0  4E 80 00 20 */	blr 
