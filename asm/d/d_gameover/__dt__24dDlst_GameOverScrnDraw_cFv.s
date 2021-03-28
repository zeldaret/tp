lbl_8019BBFC:
/* 8019BBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BC00  7C 08 02 A6 */	mflr r0
/* 8019BC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BC08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8019BC0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8019BC10  7C 7E 1B 79 */	or. r30, r3, r3
/* 8019BC14  7C 9F 23 78 */	mr r31, r4
/* 8019BC18  41 82 00 7C */	beq lbl_8019BC94
/* 8019BC1C  3C 60 80 3C */	lis r3, __vt__24dDlst_GameOverScrnDraw_c@ha
/* 8019BC20  38 03 BD 68 */	addi r0, r3, __vt__24dDlst_GameOverScrnDraw_c@l
/* 8019BC24  90 1E 00 00 */	stw r0, 0(r30)
/* 8019BC28  80 7E 00 08 */	lwz r3, 8(r30)
/* 8019BC2C  28 03 00 00 */	cmplwi r3, 0
/* 8019BC30  41 82 00 18 */	beq lbl_8019BC48
/* 8019BC34  38 80 00 01 */	li r4, 1
/* 8019BC38  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BC3C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8019BC40  7D 89 03 A6 */	mtctr r12
/* 8019BC44  4E 80 04 21 */	bctrl 
lbl_8019BC48:
/* 8019BC48  80 7E 00 04 */	lwz r3, 4(r30)
/* 8019BC4C  28 03 00 00 */	cmplwi r3, 0
/* 8019BC50  41 82 00 18 */	beq lbl_8019BC68
/* 8019BC54  38 80 00 01 */	li r4, 1
/* 8019BC58  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BC5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8019BC60  7D 89 03 A6 */	mtctr r12
/* 8019BC64  4E 80 04 21 */	bctrl 
lbl_8019BC68:
/* 8019BC68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019BC6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019BC70  80 63 5D 30 */	lwz r3, 0x5d30(r3)
/* 8019BC74  81 83 00 00 */	lwz r12, 0(r3)
/* 8019BC78  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8019BC7C  7D 89 03 A6 */	mtctr r12
/* 8019BC80  4E 80 04 21 */	bctrl 
/* 8019BC84  7F E0 07 35 */	extsh. r0, r31
/* 8019BC88  40 81 00 0C */	ble lbl_8019BC94
/* 8019BC8C  7F C3 F3 78 */	mr r3, r30
/* 8019BC90  48 13 30 AD */	bl __dl__FPv
lbl_8019BC94:
/* 8019BC94  7F C3 F3 78 */	mr r3, r30
/* 8019BC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8019BC9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8019BCA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BCA4  7C 08 03 A6 */	mtlr r0
/* 8019BCA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8019BCAC  4E 80 00 20 */	blr 
