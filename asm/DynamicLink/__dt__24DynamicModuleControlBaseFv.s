lbl_802621CC:
/* 802621CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802621D0  7C 08 02 A6 */	mflr r0
/* 802621D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802621D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802621DC  93 C1 00 08 */	stw r30, 8(r1)
/* 802621E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802621E4  7C 9F 23 78 */	mr r31, r4
/* 802621E8  41 82 00 80 */	beq lbl_80262268
/* 802621EC  3C 80 80 3C */	lis r4, __vt__24DynamicModuleControlBase@ha
/* 802621F0  38 04 34 F4 */	addi r0, r4, __vt__24DynamicModuleControlBase@l
/* 802621F4  90 1E 00 0C */	stw r0, 0xc(r30)
/* 802621F8  48 00 02 35 */	bl force_unlink__24DynamicModuleControlBaseFv
/* 802621FC  80 7E 00 04 */	lwz r3, 4(r30)
/* 80262200  28 03 00 00 */	cmplwi r3, 0
/* 80262204  41 82 00 0C */	beq lbl_80262210
/* 80262208  80 1E 00 08 */	lwz r0, 8(r30)
/* 8026220C  90 03 00 08 */	stw r0, 8(r3)
lbl_80262210:
/* 80262210  80 7E 00 08 */	lwz r3, 8(r30)
/* 80262214  28 03 00 00 */	cmplwi r3, 0
/* 80262218  41 82 00 0C */	beq lbl_80262224
/* 8026221C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80262220  90 03 00 04 */	stw r0, 4(r3)
lbl_80262224:
/* 80262224  80 0D 8B B8 */	lwz r0, mFirst__24DynamicModuleControlBase(r13)
/* 80262228  7C 00 F0 40 */	cmplw r0, r30
/* 8026222C  40 82 00 0C */	bne lbl_80262238
/* 80262230  80 1E 00 08 */	lwz r0, 8(r30)
/* 80262234  90 0D 8B B8 */	stw r0, mFirst__24DynamicModuleControlBase(r13)
lbl_80262238:
/* 80262238  80 0D 8B BC */	lwz r0, mLast__24DynamicModuleControlBase(r13)
/* 8026223C  7C 00 F0 40 */	cmplw r0, r30
/* 80262240  40 82 00 0C */	bne lbl_8026224C
/* 80262244  80 1E 00 04 */	lwz r0, 4(r30)
/* 80262248  90 0D 8B BC */	stw r0, mLast__24DynamicModuleControlBase(r13)
lbl_8026224C:
/* 8026224C  38 00 00 00 */	li r0, 0
/* 80262250  90 1E 00 08 */	stw r0, 8(r30)
/* 80262254  90 1E 00 04 */	stw r0, 4(r30)
/* 80262258  7F E0 07 35 */	extsh. r0, r31
/* 8026225C  40 81 00 0C */	ble lbl_80262268
/* 80262260  7F C3 F3 78 */	mr r3, r30
/* 80262264  48 06 CA D9 */	bl __dl__FPv
lbl_80262268:
/* 80262268  7F C3 F3 78 */	mr r3, r30
/* 8026226C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80262270  83 C1 00 08 */	lwz r30, 8(r1)
/* 80262274  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262278  7C 08 03 A6 */	mtlr r0
/* 8026227C  38 21 00 10 */	addi r1, r1, 0x10
/* 80262280  4E 80 00 20 */	blr 
