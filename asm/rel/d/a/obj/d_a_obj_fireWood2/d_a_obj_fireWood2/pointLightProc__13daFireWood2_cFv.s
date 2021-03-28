lbl_80BE872C:
/* 80BE872C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BE8730  7C 08 02 A6 */	mflr r0
/* 80BE8734  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BE8738  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BE873C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BE8740  7C 7E 1B 78 */	mr r30, r3
/* 80BE8744  3C 60 80 BF */	lis r3, lit_3625@ha
/* 80BE8748  3B E3 8F 34 */	addi r31, r3, lit_3625@l
/* 80BE874C  88 1E 07 18 */	lbz r0, 0x718(r30)
/* 80BE8750  28 00 00 00 */	cmplwi r0, 0
/* 80BE8754  40 82 00 70 */	bne lbl_80BE87C4
/* 80BE8758  80 1F 00 4C */	lwz r0, 0x4c(r31)
/* 80BE875C  90 01 00 08 */	stw r0, 8(r1)
/* 80BE8760  88 1E 06 F8 */	lbz r0, 0x6f8(r30)
/* 80BE8764  28 00 00 00 */	cmplwi r0, 0
/* 80BE8768  41 82 00 20 */	beq lbl_80BE8788
/* 80BE876C  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80BE8770  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BE8774  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BE8778  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BE877C  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80BE8780  4B 68 71 FC */	b cLib_addCalc__FPfffff
/* 80BE8784  48 00 00 1C */	b lbl_80BE87A0
lbl_80BE8788:
/* 80BE8788  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80BE878C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BE8790  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BE8794  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80BE8798  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80BE879C  4B 68 71 E0 */	b cLib_addCalc__FPfffff
lbl_80BE87A0:
/* 80BE87A0  C0 3E 07 1C */	lfs f1, 0x71c(r30)
/* 80BE87A4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80BE87A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE87AC  4C 41 13 82 */	cror 2, 1, 2
/* 80BE87B0  40 82 00 14 */	bne lbl_80BE87C4
/* 80BE87B4  38 7E 07 0C */	addi r3, r30, 0x70c
/* 80BE87B8  38 81 00 08 */	addi r4, r1, 8
/* 80BE87BC  38 A0 00 00 */	li r5, 0
/* 80BE87C0  4B 5C 15 A0 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80BE87C4:
/* 80BE87C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BE87C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BE87CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BE87D0  7C 08 03 A6 */	mtlr r0
/* 80BE87D4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BE87D8  4E 80 00 20 */	blr 
