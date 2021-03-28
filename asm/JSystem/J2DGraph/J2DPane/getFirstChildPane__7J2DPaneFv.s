lbl_802F7A8C:
/* 802F7A8C  80 63 00 DC */	lwz r3, 0xdc(r3)
/* 802F7A90  7C 60 1B 78 */	mr r0, r3
/* 802F7A94  28 03 00 00 */	cmplwi r3, 0
/* 802F7A98  41 82 00 08 */	beq lbl_802F7AA0
/* 802F7A9C  38 03 FF F4 */	addi r0, r3, -12
lbl_802F7AA0:
/* 802F7AA0  28 00 00 00 */	cmplwi r0, 0
/* 802F7AA4  40 82 00 0C */	bne lbl_802F7AB0
/* 802F7AA8  38 60 00 00 */	li r3, 0
/* 802F7AAC  4E 80 00 20 */	blr 
lbl_802F7AB0:
/* 802F7AB0  28 03 00 00 */	cmplwi r3, 0
/* 802F7AB4  41 82 00 08 */	beq lbl_802F7ABC
/* 802F7AB8  38 63 FF F4 */	addi r3, r3, -12
lbl_802F7ABC:
/* 802F7ABC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802F7AC0  4E 80 00 20 */	blr 
