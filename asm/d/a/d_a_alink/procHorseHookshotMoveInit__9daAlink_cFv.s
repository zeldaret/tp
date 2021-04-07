lbl_800F2824:
/* 800F2824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2828  7C 08 02 A6 */	mflr r0
/* 800F282C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2834  7C 7F 1B 78 */	mr r31, r3
/* 800F2838  38 80 00 4B */	li r4, 0x4b
/* 800F283C  4B FD 05 69 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2840  2C 03 00 00 */	cmpwi r3, 0
/* 800F2844  40 82 00 0C */	bne lbl_800F2850
/* 800F2848  38 60 00 00 */	li r3, 0
/* 800F284C  48 00 00 38 */	b lbl_800F2884
lbl_800F2850:
/* 800F2850  7F E3 FB 78 */	mr r3, r31
/* 800F2854  4B FF B1 D1 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2858  7F E3 FB 78 */	mr r3, r31
/* 800F285C  4B FF C5 3D */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2860  7F E3 FB 78 */	mr r3, r31
/* 800F2864  38 80 00 00 */	li r4, 0
/* 800F2868  48 01 68 85 */	bl initHookshotUpperAnimeSpeed__9daAlink_cFi
/* 800F286C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F2870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F2874  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800F2878  60 00 40 00 */	ori r0, r0, 0x4000
/* 800F287C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800F2880  38 60 00 01 */	li r3, 1
lbl_800F2884:
/* 800F2884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F288C  7C 08 03 A6 */	mtlr r0
/* 800F2890  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2894  4E 80 00 20 */	blr 
