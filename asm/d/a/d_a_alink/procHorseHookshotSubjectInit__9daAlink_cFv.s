lbl_800F26F4:
/* 800F26F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F26F8  7C 08 02 A6 */	mflr r0
/* 800F26FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2704  7C 7F 1B 78 */	mr r31, r3
/* 800F2708  38 80 00 4A */	li r4, 0x4a
/* 800F270C  4B FD 06 99 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2710  2C 03 00 00 */	cmpwi r3, 0
/* 800F2714  40 82 00 0C */	bne lbl_800F2720
/* 800F2718  38 60 00 00 */	li r3, 0
/* 800F271C  48 00 00 40 */	b lbl_800F275C
lbl_800F2720:
/* 800F2720  7F E3 FB 78 */	mr r3, r31
/* 800F2724  4B FF B3 01 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2728  7F E3 FB 78 */	mr r3, r31
/* 800F272C  4B FF C6 6D */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2730  7F E3 FB 78 */	mr r3, r31
/* 800F2734  38 80 00 01 */	li r4, 1
/* 800F2738  48 01 69 B5 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 800F273C  7F E3 FB 78 */	mr r3, r31
/* 800F2740  48 01 69 31 */	bl setHookshotReadyMaterial__9daAlink_cFv
/* 800F2744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F274C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F2750  60 00 40 00 */	ori r0, r0, 0x4000
/* 800F2754  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F2758  38 60 00 01 */	li r3, 1
lbl_800F275C:
/* 800F275C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2764  7C 08 03 A6 */	mtlr r0
/* 800F2768  38 21 00 10 */	addi r1, r1, 0x10
/* 800F276C  4E 80 00 20 */	blr 
