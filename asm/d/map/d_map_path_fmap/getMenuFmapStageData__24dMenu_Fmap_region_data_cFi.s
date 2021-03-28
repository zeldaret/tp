lbl_8003DB48:
/* 8003DB48  80 63 00 00 */	lwz r3, 0(r3)
/* 8003DB4C  38 A0 00 00 */	li r5, 0
/* 8003DB50  48 00 00 0C */	b lbl_8003DB5C
lbl_8003DB54:
/* 8003DB54  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8003DB58  38 A5 00 01 */	addi r5, r5, 1
lbl_8003DB5C:
/* 8003DB5C  28 03 00 00 */	cmplwi r3, 0
/* 8003DB60  4D 82 00 20 */	beqlr 
/* 8003DB64  7C 05 20 00 */	cmpw r5, r4
/* 8003DB68  41 80 FF EC */	blt lbl_8003DB54
/* 8003DB6C  4E 80 00 20 */	blr 
