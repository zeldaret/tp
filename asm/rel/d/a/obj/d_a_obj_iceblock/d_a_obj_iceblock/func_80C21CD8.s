lbl_80C21CD8:
/* 80C21CD8  54 C4 07 FF */	clrlwi. r4, r6, 0x1f
/* 80C21CDC  30 04 FF FF */	addic r0, r4, -1
/* 80C21CE0  7C 00 21 10 */	subfe r0, r0, r4
/* 80C21CE4  39 00 FF FF */	li r8, -1
/* 80C21CE8  41 82 00 78 */	beq lbl_80C21D60
/* 80C21CEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80C21CF0  41 82 00 70 */	beq lbl_80C21D60
/* 80C21CF4  7C A0 07 34 */	extsh r0, r5
/* 80C21CF8  2C 00 E0 00 */	cmpwi r0, -8192
/* 80C21CFC  41 80 00 14 */	blt lbl_80C21D10
/* 80C21D00  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C21D04  40 80 00 0C */	bge lbl_80C21D10
/* 80C21D08  39 00 00 00 */	li r8, 0
/* 80C21D0C  48 00 00 54 */	b lbl_80C21D60
lbl_80C21D10:
/* 80C21D10  7C A0 07 34 */	extsh r0, r5
/* 80C21D14  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C21D18  41 80 00 14 */	blt lbl_80C21D2C
/* 80C21D1C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80C21D20  40 80 00 0C */	bge lbl_80C21D2C
/* 80C21D24  39 00 00 01 */	li r8, 1
/* 80C21D28  48 00 00 38 */	b lbl_80C21D60
lbl_80C21D2C:
/* 80C21D2C  7C A0 07 34 */	extsh r0, r5
/* 80C21D30  2C 00 E0 00 */	cmpwi r0, -8192
/* 80C21D34  40 80 00 14 */	bge lbl_80C21D48
/* 80C21D38  2C 00 A0 00 */	cmpwi r0, -24576
/* 80C21D3C  41 80 00 0C */	blt lbl_80C21D48
/* 80C21D40  39 00 00 03 */	li r8, 3
/* 80C21D44  48 00 00 1C */	b lbl_80C21D60
lbl_80C21D48:
/* 80C21D48  7C A0 07 34 */	extsh r0, r5
/* 80C21D4C  2C 00 A0 00 */	cmpwi r0, -24576
/* 80C21D50  41 80 00 0C */	blt lbl_80C21D5C
/* 80C21D54  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80C21D58  41 80 00 08 */	blt lbl_80C21D60
lbl_80C21D5C:
/* 80C21D5C  39 00 00 02 */	li r8, 2
lbl_80C21D60:
/* 80C21D60  2C 08 FF FF */	cmpwi r8, -1
/* 80C21D64  41 82 00 40 */	beq lbl_80C21DA4
/* 80C21D68  39 20 00 00 */	li r9, 0
/* 80C21D6C  38 80 00 00 */	li r4, 0
/* 80C21D70  38 00 00 04 */	li r0, 4
/* 80C21D74  7C 09 03 A6 */	mtctr r0
lbl_80C21D78:
/* 80C21D78  7C 09 40 00 */	cmpw r9, r8
/* 80C21D7C  40 82 00 18 */	bne lbl_80C21D94
/* 80C21D80  38 E9 09 48 */	addi r7, r9, 0x948
/* 80C21D84  7C A3 38 AE */	lbzx r5, r3, r7
/* 80C21D88  38 05 00 01 */	addi r0, r5, 1
/* 80C21D8C  7C 03 39 AE */	stbx r0, r3, r7
/* 80C21D90  48 00 00 0C */	b lbl_80C21D9C
lbl_80C21D94:
/* 80C21D94  38 09 09 48 */	addi r0, r9, 0x948
/* 80C21D98  7C 83 01 AE */	stbx r4, r3, r0
lbl_80C21D9C:
/* 80C21D9C  39 29 00 01 */	addi r9, r9, 1
/* 80C21DA0  42 00 FF D8 */	bdnz lbl_80C21D78
lbl_80C21DA4:
/* 80C21DA4  90 C3 09 40 */	stw r6, 0x940(r3)
/* 80C21DA8  4E 80 00 20 */	blr 
