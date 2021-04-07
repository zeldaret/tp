lbl_8004BACC:
/* 8004BACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004BAD0  7C 08 02 A6 */	mflr r0
/* 8004BAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004BAD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004BADC  7C 7F 1B 78 */	mr r31, r3
/* 8004BAE0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8004BAE4  3C 80 80 05 */	lis r4, __ct__19dPa_simpleEcallBackFv@ha /* 0x8004ADF4@ha */
/* 8004BAE8  38 84 AD F4 */	addi r4, r4, __ct__19dPa_simpleEcallBackFv@l /* 0x8004ADF4@l */
/* 8004BAEC  3C A0 80 05 */	lis r5, __dt__19dPa_simpleEcallBackFv@ha /* 0x8004FC08@ha */
/* 8004BAF0  38 A5 FC 08 */	addi r5, r5, __dt__19dPa_simpleEcallBackFv@l /* 0x8004FC08@l */
/* 8004BAF4  38 C0 00 14 */	li r6, 0x14
/* 8004BAF8  38 E0 00 19 */	li r7, 0x19
/* 8004BAFC  48 31 62 65 */	bl __construct_array
/* 8004BB00  38 7F 02 10 */	addi r3, r31, 0x210
/* 8004BB04  4B FF FB 85 */	bl __ct__Q213dPa_control_c7level_cFv
/* 8004BB08  4B FC 32 E5 */	bl mDoExt_getArchiveHeap__Fv
/* 8004BB0C  7C 64 1B 78 */	mr r4, r3
/* 8004BB10  3C 60 00 09 */	lis r3, 0x0009 /* 0x00096000@ha */
/* 8004BB14  38 63 60 00 */	addi r3, r3, 0x6000 /* 0x00096000@l */
/* 8004BB18  38 A0 00 00 */	li r5, 0
/* 8004BB1C  48 28 33 11 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8004BB20  90 7F 00 08 */	stw r3, 8(r31)
/* 8004BB24  38 60 00 00 */	li r3, 0
/* 8004BB28  90 7F 00 00 */	stw r3, 0(r31)
/* 8004BB2C  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8004BB30  38 00 00 FF */	li r0, 0xff
/* 8004BB34  98 1F 00 18 */	stb r0, 0x18(r31)
/* 8004BB38  90 6D 89 20 */	stw r3, mEmitterMng__13dPa_control_c(r13)
/* 8004BB3C  98 7F 00 19 */	stb r3, 0x19(r31)
/* 8004BB40  90 7F 00 04 */	stw r3, 4(r31)
/* 8004BB44  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8004BB48  90 7F 00 10 */	stw r3, 0x10(r31)
/* 8004BB4C  3C 60 80 42 */	lis r3, mWindViewMatrix__13dPa_control_c@ha /* 0x80424870@ha */
/* 8004BB50  38 63 48 70 */	addi r3, r3, mWindViewMatrix__13dPa_control_c@l /* 0x80424870@l */
/* 8004BB54  48 2F A9 31 */	bl PSMTXIdentity
/* 8004BB58  7F E3 FB 78 */	mr r3, r31
/* 8004BB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004BB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004BB64  7C 08 03 A6 */	mtlr r0
/* 8004BB68  38 21 00 10 */	addi r1, r1, 0x10
/* 8004BB6C  4E 80 00 20 */	blr 
