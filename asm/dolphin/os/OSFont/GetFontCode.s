lbl_8033D3E0:
/* 8033D3E0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8033D3E4  28 00 00 01 */	cmplwi r0, 1
/* 8033D3E8  40 82 01 48 */	bne lbl_8033D530
/* 8033D3EC  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8033D3F0  28 00 00 20 */	cmplwi r0, 0x20
/* 8033D3F4  41 80 00 24 */	blt lbl_8033D418
/* 8033D3F8  28 00 00 DF */	cmplwi r0, 0xdf
/* 8033D3FC  41 81 00 1C */	bgt lbl_8033D418
/* 8033D400  3C 60 80 3D */	lis r3, HankakuToCode@ha
/* 8033D404  38 63 FC 48 */	addi r3, r3, HankakuToCode@l
/* 8033D408  54 00 08 3C */	slwi r0, r0, 1
/* 8033D40C  7C 63 02 14 */	add r3, r3, r0
/* 8033D410  A0 63 FF C0 */	lhz r3, -0x40(r3)
/* 8033D414  4E 80 00 20 */	blr 
lbl_8033D418:
/* 8033D418  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8033D41C  28 00 88 9E */	cmplwi r0, 0x889e
/* 8033D420  40 81 00 7C */	ble lbl_8033D49C
/* 8033D424  28 00 98 72 */	cmplwi r0, 0x9872
/* 8033D428  41 81 00 74 */	bgt lbl_8033D49C
/* 8033D42C  7C 03 46 70 */	srawi r3, r0, 8
/* 8033D430  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8033D434  38 03 FF 78 */	addi r0, r3, -136
/* 8033D438  28 04 00 40 */	cmplwi r4, 0x40
/* 8033D43C  1C A0 00 BC */	mulli r5, r0, 0xbc
/* 8033D440  38 60 00 00 */	li r3, 0
/* 8033D444  38 03 00 00 */	addi r0, r3, 0
/* 8033D448  41 80 00 10 */	blt lbl_8033D458
/* 8033D44C  28 04 00 FC */	cmplwi r4, 0xfc
/* 8033D450  41 81 00 08 */	bgt lbl_8033D458
/* 8033D454  38 00 00 01 */	li r0, 1
lbl_8033D458:
/* 8033D458  2C 00 00 00 */	cmpwi r0, 0
/* 8033D45C  41 82 00 14 */	beq lbl_8033D470
/* 8033D460  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8033D464  28 00 00 7F */	cmplwi r0, 0x7f
/* 8033D468  41 82 00 08 */	beq lbl_8033D470
/* 8033D46C  38 60 00 01 */	li r3, 1
lbl_8033D470:
/* 8033D470  2C 03 00 00 */	cmpwi r3, 0
/* 8033D474  40 82 00 0C */	bne lbl_8033D480
/* 8033D478  38 60 00 00 */	li r3, 0
/* 8033D47C  4E 80 00 20 */	blr 
lbl_8033D480:
/* 8033D480  38 64 FF C0 */	addi r3, r4, -64
/* 8033D484  2C 03 00 40 */	cmpwi r3, 0x40
/* 8033D488  41 80 00 08 */	blt lbl_8033D490
/* 8033D48C  38 63 FF FF */	addi r3, r3, -1
lbl_8033D490:
/* 8033D490  38 63 02 BE */	addi r3, r3, 0x2be
/* 8033D494  7C 65 1A 14 */	add r3, r5, r3
/* 8033D498  4E 80 00 20 */	blr 
lbl_8033D49C:
/* 8033D49C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 8033D4A0  28 00 81 40 */	cmplwi r0, 0x8140
/* 8033D4A4  41 80 00 A8 */	blt lbl_8033D54C
/* 8033D4A8  28 00 87 9E */	cmplwi r0, 0x879e
/* 8033D4AC  40 80 00 A0 */	bge lbl_8033D54C
/* 8033D4B0  7C 03 46 70 */	srawi r3, r0, 8
/* 8033D4B4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8033D4B8  38 03 FF 7F */	addi r0, r3, -129
/* 8033D4BC  28 04 00 40 */	cmplwi r4, 0x40
/* 8033D4C0  1C A0 00 BC */	mulli r5, r0, 0xbc
/* 8033D4C4  38 60 00 00 */	li r3, 0
/* 8033D4C8  38 03 00 00 */	addi r0, r3, 0
/* 8033D4CC  41 80 00 10 */	blt lbl_8033D4DC
/* 8033D4D0  28 04 00 FC */	cmplwi r4, 0xfc
/* 8033D4D4  41 81 00 08 */	bgt lbl_8033D4DC
/* 8033D4D8  38 00 00 01 */	li r0, 1
lbl_8033D4DC:
/* 8033D4DC  2C 00 00 00 */	cmpwi r0, 0
/* 8033D4E0  41 82 00 14 */	beq lbl_8033D4F4
/* 8033D4E4  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8033D4E8  28 00 00 7F */	cmplwi r0, 0x7f
/* 8033D4EC  41 82 00 08 */	beq lbl_8033D4F4
/* 8033D4F0  38 60 00 01 */	li r3, 1
lbl_8033D4F4:
/* 8033D4F4  2C 03 00 00 */	cmpwi r3, 0
/* 8033D4F8  40 82 00 0C */	bne lbl_8033D504
/* 8033D4FC  38 60 00 00 */	li r3, 0
/* 8033D500  4E 80 00 20 */	blr 
lbl_8033D504:
/* 8033D504  38 64 FF C0 */	addi r3, r4, -64
/* 8033D508  2C 03 00 40 */	cmpwi r3, 0x40
/* 8033D50C  41 80 00 08 */	blt lbl_8033D514
/* 8033D510  38 63 FF FF */	addi r3, r3, -1
lbl_8033D514:
/* 8033D514  7C 05 1A 14 */	add r0, r5, r3
/* 8033D518  3C 60 80 3D */	lis r3, Zenkaku2Code@ha
/* 8033D51C  54 04 08 3C */	slwi r4, r0, 1
/* 8033D520  38 03 FD C8 */	addi r0, r3, Zenkaku2Code@l
/* 8033D524  7C 60 22 14 */	add r3, r0, r4
/* 8033D528  A0 63 00 00 */	lhz r3, 0(r3)
/* 8033D52C  4E 80 00 20 */	blr 
lbl_8033D530:
/* 8033D530  54 83 04 3E */	clrlwi r3, r4, 0x10
/* 8033D534  28 03 00 20 */	cmplwi r3, 0x20
/* 8033D538  40 81 00 14 */	ble lbl_8033D54C
/* 8033D53C  28 03 00 FF */	cmplwi r3, 0xff
/* 8033D540  41 81 00 0C */	bgt lbl_8033D54C
/* 8033D544  38 63 FF E0 */	addi r3, r3, -32
/* 8033D548  4E 80 00 20 */	blr 
lbl_8033D54C:
/* 8033D54C  38 60 00 00 */	li r3, 0
/* 8033D550  4E 80 00 20 */	blr 
