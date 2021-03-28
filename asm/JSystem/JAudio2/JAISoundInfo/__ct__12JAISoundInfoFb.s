lbl_802A2D34:
/* 802A2D34  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A2D38  41 82 00 08 */	beq lbl_802A2D40
/* 802A2D3C  90 6D 85 DC */	stw r3, data_80450B5C(r13)
lbl_802A2D40:
/* 802A2D40  3C 80 80 3D */	lis r4, __vt__12JAISoundInfo@ha
/* 802A2D44  38 04 99 A0 */	addi r0, r4, __vt__12JAISoundInfo@l
/* 802A2D48  90 03 00 00 */	stw r0, 0(r3)
/* 802A2D4C  4E 80 00 20 */	blr 
