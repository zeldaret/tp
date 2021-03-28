lbl_802EE84C:
/* 802EE84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EE850  7C 08 02 A6 */	mflr r0
/* 802EE854  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EE858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EE85C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EE860  7C 7E 1B 78 */	mr r30, r3
/* 802EE864  7C 9F 23 79 */	or. r31, r4, r4
/* 802EE868  40 82 00 0C */	bne lbl_802EE874
/* 802EE86C  38 60 00 00 */	li r3, 0
/* 802EE870  48 00 00 44 */	b lbl_802EE8B4
lbl_802EE874:
/* 802EE874  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 802EE878  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802EE87C  41 82 00 24 */	beq lbl_802EE8A0
/* 802EE880  80 7E 00 AC */	lwz r3, 0xac(r30)
/* 802EE884  28 03 00 00 */	cmplwi r3, 0
/* 802EE888  41 82 00 18 */	beq lbl_802EE8A0
/* 802EE88C  38 80 00 01 */	li r4, 1
/* 802EE890  81 83 00 00 */	lwz r12, 0(r3)
/* 802EE894  81 8C 00 08 */	lwz r12, 8(r12)
/* 802EE898  7D 89 03 A6 */	mtctr r12
/* 802EE89C  4E 80 04 21 */	bctrl 
lbl_802EE8A0:
/* 802EE8A0  93 FE 00 AC */	stw r31, 0xac(r30)
/* 802EE8A4  88 1E 00 B0 */	lbz r0, 0xb0(r30)
/* 802EE8A8  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802EE8AC  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 802EE8B0  38 60 00 01 */	li r3, 1
lbl_802EE8B4:
/* 802EE8B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EE8B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EE8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EE8C0  7C 08 03 A6 */	mtlr r0
/* 802EE8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EE8C8  4E 80 00 20 */	blr 
