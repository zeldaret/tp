lbl_801FD67C:
/* 801FD67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD680  7C 08 02 A6 */	mflr r0
/* 801FD684  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FD68C  93 C1 00 08 */	stw r30, 8(r1)
/* 801FD690  7C 7E 1B 78 */	mr r30, r3
/* 801FD694  4B E1 1B 59 */	bl mDoExt_getCurrentHeap__Fv
/* 801FD698  7C 7F 1B 78 */	mr r31, r3
/* 801FD69C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 801FD6A0  48 0D 16 9D */	bl __dl__FPv
/* 801FD6A4  38 00 00 00 */	li r0, 0
/* 801FD6A8  90 1E 01 04 */	stw r0, 0x104(r30)
/* 801FD6AC  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 801FD6B0  48 0D 16 8D */	bl __dl__FPv
/* 801FD6B4  38 00 00 00 */	li r0, 0
/* 801FD6B8  90 1E 01 08 */	stw r0, 0x108(r30)
/* 801FD6BC  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 801FD6C0  4B E1 1B 0D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD6C4  7F C3 F3 78 */	mr r3, r30
/* 801FD6C8  38 80 00 00 */	li r4, 0
/* 801FD6CC  4B FF E9 C5 */	bl dMw_collect_delete__5dMw_cFb
/* 801FD6D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD6D4  40 82 00 14 */	bne lbl_801FD6E8
/* 801FD6D8  7F E3 FB 78 */	mr r3, r31
/* 801FD6DC  4B E1 1A F1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD6E0  38 60 00 00 */	li r3, 0
/* 801FD6E4  48 00 01 44 */	b lbl_801FD828
lbl_801FD6E8:
/* 801FD6E8  7F C3 F3 78 */	mr r3, r30
/* 801FD6EC  38 80 00 00 */	li r4, 0
/* 801FD6F0  4B FF ED 7D */	bl dMw_dmap_delete__5dMw_cFb
/* 801FD6F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD6F8  40 82 00 14 */	bne lbl_801FD70C
/* 801FD6FC  7F E3 FB 78 */	mr r3, r31
/* 801FD700  4B E1 1A CD */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD704  38 60 00 00 */	li r3, 0
/* 801FD708  48 00 01 20 */	b lbl_801FD828
lbl_801FD70C:
/* 801FD70C  7F C3 F3 78 */	mr r3, r30
/* 801FD710  38 80 00 00 */	li r4, 0
/* 801FD714  4B FF EB 51 */	bl dMw_fmap_delete__5dMw_cFb
/* 801FD718  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD71C  40 82 00 14 */	bne lbl_801FD730
/* 801FD720  7F E3 FB 78 */	mr r3, r31
/* 801FD724  4B E1 1A A9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD728  38 60 00 00 */	li r3, 0
/* 801FD72C  48 00 00 FC */	b lbl_801FD828
lbl_801FD730:
/* 801FD730  7F C3 F3 78 */	mr r3, r30
/* 801FD734  4B FF EE 9D */	bl dMw_save_delete__5dMw_cFv
/* 801FD738  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD73C  40 82 00 14 */	bne lbl_801FD750
/* 801FD740  7F E3 FB 78 */	mr r3, r31
/* 801FD744  4B E1 1A 89 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD748  38 60 00 00 */	li r3, 0
/* 801FD74C  48 00 00 DC */	b lbl_801FD828
lbl_801FD750:
/* 801FD750  7F C3 F3 78 */	mr r3, r30
/* 801FD754  4B FF EF B9 */	bl dMw_option_delete__5dMw_cFv
/* 801FD758  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD75C  40 82 00 14 */	bne lbl_801FD770
/* 801FD760  7F E3 FB 78 */	mr r3, r31
/* 801FD764  4B E1 1A 69 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD768  38 60 00 00 */	li r3, 0
/* 801FD76C  48 00 00 BC */	b lbl_801FD828
lbl_801FD770:
/* 801FD770  7F C3 F3 78 */	mr r3, r30
/* 801FD774  4B FF F0 E9 */	bl dMw_letter_delete__5dMw_cFv
/* 801FD778  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD77C  40 82 00 14 */	bne lbl_801FD790
/* 801FD780  7F E3 FB 78 */	mr r3, r31
/* 801FD784  4B E1 1A 49 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD788  38 60 00 00 */	li r3, 0
/* 801FD78C  48 00 00 9C */	b lbl_801FD828
lbl_801FD790:
/* 801FD790  7F C3 F3 78 */	mr r3, r30
/* 801FD794  4B FF F2 11 */	bl dMw_fishing_delete__5dMw_cFv
/* 801FD798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD79C  40 82 00 14 */	bne lbl_801FD7B0
/* 801FD7A0  7F E3 FB 78 */	mr r3, r31
/* 801FD7A4  4B E1 1A 29 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD7A8  38 60 00 00 */	li r3, 0
/* 801FD7AC  48 00 00 7C */	b lbl_801FD828
lbl_801FD7B0:
/* 801FD7B0  7F C3 F3 78 */	mr r3, r30
/* 801FD7B4  4B FF F3 39 */	bl dMw_skill_delete__5dMw_cFv
/* 801FD7B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD7BC  40 82 00 14 */	bne lbl_801FD7D0
/* 801FD7C0  7F E3 FB 78 */	mr r3, r31
/* 801FD7C4  4B E1 1A 09 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD7C8  38 60 00 00 */	li r3, 0
/* 801FD7CC  48 00 00 5C */	b lbl_801FD828
lbl_801FD7D0:
/* 801FD7D0  7F C3 F3 78 */	mr r3, r30
/* 801FD7D4  4B FF F4 71 */	bl dMw_insect_delete__5dMw_cFv
/* 801FD7D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD7DC  40 82 00 14 */	bne lbl_801FD7F0
/* 801FD7E0  7F E3 FB 78 */	mr r3, r31
/* 801FD7E4  4B E1 19 E9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD7E8  38 60 00 00 */	li r3, 0
/* 801FD7EC  48 00 00 3C */	b lbl_801FD828
lbl_801FD7F0:
/* 801FD7F0  7F C3 F3 78 */	mr r3, r30
/* 801FD7F4  4B FF E7 6D */	bl dMw_ring_delete__5dMw_cFv
/* 801FD7F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FD7FC  40 82 00 14 */	bne lbl_801FD810
/* 801FD800  7F E3 FB 78 */	mr r3, r31
/* 801FD804  4B E1 19 C9 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD808  38 60 00 00 */	li r3, 0
/* 801FD80C  48 00 00 1C */	b lbl_801FD828
lbl_801FD810:
/* 801FD810  7F C3 F3 78 */	mr r3, r30
/* 801FD814  4B FF E6 01 */	bl dMw_capture_delete__5dMw_cFv
/* 801FD818  7F E3 FB 78 */	mr r3, r31
/* 801FD81C  4B E1 19 B1 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801FD820  4B E1 72 0D */	bl mDoExt_removeMesgFont__Fv
/* 801FD824  38 60 00 01 */	li r3, 1
lbl_801FD828:
/* 801FD828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FD82C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FD830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD834  7C 08 03 A6 */	mtlr r0
/* 801FD838  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD83C  4E 80 00 20 */	blr 
