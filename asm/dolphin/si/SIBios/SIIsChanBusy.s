lbl_80344BC0:
/* 80344BC0  3C 80 80 45 */	lis r4, Packet@ha
/* 80344BC4  54 65 28 34 */	slwi r5, r3, 5
/* 80344BC8  38 04 C6 30 */	addi r0, r4, Packet@l
/* 80344BCC  7C 80 2A 14 */	add r4, r0, r5
/* 80344BD0  80 04 00 00 */	lwz r0, 0(r4)
/* 80344BD4  38 A0 00 01 */	li r5, 1
/* 80344BD8  2C 00 FF FF */	cmpwi r0, -1
/* 80344BDC  40 82 00 18 */	bne lbl_80344BF4
/* 80344BE0  3C 80 80 3D */	lis r4, Si@ha
/* 80344BE4  80 04 11 FC */	lwz r0, Si@l(r4)
/* 80344BE8  7C 00 18 00 */	cmpw r0, r3
/* 80344BEC  41 82 00 08 */	beq lbl_80344BF4
/* 80344BF0  38 A0 00 00 */	li r5, 0
lbl_80344BF4:
/* 80344BF4  7C A3 2B 78 */	mr r3, r5
/* 80344BF8  4E 80 00 20 */	blr 
