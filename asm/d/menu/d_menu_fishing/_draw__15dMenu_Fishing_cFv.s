lbl_801C514C:
/* 801C514C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C5150  7C 08 02 A6 */	mflr r0
/* 801C5154  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C5158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C515C  93 C1 00 08 */	stw r30, 8(r1)
/* 801C5160  7C 7E 1B 78 */	mr r30, r3
/* 801C5164  80 03 00 08 */	lwz r0, 8(r3)
/* 801C5168  28 00 00 00 */	cmplwi r0, 0
/* 801C516C  41 82 00 80 */	beq lbl_801C51EC
/* 801C5170  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801C5174  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801C5178  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801C517C  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 801C5180  38 80 00 FF */	li r4, 0xff
/* 801C5184  81 83 00 00 */	lwz r12, 0(r3)
/* 801C5188  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801C518C  7D 89 03 A6 */	mtctr r12
/* 801C5190  4E 80 04 21 */	bctrl 
/* 801C5194  80 7E 01 F0 */	lwz r3, 0x1f0(r30)
/* 801C5198  C0 22 A7 08 */	lfs f1, lit_3904(r2)
/* 801C519C  FC 40 08 90 */	fmr f2, f1
/* 801C51A0  C0 62 A7 0C */	lfs f3, lit_3905(r2)
/* 801C51A4  C0 82 A7 10 */	lfs f4, lit_3906(r2)
/* 801C51A8  38 80 00 00 */	li r4, 0
/* 801C51AC  38 A0 00 00 */	li r5, 0
/* 801C51B0  38 C0 00 00 */	li r6, 0
/* 801C51B4  81 83 00 00 */	lwz r12, 0(r3)
/* 801C51B8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801C51BC  7D 89 03 A6 */	mtctr r12
/* 801C51C0  4E 80 04 21 */	bctrl 
/* 801C51C4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801C51C8  C0 22 A7 08 */	lfs f1, lit_3904(r2)
/* 801C51CC  FC 40 08 90 */	fmr f2, f1
/* 801C51D0  7F E4 FB 78 */	mr r4, r31
/* 801C51D4  48 13 3D 01 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801C51D8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801C51DC  C0 22 A7 08 */	lfs f1, lit_3904(r2)
/* 801C51E0  FC 40 08 90 */	fmr f2, f1
/* 801C51E4  7F E4 FB 78 */	mr r4, r31
/* 801C51E8  48 13 3C ED */	bl draw__9J2DScreenFffPC14J2DGrafContext
lbl_801C51EC:
/* 801C51EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C51F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C51F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C51F8  7C 08 03 A6 */	mtlr r0
/* 801C51FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801C5200  4E 80 00 20 */	blr 
