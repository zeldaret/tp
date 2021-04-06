lbl_8032FBC8:
/* 8032FBC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032FBCC  7C 08 02 A6 */	mflr r0
/* 8032FBD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032FBD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FBD8  48 03 25 FD */	bl _savegpr_27
/* 8032FBDC  7C 7C 1B 78 */	mr r28, r3
/* 8032FBE0  7C 9D 23 78 */	mr r29, r4
/* 8032FBE4  3B E0 00 00 */	li r31, 0
/* 8032FBE8  A0 64 00 16 */	lhz r3, 0x16(r4)
/* 8032FBEC  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 8032FBF0  28 00 00 01 */	cmplwi r0, 1
/* 8032FBF4  40 82 00 0C */	bne lbl_8032FC00
/* 8032FBF8  38 60 00 02 */	li r3, 2
/* 8032FBFC  48 00 00 B0 */	b lbl_8032FCAC
lbl_8032FC00:
/* 8032FC00  3B C0 00 00 */	li r30, 0
/* 8032FC04  54 7B 04 3E */	clrlwi r27, r3, 0x10
/* 8032FC08  48 00 00 94 */	b lbl_8032FC9C
lbl_8032FC0C:
/* 8032FC0C  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 8032FC10  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8032FC14  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8032FC18  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FC1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FC20  41 82 00 78 */	beq lbl_8032FC98
/* 8032FC24  80 7C 00 08 */	lwz r3, 8(r28)
/* 8032FC28  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FC2C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032FC30  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032FC34  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FC38  7C 03 00 40 */	cmplw r3, r0
/* 8032FC3C  40 80 00 08 */	bge lbl_8032FC44
/* 8032FC40  48 00 00 08 */	b lbl_8032FC48
lbl_8032FC44:
/* 8032FC44  38 60 00 00 */	li r3, 0
lbl_8032FC48:
/* 8032FC48  80 BD 00 10 */	lwz r5, 0x10(r29)
/* 8032FC4C  54 84 18 38 */	slwi r4, r4, 3
/* 8032FC50  38 04 00 04 */	addi r0, r4, 4
/* 8032FC54  7C 85 00 AE */	lbzx r4, r5, r0
/* 8032FC58  28 03 00 00 */	cmplwi r3, 0
/* 8032FC5C  40 82 00 0C */	bne lbl_8032FC68
/* 8032FC60  3B E0 00 01 */	li r31, 1
/* 8032FC64  48 00 00 34 */	b lbl_8032FC98
lbl_8032FC68:
/* 8032FC68  3C A0 80 3A */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x803A7C84@ha */
/* 8032FC6C  38 05 7C 84 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x803A7C84@l */
/* 8032FC70  90 01 00 08 */	stw r0, 8(r1)
/* 8032FC74  B3 C1 00 0C */	sth r30, 0xc(r1)
/* 8032FC78  38 00 00 01 */	li r0, 1
/* 8032FC7C  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8032FC80  93 A1 00 10 */	stw r29, 0x10(r1)
/* 8032FC84  38 A1 00 08 */	addi r5, r1, 8
/* 8032FC88  4B FF C9 9D */	bl setTexNoAnm__14J3DMaterialAnmFiP11J3DTexNoAnm
/* 8032FC8C  3C 60 80 3A */	lis r3, __vt__11J3DTexNoAnm@ha /* 0x803A7C84@ha */
/* 8032FC90  38 03 7C 84 */	addi r0, r3, __vt__11J3DTexNoAnm@l /* 0x803A7C84@l */
/* 8032FC94  90 01 00 08 */	stw r0, 8(r1)
lbl_8032FC98:
/* 8032FC98  3B DE 00 01 */	addi r30, r30, 1
lbl_8032FC9C:
/* 8032FC9C  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032FCA0  7C 00 D8 40 */	cmplw r0, r27
/* 8032FCA4  41 80 FF 68 */	blt lbl_8032FC0C
/* 8032FCA8  7F E3 FB 78 */	mr r3, r31
lbl_8032FCAC:
/* 8032FCAC  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FCB0  48 03 25 71 */	bl _restgpr_27
/* 8032FCB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FCB8  7C 08 03 A6 */	mtlr r0
/* 8032FCBC  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FCC0  4E 80 00 20 */	blr 
