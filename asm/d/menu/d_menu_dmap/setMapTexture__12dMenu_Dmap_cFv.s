lbl_801BDEF8:
/* 801BDEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BDEFC  7C 08 02 A6 */	mflr r0
/* 801BDF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BDF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BDF08  7C 7F 1B 78 */	mr r31, r3
/* 801BDF0C  80 63 00 04 */	lwz r3, 4(r3)
/* 801BDF10  48 00 2F D1 */	bl getMapBlendPer__20dMenu_StageMapCtrl_cCFv
/* 801BDF14  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BDF18  80 63 0C C4 */	lwz r3, 0xcc4(r3)
/* 801BDF1C  C0 02 A5 EC */	lfs f0, lit_3963(r2)
/* 801BDF20  EC 40 08 28 */	fsubs f2, f0, f1
/* 801BDF24  81 83 00 00 */	lwz r12, 0(r3)
/* 801BDF28  81 8C 01 04 */	lwz r12, 0x104(r12)
/* 801BDF2C  7D 89 03 A6 */	mtctr r12
/* 801BDF30  4E 80 04 21 */	bctrl 
/* 801BDF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BDF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BDF3C  7C 08 03 A6 */	mtlr r0
/* 801BDF40  38 21 00 10 */	addi r1, r1, 0x10
/* 801BDF44  4E 80 00 20 */	blr 
