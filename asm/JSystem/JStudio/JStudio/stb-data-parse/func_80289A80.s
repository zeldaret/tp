lbl_80289A80:
/* 80289A80  38 00 00 00 */	li r0, 0
/* 80289A84  90 04 00 04 */	stw r0, 4(r4)
/* 80289A88  90 04 00 08 */	stw r0, 8(r4)
/* 80289A8C  90 04 00 0C */	stw r0, 0xc(r4)
/* 80289A90  90 04 00 10 */	stw r0, 0x10(r4)
/* 80289A94  80 63 00 00 */	lwz r3, 0(r3)
/* 80289A98  28 03 00 00 */	cmplwi r3, 0
/* 80289A9C  4D 82 00 20 */	beqlr 
/* 80289AA0  88 C3 00 00 */	lbz r6, 0(r3)
/* 80289AA4  54 C0 07 76 */	rlwinm r0, r6, 0, 0x1d, 0x1b
/* 80289AA8  98 04 00 00 */	stb r0, 0(r4)
/* 80289AAC  28 06 00 00 */	cmplwi r6, 0
/* 80289AB0  4D 82 00 20 */	beqlr 
/* 80289AB4  38 E0 00 01 */	li r7, 1
/* 80289AB8  54 C0 07 39 */	rlwinm. r0, r6, 0, 0x1c, 0x1c
/* 80289ABC  38 A3 00 01 */	addi r5, r3, 1
/* 80289AC0  41 82 00 0C */	beq lbl_80289ACC
/* 80289AC4  88 E5 00 00 */	lbz r7, 0(r5)
/* 80289AC8  38 A5 00 01 */	addi r5, r5, 1
lbl_80289ACC:
/* 80289ACC  90 E4 00 08 */	stw r7, 8(r4)
/* 80289AD0  90 A4 00 0C */	stw r5, 0xc(r4)
/* 80289AD4  54 C0 07 7F */	clrlwi. r0, r6, 0x1d
/* 80289AD8  4D 82 00 20 */	beqlr 
/* 80289ADC  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80289AE0  3C 60 80 3A */	lis r3, gauDataSize_TEParagraph_data__Q37JStudio3stb4data@ha /* 0x8039AB88@ha */
/* 80289AE4  38 63 AB 88 */	addi r3, r3, gauDataSize_TEParagraph_data__Q37JStudio3stb4data@l /* 0x8039AB88@l */
/* 80289AE8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80289AEC  90 04 00 04 */	stw r0, 4(r4)
/* 80289AF0  7C 00 39 D6 */	mullw r0, r0, r7
/* 80289AF4  7C 05 02 14 */	add r0, r5, r0
/* 80289AF8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80289AFC  4E 80 00 20 */	blr 
