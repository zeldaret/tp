lbl_80331AFC:
/* 80331AFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80331B00  7C 08 02 A6 */	mflr r0
/* 80331B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80331B08  39 61 00 30 */	addi r11, r1, 0x30
/* 80331B0C  48 03 06 BD */	bl _savegpr_24
/* 80331B10  7C 7C 1B 78 */	mr r28, r3
/* 80331B14  7C 9D 23 78 */	mr r29, r4
/* 80331B18  7C BE 2B 78 */	mr r30, r5
/* 80331B1C  7C D8 33 78 */	mr r24, r6
/* 80331B20  3B E0 00 00 */	li r31, 0
/* 80331B24  80 03 00 78 */	lwz r0, 0x78(r3)
/* 80331B28  28 00 00 00 */	cmplwi r0, 0
/* 80331B2C  41 82 00 0C */	beq lbl_80331B38
/* 80331B30  48 00 01 D1 */	bl calcSizeLockedMaterial__18J3DMaterialFactoryCFP11J3DMaterialiUl
/* 80331B34  48 00 00 E4 */	b lbl_80331C18
lbl_80331B38:
/* 80331B38  7F C4 F3 78 */	mr r4, r30
/* 80331B3C  4B FF E8 01 */	bl countStages__18J3DMaterialFactoryCFi
/* 80331B40  57 1B 86 FE */	rlwinm r27, r24, 0x10, 0x1b, 0x1f
/* 80331B44  7C 03 D8 40 */	cmplw r3, r27
/* 80331B48  40 81 00 08 */	ble lbl_80331B50
/* 80331B4C  7C 7B 1B 78 */	mr r27, r3
lbl_80331B50:
/* 80331B50  7F 83 E3 78 */	mr r3, r28
/* 80331B54  7F C4 F3 78 */	mr r4, r30
/* 80331B58  4B FF E7 AD */	bl countTexGens__18J3DMaterialFactoryCFi
/* 80331B5C  38 00 00 04 */	li r0, 4
/* 80331B60  7C 03 00 10 */	subfc r0, r3, r0
/* 80331B64  7C 60 01 10 */	subfe r3, r0, r0
/* 80331B68  57 00 01 0A */	rlwinm r0, r24, 0, 4, 5
/* 80331B6C  7C 1A 18 78 */	andc r26, r0, r3
/* 80331B70  57 03 00 02 */	rlwinm r3, r24, 0, 0, 1
/* 80331B74  57 19 00 86 */	rlwinm r25, r24, 0, 2, 3
/* 80331B78  57 18 47 FE */	rlwinm r24, r24, 8, 0x1f, 0x1f
/* 80331B7C  28 1D 00 00 */	cmplwi r29, 0
/* 80331B80  40 82 00 08 */	bne lbl_80331B88
/* 80331B84  3B E0 00 4C */	li r31, 0x4c
lbl_80331B88:
/* 80331B88  4B FE 45 79 */	bl calcSizeColorBlock__11J3DMaterialFUl
/* 80331B8C  7F FF 1A 14 */	add r31, r31, r3
/* 80331B90  7F 43 D3 78 */	mr r3, r26
/* 80331B94  4B FE 45 BD */	bl calcSizeTexGenBlock__11J3DMaterialFUl
/* 80331B98  7F FF 1A 14 */	add r31, r31, r3
/* 80331B9C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 80331BA0  4B FE 45 DD */	bl calcSizeTevBlock__11J3DMaterialFi
/* 80331BA4  7F FF 1A 14 */	add r31, r31, r3
/* 80331BA8  7F 03 C3 78 */	mr r3, r24
/* 80331BAC  4B FE 46 19 */	bl calcSizeIndBlock__11J3DMaterialFi
/* 80331BB0  7F FF 1A 14 */	add r31, r31, r3
/* 80331BB4  7F 23 CB 78 */	mr r3, r25
/* 80331BB8  80 BC 00 04 */	lwz r5, 4(r28)
/* 80331BBC  80 9C 00 08 */	lwz r4, 8(r28)
/* 80331BC0  57 D8 08 3C */	slwi r24, r30, 1
/* 80331BC4  7C 04 C2 2E */	lhzx r0, r4, r24
/* 80331BC8  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331BCC  7C 85 00 AE */	lbzx r4, r5, r0
/* 80331BD0  4B FE 46 09 */	bl calcSizePEBlock__11J3DMaterialFUlUl
/* 80331BD4  7F FF 1A 14 */	add r31, r31, r3
/* 80331BD8  80 9C 00 04 */	lwz r4, 4(r28)
/* 80331BDC  80 7C 00 08 */	lwz r3, 8(r28)
/* 80331BE0  7C 03 C2 2E */	lhzx r0, r3, r24
/* 80331BE4  1C 00 01 4C */	mulli r0, r0, 0x14c
/* 80331BE8  7C 84 02 14 */	add r4, r4, r0
/* 80331BEC  38 60 00 00 */	li r3, 0
/* 80331BF0  38 00 00 08 */	li r0, 8
/* 80331BF4  7C 09 03 A6 */	mtctr r0
lbl_80331BF8:
/* 80331BF8  38 03 00 48 */	addi r0, r3, 0x48
/* 80331BFC  7C 04 02 2E */	lhzx r0, r4, r0
/* 80331C00  28 00 FF FF */	cmplwi r0, 0xffff
/* 80331C04  41 82 00 08 */	beq lbl_80331C0C
/* 80331C08  3B FF 00 94 */	addi r31, r31, 0x94
lbl_80331C0C:
/* 80331C0C  38 63 00 02 */	addi r3, r3, 2
/* 80331C10  42 00 FF E8 */	bdnz lbl_80331BF8
/* 80331C14  7F E3 FB 78 */	mr r3, r31
lbl_80331C18:
/* 80331C18  39 61 00 30 */	addi r11, r1, 0x30
/* 80331C1C  48 03 05 F9 */	bl _restgpr_24
/* 80331C20  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80331C24  7C 08 03 A6 */	mtlr r0
/* 80331C28  38 21 00 30 */	addi r1, r1, 0x30
/* 80331C2C  4E 80 00 20 */	blr 
