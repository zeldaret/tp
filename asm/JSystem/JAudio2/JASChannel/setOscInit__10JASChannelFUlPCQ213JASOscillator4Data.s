lbl_8029AB64:
/* 8029AB64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029AB68  7C 08 02 A6 */	mflr r0
/* 8029AB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029AB70  7C 60 1B 78 */	mr r0, r3
/* 8029AB74  54 83 28 34 */	slwi r3, r4, 5
/* 8029AB78  38 63 00 1C */	addi r3, r3, 0x1c
/* 8029AB7C  7C 60 1A 14 */	add r3, r0, r3
/* 8029AB80  7C A4 2B 78 */	mr r4, r5
/* 8029AB84  48 00 13 41 */	bl initStart__13JASOscillatorFPCQ213JASOscillator4Data
/* 8029AB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029AB8C  7C 08 03 A6 */	mtlr r0
/* 8029AB90  38 21 00 10 */	addi r1, r1, 0x10
/* 8029AB94  4E 80 00 20 */	blr 
