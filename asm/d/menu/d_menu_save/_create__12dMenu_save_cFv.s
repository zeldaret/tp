lbl_801EF7AC:
/* 801EF7AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF7B0  7C 08 02 A6 */	mflr r0
/* 801EF7B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF7B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801EF7BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801EF7C0  7C 7E 1B 78 */	mr r30, r3
/* 801EF7C4  38 60 00 30 */	li r3, 0x30
/* 801EF7C8  48 0D F4 85 */	bl __nw__FUl
/* 801EF7CC  7C 60 1B 79 */	or. r0, r3, r3
/* 801EF7D0  41 82 00 2C */	beq lbl_801EF7FC
/* 801EF7D4  38 80 00 02 */	li r4, 2
/* 801EF7D8  38 A0 00 02 */	li r5, 2
/* 801EF7DC  38 C0 00 01 */	li r6, 1
/* 801EF7E0  38 E0 00 01 */	li r7, 1
/* 801EF7E4  C0 22 AA 38 */	lfs f1, lit_3849(r2)
/* 801EF7E8  C0 42 AA 3C */	lfs f2, lit_3850(r2)
/* 801EF7EC  39 00 00 00 */	li r8, 0
/* 801EF7F0  39 20 20 00 */	li r9, 0x2000
/* 801EF7F4  4B E4 28 51 */	bl __ct__9STControlFssssffss
/* 801EF7F8  7C 60 1B 78 */	mr r0, r3
lbl_801EF7FC:
/* 801EF7FC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 801EF800  88 1E 01 BC */	lbz r0, 0x1bc(r30)
/* 801EF804  28 00 00 01 */	cmplwi r0, 1
/* 801EF808  41 82 00 14 */	beq lbl_801EF81C
/* 801EF80C  28 00 00 03 */	cmplwi r0, 3
/* 801EF810  41 82 00 0C */	beq lbl_801EF81C
/* 801EF814  28 00 00 04 */	cmplwi r0, 4
/* 801EF818  40 82 00 20 */	bne lbl_801EF838
lbl_801EF81C:
/* 801EF81C  4B E1 F6 15 */	bl mDoExt_getJ2dHeap__Fv
/* 801EF820  7C 65 1B 78 */	mr r5, r3
/* 801EF824  3C 60 80 39 */	lis r3, d_menu_d_menu_save__stringBase0@ha
/* 801EF828  38 63 79 60 */	addi r3, r3, d_menu_d_menu_save__stringBase0@l
/* 801EF82C  38 80 00 00 */	li r4, 0
/* 801EF830  4B E2 65 E5 */	bl create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap
/* 801EF834  90 7E 00 08 */	stw r3, 8(r30)
lbl_801EF838:
/* 801EF838  88 1E 01 BC */	lbz r0, 0x1bc(r30)
/* 801EF83C  28 00 00 02 */	cmplwi r0, 2
/* 801EF840  41 82 00 14 */	beq lbl_801EF854
/* 801EF844  28 00 00 03 */	cmplwi r0, 3
/* 801EF848  41 82 00 0C */	beq lbl_801EF854
/* 801EF84C  28 00 00 04 */	cmplwi r0, 4
/* 801EF850  40 82 00 84 */	bne lbl_801EF8D4
lbl_801EF854:
/* 801EF854  2C 00 00 03 */	cmpwi r0, 3
/* 801EF858  41 82 00 30 */	beq lbl_801EF888
/* 801EF85C  40 80 00 10 */	bge lbl_801EF86C
/* 801EF860  2C 00 00 02 */	cmpwi r0, 2
/* 801EF864  40 80 00 14 */	bge lbl_801EF878
/* 801EF868  48 00 00 20 */	b lbl_801EF888
lbl_801EF86C:
/* 801EF86C  2C 00 00 05 */	cmpwi r0, 5
/* 801EF870  40 80 00 18 */	bge lbl_801EF888
/* 801EF874  48 00 00 0C */	b lbl_801EF880
lbl_801EF878:
/* 801EF878  3B E0 00 02 */	li r31, 2
/* 801EF87C  48 00 00 10 */	b lbl_801EF88C
lbl_801EF880:
/* 801EF880  3B E0 00 03 */	li r31, 3
/* 801EF884  48 00 00 08 */	b lbl_801EF88C
lbl_801EF888:
/* 801EF888  3B E0 00 01 */	li r31, 1
lbl_801EF88C:
/* 801EF88C  38 60 00 68 */	li r3, 0x68
/* 801EF890  48 0D F3 BD */	bl __nw__FUl
/* 801EF894  7C 60 1B 79 */	or. r0, r3, r3
/* 801EF898  41 82 00 1C */	beq lbl_801EF8B4
/* 801EF89C  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 801EF8A0  7F E5 FB 78 */	mr r5, r31
/* 801EF8A4  38 C0 00 00 */	li r6, 0
/* 801EF8A8  38 E0 00 00 */	li r7, 0
/* 801EF8AC  48 04 D3 DD */	bl __ct__17dMsgScrnExplain_cFP9STControlUcbUc
/* 801EF8B0  7C 60 1B 78 */	mr r0, r3
lbl_801EF8B4:
/* 801EF8B4  90 1E 21 8C */	stw r0, 0x218c(r30)
/* 801EF8B8  38 00 00 00 */	li r0, 0
/* 801EF8BC  98 1E 21 9D */	stb r0, 0x219d(r30)
/* 801EF8C0  98 1E 21 90 */	stb r0, 0x2190(r30)
/* 801EF8C4  B0 1E 21 92 */	sth r0, 0x2192(r30)
/* 801EF8C8  98 1E 21 94 */	stb r0, 0x2194(r30)
/* 801EF8CC  80 1E 21 8C */	lwz r0, 0x218c(r30)
/* 801EF8D0  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_801EF8D4:
/* 801EF8D4  7F C3 F3 78 */	mr r3, r30
/* 801EF8D8  48 00 10 81 */	bl displayInit__12dMenu_save_cFv
/* 801EF8DC  38 00 FF FF */	li r0, -1
/* 801EF8E0  3C 60 80 43 */	lis r3, g_msHIO@ha
/* 801EF8E4  38 63 E8 4C */	addi r3, r3, g_msHIO@l
/* 801EF8E8  98 03 00 04 */	stb r0, 4(r3)
/* 801EF8EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801EF8F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801EF8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF8F8  7C 08 03 A6 */	mtlr r0
/* 801EF8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF900  4E 80 00 20 */	blr 
