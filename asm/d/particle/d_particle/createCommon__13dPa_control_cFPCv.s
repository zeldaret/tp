lbl_8004BB78:
/* 8004BB78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004BB7C  7C 08 02 A6 */	mflr r0
/* 8004BB80  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004BB84  39 61 00 30 */	addi r11, r1, 0x30
/* 8004BB88  48 31 66 4D */	bl _savegpr_27
/* 8004BB8C  7C 7F 1B 78 */	mr r31, r3
/* 8004BB90  7C 9B 23 78 */	mr r27, r4
/* 8004BB94  38 60 00 00 */	li r3, 0
/* 8004BB98  38 80 00 00 */	li r4, 0
/* 8004BB9C  4B FC 33 85 */	bl mDoExt_createSolidHeapFromSystem__FUlUl
/* 8004BBA0  90 7F 00 00 */	stw r3, 0(r31)
/* 8004BBA4  38 60 00 14 */	li r3, 0x14
/* 8004BBA8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004BBAC  38 A0 00 00 */	li r5, 0
/* 8004BBB0  48 28 30 E9 */	bl __nw__FUlP7JKRHeapi
/* 8004BBB4  7C 60 1B 79 */	or. r0, r3, r3
/* 8004BBB8  41 82 00 14 */	beq lbl_8004BBCC
/* 8004BBBC  7F 64 DB 78 */	mr r4, r27
/* 8004BBC0  80 BF 00 00 */	lwz r5, 0(r31)
/* 8004BBC4  48 22 82 4D */	bl __ct__18JPAResourceManagerFPCvP7JKRHeap
/* 8004BBC8  7C 60 1B 78 */	mr r0, r3
lbl_8004BBCC:
/* 8004BBCC  90 1F 00 04 */	stw r0, 4(r31)
/* 8004BBD0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004BBD4  80 8D 86 4C */	lwz r4, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8004BBD8  3C A0 80 38 */	lis r5, d_particle_d_particle__stringBase0@ha
/* 8004BBDC  38 A5 A1 2C */	addi r5, r5, d_particle_d_particle__stringBase0@l
/* 8004BBE0  48 22 83 0D */	bl swapTexture__18JPAResourceManagerFPC7ResTIMGPCc
/* 8004BBE4  38 60 00 30 */	li r3, 0x30
/* 8004BBE8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8004BBEC  38 A0 00 00 */	li r5, 0
/* 8004BBF0  48 28 30 A9 */	bl __nw__FUlP7JKRHeapi
/* 8004BBF4  7C 60 1B 79 */	or. r0, r3, r3
/* 8004BBF8  41 82 00 20 */	beq lbl_8004BC18
/* 8004BBFC  38 80 0B B8 */	li r4, 0xbb8
/* 8004BC00  38 A0 00 FA */	li r5, 0xfa
/* 8004BC04  80 DF 00 00 */	lwz r6, 0(r31)
/* 8004BC08  38 E0 00 13 */	li r7, 0x13
/* 8004BC0C  39 00 00 02 */	li r8, 2
/* 8004BC10  48 23 20 91 */	bl __ct__17JPAEmitterManagerFUlUlP7JKRHeapUcUc
/* 8004BC14  7C 60 1B 78 */	mr r0, r3
lbl_8004BC18:
/* 8004BC18  90 0D 89 20 */	stw r0, mEmitterMng__13dPa_control_c(r13)
/* 8004BC1C  7C 03 03 78 */	mr r3, r0
/* 8004BC20  80 9F 00 04 */	lwz r4, 4(r31)
/* 8004BC24  38 A0 00 00 */	li r5, 0
/* 8004BC28  48 23 27 1D */	bl entryResourceManager__17JPAEmitterManagerFP18JPAResourceManagerUc
/* 8004BC2C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004BC30  4B FC 35 9D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8004BC34  7C 7D 1B 78 */	mr r29, r3
/* 8004BC38  3B 80 00 00 */	li r28, 0
/* 8004BC3C  3C 60 80 3B */	lis r3, j_o_id__8dPa_name@ha
/* 8004BC40  3B C3 85 D0 */	addi r30, r3, j_o_id__8dPa_name@l
/* 8004BC44  48 00 00 5C */	b lbl_8004BCA0
lbl_8004BC48:
/* 8004BC48  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8004BC4C  7F 7E 02 2E */	lhzx r27, r30, r0
/* 8004BC50  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004BC54  7F 64 DB 78 */	mr r4, r27
/* 8004BC58  48 22 82 51 */	bl checkUserIndexDuplication__18JPAResourceManagerCFUs
/* 8004BC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004BC60  41 82 00 3C */	beq lbl_8004BC9C
/* 8004BC64  80 7F 00 04 */	lwz r3, 4(r31)
/* 8004BC68  7F 64 DB 78 */	mr r4, r27
/* 8004BC6C  48 22 83 61 */	bl getResUserWork__18JPAResourceManagerCFUs
/* 8004BC70  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004BC74  38 00 00 00 */	li r0, 0
/* 8004BC78  98 01 00 08 */	stb r0, 8(r1)
/* 8004BC7C  38 61 00 0C */	addi r3, r1, 0xc
/* 8004BC80  38 81 00 08 */	addi r4, r1, 8
/* 8004BC84  4B FF DB 65 */	bl dPa_group_id_change__FPUlPUc
/* 8004BC88  7F E3 FB 78 */	mr r3, r31
/* 8004BC8C  7F 64 DB 78 */	mr r4, r27
/* 8004BC90  88 A1 00 08 */	lbz r5, 8(r1)
/* 8004BC94  38 C1 00 0C */	addi r6, r1, 0xc
/* 8004BC98  48 00 14 91 */	bl newSimple__13dPa_control_cFUsUcPUl
lbl_8004BC9C:
/* 8004BC9C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8004BCA0:
/* 8004BCA0  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 8004BCA4  28 00 00 05 */	cmplwi r0, 5
/* 8004BCA8  41 80 FF A0 */	blt lbl_8004BC48
/* 8004BCAC  88 1F 00 19 */	lbz r0, 0x19(r31)
/* 8004BCB0  98 1F 00 1A */	stb r0, 0x1a(r31)
/* 8004BCB4  7F A3 EB 78 */	mr r3, r29
/* 8004BCB8  4B FC 35 15 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8004BCBC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8004BCC0  4B FC 33 CD */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8004BCC4  39 61 00 30 */	addi r11, r1, 0x30
/* 8004BCC8  48 31 65 59 */	bl _restgpr_27
/* 8004BCCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004BCD0  7C 08 03 A6 */	mtlr r0
/* 8004BCD4  38 21 00 30 */	addi r1, r1, 0x30
/* 8004BCD8  4E 80 00 20 */	blr 
