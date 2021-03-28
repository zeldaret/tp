lbl_80C4D7A8:
/* 80C4D7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4D7AC  7C 08 02 A6 */	mflr r0
/* 80C4D7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4D7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4D7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4D7BC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C4D7C0  7C 9F 23 78 */	mr r31, r4
/* 80C4D7C4  41 82 00 8C */	beq lbl_80C4D850
/* 80C4D7C8  4B 3C B5 18 */	b fopAc_IsActor__FPv
/* 80C4D7CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C4D7D0  41 82 00 80 */	beq lbl_80C4D850
/* 80C4D7D4  A8 1E 00 0E */	lha r0, 0xe(r30)
/* 80C4D7D8  2C 00 00 D5 */	cmpwi r0, 0xd5
/* 80C4D7DC  40 82 00 74 */	bne lbl_80C4D850
/* 80C4D7E0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C4D7E4  7C 03 07 74 */	extsb r3, r0
/* 80C4D7E8  2C 03 00 07 */	cmpwi r3, 7
/* 80C4D7EC  40 82 00 10 */	bne lbl_80C4D7FC
/* 80C4D7F0  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C4D7F4  28 00 00 08 */	cmplwi r0, 8
/* 80C4D7F8  41 82 00 50 */	beq lbl_80C4D848
lbl_80C4D7FC:
/* 80C4D7FC  2C 03 00 0B */	cmpwi r3, 0xb
/* 80C4D800  40 82 00 10 */	bne lbl_80C4D810
/* 80C4D804  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C4D808  28 00 00 0E */	cmplwi r0, 0xe
/* 80C4D80C  41 82 00 3C */	beq lbl_80C4D848
lbl_80C4D810:
/* 80C4D810  2C 03 00 02 */	cmpwi r3, 2
/* 80C4D814  40 82 00 3C */	bne lbl_80C4D850
/* 80C4D818  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C4D81C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C4D820  2C 03 00 09 */	cmpwi r3, 9
/* 80C4D824  40 82 00 10 */	bne lbl_80C4D834
/* 80C4D828  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C4D82C  28 00 00 0D */	cmplwi r0, 0xd
/* 80C4D830  41 82 00 18 */	beq lbl_80C4D848
lbl_80C4D834:
/* 80C4D834  2C 03 00 12 */	cmpwi r3, 0x12
/* 80C4D838  40 82 00 18 */	bne lbl_80C4D850
/* 80C4D83C  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C4D840  28 00 00 0C */	cmplwi r0, 0xc
/* 80C4D844  40 82 00 0C */	bne lbl_80C4D850
lbl_80C4D848:
/* 80C4D848  7F C3 F3 78 */	mr r3, r30
/* 80C4D84C  48 00 00 08 */	b lbl_80C4D854
lbl_80C4D850:
/* 80C4D850  38 60 00 00 */	li r3, 0
lbl_80C4D854:
/* 80C4D854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4D858  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C4D85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4D860  7C 08 03 A6 */	mtlr r0
/* 80C4D864  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4D868  4E 80 00 20 */	blr 
