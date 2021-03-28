lbl_801C04AC:
/* 801C04AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C04B0  7C 08 02 A6 */	mflr r0
/* 801C04B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C04B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C04BC  93 C1 00 08 */	stw r30, 8(r1)
/* 801C04C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 801C04C4  7C 9F 23 78 */	mr r31, r4
/* 801C04C8  41 82 00 38 */	beq lbl_801C0500
/* 801C04CC  3C 60 80 3C */	lis r3, __vt__15dMenu_DmapMap_c@ha
/* 801C04D0  38 03 CA E0 */	addi r0, r3, __vt__15dMenu_DmapMap_c@l
/* 801C04D4  90 1E 00 00 */	stw r0, 0(r30)
/* 801C04D8  38 7E 00 04 */	addi r3, r30, 4
/* 801C04DC  3C 80 80 1C */	lis r4, __dt__15renderingDmap_cFv@ha
/* 801C04E0  38 84 03 80 */	addi r4, r4, __dt__15renderingDmap_cFv@l
/* 801C04E4  38 A0 00 38 */	li r5, 0x38
/* 801C04E8  38 C0 00 02 */	li r6, 2
/* 801C04EC  48 1A 17 FD */	bl __destroy_arr
/* 801C04F0  7F E0 07 35 */	extsh. r0, r31
/* 801C04F4  40 81 00 0C */	ble lbl_801C0500
/* 801C04F8  7F C3 F3 78 */	mr r3, r30
/* 801C04FC  48 10 E8 41 */	bl __dl__FPv
lbl_801C0500:
/* 801C0500  7F C3 F3 78 */	mr r3, r30
/* 801C0504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C0508  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C050C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0510  7C 08 03 A6 */	mtlr r0
/* 801C0514  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0518  4E 80 00 20 */	blr 
