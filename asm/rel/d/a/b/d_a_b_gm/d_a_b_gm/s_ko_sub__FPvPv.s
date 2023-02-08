lbl_805EE620:
/* 805EE620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE624  7C 08 02 A6 */	mflr r0
/* 805EE628  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE62C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE630  7C 7F 1B 78 */	mr r31, r3
/* 805EE634  4B A2 A6 AD */	bl fopAc_IsActor__FPv
/* 805EE638  2C 03 00 00 */	cmpwi r3, 0
/* 805EE63C  41 82 00 24 */	beq lbl_805EE660
/* 805EE640  A8 1F 00 08 */	lha r0, 8(r31)
/* 805EE644  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 805EE648  40 82 00 18 */	bne lbl_805EE660
/* 805EE64C  3C 60 80 5F */	lis r3, ko_ct@ha /* 0x805F4828@ha */
/* 805EE650  38 83 48 28 */	addi r4, r3, ko_ct@l /* 0x805F4828@l */
/* 805EE654  80 64 00 00 */	lwz r3, 0(r4)
/* 805EE658  38 03 00 01 */	addi r0, r3, 1
/* 805EE65C  90 04 00 00 */	stw r0, 0(r4)
lbl_805EE660:
/* 805EE660  38 60 00 00 */	li r3, 0
/* 805EE664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE66C  7C 08 03 A6 */	mtlr r0
/* 805EE670  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE674  4E 80 00 20 */	blr 
