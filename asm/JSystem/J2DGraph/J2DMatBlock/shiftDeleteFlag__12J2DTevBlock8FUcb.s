lbl_802EFE40:
/* 802EFE40  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 802EFE44  41 82 00 30 */	beq lbl_802EFE74
/* 802EFE48  38 A0 00 01 */	li r5, 1
/* 802EFE4C  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802EFE50  7C A4 00 30 */	slw r4, r5, r0
/* 802EFE54  38 04 FF FF */	addi r0, r4, -1
/* 802EFE58  88 A3 01 20 */	lbz r5, 0x120(r3)
/* 802EFE5C  7C A4 00 38 */	and r4, r5, r0
/* 802EFE60  7C A0 00 78 */	andc r0, r5, r0
/* 802EFE64  54 00 08 3C */	slwi r0, r0, 1
/* 802EFE68  7C 80 03 78 */	or r0, r4, r0
/* 802EFE6C  98 03 01 20 */	stb r0, 0x120(r3)
/* 802EFE70  4E 80 00 20 */	blr 
lbl_802EFE74:
/* 802EFE74  54 87 06 3E */	clrlwi r7, r4, 0x18
/* 802EFE78  89 03 01 20 */	lbz r8, 0x120(r3)
/* 802EFE7C  38 C0 00 01 */	li r6, 1
/* 802EFE80  7C C4 38 30 */	slw r4, r6, r7
/* 802EFE84  38 04 FF FF */	addi r0, r4, -1
/* 802EFE88  7D 05 00 38 */	and r5, r8, r0
/* 802EFE8C  38 07 00 01 */	addi r0, r7, 1
/* 802EFE90  7C C4 00 30 */	slw r4, r6, r0
/* 802EFE94  38 04 FF FF */	addi r0, r4, -1
/* 802EFE98  7D 00 00 78 */	andc r0, r8, r0
/* 802EFE9C  7C 00 0E 70 */	srawi r0, r0, 1
/* 802EFEA0  7C A0 03 78 */	or r0, r5, r0
/* 802EFEA4  98 03 01 20 */	stb r0, 0x120(r3)
/* 802EFEA8  4E 80 00 20 */	blr 
