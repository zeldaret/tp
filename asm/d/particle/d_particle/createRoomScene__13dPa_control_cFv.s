lbl_8004BCDC:
/* 8004BCDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8004BCE0  7C 08 02 A6 */	mflr r0
/* 8004BCE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8004BCE8  39 61 00 30 */	addi r11, r1, 0x30
/* 8004BCEC  48 31 64 E9 */	bl _savegpr_27
/* 8004BCF0  7C 7B 1B 78 */	mr r27, r3
/* 8004BCF4  38 60 00 00 */	li r3, 0
/* 8004BCF8  38 80 00 00 */	li r4, 0
/* 8004BCFC  4B FC 31 DD */	bl mDoExt_createSolidHeapFromGame__FUlUl
/* 8004BD00  90 7B 00 0C */	stw r3, 0xc(r27)
/* 8004BD04  38 60 00 14 */	li r3, 0x14
/* 8004BD08  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 8004BD0C  38 A0 00 00 */	li r5, 0
/* 8004BD10  48 28 2F 89 */	bl __nw__FUlP7JKRHeapi
/* 8004BD14  7C 60 1B 79 */	or. r0, r3, r3
/* 8004BD18  41 82 00 14 */	beq lbl_8004BD2C
/* 8004BD1C  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 8004BD20  80 BB 00 0C */	lwz r5, 0xc(r27)
/* 8004BD24  48 22 80 ED */	bl __ct__18JPAResourceManagerFPCvP7JKRHeap
/* 8004BD28  7C 60 1B 78 */	mr r0, r3
lbl_8004BD2C:
/* 8004BD2C  90 1B 00 14 */	stw r0, 0x14(r27)
/* 8004BD30  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8004BD34  80 8D 86 4C */	lwz r4, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8004BD38  3C A0 80 38 */	lis r5, d_particle_d_particle__stringBase0@ha /* 0x8037A12C@ha */
/* 8004BD3C  38 A5 A1 2C */	addi r5, r5, d_particle_d_particle__stringBase0@l /* 0x8037A12C@l */
/* 8004BD40  48 22 81 AD */	bl swapTexture__18JPAResourceManagerFPC7ResTIMGPCc
/* 8004BD44  80 6D 89 20 */	lwz r3, mEmitterMng__13dPa_control_c(r13)
/* 8004BD48  80 9B 00 14 */	lwz r4, 0x14(r27)
/* 8004BD4C  38 A0 00 01 */	li r5, 1
/* 8004BD50  48 23 25 F5 */	bl entryResourceManager__17JPAEmitterManagerFP18JPAResourceManagerUc
/* 8004BD54  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8004BD58  4B FC 34 75 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8004BD5C  7C 7E 1B 78 */	mr r30, r3
/* 8004BD60  3B A0 00 00 */	li r29, 0
/* 8004BD64  3C 60 80 3B */	lis r3, s_o_id__8dPa_name@ha /* 0x803A85DC@ha */
/* 8004BD68  3B E3 85 DC */	addi r31, r3, s_o_id__8dPa_name@l /* 0x803A85DC@l */
/* 8004BD6C  48 00 00 5C */	b lbl_8004BDC8
lbl_8004BD70:
/* 8004BD70  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8004BD74  7F 9F 02 2E */	lhzx r28, r31, r0
/* 8004BD78  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8004BD7C  7F 84 E3 78 */	mr r4, r28
/* 8004BD80  48 22 81 29 */	bl checkUserIndexDuplication__18JPAResourceManagerCFUs
/* 8004BD84  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004BD88  41 82 00 3C */	beq lbl_8004BDC4
/* 8004BD8C  80 7B 00 14 */	lwz r3, 0x14(r27)
/* 8004BD90  7F 84 E3 78 */	mr r4, r28
/* 8004BD94  48 22 82 39 */	bl getResUserWork__18JPAResourceManagerCFUs
/* 8004BD98  90 61 00 0C */	stw r3, 0xc(r1)
/* 8004BD9C  38 00 00 00 */	li r0, 0
/* 8004BDA0  98 01 00 08 */	stb r0, 8(r1)
/* 8004BDA4  38 61 00 0C */	addi r3, r1, 0xc
/* 8004BDA8  38 81 00 08 */	addi r4, r1, 8
/* 8004BDAC  4B FF DA 3D */	bl dPa_group_id_change__FPUlPUc
/* 8004BDB0  7F 63 DB 78 */	mr r3, r27
/* 8004BDB4  7F 84 E3 78 */	mr r4, r28
/* 8004BDB8  88 A1 00 08 */	lbz r5, 8(r1)
/* 8004BDBC  38 C1 00 0C */	addi r6, r1, 0xc
/* 8004BDC0  48 00 13 69 */	bl newSimple__13dPa_control_cFUsUcPUl
lbl_8004BDC4:
/* 8004BDC4  3B BD 00 01 */	addi r29, r29, 1
lbl_8004BDC8:
/* 8004BDC8  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8004BDCC  28 00 00 0E */	cmplwi r0, 0xe
/* 8004BDD0  41 80 FF A0 */	blt lbl_8004BD70
/* 8004BDD4  7F C3 F3 78 */	mr r3, r30
/* 8004BDD8  4B FC 33 F5 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8004BDDC  80 7B 00 0C */	lwz r3, 0xc(r27)
/* 8004BDE0  4B FC 32 AD */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8004BDE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8004BDE8  48 31 64 39 */	bl _restgpr_27
/* 8004BDEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8004BDF0  7C 08 03 A6 */	mtlr r0
/* 8004BDF4  38 21 00 30 */	addi r1, r1, 0x30
/* 8004BDF8  4E 80 00 20 */	blr 
