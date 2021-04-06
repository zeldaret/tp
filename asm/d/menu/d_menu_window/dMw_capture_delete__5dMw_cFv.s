lbl_801FBE14:
/* 801FBE14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FBE18  7C 08 02 A6 */	mflr r0
/* 801FBE1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FBE20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FBE24  93 C1 00 08 */	stw r30, 8(r1)
/* 801FBE28  7C 7E 1B 78 */	mr r30, r3
/* 801FBE2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801FBE30  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801FBE34  88 1F 5E B5 */	lbz r0, 0x5eb5(r31)
/* 801FBE38  28 00 00 00 */	cmplwi r0, 0
/* 801FBE3C  41 82 00 40 */	beq lbl_801FBE7C
/* 801FBE40  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 801FBE44  28 03 00 00 */	cmplwi r3, 0
/* 801FBE48  41 82 00 24 */	beq lbl_801FBE6C
/* 801FBE4C  41 82 00 18 */	beq lbl_801FBE64
/* 801FBE50  38 80 00 01 */	li r4, 1
/* 801FBE54  81 83 00 00 */	lwz r12, 0(r3)
/* 801FBE58  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FBE5C  7D 89 03 A6 */	mtctr r12
/* 801FBE60  4E 80 04 21 */	bctrl 
lbl_801FBE64:
/* 801FBE64  38 00 00 00 */	li r0, 0
/* 801FBE68  90 1E 01 0C */	stw r0, 0x10c(r30)
lbl_801FBE6C:
/* 801FBE6C  38 00 00 00 */	li r0, 0
/* 801FBE70  98 1F 5E B5 */	stb r0, 0x5eb5(r31)
/* 801FBE74  38 00 00 02 */	li r0, 2
/* 801FBE78  98 1E 01 51 */	stb r0, 0x151(r30)
lbl_801FBE7C:
/* 801FBE7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FBE80  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FBE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FBE88  7C 08 03 A6 */	mtlr r0
/* 801FBE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FBE90  4E 80 00 20 */	blr 
