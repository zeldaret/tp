lbl_80507784:
/* 80507784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80507788  7C 08 02 A6 */	mflr r0
/* 8050778C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80507790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80507794  7C 7F 1B 78 */	mr r31, r3
/* 80507798  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050779C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805077A0  41 80 00 0C */	blt lbl_805077AC
/* 805077A4  38 60 00 00 */	li r3, 0
/* 805077A8  48 00 00 28 */	b lbl_805077D0
lbl_805077AC:
/* 805077AC  38 7F 11 00 */	addi r3, r31, 0x1100
/* 805077B0  4B B7 CB 10 */	b ChkAtHit__12dCcD_GObjInfFv
/* 805077B4  28 03 00 00 */	cmplwi r3, 0
/* 805077B8  41 82 00 14 */	beq lbl_805077CC
/* 805077BC  38 7F 11 00 */	addi r3, r31, 0x1100
/* 805077C0  4B B7 CB 98 */	b GetAtHitObj__12dCcD_GObjInfFv
/* 805077C4  4B D5 C2 84 */	b GetAc__8cCcD_ObjFv
/* 805077C8  48 00 00 08 */	b lbl_805077D0
lbl_805077CC:
/* 805077CC  38 60 00 00 */	li r3, 0
lbl_805077D0:
/* 805077D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805077D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805077D8  7C 08 03 A6 */	mtlr r0
/* 805077DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805077E0  4E 80 00 20 */	blr 
