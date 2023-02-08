lbl_8035DC1C:
/* 8035DC1C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035DC20  28 05 00 3C */	cmplwi r5, 0x3c
/* 8035DC24  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8035DC28  41 81 00 40 */	bgt lbl_8035DC68
/* 8035DC2C  3D 00 80 3D */	lis r8, lit_104@ha /* 0x803D2598@ha */
/* 8035DC30  39 08 25 98 */	addi r8, r8, lit_104@l /* 0x803D2598@l */
/* 8035DC34  54 A0 10 3A */	slwi r0, r5, 2
/* 8035DC38  7C 08 00 2E */	lwzx r0, r8, r0
/* 8035DC3C  7C 09 03 A6 */	mtctr r0
/* 8035DC40  4E 80 04 20 */	bctr 
/* 8035DC44  38 00 00 03 */	li r0, 3
/* 8035DC48  39 00 00 03 */	li r8, 3
/* 8035DC4C  48 00 00 24 */	b lbl_8035DC70
/* 8035DC50  38 00 00 03 */	li r0, 3
/* 8035DC54  39 00 00 02 */	li r8, 2
/* 8035DC58  48 00 00 18 */	b lbl_8035DC70
/* 8035DC5C  38 00 00 02 */	li r0, 2
/* 8035DC60  39 00 00 02 */	li r8, 2
/* 8035DC64  48 00 00 0C */	b lbl_8035DC70
lbl_8035DC68:
/* 8035DC68  39 00 00 00 */	li r8, 0
/* 8035DC6C  38 00 00 00 */	li r0, 0
lbl_8035DC70:
/* 8035DC70  28 05 00 06 */	cmplwi r5, 6
/* 8035DC74  41 82 00 0C */	beq lbl_8035DC80
/* 8035DC78  28 05 00 16 */	cmplwi r5, 0x16
/* 8035DC7C  40 82 00 0C */	bne lbl_8035DC88
lbl_8035DC80:
/* 8035DC80  38 A0 00 40 */	li r5, 0x40
/* 8035DC84  48 00 00 08 */	b lbl_8035DC8C
lbl_8035DC88:
/* 8035DC88  38 A0 00 20 */	li r5, 0x20
lbl_8035DC8C:
/* 8035DC8C  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 8035DC90  28 06 00 01 */	cmplwi r6, 1
/* 8035DC94  40 82 00 A0 */	bne lbl_8035DD34
/* 8035DC98  54 E9 06 3E */	clrlwi r9, r7, 0x18
/* 8035DC9C  38 C0 00 01 */	li r6, 1
/* 8035DCA0  7D 29 03 A6 */	mtctr r9
/* 8035DCA4  7C C7 40 30 */	slw r7, r6, r8
/* 8035DCA8  7C C6 00 30 */	slw r6, r6, r0
/* 8035DCAC  28 09 00 00 */	cmplwi r9, 0
/* 8035DCB0  39 46 FF FF */	addi r10, r6, -1
/* 8035DCB4  38 E7 FF FF */	addi r7, r7, -1
/* 8035DCB8  3B E0 00 00 */	li r31, 0
/* 8035DCBC  40 81 00 AC */	ble lbl_8035DD68
lbl_8035DCC0:
/* 8035DCC0  54 6B 04 3E */	clrlwi r11, r3, 0x10
/* 8035DCC4  7C CB 52 14 */	add r6, r11, r10
/* 8035DCC8  54 8C 04 3E */	clrlwi r12, r4, 0x10
/* 8035DCCC  7C C9 06 30 */	sraw r9, r6, r0
/* 8035DCD0  7C CC 3A 14 */	add r6, r12, r7
/* 8035DCD4  7C C6 46 30 */	sraw r6, r6, r8
/* 8035DCD8  7C C9 31 D6 */	mullw r6, r9, r6
/* 8035DCDC  7C C5 31 D6 */	mullw r6, r5, r6
/* 8035DCE0  28 0B 00 01 */	cmplwi r11, 1
/* 8035DCE4  7F FF 32 14 */	add r31, r31, r6
/* 8035DCE8  40 82 00 0C */	bne lbl_8035DCF4
/* 8035DCEC  28 0C 00 01 */	cmplwi r12, 1
/* 8035DCF0  41 82 00 78 */	beq lbl_8035DD68
lbl_8035DCF4:
/* 8035DCF4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8035DCF8  28 03 00 01 */	cmplwi r3, 1
/* 8035DCFC  40 81 00 0C */	ble lbl_8035DD08
/* 8035DD00  7D 66 0E 70 */	srawi r6, r11, 1
/* 8035DD04  48 00 00 08 */	b lbl_8035DD0C
lbl_8035DD08:
/* 8035DD08  38 C0 00 01 */	li r6, 1
lbl_8035DD0C:
/* 8035DD0C  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8035DD10  28 03 00 01 */	cmplwi r3, 1
/* 8035DD14  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 8035DD18  40 81 00 0C */	ble lbl_8035DD24
/* 8035DD1C  7D 84 0E 70 */	srawi r4, r12, 1
/* 8035DD20  48 00 00 08 */	b lbl_8035DD28
lbl_8035DD24:
/* 8035DD24  38 80 00 01 */	li r4, 1
lbl_8035DD28:
/* 8035DD28  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8035DD2C  42 00 FF 94 */	bdnz lbl_8035DCC0
/* 8035DD30  48 00 00 38 */	b lbl_8035DD68
lbl_8035DD34:
/* 8035DD34  38 C0 00 01 */	li r6, 1
/* 8035DD38  7C C7 00 30 */	slw r7, r6, r0
/* 8035DD3C  7C C6 40 30 */	slw r6, r6, r8
/* 8035DD40  54 69 04 3E */	clrlwi r9, r3, 0x10
/* 8035DD44  38 67 FF FF */	addi r3, r7, -1
/* 8035DD48  7C E9 1A 14 */	add r7, r9, r3
/* 8035DD4C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8035DD50  38 66 FF FF */	addi r3, r6, -1
/* 8035DD54  7C E6 06 30 */	sraw r6, r7, r0
/* 8035DD58  7C 04 1A 14 */	add r0, r4, r3
/* 8035DD5C  7C 00 46 30 */	sraw r0, r0, r8
/* 8035DD60  7C 06 01 D6 */	mullw r0, r6, r0
/* 8035DD64  7F E5 01 D6 */	mullw r31, r5, r0
lbl_8035DD68:
/* 8035DD68  7F E3 FB 78 */	mr r3, r31
/* 8035DD6C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8035DD70  38 21 00 28 */	addi r1, r1, 0x28
/* 8035DD74  4E 80 00 20 */	blr 
