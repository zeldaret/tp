lbl_8003BAF8:
/* 8003BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003BAFC  7C 08 02 A6 */	mflr r0
/* 8003BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003BB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003BB08  93 C1 00 08 */	stw r30, 8(r1)
/* 8003BB0C  7C 7F 1B 78 */	mr r31, r3
/* 8003BB10  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8003BB14  28 00 00 00 */	cmplwi r0, 0
/* 8003BB18  40 82 01 64 */	bne lbl_8003BC7C
/* 8003BB1C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8003BB20  28 03 00 00 */	cmplwi r3, 0
/* 8003BB24  40 82 00 0C */	bne lbl_8003BB30
/* 8003BB28  38 60 FF FF */	li r3, -1
/* 8003BB2C  48 00 01 54 */	b lbl_8003BC80
lbl_8003BB30:
/* 8003BB30  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8003BB34  2C 00 00 00 */	cmpwi r0, 0
/* 8003BB38  40 82 00 0C */	bne lbl_8003BB44
/* 8003BB3C  38 60 00 01 */	li r3, 1
/* 8003BB40  48 00 01 40 */	b lbl_8003BC80
lbl_8003BB44:
/* 8003BB44  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8003BB48  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8003BB4C  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8003BB50  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8003BB54  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8003BB58  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 8003BB5C  28 03 00 00 */	cmplwi r3, 0
/* 8003BB60  41 82 00 18 */	beq lbl_8003BB78
/* 8003BB64  38 80 00 01 */	li r4, 1
/* 8003BB68  81 83 00 10 */	lwz r12, 0x10(r3)
/* 8003BB6C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8003BB70  7D 89 03 A6 */	mtctr r12
/* 8003BB74  4E 80 04 21 */	bctrl 
lbl_8003BB78:
/* 8003BB78  38 00 00 00 */	li r0, 0
/* 8003BB7C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8003BB80  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8003BB84  28 00 00 00 */	cmplwi r0, 0
/* 8003BB88  40 82 00 24 */	bne lbl_8003BBAC
/* 8003BB8C  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BB90  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BB94  38 63 00 6F */	addi r3, r3, 0x6f
/* 8003BB98  7F E4 FB 78 */	mr r4, r31
/* 8003BB9C  4C C6 31 82 */	crclr 6
/* 8003BBA0  4B FC B0 6D */	bl OSReport_Error
/* 8003BBA4  38 60 FF FF */	li r3, -1
/* 8003BBA8  48 00 00 D8 */	b lbl_8003BC80
lbl_8003BBAC:
/* 8003BBAC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8003BBB0  28 03 00 00 */	cmplwi r3, 0
/* 8003BBB4  41 82 00 54 */	beq lbl_8003BC08
/* 8003BBB8  38 63 00 18 */	addi r3, r3, 0x18
/* 8003BBBC  48 30 34 85 */	bl OSLockMutex
/* 8003BBC0  38 60 00 00 */	li r3, 0
/* 8003BBC4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8003BBC8  38 A0 00 20 */	li r5, 0x20
/* 8003BBCC  4B FD 33 F1 */	bl mDoExt_createSolidHeapToCurrent__FUlP7JKRHeapUl
/* 8003BBD0  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8003BBD4  7F E3 FB 78 */	mr r3, r31
/* 8003BBD8  4B FF F7 35 */	bl loadResource__11dRes_info_cFv
/* 8003BBDC  7C 7E 1B 78 */	mr r30, r3
/* 8003BBE0  4B FD 36 15 */	bl mDoExt_restoreCurrentHeap__Fv
/* 8003BBE4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8003BBE8  4B FD 34 A5 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8003BBEC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8003BBF0  38 63 00 18 */	addi r3, r3, 0x18
/* 8003BBF4  48 30 35 29 */	bl OSUnlockMutex
/* 8003BBF8  2C 1E 00 00 */	cmpwi r30, 0
/* 8003BBFC  40 80 00 70 */	bge lbl_8003BC6C
/* 8003BC00  38 60 FF FF */	li r3, -1
/* 8003BC04  48 00 00 7C */	b lbl_8003BC80
lbl_8003BC08:
/* 8003BC08  38 60 00 00 */	li r3, 0
/* 8003BC0C  38 80 00 00 */	li r4, 0
/* 8003BC10  4B FD 34 35 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 8003BC14  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8003BC18  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8003BC1C  28 00 00 00 */	cmplwi r0, 0
/* 8003BC20  40 82 00 24 */	bne lbl_8003BC44
/* 8003BC24  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003BC28  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003BC2C  38 63 00 98 */	addi r3, r3, 0x98
/* 8003BC30  7F E4 FB 78 */	mr r4, r31
/* 8003BC34  4C C6 31 82 */	crclr 6
/* 8003BC38  4B FC AF D5 */	bl OSReport_Error
/* 8003BC3C  38 60 FF FF */	li r3, -1
/* 8003BC40  48 00 00 40 */	b lbl_8003BC80
lbl_8003BC44:
/* 8003BC44  7F E3 FB 78 */	mr r3, r31
/* 8003BC48  4B FF F6 C5 */	bl loadResource__11dRes_info_cFv
/* 8003BC4C  7C 7E 1B 78 */	mr r30, r3
/* 8003BC50  4B FD 35 A5 */	bl mDoExt_restoreCurrentHeap__Fv
/* 8003BC54  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8003BC58  4B FD 34 35 */	bl mDoExt_adjustSolidHeap__FP12JKRSolidHeap
/* 8003BC5C  2C 1E 00 00 */	cmpwi r30, 0
/* 8003BC60  40 80 00 0C */	bge lbl_8003BC6C
/* 8003BC64  38 60 FF FF */	li r3, -1
/* 8003BC68  48 00 00 18 */	b lbl_8003BC80
lbl_8003BC6C:
/* 8003BC6C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8003BC70  80 83 00 38 */	lwz r4, 0x38(r3)
/* 8003BC74  80 63 00 30 */	lwz r3, 0x30(r3)
/* 8003BC78  48 2F F9 C1 */	bl DCStoreRangeNoSync
lbl_8003BC7C:
/* 8003BC7C  38 60 00 00 */	li r3, 0
lbl_8003BC80:
/* 8003BC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003BC84  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003BC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003BC8C  7C 08 03 A6 */	mtlr r0
/* 8003BC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8003BC94  4E 80 00 20 */	blr 
