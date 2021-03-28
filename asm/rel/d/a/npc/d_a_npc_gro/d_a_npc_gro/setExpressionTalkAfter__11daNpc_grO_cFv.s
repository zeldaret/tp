lbl_809DD684:
/* 809DD684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DD688  7C 08 02 A6 */	mflr r0
/* 809DD68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DD690  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 809DD694  2C 00 00 05 */	cmpwi r0, 5
/* 809DD698  41 82 00 74 */	beq lbl_809DD70C
/* 809DD69C  40 80 00 24 */	bge lbl_809DD6C0
/* 809DD6A0  2C 00 00 02 */	cmpwi r0, 2
/* 809DD6A4  40 80 00 10 */	bge lbl_809DD6B4
/* 809DD6A8  2C 00 00 00 */	cmpwi r0, 0
/* 809DD6AC  40 80 00 20 */	bge lbl_809DD6CC
/* 809DD6B0  48 00 00 7C */	b lbl_809DD72C
lbl_809DD6B4:
/* 809DD6B4  2C 00 00 04 */	cmpwi r0, 4
/* 809DD6B8  40 80 00 90 */	bge lbl_809DD748
/* 809DD6BC  48 00 00 30 */	b lbl_809DD6EC
lbl_809DD6C0:
/* 809DD6C0  2C 00 00 07 */	cmpwi r0, 7
/* 809DD6C4  41 82 00 84 */	beq lbl_809DD748
/* 809DD6C8  48 00 00 64 */	b lbl_809DD72C
lbl_809DD6CC:
/* 809DD6CC  38 80 00 0B */	li r4, 0xb
/* 809DD6D0  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DD6D4  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DD6D8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD6DC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD6E0  7D 89 03 A6 */	mtctr r12
/* 809DD6E4  4E 80 04 21 */	bctrl 
/* 809DD6E8  48 00 00 60 */	b lbl_809DD748
lbl_809DD6EC:
/* 809DD6EC  38 80 00 08 */	li r4, 8
/* 809DD6F0  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DD6F4  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DD6F8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD6FC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD700  7D 89 03 A6 */	mtctr r12
/* 809DD704  4E 80 04 21 */	bctrl 
/* 809DD708  48 00 00 40 */	b lbl_809DD748
lbl_809DD70C:
/* 809DD70C  38 80 00 0A */	li r4, 0xa
/* 809DD710  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DD714  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DD718  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD71C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD720  7D 89 03 A6 */	mtctr r12
/* 809DD724  4E 80 04 21 */	bctrl 
/* 809DD728  48 00 00 20 */	b lbl_809DD748
lbl_809DD72C:
/* 809DD72C  38 80 00 0C */	li r4, 0xc
/* 809DD730  3C A0 80 9E */	lis r5, lit_4812@ha
/* 809DD734  C0 25 F0 1C */	lfs f1, lit_4812@l(r5)
/* 809DD738  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809DD73C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809DD740  7D 89 03 A6 */	mtctr r12
/* 809DD744  4E 80 04 21 */	bctrl 
lbl_809DD748:
/* 809DD748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DD74C  7C 08 03 A6 */	mtlr r0
/* 809DD750  38 21 00 10 */	addi r1, r1, 0x10
/* 809DD754  4E 80 00 20 */	blr 
