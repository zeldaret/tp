lbl_80010888:
/* 80010888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001088C  7C 08 02 A6 */	mflr r0
/* 80010890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80010894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80010898  93 C1 00 08 */	stw r30, 8(r1)
/* 8001089C  7C 7E 1B 79 */	or. r30, r3, r3
/* 800108A0  7C 9F 23 78 */	mr r31, r4
/* 800108A4  41 82 00 30 */	beq lbl_800108D4
/* 800108A8  3C 80 80 3A */	lis r4, __vt__16mDoExt_McaMorfSO@ha
/* 800108AC  38 04 32 B0 */	addi r0, r4, __vt__16mDoExt_McaMorfSO@l
/* 800108B0  90 1E 00 00 */	stw r0, 0(r30)
/* 800108B4  48 00 0A 5D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 800108B8  7F C3 F3 78 */	mr r3, r30
/* 800108BC  38 80 00 00 */	li r4, 0
/* 800108C0  4B FF F2 29 */	bl __dt__13mDoExt_morf_cFv
/* 800108C4  7F E0 07 35 */	extsh. r0, r31
/* 800108C8  40 81 00 0C */	ble lbl_800108D4
/* 800108CC  7F C3 F3 78 */	mr r3, r30
/* 800108D0  48 2B E4 6D */	bl __dl__FPv
lbl_800108D4:
/* 800108D4  7F C3 F3 78 */	mr r3, r30
/* 800108D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800108DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800108E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800108E4  7C 08 03 A6 */	mtlr r0
/* 800108E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800108EC  4E 80 00 20 */	blr 
