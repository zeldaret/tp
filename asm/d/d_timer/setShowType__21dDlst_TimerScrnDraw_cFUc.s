lbl_8025FAC4:
/* 8025FAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FAC8  7C 08 02 A6 */	mflr r0
/* 8025FACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025FAD4  93 C1 00 08 */	stw r30, 8(r1)
/* 8025FAD8  7C 7E 1B 78 */	mr r30, r3
/* 8025FADC  7C 9F 23 78 */	mr r31, r4
/* 8025FAE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8025FAE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8025FAE8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8025FAEC  4B DC D0 D9 */	bl setTimerType__14dComIfG_play_cFUc
/* 8025FAF0  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8025FAF4  28 03 00 00 */	cmplwi r3, 0
/* 8025FAF8  41 82 00 18 */	beq lbl_8025FB10
/* 8025FAFC  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8025FB00  41 82 00 0C */	beq lbl_8025FB0C
/* 8025FB04  4B FF 5A C5 */	bl show__13CPaneMgrAlphaFv
/* 8025FB08  48 00 00 08 */	b lbl_8025FB10
lbl_8025FB0C:
/* 8025FB0C  4B FF 5A FD */	bl hide__13CPaneMgrAlphaFv
lbl_8025FB10:
/* 8025FB10  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8025FB14  41 82 00 28 */	beq lbl_8025FB3C
/* 8025FB18  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8025FB1C  28 03 00 00 */	cmplwi r3, 0
/* 8025FB20  41 82 00 08 */	beq lbl_8025FB28
/* 8025FB24  4B FF 5A A5 */	bl show__13CPaneMgrAlphaFv
lbl_8025FB28:
/* 8025FB28  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8025FB2C  28 03 00 00 */	cmplwi r3, 0
/* 8025FB30  41 82 00 2C */	beq lbl_8025FB5C
/* 8025FB34  4B FF 5A 95 */	bl show__13CPaneMgrAlphaFv
/* 8025FB38  48 00 00 24 */	b lbl_8025FB5C
lbl_8025FB3C:
/* 8025FB3C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8025FB40  28 03 00 00 */	cmplwi r3, 0
/* 8025FB44  41 82 00 08 */	beq lbl_8025FB4C
/* 8025FB48  4B FF 5A C1 */	bl hide__13CPaneMgrAlphaFv
lbl_8025FB4C:
/* 8025FB4C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8025FB50  28 03 00 00 */	cmplwi r3, 0
/* 8025FB54  41 82 00 08 */	beq lbl_8025FB5C
/* 8025FB58  4B FF 5A B1 */	bl hide__13CPaneMgrAlphaFv
lbl_8025FB5C:
/* 8025FB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025FB60  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025FB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FB68  7C 08 03 A6 */	mtlr r0
/* 8025FB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FB70  4E 80 00 20 */	blr 
