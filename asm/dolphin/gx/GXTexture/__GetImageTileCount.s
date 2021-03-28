lbl_8035DD78:
/* 8035DD78  28 03 00 3C */	cmplwi r3, 0x3c
/* 8035DD7C  41 81 00 40 */	bgt lbl_8035DDBC
/* 8035DD80  3D 20 80 3D */	lis r9, lit_145@ha
/* 8035DD84  39 29 26 8C */	addi r9, r9, lit_145@l
/* 8035DD88  54 60 10 3A */	slwi r0, r3, 2
/* 8035DD8C  7C 09 00 2E */	lwzx r0, r9, r0
/* 8035DD90  7C 09 03 A6 */	mtctr r0
/* 8035DD94  4E 80 04 20 */	bctr 
/* 8035DD98  39 60 00 03 */	li r11, 3
/* 8035DD9C  39 80 00 03 */	li r12, 3
/* 8035DDA0  48 00 00 24 */	b lbl_8035DDC4
/* 8035DDA4  39 60 00 03 */	li r11, 3
/* 8035DDA8  39 80 00 02 */	li r12, 2
/* 8035DDAC  48 00 00 18 */	b lbl_8035DDC4
/* 8035DDB0  39 60 00 02 */	li r11, 2
/* 8035DDB4  39 80 00 02 */	li r12, 2
/* 8035DDB8  48 00 00 0C */	b lbl_8035DDC4
lbl_8035DDBC:
/* 8035DDBC  39 80 00 00 */	li r12, 0
/* 8035DDC0  39 60 00 00 */	li r11, 0
lbl_8035DDC4:
/* 8035DDC4  54 80 04 3F */	clrlwi. r0, r4, 0x10
/* 8035DDC8  40 82 00 08 */	bne lbl_8035DDD0
/* 8035DDCC  38 80 00 01 */	li r4, 1
lbl_8035DDD0:
/* 8035DDD0  54 A0 04 3F */	clrlwi. r0, r5, 0x10
/* 8035DDD4  40 82 00 08 */	bne lbl_8035DDDC
/* 8035DDD8  38 A0 00 01 */	li r5, 1
lbl_8035DDDC:
/* 8035DDDC  39 40 00 01 */	li r10, 1
/* 8035DDE0  7D 49 58 30 */	slw r9, r10, r11
/* 8035DDE4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8035DDE8  38 09 FF FF */	addi r0, r9, -1
/* 8035DDEC  7C 04 02 14 */	add r0, r4, r0
/* 8035DDF0  7C 00 5E 30 */	sraw r0, r0, r11
/* 8035DDF4  7D 44 60 30 */	slw r4, r10, r12
/* 8035DDF8  90 06 00 00 */	stw r0, 0(r6)
/* 8035DDFC  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 8035DE00  38 04 FF FF */	addi r0, r4, -1
/* 8035DE04  7C 05 02 14 */	add r0, r5, r0
/* 8035DE08  7C 00 66 30 */	sraw r0, r0, r12
/* 8035DE0C  2C 03 00 06 */	cmpwi r3, 6
/* 8035DE10  90 07 00 00 */	stw r0, 0(r7)
/* 8035DE14  41 82 00 10 */	beq lbl_8035DE24
/* 8035DE18  2C 03 00 16 */	cmpwi r3, 0x16
/* 8035DE1C  41 82 00 08 */	beq lbl_8035DE24
/* 8035DE20  39 40 00 00 */	li r10, 0
lbl_8035DE24:
/* 8035DE24  2C 0A 00 00 */	cmpwi r10, 0
/* 8035DE28  41 82 00 0C */	beq lbl_8035DE34
/* 8035DE2C  38 00 00 02 */	li r0, 2
/* 8035DE30  48 00 00 08 */	b lbl_8035DE38
lbl_8035DE34:
/* 8035DE34  38 00 00 01 */	li r0, 1
lbl_8035DE38:
/* 8035DE38  90 08 00 00 */	stw r0, 0(r8)
/* 8035DE3C  4E 80 00 20 */	blr 
