lbl_807DA7F0:
/* 807DA7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807DA7F4  7C 08 02 A6 */	mflr r0
/* 807DA7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807DA7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DA800  7C 7F 1B 78 */	mr r31, r3
/* 807DA804  4B 83 E4 DC */	b fopAc_IsActor__FPv
/* 807DA808  2C 03 00 00 */	cmpwi r3, 0
/* 807DA80C  41 82 00 44 */	beq lbl_807DA850
/* 807DA810  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DA814  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 807DA818  40 82 00 38 */	bne lbl_807DA850
/* 807DA81C  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 807DA820  7C 00 07 75 */	extsb. r0, r0
/* 807DA824  40 82 00 2C */	bne lbl_807DA850
/* 807DA828  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 807DA82C  28 00 00 01 */	cmplwi r0, 1
/* 807DA830  41 82 00 0C */	beq lbl_807DA83C
/* 807DA834  28 00 00 02 */	cmplwi r0, 2
/* 807DA838  40 82 00 18 */	bne lbl_807DA850
lbl_807DA83C:
/* 807DA83C  3C 60 80 7E */	lis r3, rd_count@ha
/* 807DA840  38 83 38 00 */	addi r4, r3, rd_count@l
/* 807DA844  80 64 00 00 */	lwz r3, 0(r4)
/* 807DA848  38 03 00 01 */	addi r0, r3, 1
/* 807DA84C  90 04 00 00 */	stw r0, 0(r4)
lbl_807DA850:
/* 807DA850  38 60 00 00 */	li r3, 0
/* 807DA854  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DA858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807DA85C  7C 08 03 A6 */	mtlr r0
/* 807DA860  38 21 00 10 */	addi r1, r1, 0x10
/* 807DA864  4E 80 00 20 */	blr 
