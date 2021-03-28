lbl_8036F580:
/* 8036F580  28 05 00 20 */	cmplwi r5, 0x20
/* 8036F584  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8036F588  38 C3 FF FF */	addi r6, r3, -1
/* 8036F58C  7C 87 23 78 */	mr r7, r4
/* 8036F590  41 80 00 90 */	blt lbl_8036F620
/* 8036F594  7C C0 30 F8 */	nor r0, r6, r6
/* 8036F598  54 03 07 BF */	clrlwi. r3, r0, 0x1e
/* 8036F59C  41 82 00 14 */	beq lbl_8036F5B0
/* 8036F5A0  7C A3 28 50 */	subf r5, r3, r5
lbl_8036F5A4:
/* 8036F5A4  34 63 FF FF */	addic. r3, r3, -1
/* 8036F5A8  9C E6 00 01 */	stbu r7, 1(r6)
/* 8036F5AC  40 82 FF F8 */	bne lbl_8036F5A4
lbl_8036F5B0:
/* 8036F5B0  28 07 00 00 */	cmplwi r7, 0
/* 8036F5B4  41 82 00 1C */	beq lbl_8036F5D0
/* 8036F5B8  54 E3 C0 0E */	slwi r3, r7, 0x18
/* 8036F5BC  54 E0 80 1E */	slwi r0, r7, 0x10
/* 8036F5C0  54 E4 40 2E */	slwi r4, r7, 8
/* 8036F5C4  7C 60 03 78 */	or r0, r3, r0
/* 8036F5C8  7C 80 03 78 */	or r0, r4, r0
/* 8036F5CC  7C E7 03 78 */	or r7, r7, r0
lbl_8036F5D0:
/* 8036F5D0  54 A4 D9 7F */	rlwinm. r4, r5, 0x1b, 5, 0x1f
/* 8036F5D4  38 66 FF FD */	addi r3, r6, -3
/* 8036F5D8  41 82 00 2C */	beq lbl_8036F604
lbl_8036F5DC:
/* 8036F5DC  90 E3 00 04 */	stw r7, 4(r3)
/* 8036F5E0  34 84 FF FF */	addic. r4, r4, -1
/* 8036F5E4  90 E3 00 08 */	stw r7, 8(r3)
/* 8036F5E8  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8036F5EC  90 E3 00 10 */	stw r7, 0x10(r3)
/* 8036F5F0  90 E3 00 14 */	stw r7, 0x14(r3)
/* 8036F5F4  90 E3 00 18 */	stw r7, 0x18(r3)
/* 8036F5F8  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 8036F5FC  94 E3 00 20 */	stwu r7, 0x20(r3)
/* 8036F600  40 82 FF DC */	bne lbl_8036F5DC
lbl_8036F604:
/* 8036F604  54 A4 F7 7F */	rlwinm. r4, r5, 0x1e, 0x1d, 0x1f
/* 8036F608  41 82 00 10 */	beq lbl_8036F618
lbl_8036F60C:
/* 8036F60C  34 84 FF FF */	addic. r4, r4, -1
/* 8036F610  94 E3 00 04 */	stwu r7, 4(r3)
/* 8036F614  40 82 FF F8 */	bne lbl_8036F60C
lbl_8036F618:
/* 8036F618  38 C3 00 03 */	addi r6, r3, 3
/* 8036F61C  54 A5 07 BE */	clrlwi r5, r5, 0x1e
lbl_8036F620:
/* 8036F620  28 05 00 00 */	cmplwi r5, 0
/* 8036F624  4D 82 00 20 */	beqlr 
lbl_8036F628:
/* 8036F628  34 A5 FF FF */	addic. r5, r5, -1
/* 8036F62C  9C E6 00 01 */	stbu r7, 1(r6)
/* 8036F630  40 82 FF F8 */	bne lbl_8036F628
/* 8036F634  4E 80 00 20 */	blr 
