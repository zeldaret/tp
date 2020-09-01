.include "macros.inc"

.section .text, "ax" # 80023764


.global fpcMtdIt_Method
fpcMtdIt_Method:
/* 80023764 000206A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023768 000206A8  7C 08 02 A6 */	mflr r0
/* 8002376C 000206AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023770 000206B0  38 A0 00 00 */	li r5, 0
/* 80023774 000206B4  48 24 28 ED */	bl cLsIt_Method
/* 80023778 000206B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002377C 000206BC  7C 08 03 A6 */	mtlr r0
/* 80023780 000206C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80023784 000206C4  4E 80 00 20 */	blr 

