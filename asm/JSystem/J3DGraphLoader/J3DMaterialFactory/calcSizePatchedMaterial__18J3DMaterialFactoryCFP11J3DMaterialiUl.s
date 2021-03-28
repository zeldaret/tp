lbl_80331C30:
/* 80331C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80331C34  7C 08 02 A6 */	mflr r0
/* 80331C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80331C3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80331C40  48 03 05 99 */	bl _savegpr_28
/* 80331C44  7C 7C 1B 78 */	mr r28, r3
/* 80331C48  7C BD 2B 78 */	mr r29, r5
/* 80331C4C  3B C0 00 00 */	li r30, 0
/* 80331C50  28 04 00 00 */	cmplwi r4, 0
/* 80331C54  40 82 00 08 */	bne lbl_80331C5C
/* 80331C58  3B C0 00 4C */	li r30, 0x4c
lbl_80331C5C:
/* 80331C5C  54 C3 01 8E */	rlwinm r3, r6, 0, 6, 7
/* 80331C60  30 03 FF FF */	addic r0, r3, -1
/* 80331C64  7F E0 19 10 */	subfe r31, r0, r3
/* 80331C68  3C 60 40 00 */	lis r3, 0x4000
/* 80331C6C  4B FE 44 95 */	bl calcSizeColorBlock__11J3DMaterialFUl
/* 80331C70  7F DE 1A 14 */	add r30, r30, r3
/* 80331C74  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80331C78  3B DE 01 34 */	addi r30, r30, 0x134
/* 80331C7C  4B FE 45 49 */	bl calcSizeIndBlock__11J3DMaterialFi
/* 80331C80  7F DE 1A 14 */	add r30, r30, r3
/* 80331C84  3C 60 10 00 */	lis r3, 0x1000
/* 80331C88  80 BC 00 04 */	lwz r5, 4(r28)
/* 80331C8C  80 9C 00 08 */	lwz r4, 8(r28)
/* 80331C90  57 BF 08 3C */	slwi r31, r29, 1
/* 80331C94  7C 04 FA 2E */	lhzx r0, r4, r31
/* 80331C98  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331C9C  7C 85 00 AE */	lbzx r4, r5, r0
/* 80331CA0  4B FE 45 39 */	bl calcSizePEBlock__11J3DMaterialFUlUl
/* 80331CA4  7F DE 1A 14 */	add r30, r30, r3
/* 80331CA8  80 9C 00 04 */	lwz r4, 4(r28)
/* 80331CAC  80 7C 00 08 */	lwz r3, 8(r28)
/* 80331CB0  7C 03 FA 2E */	lhzx r0, r3, r31
/* 80331CB4  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331CB8  7C 84 02 14 */	add r4, r4, r0
/* 80331CBC  38 60 00 00 */	li r3, 0
/* 80331CC0  38 00 00 08 */	li r0, 8
/* 80331CC4  7C 09 03 A6 */	mtctr r0
lbl_80331CC8:
/* 80331CC8  38 03 00 48 */	addi r0, r3, 0x48
/* 80331CCC  7C 04 02 2E */	lhzx r0, r4, r0
/* 80331CD0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80331CD4  41 82 00 08 */	beq lbl_80331CDC
/* 80331CD8  3B DE 00 94 */	addi r30, r30, 0x94
lbl_80331CDC:
/* 80331CDC  38 63 00 02 */	addi r3, r3, 2
/* 80331CE0  42 00 FF E8 */	bdnz lbl_80331CC8
/* 80331CE4  7F C3 F3 78 */	mr r3, r30
/* 80331CE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80331CEC  48 03 05 39 */	bl _restgpr_28
/* 80331CF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80331CF4  7C 08 03 A6 */	mtlr r0
/* 80331CF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80331CFC  4E 80 00 20 */	blr 
