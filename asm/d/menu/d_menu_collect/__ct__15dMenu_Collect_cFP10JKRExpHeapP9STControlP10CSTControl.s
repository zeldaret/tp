lbl_801B78C0:
/* 801B78C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B78C4  7C 08 02 A6 */	mflr r0
/* 801B78C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B78CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801B78D0  48 1A A9 09 */	bl _savegpr_28
/* 801B78D4  7C 7C 1B 78 */	mr r28, r3
/* 801B78D8  7C 9D 23 78 */	mr r29, r4
/* 801B78DC  7C BE 2B 78 */	mr r30, r5
/* 801B78E0  7C DF 33 78 */	mr r31, r6
/* 801B78E4  3C 60 80 3C */	lis r3, __vt__15dMenu_Collect_c@ha /* 0x803BC75C@ha */
/* 801B78E8  38 03 C7 5C */	addi r0, r3, __vt__15dMenu_Collect_c@l /* 0x803BC75C@l */
/* 801B78EC  90 1C 00 00 */	stw r0, 0(r28)
/* 801B78F0  38 60 02 64 */	li r3, 0x264
/* 801B78F4  48 11 73 59 */	bl __nw__FUl
/* 801B78F8  7C 60 1B 79 */	or. r0, r3, r3
/* 801B78FC  41 82 00 18 */	beq lbl_801B7914
/* 801B7900  7F A4 EB 78 */	mr r4, r29
/* 801B7904  7F C5 F3 78 */	mr r5, r30
/* 801B7908  7F E6 FB 78 */	mr r6, r31
/* 801B790C  4B FF 84 3D */	bl __ct__17dMenu_Collect2D_cFP10JKRExpHeapP9STControlP10CSTControl
/* 801B7910  7C 60 1B 78 */	mr r0, r3
lbl_801B7914:
/* 801B7914  90 1C 00 04 */	stw r0, 4(r28)
/* 801B7918  38 60 03 DC */	li r3, 0x3dc
/* 801B791C  48 11 73 31 */	bl __nw__FUl
/* 801B7920  7C 60 1B 79 */	or. r0, r3, r3
/* 801B7924  41 82 00 18 */	beq lbl_801B793C
/* 801B7928  7F A4 EB 78 */	mr r4, r29
/* 801B792C  80 BC 00 04 */	lwz r5, 4(r28)
/* 801B7930  7F E6 FB 78 */	mr r6, r31
/* 801B7934  4B FF EB 21 */	bl __ct__17dMenu_Collect3D_cFP10JKRExpHeapP17dMenu_Collect2D_cP10CSTControl
/* 801B7938  7C 60 1B 78 */	mr r0, r3
lbl_801B793C:
/* 801B793C  90 1C 00 08 */	stw r0, 8(r28)
/* 801B7940  7F 83 E3 78 */	mr r3, r28
/* 801B7944  39 61 00 20 */	addi r11, r1, 0x20
/* 801B7948  48 1A A8 DD */	bl _restgpr_28
/* 801B794C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B7950  7C 08 03 A6 */	mtlr r0
/* 801B7954  38 21 00 20 */	addi r1, r1, 0x20
/* 801B7958  4E 80 00 20 */	blr 
