lbl_8004BEB0:
/* 8004BEB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004BEB4  7C 08 02 A6 */	mflr r0
/* 8004BEB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004BEBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8004BEC0  48 31 63 19 */	bl _savegpr_28
/* 8004BEC4  7C 7C 1B 78 */	mr r28, r3
/* 8004BEC8  7C 9D 23 78 */	mr r29, r4
/* 8004BECC  3B C0 00 00 */	li r30, 0
/* 8004BED0  3B E0 00 00 */	li r31, 0
/* 8004BED4  48 00 00 1C */	b lbl_8004BEF0
lbl_8004BED8:
/* 8004BED8  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8004BEDC  7C 7C 1A 14 */	add r3, r28, r3
/* 8004BEE0  80 8D 89 20 */	lwz r4, mEmitterMng__13dPa_control_c(r13)
/* 8004BEE4  4B FF F1 81 */	bl createEmitter__19dPa_simpleEcallBackFP17JPAEmitterManager
/* 8004BEE8  3B DE 00 01 */	addi r30, r30, 1
/* 8004BEEC  3B FF 00 14 */	addi r31, r31, 0x14
lbl_8004BEF0:
/* 8004BEF0  88 1C 00 1A */	lbz r0, 0x1a(r28)
/* 8004BEF4  7C 1E 00 00 */	cmpw r30, r0
/* 8004BEF8  41 80 FF E0 */	blt lbl_8004BED8
/* 8004BEFC  28 1D 00 00 */	cmplwi r29, 0
/* 8004BF00  41 82 00 08 */	beq lbl_8004BF08
/* 8004BF04  93 BC 00 10 */	stw r29, 0x10(r28)
lbl_8004BF08:
/* 8004BF08  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 8004BF0C  28 00 00 00 */	cmplwi r0, 0
/* 8004BF10  41 82 00 0C */	beq lbl_8004BF1C
/* 8004BF14  7F 83 E3 78 */	mr r3, r28
/* 8004BF18  4B FF FD C5 */	bl createRoomScene__13dPa_control_cFv
lbl_8004BF1C:
/* 8004BF1C  38 60 00 80 */	li r3, 0x80
/* 8004BF20  4B FF EB FD */	bl create__18dPa_modelEcallBackFUc
/* 8004BF24  39 61 00 20 */	addi r11, r1, 0x20
/* 8004BF28  48 31 62 FD */	bl _restgpr_28
/* 8004BF2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004BF30  7C 08 03 A6 */	mtlr r0
/* 8004BF34  38 21 00 20 */	addi r1, r1, 0x20
/* 8004BF38  4E 80 00 20 */	blr 
