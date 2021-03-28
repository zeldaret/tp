lbl_801CF4D0:
/* 801CF4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CF4D4  7C 08 02 A6 */	mflr r0
/* 801CF4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CF4DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CF4E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 801CF4E4  41 82 00 60 */	beq lbl_801CF544
/* 801CF4E8  3C 60 80 3C */	lis r3, __vt__15renderingFmap_c@ha
/* 801CF4EC  38 03 D6 E8 */	addi r0, r3, __vt__15renderingFmap_c@l
/* 801CF4F0  90 1F 00 00 */	stw r0, 0(r31)
/* 801CF4F4  41 82 00 40 */	beq lbl_801CF534
/* 801CF4F8  3C 60 80 3A */	lis r3, __vt__18dRenderingFDAmap_c@ha
/* 801CF4FC  38 03 7C 90 */	addi r0, r3, __vt__18dRenderingFDAmap_c@l
/* 801CF500  90 1F 00 00 */	stw r0, 0(r31)
/* 801CF504  41 82 00 30 */	beq lbl_801CF534
/* 801CF508  3C 60 80 3A */	lis r3, __vt__15dRenderingMap_c@ha
/* 801CF50C  38 03 6F D4 */	addi r0, r3, __vt__15dRenderingMap_c@l
/* 801CF510  90 1F 00 00 */	stw r0, 0(r31)
/* 801CF514  41 82 00 20 */	beq lbl_801CF534
/* 801CF518  3C 60 80 3A */	lis r3, __vt__28dDrawPathWithNormalPattern_c@ha
/* 801CF51C  38 03 6F 94 */	addi r0, r3, __vt__28dDrawPathWithNormalPattern_c@l
/* 801CF520  90 1F 00 00 */	stw r0, 0(r31)
/* 801CF524  41 82 00 10 */	beq lbl_801CF534
/* 801CF528  3C 60 80 3A */	lis r3, __vt__11dDrawPath_c@ha
/* 801CF52C  38 03 7C F8 */	addi r0, r3, __vt__11dDrawPath_c@l
/* 801CF530  90 1F 00 00 */	stw r0, 0(r31)
lbl_801CF534:
/* 801CF534  7C 80 07 35 */	extsh. r0, r4
/* 801CF538  40 81 00 0C */	ble lbl_801CF544
/* 801CF53C  7F E3 FB 78 */	mr r3, r31
/* 801CF540  48 0F F7 FD */	bl __dl__FPv
lbl_801CF544:
/* 801CF544  7F E3 FB 78 */	mr r3, r31
/* 801CF548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CF54C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CF550  7C 08 03 A6 */	mtlr r0
/* 801CF554  38 21 00 10 */	addi r1, r1, 0x10
/* 801CF558  4E 80 00 20 */	blr 
