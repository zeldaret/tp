lbl_80D5DC70:
/* 80D5DC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5DC74  7C 08 02 A6 */	mflr r0
/* 80D5DC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5DC7C  4B FF FF AD */	bl Delete__13daTagPoFire_cFv
/* 80D5DC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5DC84  7C 08 03 A6 */	mtlr r0
/* 80D5DC88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5DC8C  4E 80 00 20 */	blr 
