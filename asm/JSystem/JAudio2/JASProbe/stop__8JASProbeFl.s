lbl_80290F24:
/* 80290F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290F28  7C 08 02 A6 */	mflr r0
/* 80290F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290F30  2C 03 00 10 */	cmpwi r3, 0x10
/* 80290F34  40 80 00 20 */	bge lbl_80290F54
/* 80290F38  54 60 10 3A */	slwi r0, r3, 2
/* 80290F3C  3C 60 80 43 */	lis r3, sProbeTable__8JASProbe@ha
/* 80290F40  38 63 16 20 */	addi r3, r3, sProbeTable__8JASProbe@l
/* 80290F44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80290F48  28 03 00 00 */	cmplwi r3, 0
/* 80290F4C  41 82 00 08 */	beq lbl_80290F54
/* 80290F50  4B FF FE 75 */	bl stop__8JASProbeFv
lbl_80290F54:
/* 80290F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290F58  7C 08 03 A6 */	mtlr r0
/* 80290F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80290F60  4E 80 00 20 */	blr 
