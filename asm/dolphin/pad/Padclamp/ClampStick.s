lbl_8034DDBC:
/* 8034DDBC  88 03 00 00 */	lbz r0, 0(r3)
/* 8034DDC0  89 84 00 00 */	lbz r12, 0(r4)
/* 8034DDC4  7C 00 07 75 */	extsb. r0, r0
/* 8034DDC8  7D 8C 07 74 */	extsb r12, r12
/* 8034DDCC  7C 0B 03 78 */	mr r11, r0
/* 8034DDD0  41 80 00 0C */	blt lbl_8034DDDC
/* 8034DDD4  38 00 00 01 */	li r0, 1
/* 8034DDD8  48 00 00 0C */	b lbl_8034DDE4
lbl_8034DDDC:
/* 8034DDDC  38 00 FF FF */	li r0, -1
/* 8034DDE0  7D 6B 00 D0 */	neg r11, r11
lbl_8034DDE4:
/* 8034DDE4  2C 0C 00 00 */	cmpwi r12, 0
/* 8034DDE8  41 80 00 0C */	blt lbl_8034DDF4
/* 8034DDEC  39 00 00 01 */	li r8, 1
/* 8034DDF0  48 00 00 0C */	b lbl_8034DDFC
lbl_8034DDF4:
/* 8034DDF4  39 00 FF FF */	li r8, -1
/* 8034DDF8  7D 8C 00 D0 */	neg r12, r12
lbl_8034DDFC:
/* 8034DDFC  7C E7 07 74 */	extsb r7, r7
/* 8034DE00  7C 0B 38 00 */	cmpw r11, r7
/* 8034DE04  41 81 00 0C */	bgt lbl_8034DE10
/* 8034DE08  39 60 00 00 */	li r11, 0
/* 8034DE0C  48 00 00 08 */	b lbl_8034DE14
lbl_8034DE10:
/* 8034DE10  7D 67 58 50 */	subf r11, r7, r11
lbl_8034DE14:
/* 8034DE14  7C 0C 38 00 */	cmpw r12, r7
/* 8034DE18  41 81 00 0C */	bgt lbl_8034DE24
/* 8034DE1C  39 80 00 00 */	li r12, 0
/* 8034DE20  48 00 00 08 */	b lbl_8034DE28
lbl_8034DE24:
/* 8034DE24  7D 87 60 50 */	subf r12, r7, r12
lbl_8034DE28:
/* 8034DE28  2C 0B 00 00 */	cmpwi r11, 0
/* 8034DE2C  40 82 00 1C */	bne lbl_8034DE48
/* 8034DE30  2C 0C 00 00 */	cmpwi r12, 0
/* 8034DE34  40 82 00 14 */	bne lbl_8034DE48
/* 8034DE38  38 00 00 00 */	li r0, 0
/* 8034DE3C  98 04 00 00 */	stb r0, 0(r4)
/* 8034DE40  98 03 00 00 */	stb r0, 0(r3)
/* 8034DE44  4E 80 00 20 */	blr 
lbl_8034DE48:
/* 8034DE48  7C C6 07 74 */	extsb r6, r6
/* 8034DE4C  7D 26 61 D6 */	mullw r9, r6, r12
/* 8034DE50  7C E6 59 D6 */	mullw r7, r6, r11
/* 8034DE54  7C 09 38 00 */	cmpw r9, r7
/* 8034DE58  41 81 00 44 */	bgt lbl_8034DE9C
/* 8034DE5C  7C A9 07 74 */	extsb r9, r5
/* 8034DE60  7C A6 48 50 */	subf r5, r6, r9
/* 8034DE64  7C AC 29 D6 */	mullw r5, r12, r5
/* 8034DE68  7D 26 49 D6 */	mullw r9, r6, r9
/* 8034DE6C  7C E7 2A 14 */	add r7, r7, r5
/* 8034DE70  7C 09 38 00 */	cmpw r9, r7
/* 8034DE74  40 80 00 64 */	bge lbl_8034DED8
/* 8034DE78  7C CB 49 D6 */	mullw r6, r11, r9
/* 8034DE7C  7C AC 49 D6 */	mullw r5, r12, r9
/* 8034DE80  7C C6 3B D6 */	divw r6, r6, r7
/* 8034DE84  7C A5 3B D6 */	divw r5, r5, r7
/* 8034DE88  7C C6 07 74 */	extsb r6, r6
/* 8034DE8C  7C A5 07 74 */	extsb r5, r5
/* 8034DE90  39 66 00 00 */	addi r11, r6, 0
/* 8034DE94  39 85 00 00 */	addi r12, r5, 0
/* 8034DE98  48 00 00 40 */	b lbl_8034DED8
lbl_8034DE9C:
/* 8034DE9C  7C A7 07 74 */	extsb r7, r5
/* 8034DEA0  7C A6 38 50 */	subf r5, r6, r7
/* 8034DEA4  7C AB 29 D6 */	mullw r5, r11, r5
/* 8034DEA8  7D 46 39 D6 */	mullw r10, r6, r7
/* 8034DEAC  7C E9 2A 14 */	add r7, r9, r5
/* 8034DEB0  7C 0A 38 00 */	cmpw r10, r7
/* 8034DEB4  40 80 00 24 */	bge lbl_8034DED8
/* 8034DEB8  7C CB 51 D6 */	mullw r6, r11, r10
/* 8034DEBC  7C AC 51 D6 */	mullw r5, r12, r10
/* 8034DEC0  7C C6 3B D6 */	divw r6, r6, r7
/* 8034DEC4  7C A5 3B D6 */	divw r5, r5, r7
/* 8034DEC8  7C C6 07 74 */	extsb r6, r6
/* 8034DECC  7C A5 07 74 */	extsb r5, r5
/* 8034DED0  39 66 00 00 */	addi r11, r6, 0
/* 8034DED4  39 85 00 00 */	addi r12, r5, 0
lbl_8034DED8:
/* 8034DED8  7C A0 59 D6 */	mullw r5, r0, r11
/* 8034DEDC  7C 08 61 D6 */	mullw r0, r8, r12
/* 8034DEE0  98 A3 00 00 */	stb r5, 0(r3)
/* 8034DEE4  98 04 00 00 */	stb r0, 0(r4)
/* 8034DEE8  4E 80 00 20 */	blr 
