lbl_801FA13C:
/* 801FA13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA140  7C 08 02 A6 */	mflr r0
/* 801FA144  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FA14C  93 C1 00 08 */	stw r30, 8(r1)
/* 801FA150  7C 7E 1B 78 */	mr r30, r3
/* 801FA154  7C 9F 23 78 */	mr r31, r4
/* 801FA158  3C 80 80 43 */	lis r4, g_meter2_info@ha
/* 801FA15C  38 84 01 88 */	addi r4, r4, g_meter2_info@l
/* 801FA160  88 04 00 B9 */	lbz r0, 0xb9(r4)
/* 801FA164  98 04 00 BA */	stb r0, 0xba(r4)
/* 801FA168  38 00 00 00 */	li r0, 0
/* 801FA16C  98 04 00 B9 */	stb r0, 0xb9(r4)
/* 801FA170  48 00 1C A5 */	bl dMw_capture_delete__5dMw_cFv
/* 801FA174  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 801FA178  38 03 FF FD */	addi r0, r3, -3
/* 801FA17C  28 00 00 1F */	cmplwi r0, 0x1f
/* 801FA180  41 81 00 78 */	bgt lbl_801FA1F8
/* 801FA184  3C 60 80 3C */	lis r3, lit_4360@ha
/* 801FA188  38 63 EF 94 */	addi r3, r3, lit_4360@l
/* 801FA18C  54 00 10 3A */	slwi r0, r0, 2
/* 801FA190  7C 03 00 2E */	lwzx r0, r3, r0
/* 801FA194  7C 09 03 A6 */	mtctr r0
/* 801FA198  4E 80 04 20 */	bctr 
/* 801FA19C  48 00 2C DD */	bl dMw_fade_in__5dMw_cFv
/* 801FA1A0  7F C3 F3 78 */	mr r3, r30
/* 801FA1A4  38 80 00 01 */	li r4, 1
/* 801FA1A8  48 00 1E E9 */	bl dMw_collect_delete__5dMw_cFb
/* 801FA1AC  48 00 00 4C */	b lbl_801FA1F8
/* 801FA1B0  7F C3 F3 78 */	mr r3, r30
/* 801FA1B4  38 80 00 01 */	li r4, 1
/* 801FA1B8  48 00 22 B5 */	bl dMw_dmap_delete__5dMw_cFb
/* 801FA1BC  48 00 00 3C */	b lbl_801FA1F8
/* 801FA1C0  7F C3 F3 78 */	mr r3, r30
/* 801FA1C4  38 80 00 01 */	li r4, 1
/* 801FA1C8  48 00 20 9D */	bl dMw_fmap_delete__5dMw_cFb
/* 801FA1CC  48 00 00 2C */	b lbl_801FA1F8
/* 801FA1D0  7F C3 F3 78 */	mr r3, r30
/* 801FA1D4  48 00 1D 8D */	bl dMw_ring_delete__5dMw_cFv
/* 801FA1D8  48 00 00 20 */	b lbl_801FA1F8
/* 801FA1DC  48 00 2C 9D */	bl dMw_fade_in__5dMw_cFv
/* 801FA1E0  7F C3 F3 78 */	mr r3, r30
/* 801FA1E4  48 00 23 ED */	bl dMw_save_delete__5dMw_cFv
/* 801FA1E8  48 00 00 10 */	b lbl_801FA1F8
/* 801FA1EC  48 00 2C 8D */	bl dMw_fade_in__5dMw_cFv
/* 801FA1F0  7F C3 F3 78 */	mr r3, r30
/* 801FA1F4  48 00 2A 51 */	bl dMw_insect_delete__5dMw_cFv
lbl_801FA1F8:
/* 801FA1F8  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 801FA1FC  48 0D 43 D1 */	bl freeAll__7JKRHeapFv
/* 801FA200  38 60 00 00 */	li r3, 0
/* 801FA204  4B E3 3F 85 */	bl dComIfGp_offHeapLockFlag__Fi
/* 801FA208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FA20C  83 C1 00 08 */	lwz r30, 8(r1)
/* 801FA210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA214  7C 08 03 A6 */	mtlr r0
/* 801FA218  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA21C  4E 80 00 20 */	blr 
