lbl_8028F480:
/* 8028F480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028F484  7C 08 02 A6 */	mflr r0
/* 8028F488  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028F48C  7C 66 1B 78 */	mr r6, r3
/* 8028F490  54 80 06 FF */	clrlwi. r0, r4, 0x1b
/* 8028F494  40 82 00 14 */	bne lbl_8028F4A8
/* 8028F498  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 8028F49C  40 82 00 0C */	bne lbl_8028F4A8
/* 8028F4A0  48 0A C1 C5 */	bl DCZeroRange
/* 8028F4A4  48 00 00 C4 */	b lbl_8028F568
lbl_8028F4A8:
/* 8028F4A8  54 C5 07 BE */	clrlwi r5, r6, 0x1e
/* 8028F4AC  54 80 07 3F */	clrlwi. r0, r4, 0x1c
/* 8028F4B0  40 82 00 14 */	bne lbl_8028F4C4
/* 8028F4B4  28 05 00 00 */	cmplwi r5, 0
/* 8028F4B8  40 82 00 0C */	bne lbl_8028F4C4
/* 8028F4BC  4B FF FF 99 */	bl bzerofast__7JASCalcFPvUl
/* 8028F4C0  48 00 00 A8 */	b lbl_8028F568
lbl_8028F4C4:
/* 8028F4C4  28 04 00 10 */	cmplwi r4, 0x10
/* 8028F4C8  41 80 00 84 */	blt lbl_8028F54C
/* 8028F4CC  28 05 00 00 */	cmplwi r5, 0
/* 8028F4D0  41 82 00 2C */	beq lbl_8028F4FC
/* 8028F4D4  20 05 00 04 */	subfic r0, r5, 4
/* 8028F4D8  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8028F4DC  38 60 00 00 */	li r3, 0
/* 8028F4E0  48 00 00 14 */	b lbl_8028F4F4
lbl_8028F4E4:
/* 8028F4E4  98 66 00 00 */	stb r3, 0(r6)
/* 8028F4E8  38 C6 00 01 */	addi r6, r6, 1
/* 8028F4EC  38 84 FF FF */	addi r4, r4, -1
/* 8028F4F0  38 A5 FF FF */	addi r5, r5, -1
lbl_8028F4F4:
/* 8028F4F4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8028F4F8  40 82 FF EC */	bne lbl_8028F4E4
lbl_8028F4FC:
/* 8028F4FC  7C C5 33 78 */	mr r5, r6
/* 8028F500  38 60 00 00 */	li r3, 0
/* 8028F504  54 80 F0 BE */	srwi r0, r4, 2
/* 8028F508  7C 09 03 A6 */	mtctr r0
/* 8028F50C  28 04 00 04 */	cmplwi r4, 4
/* 8028F510  41 80 00 14 */	blt lbl_8028F524
lbl_8028F514:
/* 8028F514  90 65 00 00 */	stw r3, 0(r5)
/* 8028F518  38 A5 00 04 */	addi r5, r5, 4
/* 8028F51C  38 84 FF FC */	addi r4, r4, -4
/* 8028F520  42 00 FF F4 */	bdnz lbl_8028F514
lbl_8028F524:
/* 8028F524  28 04 00 00 */	cmplwi r4, 0
/* 8028F528  41 82 00 40 */	beq lbl_8028F568
/* 8028F52C  7C A3 2B 78 */	mr r3, r5
/* 8028F530  38 00 00 00 */	li r0, 0
/* 8028F534  7C 89 03 A6 */	mtctr r4
/* 8028F538  41 82 00 30 */	beq lbl_8028F568
lbl_8028F53C:
/* 8028F53C  98 03 00 00 */	stb r0, 0(r3)
/* 8028F540  38 63 00 01 */	addi r3, r3, 1
/* 8028F544  42 00 FF F8 */	bdnz lbl_8028F53C
/* 8028F548  48 00 00 20 */	b lbl_8028F568
lbl_8028F54C:
/* 8028F54C  38 00 00 00 */	li r0, 0
/* 8028F550  7C 89 03 A6 */	mtctr r4
/* 8028F554  28 04 00 00 */	cmplwi r4, 0
/* 8028F558  41 82 00 10 */	beq lbl_8028F568
lbl_8028F55C:
/* 8028F55C  98 06 00 00 */	stb r0, 0(r6)
/* 8028F560  38 C6 00 01 */	addi r6, r6, 1
/* 8028F564  42 00 FF F8 */	bdnz lbl_8028F55C
lbl_8028F568:
/* 8028F568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028F56C  7C 08 03 A6 */	mtlr r0
/* 8028F570  38 21 00 10 */	addi r1, r1, 0x10
/* 8028F574  4E 80 00 20 */	blr 
