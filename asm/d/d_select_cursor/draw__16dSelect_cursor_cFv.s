lbl_80194C30:
/* 80194C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80194C34  7C 08 02 A6 */	mflr r0
/* 80194C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80194C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80194C40  93 C1 00 08 */	stw r30, 8(r1)
/* 80194C44  7C 7E 1B 78 */	mr r30, r3
/* 80194C48  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80194C4C  48 0C 0B DD */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80194C50  7F C3 F3 78 */	mr r3, r30
/* 80194C54  48 00 00 6D */	bl update__16dSelect_cursor_cFv
/* 80194C58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80194C5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80194C60  83 E3 5F 50 */	lwz r31, 0x5f50(r3)
/* 80194C64  7F E3 FB 78 */	mr r3, r31
/* 80194C68  81 9F 00 00 */	lwz r12, 0(r31)
/* 80194C6C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80194C70  7D 89 03 A6 */	mtctr r12
/* 80194C74  4E 80 04 21 */	bctrl 
/* 80194C78  80 7E 00 04 */	lwz r3, 4(r30)
/* 80194C7C  C0 22 A0 50 */	lfs f1, lit_3808(r2)
/* 80194C80  FC 40 08 90 */	fmr f2, f1
/* 80194C84  7F E4 FB 78 */	mr r4, r31
/* 80194C88  48 16 42 4D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80194C8C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80194C90  28 03 00 00 */	cmplwi r3, 0
/* 80194C94  41 82 00 14 */	beq lbl_80194CA8
/* 80194C98  85 83 00 04 */	lwzu r12, 4(r3)
/* 80194C9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80194CA0  7D 89 03 A6 */	mtctr r12
/* 80194CA4  4E 80 04 21 */	bctrl 
lbl_80194CA8:
/* 80194CA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80194CAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80194CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80194CB4  7C 08 03 A6 */	mtlr r0
/* 80194CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80194CBC  4E 80 00 20 */	blr 
