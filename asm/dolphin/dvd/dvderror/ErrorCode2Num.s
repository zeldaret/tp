lbl_8034BA6C:
/* 8034BA6C  38 00 00 02 */	li r0, 2
/* 8034BA70  3C 80 80 3D */	lis r4, ErrorTable@ha
/* 8034BA74  7C 09 03 A6 */	mtctr r0
/* 8034BA78  38 84 16 A8 */	addi r4, r4, ErrorTable@l
/* 8034BA7C  38 A0 00 00 */	li r5, 0
lbl_8034BA80:
/* 8034BA80  80 04 00 00 */	lwz r0, 0(r4)
/* 8034BA84  7C 03 00 40 */	cmplw r3, r0
/* 8034BA88  40 82 00 0C */	bne lbl_8034BA94
/* 8034BA8C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BA90  4E 80 00 20 */	blr 
lbl_8034BA94:
/* 8034BA94  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BA98  38 A5 00 01 */	addi r5, r5, 1
/* 8034BA9C  7C 03 00 40 */	cmplw r3, r0
/* 8034BAA0  40 82 00 0C */	bne lbl_8034BAAC
/* 8034BAA4  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BAA8  4E 80 00 20 */	blr 
lbl_8034BAAC:
/* 8034BAAC  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BAB0  38 A5 00 01 */	addi r5, r5, 1
/* 8034BAB4  7C 03 00 40 */	cmplw r3, r0
/* 8034BAB8  40 82 00 0C */	bne lbl_8034BAC4
/* 8034BABC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BAC0  4E 80 00 20 */	blr 
lbl_8034BAC4:
/* 8034BAC4  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BAC8  38 A5 00 01 */	addi r5, r5, 1
/* 8034BACC  7C 03 00 40 */	cmplw r3, r0
/* 8034BAD0  40 82 00 0C */	bne lbl_8034BADC
/* 8034BAD4  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BAD8  4E 80 00 20 */	blr 
lbl_8034BADC:
/* 8034BADC  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BAE0  38 A5 00 01 */	addi r5, r5, 1
/* 8034BAE4  7C 03 00 40 */	cmplw r3, r0
/* 8034BAE8  40 82 00 0C */	bne lbl_8034BAF4
/* 8034BAEC  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BAF0  4E 80 00 20 */	blr 
lbl_8034BAF4:
/* 8034BAF4  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BAF8  38 A5 00 01 */	addi r5, r5, 1
/* 8034BAFC  7C 03 00 40 */	cmplw r3, r0
/* 8034BB00  40 82 00 0C */	bne lbl_8034BB0C
/* 8034BB04  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BB08  4E 80 00 20 */	blr 
lbl_8034BB0C:
/* 8034BB0C  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BB10  38 A5 00 01 */	addi r5, r5, 1
/* 8034BB14  7C 03 00 40 */	cmplw r3, r0
/* 8034BB18  40 82 00 0C */	bne lbl_8034BB24
/* 8034BB1C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BB20  4E 80 00 20 */	blr 
lbl_8034BB24:
/* 8034BB24  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BB28  38 A5 00 01 */	addi r5, r5, 1
/* 8034BB2C  7C 03 00 40 */	cmplw r3, r0
/* 8034BB30  40 82 00 0C */	bne lbl_8034BB3C
/* 8034BB34  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BB38  4E 80 00 20 */	blr 
lbl_8034BB3C:
/* 8034BB3C  84 04 00 04 */	lwzu r0, 4(r4)
/* 8034BB40  38 A5 00 01 */	addi r5, r5, 1
/* 8034BB44  7C 03 00 40 */	cmplw r3, r0
/* 8034BB48  40 82 00 0C */	bne lbl_8034BB54
/* 8034BB4C  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8034BB50  4E 80 00 20 */	blr 
lbl_8034BB54:
/* 8034BB54  38 84 00 04 */	addi r4, r4, 4
/* 8034BB58  38 A5 00 01 */	addi r5, r5, 1
/* 8034BB5C  42 00 FF 24 */	bdnz lbl_8034BA80
/* 8034BB60  3C 80 00 10 */	lis r4, 0x10
/* 8034BB64  7C 03 20 40 */	cmplw r3, r4
/* 8034BB68  41 80 00 18 */	blt lbl_8034BB80
/* 8034BB6C  38 04 00 08 */	addi r0, r4, 8
/* 8034BB70  7C 03 00 40 */	cmplw r3, r0
/* 8034BB74  41 81 00 0C */	bgt lbl_8034BB80
/* 8034BB78  38 60 00 11 */	li r3, 0x11
/* 8034BB7C  4E 80 00 20 */	blr 
lbl_8034BB80:
/* 8034BB80  38 60 00 1D */	li r3, 0x1d
/* 8034BB84  4E 80 00 20 */	blr 
