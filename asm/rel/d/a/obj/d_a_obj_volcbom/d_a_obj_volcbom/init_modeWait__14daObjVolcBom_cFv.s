lbl_80D25094:
/* 80D25094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D25098  7C 08 02 A6 */	mflr r0
/* 80D2509C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D250A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D250A4  7C 7F 1B 78 */	mr r31, r3
/* 80D250A8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D250AC  D0 03 05 38 */	stfs f0, 0x538(r3)
/* 80D250B0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D250B4  D0 03 05 3C */	stfs f0, 0x53c(r3)
/* 80D250B8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D250BC  D0 03 05 40 */	stfs f0, 0x540(r3)
/* 80D250C0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D250C4  D0 03 05 50 */	stfs f0, 0x550(r3)
/* 80D250C8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D250CC  D0 03 05 54 */	stfs f0, 0x554(r3)
/* 80D250D0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D250D4  D0 03 05 58 */	stfs f0, 0x558(r3)
/* 80D250D8  48 00 02 8D */	bl calcMidnaWaitPos__14daObjVolcBom_cFv
/* 80D250DC  7F E3 FB 78 */	mr r3, r31
/* 80D250E0  48 00 01 45 */	bl appear__14daObjVolcBom_cFv
/* 80D250E4  38 00 00 03 */	li r0, 3
/* 80D250E8  98 1F 09 61 */	stb r0, 0x961(r31)
/* 80D250EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D250F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D250F4  7C 08 03 A6 */	mtlr r0
/* 80D250F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D250FC  4E 80 00 20 */	blr 
