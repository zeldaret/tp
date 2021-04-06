lbl_80191C18:
/* 80191C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80191C1C  7C 08 02 A6 */	mflr r0
/* 80191C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80191C28  93 C1 00 08 */	stw r30, 8(r1)
/* 80191C2C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80191C30  7C 9F 23 78 */	mr r31, r4
/* 80191C34  41 82 00 A4 */	beq lbl_80191CD8
/* 80191C38  3C 60 80 3C */	lis r3, __vt__15dFile_warning_c@ha /* 0x803BB480@ha */
/* 80191C3C  38 03 B4 80 */	addi r0, r3, __vt__15dFile_warning_c@l /* 0x803BB480@l */
/* 80191C40  90 1E 00 00 */	stw r0, 0(r30)
/* 80191C44  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80191C48  38 80 00 01 */	li r4, 1
/* 80191C4C  48 0B 80 DD */	bl __dt__12dMsgString_cFv
/* 80191C50  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 80191C54  28 03 00 00 */	cmplwi r3, 0
/* 80191C58  41 82 00 18 */	beq lbl_80191C70
/* 80191C5C  38 80 00 01 */	li r4, 1
/* 80191C60  81 83 00 00 */	lwz r12, 0(r3)
/* 80191C64  81 8C 00 08 */	lwz r12, 8(r12)
/* 80191C68  7D 89 03 A6 */	mtctr r12
/* 80191C6C  4E 80 04 21 */	bctrl 
lbl_80191C70:
/* 80191C70  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 80191C74  28 03 00 00 */	cmplwi r3, 0
/* 80191C78  41 82 00 18 */	beq lbl_80191C90
/* 80191C7C  38 80 00 01 */	li r4, 1
/* 80191C80  81 83 00 00 */	lwz r12, 0(r3)
/* 80191C84  81 8C 00 08 */	lwz r12, 8(r12)
/* 80191C88  7D 89 03 A6 */	mtctr r12
/* 80191C8C  4E 80 04 21 */	bctrl 
lbl_80191C90:
/* 80191C90  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80191C94  28 03 00 00 */	cmplwi r3, 0
/* 80191C98  41 82 00 18 */	beq lbl_80191CB0
/* 80191C9C  38 80 00 01 */	li r4, 1
/* 80191CA0  81 83 00 00 */	lwz r12, 0(r3)
/* 80191CA4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80191CA8  7D 89 03 A6 */	mtctr r12
/* 80191CAC  4E 80 04 21 */	bctrl 
lbl_80191CB0:
/* 80191CB0  4B E8 2D 7D */	bl mDoExt_removeMesgFont__Fv
/* 80191CB4  34 1E 00 08 */	addic. r0, r30, 8
/* 80191CB8  41 82 00 10 */	beq lbl_80191CC8
/* 80191CBC  3C 60 80 3C */	lis r3, __vt__16dDlst_FileWarn_c@ha /* 0x803BB44C@ha */
/* 80191CC0  38 03 B4 4C */	addi r0, r3, __vt__16dDlst_FileWarn_c@l /* 0x803BB44C@l */
/* 80191CC4  90 1E 00 08 */	stw r0, 8(r30)
lbl_80191CC8:
/* 80191CC8  7F E0 07 35 */	extsh. r0, r31
/* 80191CCC  40 81 00 0C */	ble lbl_80191CD8
/* 80191CD0  7F C3 F3 78 */	mr r3, r30
/* 80191CD4  48 13 D0 69 */	bl __dl__FPv
lbl_80191CD8:
/* 80191CD8  7F C3 F3 78 */	mr r3, r30
/* 80191CDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80191CE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80191CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80191CE8  7C 08 03 A6 */	mtlr r0
/* 80191CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80191CF0  4E 80 00 20 */	blr 
