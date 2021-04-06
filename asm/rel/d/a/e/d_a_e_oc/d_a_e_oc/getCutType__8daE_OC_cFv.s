lbl_8072DD18:
/* 8072DD18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072DD1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072DD20  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8072DD24  88 03 05 69 */	lbz r0, 0x569(r3)
/* 8072DD28  28 00 00 04 */	cmplwi r0, 4
/* 8072DD2C  41 80 00 0C */	blt lbl_8072DD38
/* 8072DD30  38 60 00 05 */	li r3, 5
/* 8072DD34  4E 80 00 20 */	blr 
lbl_8072DD38:
/* 8072DD38  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8072DD3C  28 00 00 26 */	cmplwi r0, 0x26
/* 8072DD40  41 81 00 44 */	bgt lbl_8072DD84
/* 8072DD44  3C 60 80 73 */	lis r3, lit_4695@ha /* 0x80735DE4@ha */
/* 8072DD48  38 63 5D E4 */	addi r3, r3, lit_4695@l /* 0x80735DE4@l */
/* 8072DD4C  54 00 10 3A */	slwi r0, r0, 2
/* 8072DD50  7C 03 00 2E */	lwzx r0, r3, r0
/* 8072DD54  7C 09 03 A6 */	mtctr r0
/* 8072DD58  4E 80 04 20 */	bctr 
lbl_8072DD5C:
/* 8072DD5C  38 60 00 06 */	li r3, 6
/* 8072DD60  4E 80 00 20 */	blr 
lbl_8072DD64:
/* 8072DD64  38 60 00 07 */	li r3, 7
/* 8072DD68  4E 80 00 20 */	blr 
lbl_8072DD6C:
/* 8072DD6C  38 60 00 05 */	li r3, 5
/* 8072DD70  4E 80 00 20 */	blr 
lbl_8072DD74:
/* 8072DD74  38 60 00 00 */	li r3, 0
/* 8072DD78  4E 80 00 20 */	blr 
lbl_8072DD7C:
/* 8072DD7C  38 60 00 01 */	li r3, 1
/* 8072DD80  4E 80 00 20 */	blr 
lbl_8072DD84:
/* 8072DD84  38 60 00 02 */	li r3, 2
/* 8072DD88  4E 80 00 20 */	blr 
