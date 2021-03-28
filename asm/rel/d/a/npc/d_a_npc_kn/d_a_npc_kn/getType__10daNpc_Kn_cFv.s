lbl_80A2B7DC:
/* 80A2B7DC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80A2B7E0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A2B7E4  28 00 00 07 */	cmplwi r0, 7
/* 80A2B7E8  41 81 00 54 */	bgt lbl_80A2B83C
/* 80A2B7EC  3C 60 80 A4 */	lis r3, lit_6623@ha
/* 80A2B7F0  38 63 17 C8 */	addi r3, r3, lit_6623@l
/* 80A2B7F4  54 00 10 3A */	slwi r0, r0, 2
/* 80A2B7F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A2B7FC  7C 09 03 A6 */	mtctr r0
/* 80A2B800  4E 80 04 20 */	bctr 
lbl_80A2B804:
/* 80A2B804  38 60 00 00 */	li r3, 0
/* 80A2B808  4E 80 00 20 */	blr 
lbl_80A2B80C:
/* 80A2B80C  38 60 00 01 */	li r3, 1
/* 80A2B810  4E 80 00 20 */	blr 
lbl_80A2B814:
/* 80A2B814  38 60 00 02 */	li r3, 2
/* 80A2B818  4E 80 00 20 */	blr 
lbl_80A2B81C:
/* 80A2B81C  38 60 00 03 */	li r3, 3
/* 80A2B820  4E 80 00 20 */	blr 
lbl_80A2B824:
/* 80A2B824  38 60 00 04 */	li r3, 4
/* 80A2B828  4E 80 00 20 */	blr 
lbl_80A2B82C:
/* 80A2B82C  38 60 00 05 */	li r3, 5
/* 80A2B830  4E 80 00 20 */	blr 
lbl_80A2B834:
/* 80A2B834  38 60 00 06 */	li r3, 6
/* 80A2B838  4E 80 00 20 */	blr 
lbl_80A2B83C:
/* 80A2B83C  38 60 00 07 */	li r3, 7
/* 80A2B840  4E 80 00 20 */	blr 
