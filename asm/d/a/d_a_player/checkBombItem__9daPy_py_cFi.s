lbl_8015EA48:
/* 8015EA48  38 A0 00 01 */	li r5, 1
/* 8015EA4C  7C A6 2B 78 */	mr r6, r5
/* 8015EA50  38 03 FF 90 */	addi r0, r3, -112
/* 8015EA54  38 80 FF FF */	li r4, -1
/* 8015EA58  7C 00 28 10 */	subfc r0, r0, r5
/* 8015EA5C  7C 04 01 90 */	subfze r0, r4
/* 8015EA60  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8015EA64  40 82 00 08 */	bne lbl_8015EA6C
/* 8015EA68  38 C0 00 00 */	li r6, 0
lbl_8015EA6C:
/* 8015EA6C  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8015EA70  40 82 00 10 */	bne lbl_8015EA80
/* 8015EA74  2C 03 00 72 */	cmpwi r3, 0x72
/* 8015EA78  41 82 00 08 */	beq lbl_8015EA80
/* 8015EA7C  38 A0 00 00 */	li r5, 0
lbl_8015EA80:
/* 8015EA80  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 8015EA84  4E 80 00 20 */	blr 
