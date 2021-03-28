lbl_8065BB34:
/* 8065BB34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8065BB38  7C 08 02 A6 */	mflr r0
/* 8065BB3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065BB40  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8065BB44  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8065BB48  7C 7E 1B 78 */	mr r30, r3
/* 8065BB4C  7C 9F 23 78 */	mr r31, r4
/* 8065BB50  4B FF CF 55 */	bl isChaseCowGame__7daCow_cFv
/* 8065BB54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065BB58  40 82 00 0C */	bne lbl_8065BB64
/* 8065BB5C  38 60 00 00 */	li r3, 0
/* 8065BB60  48 00 00 F0 */	b lbl_8065BC50
lbl_8065BB64:
/* 8065BB64  38 61 00 14 */	addi r3, r1, 0x14
/* 8065BB68  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8065BB6C  3C A0 80 66 */	lis r5, data_806634AC@ha
/* 8065BB70  38 A5 34 AC */	addi r5, r5, data_806634AC@l
/* 8065BB74  4B C0 AF C0 */	b __mi__4cXyzCFRC3Vec
/* 8065BB78  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8065BB7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8065BB80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8065BB84  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8065BB88  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8065BB8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065BB90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065BB94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065BB98  3C 80 80 66 */	lis r4, struct_80662FB8+0x0@ha
/* 8065BB9C  A8 04 2F B8 */	lha r0, struct_80662FB8+0x0@l(r4)
/* 8065BBA0  7C 00 00 D0 */	neg r0, r0
/* 8065BBA4  7C 04 07 34 */	extsh r4, r0
/* 8065BBA8  4B 9B 08 34 */	b mDoMtx_YrotS__FPA4_fs
/* 8065BBAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065BBB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065BBB4  38 81 00 20 */	addi r4, r1, 0x20
/* 8065BBB8  7C 85 23 78 */	mr r5, r4
/* 8065BBBC  4B CE B2 90 */	b PSMTXMultVecSR
/* 8065BBC0  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8065BBC4  3C 60 80 66 */	lis r3, lit_5516@ha
/* 8065BBC8  C0 03 2E 6C */	lfs f0, lit_5516@l(r3)
/* 8065BBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065BBD0  40 81 00 7C */	ble lbl_8065BC4C
/* 8065BBD4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8065BBD8  FC 00 02 10 */	fabs f0, f0
/* 8065BBDC  FC 20 00 18 */	frsp f1, f0
/* 8065BBE0  3C 60 80 66 */	lis r3, lit_5517@ha
/* 8065BBE4  C0 03 2E 70 */	lfs f0, lit_5517@l(r3)
/* 8065BBE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065BBEC  40 80 00 60 */	bge lbl_8065BC4C
/* 8065BBF0  3C 60 80 66 */	lis r3, struct_80662FB8+0x0@ha
/* 8065BBF4  38 63 2F B8 */	addi r3, r3, struct_80662FB8+0x0@l
/* 8065BBF8  A8 63 00 00 */	lha r3, 0(r3)
/* 8065BBFC  A8 9E 0C 34 */	lha r4, 0xc34(r30)
/* 8065BC00  4B C1 52 24 */	b cLib_distanceAngleS__Fss
/* 8065BC04  7C 03 F8 00 */	cmpw r3, r31
/* 8065BC08  40 80 00 44 */	bge lbl_8065BC4C
/* 8065BC0C  3C 60 80 66 */	lis r3, lit_5493@ha
/* 8065BC10  38 83 31 D8 */	addi r4, r3, lit_5493@l
/* 8065BC14  80 64 00 00 */	lwz r3, 0(r4)
/* 8065BC18  80 04 00 04 */	lwz r0, 4(r4)
/* 8065BC1C  90 61 00 08 */	stw r3, 8(r1)
/* 8065BC20  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065BC24  80 04 00 08 */	lwz r0, 8(r4)
/* 8065BC28  90 01 00 10 */	stw r0, 0x10(r1)
/* 8065BC2C  7F C3 F3 78 */	mr r3, r30
/* 8065BC30  38 81 00 08 */	addi r4, r1, 8
/* 8065BC34  38 A0 00 00 */	li r5, 0
/* 8065BC38  4B FF D4 DD */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065BC3C  7F C3 F3 78 */	mr r3, r30
/* 8065BC40  48 00 0A 41 */	bl setEnterCount__7daCow_cFv
/* 8065BC44  38 60 00 01 */	li r3, 1
/* 8065BC48  48 00 00 08 */	b lbl_8065BC50
lbl_8065BC4C:
/* 8065BC4C  38 60 00 00 */	li r3, 0
lbl_8065BC50:
/* 8065BC50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8065BC54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8065BC58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8065BC5C  7C 08 03 A6 */	mtlr r0
/* 8065BC60  38 21 00 40 */	addi r1, r1, 0x40
/* 8065BC64  4E 80 00 20 */	blr 
