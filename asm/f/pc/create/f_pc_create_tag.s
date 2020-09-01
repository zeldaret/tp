.include "macros.inc"

.section .text, "ax" # 80020e38


.global fpcCtTg_ToCreateQ
fpcCtTg_ToCreateQ:
/* 80020E38 0001DD78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E3C 0001DD7C  7C 08 02 A6 */	mflr r0
/* 80020E40 0001DD80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E44 0001DD84  7C 64 1B 78 */	mr r4, r3
/* 80020E48 0001DD88  3C 60 80 3A */	lis r3, lbl_803A3990@ha
/* 80020E4C 0001DD8C  38 63 39 90 */	addi r3, r3, lbl_803A3990@l
/* 80020E50 0001DD90  48 24 5B 95 */	bl cTg_Addition
/* 80020E54 0001DD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E58 0001DD98  7C 08 03 A6 */	mtlr r0
/* 80020E5C 0001DD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80020E60 0001DDA0  4E 80 00 20 */	blr 

.global fpcCtTg_CreateQTo
fpcCtTg_CreateQTo:
/* 80020E64 0001DDA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E68 0001DDA8  7C 08 02 A6 */	mflr r0
/* 80020E6C 0001DDAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E70 0001DDB0  48 24 5B 35 */	bl cTg_SingleCut
/* 80020E74 0001DDB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E78 0001DDB8  7C 08 03 A6 */	mtlr r0
/* 80020E7C 0001DDBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80020E80 0001DDC0  4E 80 00 20 */	blr 

.global fpcCtTg_Init
fpcCtTg_Init:
/* 80020E84 0001DDC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020E88 0001DDC8  7C 08 02 A6 */	mflr r0
/* 80020E8C 0001DDCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020E90 0001DDD0  48 24 5B A5 */	bl cTg_Create
/* 80020E94 0001DDD4  38 60 00 01 */	li r3, 1
/* 80020E98 0001DDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020E9C 0001DDDC  7C 08 03 A6 */	mtlr r0
/* 80020EA0 0001DDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80020EA4 0001DDE4  4E 80 00 20 */	blr 

