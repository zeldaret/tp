lbl_801F5AE4:
/* 801F5AE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F5AE8  7C 08 02 A6 */	mflr r0
/* 801F5AEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F5AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 801F5AF4  48 16 C6 E5 */	bl _savegpr_28
/* 801F5AF8  7C 7C 1B 78 */	mr r28, r3
/* 801F5AFC  7C 9D 23 78 */	mr r29, r4
/* 801F5B00  3B E0 00 00 */	li r31, 0
/* 801F5B04  3B C0 00 01 */	li r30, 1
/* 801F5B08  88 63 01 B7 */	lbz r3, 0x1b7(r3)
/* 801F5B0C  28 03 00 FF */	cmplwi r3, 0xff
/* 801F5B10  41 82 00 E8 */	beq lbl_801F5BF8
/* 801F5B14  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801F5B18  7C DC 02 14 */	add r6, r28, r0
/* 801F5B1C  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5B20  54 60 1D 78 */	rlwinm r0, r3, 3, 0x15, 0x1c
/* 801F5B24  3C 60 80 3C */	lis r3, YnSelStartFrameTbl@ha
/* 801F5B28  38 A3 DF B4 */	addi r5, r3, YnSelStartFrameTbl@l
/* 801F5B2C  7C 65 02 14 */	add r3, r5, r0
/* 801F5B30  57 A7 15 BA */	rlwinm r7, r29, 2, 0x16, 0x1d
/* 801F5B34  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5B38  7C 04 00 00 */	cmpw r4, r0
/* 801F5B3C  41 82 00 BC */	beq lbl_801F5BF8
/* 801F5B40  40 80 00 38 */	bge lbl_801F5B78
/* 801F5B44  38 04 00 02 */	addi r0, r4, 2
/* 801F5B48  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5B4C  88 7C 01 B7 */	lbz r3, 0x1b7(r28)
/* 801F5B50  54 60 10 3A */	slwi r0, r3, 2
/* 801F5B54  7C DC 02 14 */	add r6, r28, r0
/* 801F5B58  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5B5C  54 60 18 38 */	slwi r0, r3, 3
/* 801F5B60  7C 65 02 14 */	add r3, r5, r0
/* 801F5B64  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5B68  7C 04 00 00 */	cmpw r4, r0
/* 801F5B6C  40 81 00 3C */	ble lbl_801F5BA8
/* 801F5B70  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5B74  48 00 00 34 */	b lbl_801F5BA8
lbl_801F5B78:
/* 801F5B78  38 04 FF FE */	addi r0, r4, -2
/* 801F5B7C  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5B80  88 7C 01 B7 */	lbz r3, 0x1b7(r28)
/* 801F5B84  54 60 10 3A */	slwi r0, r3, 2
/* 801F5B88  7C DC 02 14 */	add r6, r28, r0
/* 801F5B8C  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5B90  54 60 18 38 */	slwi r0, r3, 3
/* 801F5B94  7C 65 02 14 */	add r3, r5, r0
/* 801F5B98  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5B9C  7C 04 00 00 */	cmpw r4, r0
/* 801F5BA0  40 80 00 08 */	bge lbl_801F5BA8
/* 801F5BA4  90 06 00 8C */	stw r0, 0x8c(r6)
lbl_801F5BA8:
/* 801F5BA8  88 1C 01 B7 */	lbz r0, 0x1b7(r28)
/* 801F5BAC  54 00 10 3A */	slwi r0, r0, 2
/* 801F5BB0  7C 7C 02 14 */	add r3, r28, r0
/* 801F5BB4  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 801F5BB8  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F5BBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F5BC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5BC4  3C 00 43 30 */	lis r0, 0x4330
/* 801F5BC8  90 01 00 08 */	stw r0, 8(r1)
/* 801F5BCC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F5BD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F5BD4  80 7C 00 40 */	lwz r3, 0x40(r28)
/* 801F5BD8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F5BDC  88 1C 01 B7 */	lbz r0, 0x1b7(r28)
/* 801F5BE0  54 00 10 3A */	slwi r0, r0, 2
/* 801F5BE4  7C 7C 02 14 */	add r3, r28, r0
/* 801F5BE8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F5BEC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F5BF0  48 10 23 DD */	bl animationTransform__7J2DPaneFv
/* 801F5BF4  3B C0 00 00 */	li r30, 0
lbl_801F5BF8:
/* 801F5BF8  39 00 00 01 */	li r8, 1
/* 801F5BFC  88 7C 01 B6 */	lbz r3, 0x1b6(r28)
/* 801F5C00  28 03 00 FF */	cmplwi r3, 0xff
/* 801F5C04  41 82 00 E8 */	beq lbl_801F5CEC
/* 801F5C08  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 801F5C0C  7C DC 02 14 */	add r6, r28, r0
/* 801F5C10  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5C14  54 60 1D 78 */	rlwinm r0, r3, 3, 0x15, 0x1c
/* 801F5C18  3C 60 80 3C */	lis r3, YnSelEndFrameTbl@ha
/* 801F5C1C  38 A3 DF C4 */	addi r5, r3, YnSelEndFrameTbl@l
/* 801F5C20  7C 65 02 14 */	add r3, r5, r0
/* 801F5C24  57 A7 15 BA */	rlwinm r7, r29, 2, 0x16, 0x1d
/* 801F5C28  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5C2C  7C 04 00 00 */	cmpw r4, r0
/* 801F5C30  41 82 00 BC */	beq lbl_801F5CEC
/* 801F5C34  40 80 00 38 */	bge lbl_801F5C6C
/* 801F5C38  38 04 00 02 */	addi r0, r4, 2
/* 801F5C3C  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5C40  88 7C 01 B6 */	lbz r3, 0x1b6(r28)
/* 801F5C44  54 60 10 3A */	slwi r0, r3, 2
/* 801F5C48  7C DC 02 14 */	add r6, r28, r0
/* 801F5C4C  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5C50  54 60 18 38 */	slwi r0, r3, 3
/* 801F5C54  7C 65 02 14 */	add r3, r5, r0
/* 801F5C58  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5C5C  7C 04 00 00 */	cmpw r4, r0
/* 801F5C60  40 81 00 3C */	ble lbl_801F5C9C
/* 801F5C64  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5C68  48 00 00 34 */	b lbl_801F5C9C
lbl_801F5C6C:
/* 801F5C6C  38 04 FF FE */	addi r0, r4, -2
/* 801F5C70  90 06 00 8C */	stw r0, 0x8c(r6)
/* 801F5C74  88 7C 01 B6 */	lbz r3, 0x1b6(r28)
/* 801F5C78  54 60 10 3A */	slwi r0, r3, 2
/* 801F5C7C  7C DC 02 14 */	add r6, r28, r0
/* 801F5C80  80 86 00 8C */	lwz r4, 0x8c(r6)
/* 801F5C84  54 60 18 38 */	slwi r0, r3, 3
/* 801F5C88  7C 65 02 14 */	add r3, r5, r0
/* 801F5C8C  7C 03 38 2E */	lwzx r0, r3, r7
/* 801F5C90  7C 04 00 00 */	cmpw r4, r0
/* 801F5C94  40 80 00 08 */	bge lbl_801F5C9C
/* 801F5C98  90 06 00 8C */	stw r0, 0x8c(r6)
lbl_801F5C9C:
/* 801F5C9C  88 1C 01 B6 */	lbz r0, 0x1b6(r28)
/* 801F5CA0  54 00 10 3A */	slwi r0, r0, 2
/* 801F5CA4  7C 7C 02 14 */	add r3, r28, r0
/* 801F5CA8  80 03 00 8C */	lwz r0, 0x8c(r3)
/* 801F5CAC  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F5CB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F5CB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F5CB8  3C 00 43 30 */	lis r0, 0x4330
/* 801F5CBC  90 01 00 08 */	stw r0, 8(r1)
/* 801F5CC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F5CC4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F5CC8  80 7C 00 44 */	lwz r3, 0x44(r28)
/* 801F5CCC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F5CD0  88 1C 01 B6 */	lbz r0, 0x1b6(r28)
/* 801F5CD4  54 00 10 3A */	slwi r0, r0, 2
/* 801F5CD8  7C 7C 02 14 */	add r3, r28, r0
/* 801F5CDC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F5CE0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F5CE4  48 10 22 E9 */	bl animationTransform__7J2DPaneFv
/* 801F5CE8  39 00 00 00 */	li r8, 0
lbl_801F5CEC:
/* 801F5CEC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F5CF0  28 00 00 01 */	cmplwi r0, 1
/* 801F5CF4  40 82 00 74 */	bne lbl_801F5D68
/* 801F5CF8  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 801F5CFC  28 00 00 01 */	cmplwi r0, 1
/* 801F5D00  40 82 00 68 */	bne lbl_801F5D68
/* 801F5D04  88 1C 01 B7 */	lbz r0, 0x1b7(r28)
/* 801F5D08  28 00 00 FF */	cmplwi r0, 0xff
/* 801F5D0C  41 82 00 28 */	beq lbl_801F5D34
/* 801F5D10  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F5D14  7C 7C 02 14 */	add r3, r28, r0
/* 801F5D18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F5D1C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F5D20  38 80 00 00 */	li r4, 0
/* 801F5D24  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5D28  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F5D2C  7D 89 03 A6 */	mtctr r12
/* 801F5D30  4E 80 04 21 */	bctrl 
lbl_801F5D34:
/* 801F5D34  88 1C 01 B6 */	lbz r0, 0x1b6(r28)
/* 801F5D38  28 00 00 FF */	cmplwi r0, 0xff
/* 801F5D3C  41 82 00 28 */	beq lbl_801F5D64
/* 801F5D40  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F5D44  7C 7C 02 14 */	add r3, r28, r0
/* 801F5D48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 801F5D4C  80 63 00 04 */	lwz r3, 4(r3)
/* 801F5D50  38 80 00 00 */	li r4, 0
/* 801F5D54  81 83 00 00 */	lwz r12, 0(r3)
/* 801F5D58  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F5D5C  7D 89 03 A6 */	mtctr r12
/* 801F5D60  4E 80 04 21 */	bctrl 
lbl_801F5D64:
/* 801F5D64  3B E0 00 01 */	li r31, 1
lbl_801F5D68:
/* 801F5D68  7F E3 FB 78 */	mr r3, r31
/* 801F5D6C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F5D70  48 16 C4 B5 */	bl _restgpr_28
/* 801F5D74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F5D78  7C 08 03 A6 */	mtlr r0
/* 801F5D7C  38 21 00 20 */	addi r1, r1, 0x20
/* 801F5D80  4E 80 00 20 */	blr 
