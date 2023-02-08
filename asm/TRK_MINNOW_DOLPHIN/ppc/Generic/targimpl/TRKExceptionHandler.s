lbl_8036F818:
/* 8036F818  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h /* 0x803D3244@h */
/* 8036F81C  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l /* 0x803D3244@l */
/* 8036F820  B0 62 00 08 */	sth r3, 8(r2)
/* 8036F824  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 8036F828  90 62 00 00 */	stw r3, 0(r2)
/* 8036F82C  A0 62 00 08 */	lhz r3, 8(r2)
/* 8036F830  2C 03 02 00 */	cmpwi r3, 0x200
/* 8036F834  41 82 00 50 */	beq lbl_8036F884
/* 8036F838  2C 03 03 00 */	cmpwi r3, 0x300
/* 8036F83C  41 82 00 48 */	beq lbl_8036F884
/* 8036F840  2C 03 04 00 */	cmpwi r3, 0x400
/* 8036F844  41 82 00 40 */	beq lbl_8036F884
/* 8036F848  2C 03 06 00 */	cmpwi r3, 0x600
/* 8036F84C  41 82 00 38 */	beq lbl_8036F884
/* 8036F850  2C 03 07 00 */	cmpwi r3, 0x700
/* 8036F854  41 82 00 30 */	beq lbl_8036F884
/* 8036F858  2C 03 08 00 */	cmpwi r3, 0x800
/* 8036F85C  41 82 00 28 */	beq lbl_8036F884
/* 8036F860  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8036F864  41 82 00 20 */	beq lbl_8036F884
/* 8036F868  2C 03 11 00 */	cmpwi r3, 0x1100
/* 8036F86C  41 82 00 18 */	beq lbl_8036F884
/* 8036F870  2C 03 12 00 */	cmpwi r3, 0x1200
/* 8036F874  41 82 00 10 */	beq lbl_8036F884
/* 8036F878  2C 03 13 00 */	cmpwi r3, 0x1300
/* 8036F87C  41 82 00 08 */	beq lbl_8036F884
/* 8036F880  48 00 00 10 */	b lbl_8036F890
lbl_8036F884:
/* 8036F884  7C 7A 02 A6 */	mfspr r3, 0x1a
/* 8036F888  38 63 00 04 */	addi r3, r3, 4
/* 8036F88C  7C 7A 03 A6 */	mtspr 0x1a, r3
lbl_8036F890:
/* 8036F890  3C 40 80 3D */	lis r2, gTRKExceptionStatus@h /* 0x803D3244@h */
/* 8036F894  60 42 32 44 */	ori r2, r2, gTRKExceptionStatus@l /* 0x803D3244@l */
/* 8036F898  38 60 00 01 */	li r3, 1
/* 8036F89C  98 62 00 0D */	stb r3, 0xd(r2)
/* 8036F8A0  7C 73 42 A6 */	mfspr r3, 0x113
/* 8036F8A4  7C 6F F1 20 */	mtcrf 0xff, r3
/* 8036F8A8  7C 51 42 A6 */	mfspr r2, 0x111
/* 8036F8AC  7C 72 42 A6 */	mfspr r3, 0x112
/* 8036F8B0  4C 00 00 64 */	rfi 
