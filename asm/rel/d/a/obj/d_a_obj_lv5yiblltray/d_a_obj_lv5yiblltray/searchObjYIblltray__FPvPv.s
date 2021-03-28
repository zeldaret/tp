lbl_80C6F2BC:
/* 80C6F2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6F2C0  7C 08 02 A6 */	mflr r0
/* 80C6F2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6F2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6F2CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C6F2D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6F2D4  7C 9F 23 78 */	mr r31, r4
/* 80C6F2D8  41 82 00 44 */	beq lbl_80C6F31C
/* 80C6F2DC  4B 3A 9A 04 */	b fopAc_IsActor__FPv
/* 80C6F2E0  2C 03 00 00 */	cmpwi r3, 0
/* 80C6F2E4  41 82 00 38 */	beq lbl_80C6F31C
/* 80C6F2E8  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C6F2EC  2C 00 00 CC */	cmpwi r0, 0xcc
/* 80C6F2F0  40 82 00 2C */	bne lbl_80C6F31C
/* 80C6F2F4  7C 1E F8 40 */	cmplw r30, r31
/* 80C6F2F8  41 82 00 24 */	beq lbl_80C6F31C
/* 80C6F2FC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C6F300  54 03 FE 3E */	rlwinm r3, r0, 0x1f, 0x18, 0x1f
/* 80C6F304  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C6F308  54 00 FE 3E */	rlwinm r0, r0, 0x1f, 0x18, 0x1f
/* 80C6F30C  7C 03 00 00 */	cmpw r3, r0
/* 80C6F310  40 82 00 0C */	bne lbl_80C6F31C
/* 80C6F314  7F C3 F3 78 */	mr r3, r30
/* 80C6F318  48 00 00 08 */	b lbl_80C6F320
lbl_80C6F31C:
/* 80C6F31C  38 60 00 00 */	li r3, 0
lbl_80C6F320:
/* 80C6F320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6F324  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6F328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6F32C  7C 08 03 A6 */	mtlr r0
/* 80C6F330  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6F334  4E 80 00 20 */	blr 
