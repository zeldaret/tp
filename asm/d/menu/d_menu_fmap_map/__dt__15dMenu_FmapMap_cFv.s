lbl_801CED38:
/* 801CED38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CED3C  7C 08 02 A6 */	mflr r0
/* 801CED40  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CED44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CED48  93 C1 00 08 */	stw r30, 8(r1)
/* 801CED4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 801CED50  7C 9F 23 78 */	mr r31, r4
/* 801CED54  41 82 00 78 */	beq lbl_801CEDCC
/* 801CED58  3C 80 80 3C */	lis r4, __vt__15dMenu_FmapMap_c@ha
/* 801CED5C  38 04 D6 80 */	addi r0, r4, __vt__15dMenu_FmapMap_c@l
/* 801CED60  90 1E 00 00 */	stw r0, 0(r30)
/* 801CED64  48 00 00 D9 */	bl _delete__15dMenu_FmapMap_cFv
/* 801CED68  28 1E 00 00 */	cmplwi r30, 0
/* 801CED6C  41 82 00 50 */	beq lbl_801CEDBC
/* 801CED70  3C 60 80 3C */	lis r3, __vt__15renderingFmap_c@ha
/* 801CED74  38 03 D6 E8 */	addi r0, r3, __vt__15renderingFmap_c@l
/* 801CED78  90 1E 00 00 */	stw r0, 0(r30)
/* 801CED7C  41 82 00 40 */	beq lbl_801CEDBC
/* 801CED80  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha
/* 801CED84  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l
/* 801CED88  90 1E 00 00 */	stw r0, 0(r30)
/* 801CED8C  41 82 00 30 */	beq lbl_801CEDBC
/* 801CED90  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha
/* 801CED94  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l
/* 801CED98  90 1E 00 00 */	stw r0, 0(r30)
/* 801CED9C  41 82 00 20 */	beq lbl_801CEDBC
/* 801CEDA0  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 801CEDA4  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 801CEDA8  90 1E 00 00 */	stw r0, 0(r30)
/* 801CEDAC  41 82 00 10 */	beq lbl_801CEDBC
/* 801CEDB0  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 801CEDB4  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 801CEDB8  90 1E 00 00 */	stw r0, 0(r30)
lbl_801CEDBC:
/* 801CEDBC  7F E0 07 35 */	extsh. r0, r31
/* 801CEDC0  40 81 00 0C */	ble lbl_801CEDCC
/* 801CEDC4  7F C3 F3 78 */	mr r3, r30
/* 801CEDC8  48 0F FF 75 */	bl __dl__FPv
lbl_801CEDCC:
/* 801CEDCC  7F C3 F3 78 */	mr r3, r30
/* 801CEDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CEDD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CEDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CEDDC  7C 08 03 A6 */	mtlr r0
/* 801CEDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801CEDE4  4E 80 00 20 */	blr 
