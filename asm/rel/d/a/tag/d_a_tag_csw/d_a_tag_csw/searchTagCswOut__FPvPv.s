lbl_80D577C0:
/* 80D577C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D577C4  7C 08 02 A6 */	mflr r0
/* 80D577C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D577CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D577D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D577D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D577D8  7C 9F 23 78 */	mr r31, r4
/* 80D577DC  41 82 00 48 */	beq lbl_80D57824
/* 80D577E0  4B 2C 15 01 */	bl fopAc_IsActor__FPv
/* 80D577E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D577E8  41 82 00 3C */	beq lbl_80D57824
/* 80D577EC  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80D577F0  2C 00 02 22 */	cmpwi r0, 0x222
/* 80D577F4  40 82 00 30 */	bne lbl_80D57824
/* 80D577F8  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80D577FC  54 60 07 FE */	clrlwi r0, r3, 0x1f
/* 80D57800  2C 00 00 01 */	cmpwi r0, 1
/* 80D57804  40 82 00 20 */	bne lbl_80D57824
/* 80D57808  54 63 FE 3E */	rlwinm r3, r3, 0x1f, 0x18, 0x1f
/* 80D5780C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D57810  54 00 FE 3E */	rlwinm r0, r0, 0x1f, 0x18, 0x1f
/* 80D57814  7C 03 00 00 */	cmpw r3, r0
/* 80D57818  40 82 00 0C */	bne lbl_80D57824
/* 80D5781C  7F C3 F3 78 */	mr r3, r30
/* 80D57820  48 00 00 08 */	b lbl_80D57828
lbl_80D57824:
/* 80D57824  38 60 00 00 */	li r3, 0
lbl_80D57828:
/* 80D57828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5782C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D57830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D57834  7C 08 03 A6 */	mtlr r0
/* 80D57838  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5783C  4E 80 00 20 */	blr 
