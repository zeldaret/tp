lbl_801C0380:
/* 801C0380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0384  7C 08 02 A6 */	mflr r0
/* 801C0388  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C038C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C0390  7C 7F 1B 79 */	or. r31, r3, r3
/* 801C0394  41 82 00 80 */	beq lbl_801C0414
/* 801C0398  3C 60 80 3C */	lis r3, __vt__15renderingDmap_c@ha /* 0x803BCE68@ha */
/* 801C039C  38 03 CE 68 */	addi r0, r3, __vt__15renderingDmap_c@l /* 0x803BCE68@l */
/* 801C03A0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03A4  41 82 00 60 */	beq lbl_801C0404
/* 801C03A8  3C 60 80 3A */	lis r3, __vt__19renderingPlusDoor_c@ha /* 0x803A7D80@ha */
/* 801C03AC  38 03 7D 80 */	addi r0, r3, __vt__19renderingPlusDoor_c@l /* 0x803A7D80@l */
/* 801C03B0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03B4  41 82 00 50 */	beq lbl_801C0404
/* 801C03B8  3C 60 80 3A */	lis r3, __vt__16renderingDAmap_c@ha /* 0x803A7EE0@ha */
/* 801C03BC  38 03 7E E0 */	addi r0, r3, __vt__16renderingDAmap_c@l /* 0x803A7EE0@l */
/* 801C03C0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03C4  41 82 00 40 */	beq lbl_801C0404
/* 801C03C8  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha /* 0x803A7C90@ha */
/* 801C03CC  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l /* 0x803A7C90@l */
/* 801C03D0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03D4  41 82 00 30 */	beq lbl_801C0404
/* 801C03D8  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha /* 0x803A6FD4@ha */
/* 801C03DC  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l /* 0x803A6FD4@l */
/* 801C03E0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03E4  41 82 00 20 */	beq lbl_801C0404
/* 801C03E8  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha /* 0x803A6F94@ha */
/* 801C03EC  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l /* 0x803A6F94@l */
/* 801C03F0  90 1F 00 00 */	stw r0, 0(r31)
/* 801C03F4  41 82 00 10 */	beq lbl_801C0404
/* 801C03F8  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha /* 0x803A7CF8@ha */
/* 801C03FC  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l /* 0x803A7CF8@l */
/* 801C0400  90 1F 00 00 */	stw r0, 0(r31)
lbl_801C0404:
/* 801C0404  7C 80 07 35 */	extsh. r0, r4
/* 801C0408  40 81 00 0C */	ble lbl_801C0414
/* 801C040C  7F E3 FB 78 */	mr r3, r31
/* 801C0410  48 10 E9 2D */	bl __dl__FPv
lbl_801C0414:
/* 801C0414  7F E3 FB 78 */	mr r3, r31
/* 801C0418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C041C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0420  7C 08 03 A6 */	mtlr r0
/* 801C0424  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0428  4E 80 00 20 */	blr 
