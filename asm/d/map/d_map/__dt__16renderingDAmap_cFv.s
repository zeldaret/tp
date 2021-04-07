lbl_8002B150:
/* 8002B150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002B154  7C 08 02 A6 */	mflr r0
/* 8002B158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002B15C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002B160  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002B164  41 82 00 60 */	beq lbl_8002B1C4
/* 8002B168  3C 60 80 3A */	lis r3, __vt__16renderingDAmap_c@ha /* 0x803A7EE0@ha */
/* 8002B16C  38 03 7E E0 */	addi r0, r3, __vt__16renderingDAmap_c@l /* 0x803A7EE0@l */
/* 8002B170  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B174  41 82 00 40 */	beq lbl_8002B1B4
/* 8002B178  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha /* 0x803A7C90@ha */
/* 8002B17C  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l /* 0x803A7C90@l */
/* 8002B180  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B184  41 82 00 30 */	beq lbl_8002B1B4
/* 8002B188  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha /* 0x803A6FD4@ha */
/* 8002B18C  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l /* 0x803A6FD4@l */
/* 8002B190  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B194  41 82 00 20 */	beq lbl_8002B1B4
/* 8002B198  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha /* 0x803A6F94@ha */
/* 8002B19C  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l /* 0x803A6F94@l */
/* 8002B1A0  90 1F 00 00 */	stw r0, 0(r31)
/* 8002B1A4  41 82 00 10 */	beq lbl_8002B1B4
/* 8002B1A8  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha /* 0x803A7CF8@ha */
/* 8002B1AC  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l /* 0x803A7CF8@l */
/* 8002B1B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_8002B1B4:
/* 8002B1B4  7C 80 07 35 */	extsh. r0, r4
/* 8002B1B8  40 81 00 0C */	ble lbl_8002B1C4
/* 8002B1BC  7F E3 FB 78 */	mr r3, r31
/* 8002B1C0  48 2A 3B 7D */	bl __dl__FPv
lbl_8002B1C4:
/* 8002B1C4  7F E3 FB 78 */	mr r3, r31
/* 8002B1C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002B1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002B1D0  7C 08 03 A6 */	mtlr r0
/* 8002B1D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8002B1D8  4E 80 00 20 */	blr 
