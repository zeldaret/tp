lbl_80C7C560:
/* 80C7C560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C564  7C 08 02 A6 */	mflr r0
/* 80C7C568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C56C  3C 60 80 C8 */	lis r3, l_HIO@ha /* 0x80C7CA64@ha */
/* 80C7C570  38 63 CA 64 */	addi r3, r3, l_HIO@l /* 0x80C7CA64@l */
/* 80C7C574  4B FF D8 D9 */	bl __ct__19daLv6TogeTrap_HIO_cFv
/* 80C7C578  3C 80 80 C8 */	lis r4, __dt__19daLv6TogeTrap_HIO_cFv@ha /* 0x80C7C504@ha */
/* 80C7C57C  38 84 C5 04 */	addi r4, r4, __dt__19daLv6TogeTrap_HIO_cFv@l /* 0x80C7C504@l */
/* 80C7C580  3C A0 80 C8 */	lis r5, lit_3625@ha /* 0x80C7CA58@ha */
/* 80C7C584  38 A5 CA 58 */	addi r5, r5, lit_3625@l /* 0x80C7CA58@l */
/* 80C7C588  4B FF D8 51 */	bl __register_global_object
/* 80C7C58C  3C 60 80 C8 */	lis r3, mCcDSph__15daLv6TogeTrap_c@ha /* 0x80C7C798@ha */
/* 80C7C590  38 63 C7 98 */	addi r3, r3, mCcDSph__15daLv6TogeTrap_c@l /* 0x80C7C798@l */
/* 80C7C594  38 A3 FF FC */	addi r5, r3, -4
/* 80C7C598  3C 60 80 C8 */	lis r3, mCcDObjInfo__15daLv6TogeTrap_c@ha /* 0x80C7C630@ha */
/* 80C7C59C  38 63 C6 30 */	addi r3, r3, mCcDObjInfo__15daLv6TogeTrap_c@l /* 0x80C7C630@l */
/* 80C7C5A0  38 83 FF FC */	addi r4, r3, -4
/* 80C7C5A4  38 00 00 06 */	li r0, 6
/* 80C7C5A8  7C 09 03 A6 */	mtctr r0
lbl_80C7C5AC:
/* 80C7C5AC  80 64 00 04 */	lwz r3, 4(r4)
/* 80C7C5B0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C7C5B4  90 65 00 04 */	stw r3, 4(r5)
/* 80C7C5B8  94 05 00 08 */	stwu r0, 8(r5)
/* 80C7C5BC  42 00 FF F0 */	bdnz lbl_80C7C5AC
/* 80C7C5C0  3C 60 80 C8 */	lis r3, mCcDCyl__15daLv6TogeTrap_c@ha /* 0x80C7C7D8@ha */
/* 80C7C5C4  38 63 C7 D8 */	addi r3, r3, mCcDCyl__15daLv6TogeTrap_c@l /* 0x80C7C7D8@l */
/* 80C7C5C8  38 A3 FF FC */	addi r5, r3, -4
/* 80C7C5CC  3C 60 80 C8 */	lis r3, mCcDObjInfo2__15daLv6TogeTrap_c@ha /* 0x80C7C660@ha */
/* 80C7C5D0  38 63 C6 60 */	addi r3, r3, mCcDObjInfo2__15daLv6TogeTrap_c@l /* 0x80C7C660@l */
/* 80C7C5D4  38 83 FF FC */	addi r4, r3, -4
/* 80C7C5D8  38 00 00 06 */	li r0, 6
/* 80C7C5DC  7C 09 03 A6 */	mtctr r0
lbl_80C7C5E0:
/* 80C7C5E0  80 64 00 04 */	lwz r3, 4(r4)
/* 80C7C5E4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C7C5E8  90 65 00 04 */	stw r3, 4(r5)
/* 80C7C5EC  94 05 00 08 */	stwu r0, 8(r5)
/* 80C7C5F0  42 00 FF F0 */	bdnz lbl_80C7C5E0
/* 80C7C5F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C5F8  7C 08 03 A6 */	mtlr r0
/* 80C7C5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C600  4E 80 00 20 */	blr 
