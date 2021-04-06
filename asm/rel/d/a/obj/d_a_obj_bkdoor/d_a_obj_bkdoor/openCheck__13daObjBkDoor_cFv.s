lbl_80578FC0:
/* 80578FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578FC4  7C 08 02 A6 */	mflr r0
/* 80578FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578FD0  7C 7F 1B 78 */	mr r31, r3
/* 80578FD4  88 03 05 BD */	lbz r0, 0x5bd(r3)
/* 80578FD8  28 00 00 00 */	cmplwi r0, 0
/* 80578FDC  40 82 00 3C */	bne lbl_80579018
/* 80578FE0  3C 60 80 58 */	lis r3, search_door__FPvPv@ha /* 0x80578D18@ha */
/* 80578FE4  38 63 8D 18 */	addi r3, r3, search_door__FPvPv@l /* 0x80578D18@l */
/* 80578FE8  7F E4 FB 78 */	mr r4, r31
/* 80578FEC  4B AA 08 0D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80578FF0  28 03 00 00 */	cmplwi r3, 0
/* 80578FF4  41 82 00 14 */	beq lbl_80579008
/* 80578FF8  A8 63 04 B6 */	lha r3, 0x4b6(r3)
/* 80578FFC  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80579000  7C 03 00 51 */	subf. r0, r3, r0
/* 80579004  41 82 00 0C */	beq lbl_80579010
lbl_80579008:
/* 80579008  38 00 00 01 */	li r0, 1
/* 8057900C  98 1F 05 BE */	stb r0, 0x5be(r31)
lbl_80579010:
/* 80579010  38 00 00 01 */	li r0, 1
/* 80579014  98 1F 05 BD */	stb r0, 0x5bd(r31)
lbl_80579018:
/* 80579018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057901C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80579020  7C 08 03 A6 */	mtlr r0
/* 80579024  38 21 00 10 */	addi r1, r1, 0x10
/* 80579028  4E 80 00 20 */	blr 
