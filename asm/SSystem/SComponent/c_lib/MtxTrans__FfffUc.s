lbl_80270E5C:
/* 80270E5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80270E60  7C 08 02 A6 */	mflr r0
/* 80270E64  90 01 00 44 */	stw r0, 0x44(r1)
/* 80270E68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80270E6C  40 82 00 10 */	bne lbl_80270E7C
/* 80270E70  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270E74  48 0D 5A 75 */	bl PSMTXTrans
/* 80270E78  48 00 00 1C */	b lbl_80270E94
lbl_80270E7C:
/* 80270E7C  38 61 00 08 */	addi r3, r1, 8
/* 80270E80  48 0D 5A 69 */	bl PSMTXTrans
/* 80270E84  80 6D 81 E8 */	lwz r3, calc_mtx(r13)
/* 80270E88  38 81 00 08 */	addi r4, r1, 8
/* 80270E8C  7C 65 1B 78 */	mr r5, r3
/* 80270E90  48 0D 56 55 */	bl PSMTXConcat
lbl_80270E94:
/* 80270E94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80270E98  7C 08 03 A6 */	mtlr r0
/* 80270E9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80270EA0  4E 80 00 20 */	blr 
