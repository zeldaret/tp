lbl_80290EE4:
/* 80290EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290EE8  7C 08 02 A6 */	mflr r0
/* 80290EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290EF0  2C 03 00 10 */	cmpwi r3, 0x10
/* 80290EF4  40 80 00 20 */	bge lbl_80290F14
/* 80290EF8  54 60 10 3A */	slwi r0, r3, 2
/* 80290EFC  3C 60 80 43 */	lis r3, sProbeTable__8JASProbe@ha
/* 80290F00  38 63 16 20 */	addi r3, r3, sProbeTable__8JASProbe@l
/* 80290F04  7C 63 00 2E */	lwzx r3, r3, r0
/* 80290F08  28 03 00 00 */	cmplwi r3, 0
/* 80290F0C  41 82 00 08 */	beq lbl_80290F14
/* 80290F10  4B FF FE 65 */	bl start__8JASProbeFPCc
lbl_80290F14:
/* 80290F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290F18  7C 08 03 A6 */	mtlr r0
/* 80290F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80290F20  4E 80 00 20 */	blr 
