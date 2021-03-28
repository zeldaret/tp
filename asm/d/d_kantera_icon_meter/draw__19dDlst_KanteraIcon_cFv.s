lbl_801AECB8:
/* 801AECB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AECBC  7C 08 02 A6 */	mflr r0
/* 801AECC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AECC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AECC8  93 C1 00 08 */	stw r30, 8(r1)
/* 801AECCC  7C 7E 1B 78 */	mr r30, r3
/* 801AECD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AECD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AECD8  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 801AECDC  7F E3 FB 78 */	mr r3, r31
/* 801AECE0  81 9F 00 00 */	lwz r12, 0(r31)
/* 801AECE4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801AECE8  7D 89 03 A6 */	mtctr r12
/* 801AECEC  4E 80 04 21 */	bctrl 
/* 801AECF0  80 7E 00 04 */	lwz r3, 4(r30)
/* 801AECF4  C0 22 A5 08 */	lfs f1, lit_3776(r2)
/* 801AECF8  FC 40 08 90 */	fmr f2, f1
/* 801AECFC  7F E4 FB 78 */	mr r4, r31
/* 801AED00  48 14 A1 D5 */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 801AED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AED08  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AED0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AED10  7C 08 03 A6 */	mtlr r0
/* 801AED14  38 21 00 10 */	addi r1, r1, 0x10
/* 801AED18  4E 80 00 20 */	blr 
