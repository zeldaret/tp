lbl_800F25B4:
/* 800F25B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F25B8  7C 08 02 A6 */	mflr r0
/* 800F25BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F25C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F25C4  7C 7F 1B 78 */	mr r31, r3
/* 800F25C8  38 80 00 49 */	li r4, 0x49
/* 800F25CC  4B FD 07 D9 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F25D0  2C 03 00 00 */	cmpwi r3, 0
/* 800F25D4  40 82 00 0C */	bne lbl_800F25E0
/* 800F25D8  38 60 00 00 */	li r3, 0
/* 800F25DC  48 00 00 38 */	b lbl_800F2614
lbl_800F25E0:
/* 800F25E0  7F E3 FB 78 */	mr r3, r31
/* 800F25E4  4B FF B4 41 */	bl setSyncRidePos__9daAlink_cFv
/* 800F25E8  7F E3 FB 78 */	mr r3, r31
/* 800F25EC  4B FF C7 AD */	bl setBaseRideAnime__9daAlink_cFv
/* 800F25F0  7F E3 FB 78 */	mr r3, r31
/* 800F25F4  38 80 00 00 */	li r4, 0
/* 800F25F8  4B FE DD D9 */	bl initBoomerangUpperAnimeSpeed__9daAlink_cFi
/* 800F25FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2604  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F2608  64 00 00 08 */	oris r0, r0, 8
/* 800F260C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F2610  38 60 00 01 */	li r3, 1
lbl_800F2614:
/* 800F2614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F261C  7C 08 03 A6 */	mtlr r0
/* 800F2620  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2624  4E 80 00 20 */	blr 
