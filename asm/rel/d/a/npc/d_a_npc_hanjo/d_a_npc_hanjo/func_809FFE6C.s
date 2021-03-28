lbl_809FFE6C:
/* 809FFE6C  80 83 00 00 */	lwz r4, 0(r3)
/* 809FFE70  2C 04 00 00 */	cmpwi r4, 0
/* 809FFE74  41 82 00 0C */	beq lbl_809FFE80
/* 809FFE78  38 04 FF FF */	addi r0, r4, -1
/* 809FFE7C  90 03 00 00 */	stw r0, 0(r3)
lbl_809FFE80:
/* 809FFE80  80 63 00 00 */	lwz r3, 0(r3)
/* 809FFE84  4E 80 00 20 */	blr 
