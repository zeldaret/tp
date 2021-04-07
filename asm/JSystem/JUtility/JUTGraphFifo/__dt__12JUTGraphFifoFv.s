lbl_802DEC34:
/* 802DEC34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DEC38  7C 08 02 A6 */	mflr r0
/* 802DEC3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DEC40  39 61 00 20 */	addi r11, r1, 0x20
/* 802DEC44  48 08 35 8D */	bl _savegpr_26
/* 802DEC48  7C 7A 1B 79 */	or. r26, r3, r3
/* 802DEC4C  7C 9B 23 78 */	mr r27, r4
/* 802DEC50  41 82 00 8C */	beq lbl_802DECDC
/* 802DEC54  3C 60 80 3D */	lis r3, __vt__12JUTGraphFifo@ha /* 0x803CC590@ha */
/* 802DEC58  38 03 C5 90 */	addi r0, r3, __vt__12JUTGraphFifo@l /* 0x803CC590@l */
/* 802DEC5C  90 1A 00 00 */	stw r0, 0(r26)
/* 802DEC60  80 6D 8F 3C */	lwz r3, sCurrentFifo__12JUTGraphFifo(r13)
/* 802DEC64  80 63 00 04 */	lwz r3, 4(r3)
/* 802DEC68  48 07 BE 25 */	bl GXSaveCPUFifo
/* 802DEC6C  3B ED 8F 40 */	la r31, mGpStatus__12JUTGraphFifo(r13) /* 804514C0-_SDA_BASE_ */
/* 802DEC70  7F FE FB 78 */	mr r30, r31
/* 802DEC74  7F FD FB 78 */	mr r29, r31
/* 802DEC78  3B 9F 00 01 */	addi r28, r31, 1
/* 802DEC7C  3B FF 00 04 */	addi r31, r31, 4
/* 802DEC80  3B DE 00 03 */	addi r30, r30, 3
/* 802DEC84  3B BD 00 02 */	addi r29, r29, 2
lbl_802DEC88:
/* 802DEC88  38 6D 8F 40 */	la r3, mGpStatus__12JUTGraphFifo(r13) /* 804514C0-_SDA_BASE_ */
/* 802DEC8C  7F 84 E3 78 */	mr r4, r28
/* 802DEC90  7F A5 EB 78 */	mr r5, r29
/* 802DEC94  7F C6 F3 78 */	mr r6, r30
/* 802DEC98  7F E7 FB 78 */	mr r7, r31
/* 802DEC9C  48 07 BE ED */	bl GXGetGPStatus
/* 802DECA0  88 1D 00 00 */	lbz r0, 0(r29)
/* 802DECA4  28 00 00 00 */	cmplwi r0, 0
/* 802DECA8  41 82 FF E0 */	beq lbl_802DEC88
/* 802DECAC  80 0D 8F 3C */	lwz r0, sCurrentFifo__12JUTGraphFifo(r13)
/* 802DECB0  7C 00 D0 40 */	cmplw r0, r26
/* 802DECB4  40 82 00 0C */	bne lbl_802DECC0
/* 802DECB8  38 00 00 00 */	li r0, 0
/* 802DECBC  90 0D 8F 3C */	stw r0, sCurrentFifo__12JUTGraphFifo(r13)
lbl_802DECC0:
/* 802DECC0  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DECC4  80 9A 00 08 */	lwz r4, 8(r26)
/* 802DECC8  4B FE F8 81 */	bl free__7JKRHeapFPv
/* 802DECCC  7F 60 07 35 */	extsh. r0, r27
/* 802DECD0  40 81 00 0C */	ble lbl_802DECDC
/* 802DECD4  7F 43 D3 78 */	mr r3, r26
/* 802DECD8  4B FF 00 65 */	bl __dl__FPv
lbl_802DECDC:
/* 802DECDC  7F 43 D3 78 */	mr r3, r26
/* 802DECE0  39 61 00 20 */	addi r11, r1, 0x20
/* 802DECE4  48 08 35 39 */	bl _restgpr_26
/* 802DECE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DECEC  7C 08 03 A6 */	mtlr r0
/* 802DECF0  38 21 00 20 */	addi r1, r1, 0x20
/* 802DECF4  4E 80 00 20 */	blr 
