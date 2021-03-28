lbl_80C69064:
/* 80C69064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69068  7C 08 02 A6 */	mflr r0
/* 80C6906C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69074  93 C1 00 08 */	stw r30, 8(r1)
/* 80C69078  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6907C  7C 9F 23 78 */	mr r31, r4
/* 80C69080  41 82 00 3C */	beq lbl_80C690BC
/* 80C69084  4B 3A FC 5C */	b fopAc_IsActor__FPv
/* 80C69088  2C 03 00 00 */	cmpwi r3, 0
/* 80C6908C  41 82 00 30 */	beq lbl_80C690BC
/* 80C69090  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C69094  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80C69098  40 82 00 24 */	bne lbl_80C690BC
/* 80C6909C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C690A0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C690A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C690A8  54 00 EE 3E */	rlwinm r0, r0, 0x1d, 0x18, 0x1f
/* 80C690AC  7C 03 00 00 */	cmpw r3, r0
/* 80C690B0  40 82 00 0C */	bne lbl_80C690BC
/* 80C690B4  7F C3 F3 78 */	mr r3, r30
/* 80C690B8  48 00 00 08 */	b lbl_80C690C0
lbl_80C690BC:
/* 80C690BC  38 60 00 00 */	li r3, 0
lbl_80C690C0:
/* 80C690C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C690C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C690C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C690CC  7C 08 03 A6 */	mtlr r0
/* 80C690D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C690D4  4E 80 00 20 */	blr 
