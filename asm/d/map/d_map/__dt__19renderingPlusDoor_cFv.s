lbl_8002B0B4:
/* 8002B0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002B0B8  7C 08 02 A6 */	mflr r0
/* 8002B0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002B0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002B0C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002B0C8  41 82 00 70 */	beq lbl_8002B138
/* 8002B0CC  3C 60 80 3A */	lis r3, __vt__19renderingPlusDoor_c@ha /* 0x803A7D80@ha */
/* 8002B0D0  38 03 7D 80 */	addi r0, r3, __vt__19renderingPlusDoor_c@l /* 0x803A7D80@l */
/* 8002B0D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B0D8  41 82 00 50 */	beq lbl_8002B128
/* 8002B0DC  3C 60 80 3A */	lis r3, __vt__16renderingDAmap_c@ha /* 0x803A7EE0@ha */
/* 8002B0E0  38 03 7E E0 */	addi r0, r3, __vt__16renderingDAmap_c@l /* 0x803A7EE0@l */
/* 8002B0E4  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B0E8  41 82 00 40 */	beq lbl_8002B128
/* 8002B0EC  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha /* 0x803A7C90@ha */
/* 8002B0F0  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l /* 0x803A7C90@l */
/* 8002B0F4  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B0F8  41 82 00 30 */	beq lbl_8002B128
/* 8002B0FC  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha /* 0x803A6FD4@ha */
/* 8002B100  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l /* 0x803A6FD4@l */
/* 8002B104  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B108  41 82 00 20 */	beq lbl_8002B128
/* 8002B10C  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha /* 0x803A6F94@ha */
/* 8002B110  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l /* 0x803A6F94@l */
/* 8002B114  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B118  41 82 00 10 */	beq lbl_8002B128
/* 8002B11C  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha /* 0x803A7CF8@ha */
/* 8002B120  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l /* 0x803A7CF8@l */
/* 8002B124  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002B128:
/* 8002B128  7C 80 07 35 */	extsh. r0, r4
/* 8002B12C  40 81 00 0C */	ble lbl_8002B138
/* 8002B130  7F E3 FB 78 */	mr r3, r31
/* 8002B134  48 2A 3C 09 */	bl __dl__FPv
lbl_8002B138:
/* 8002B138  7F E3 FB 78 */	mr r3, r31
/* 8002B13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002B140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002B144  7C 08 03 A6 */	mtlr r0
/* 8002B148  38 21 00 10 */	addi r1, r1, 0x10
/* 8002B14C  4E 80 00 20 */	blr 
