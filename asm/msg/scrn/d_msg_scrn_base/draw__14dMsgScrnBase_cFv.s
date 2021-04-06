lbl_8023C274:
/* 8023C274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C278  7C 08 02 A6 */	mflr r0
/* 8023C27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C284  93 C1 00 08 */	stw r30, 8(r1)
/* 8023C288  7C 7E 1B 78 */	mr r30, r3
/* 8023C28C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8023C290  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8023C294  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 8023C298  7F E3 FB 78 */	mr r3, r31
/* 8023C29C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023C2A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2A4  7D 89 03 A6 */	mtctr r12
/* 8023C2A8  4E 80 04 21 */	bctrl 
/* 8023C2AC  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023C2B0  C0 22 B1 A8 */	lfs f1, lit_3820(r2)
/* 8023C2B4  FC 40 08 90 */	fmr f2, f1
/* 8023C2B8  7F E4 FB 78 */	mr r4, r31
/* 8023C2BC  48 0B CC 19 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 8023C2C0  7F C3 F3 78 */	mr r3, r30
/* 8023C2C4  81 9E 00 00 */	lwz r12, 0(r30)
/* 8023C2C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2CC  7D 89 03 A6 */	mtctr r12
/* 8023C2D0  4E 80 04 21 */	bctrl 
/* 8023C2D4  7F E3 FB 78 */	mr r3, r31
/* 8023C2D8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8023C2DC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8023C2E0  7D 89 03 A6 */	mtctr r12
/* 8023C2E4  4E 80 04 21 */	bctrl 
/* 8023C2E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C2EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023C2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C2F4  7C 08 03 A6 */	mtlr r0
/* 8023C2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C2FC  4E 80 00 20 */	blr 
