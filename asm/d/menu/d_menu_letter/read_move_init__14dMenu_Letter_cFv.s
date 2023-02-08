lbl_801DE70C:
/* 801DE70C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801DE710  7C 08 02 A6 */	mflr r0
/* 801DE714  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801DE718  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 801DE71C  7C 7F 1B 78 */	mr r31, r3
/* 801DE720  80 63 03 14 */	lwz r3, 0x314(r3)
/* 801DE724  48 05 D7 11 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
/* 801DE728  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DE72C  48 05 D8 99 */	bl dotAnimeInit__15dMsgScrnArrow_cFv
/* 801DE730  88 7F 03 E2 */	lbz r3, 0x3e2(r31)
/* 801DE734  28 03 00 01 */	cmplwi r3, 1
/* 801DE738  40 81 00 C0 */	ble lbl_801DE7F8
/* 801DE73C  88 1F 03 E3 */	lbz r0, 0x3e3(r31)
/* 801DE740  7C 00 18 40 */	cmplw r0, r3
/* 801DE744  40 82 00 20 */	bne lbl_801DE764
/* 801DE748  7F E3 FB 78 */	mr r3, r31
/* 801DE74C  38 80 00 00 */	li r4, 0
/* 801DE750  48 00 2D C9 */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE754  7F E3 FB 78 */	mr r3, r31
/* 801DE758  38 80 03 F9 */	li r4, 0x3f9
/* 801DE75C  48 00 2E 6D */	bl setBButtonString__14dMenu_Letter_cFUs
/* 801DE760  48 00 00 1C */	b lbl_801DE77C
lbl_801DE764:
/* 801DE764  7F E3 FB 78 */	mr r3, r31
/* 801DE768  38 80 04 08 */	li r4, 0x408
/* 801DE76C  48 00 2D AD */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE770  7F E3 FB 78 */	mr r3, r31
/* 801DE774  38 80 03 F9 */	li r4, 0x3f9
/* 801DE778  48 00 2E 51 */	bl setBButtonString__14dMenu_Letter_cFUs
lbl_801DE77C:
/* 801DE77C  38 61 00 20 */	addi r3, r1, 0x20
/* 801DE780  48 07 51 B1 */	bl __ct__8CPaneMgrFv
/* 801DE784  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 801DE788  3C 80 79 61 */	lis r4, 0x7961 /* 0x79615F6E@ha */
/* 801DE78C  38 C4 5F 6E */	addi r6, r4, 0x5F6E /* 0x79615F6E@l */
/* 801DE790  3C 80 73 65 */	lis r4, 0x7365 /* 0x7365745F@ha */
/* 801DE794  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x7365745F@l */
/* 801DE798  81 83 00 00 */	lwz r12, 0(r3)
/* 801DE79C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801DE7A0  7D 89 03 A6 */	mtctr r12
/* 801DE7A4  4E 80 04 21 */	bctrl 
/* 801DE7A8  7C 65 1B 78 */	mr r5, r3
/* 801DE7AC  38 61 00 08 */	addi r3, r1, 8
/* 801DE7B0  38 81 00 20 */	addi r4, r1, 0x20
/* 801DE7B4  38 C0 00 00 */	li r6, 0
/* 801DE7B8  38 E0 00 00 */	li r7, 0
/* 801DE7BC  48 07 67 01 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801DE7C0  80 61 00 08 */	lwz r3, 8(r1)
/* 801DE7C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801DE7C8  90 61 00 14 */	stw r3, 0x14(r1)
/* 801DE7CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 801DE7D0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801DE7D4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801DE7D8  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DE7DC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801DE7E0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801DE7E4  48 05 D6 15 */	bl setPos__15dMsgScrnArrow_cFff
/* 801DE7E8  38 61 00 20 */	addi r3, r1, 0x20
/* 801DE7EC  38 80 FF FF */	li r4, -1
/* 801DE7F0  48 07 52 29 */	bl __dt__8CPaneMgrFv
/* 801DE7F4  48 00 00 1C */	b lbl_801DE810
lbl_801DE7F8:
/* 801DE7F8  7F E3 FB 78 */	mr r3, r31
/* 801DE7FC  38 80 00 00 */	li r4, 0
/* 801DE800  48 00 2D 19 */	bl setAButtonString__14dMenu_Letter_cFUs
/* 801DE804  7F E3 FB 78 */	mr r3, r31
/* 801DE808  38 80 03 F9 */	li r4, 0x3f9
/* 801DE80C  48 00 2D BD */	bl setBButtonString__14dMenu_Letter_cFUs
lbl_801DE810:
/* 801DE810  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 801DE814  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801DE818  7C 08 03 A6 */	mtlr r0
/* 801DE81C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801DE820  4E 80 00 20 */	blr 
