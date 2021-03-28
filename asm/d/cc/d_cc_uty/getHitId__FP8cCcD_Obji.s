lbl_800874F0:
/* 800874F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800874F4  7C 08 02 A6 */	mflr r0
/* 800874F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800874FC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 80087500  4B FF D0 B1 */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80087504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80087508  7C 08 03 A6 */	mtlr r0
/* 8008750C  38 21 00 10 */	addi r1, r1, 0x10
/* 80087510  4E 80 00 20 */	blr 
