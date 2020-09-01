.include "macros.inc"

.section .text, "ax" # 802a4a5c


.global JASHeap_NS___defctor
JASHeap_NS___defctor:
/* 802A4A5C 002A199C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A4A60 002A19A0  7C 08 02 A6 */	mflr r0
/* 802A4A64 002A19A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A4A68 002A19A8  38 80 00 00 */	li r4, 0
/* 802A4A6C 002A19AC  4B FE B6 D5 */	bl JASHeap
/* 802A4A70 002A19B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A4A74 002A19B4  7C 08 03 A6 */	mtlr r0
/* 802A4A78 002A19B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802A4A7C 002A19BC  4E 80 00 20 */	blr 

