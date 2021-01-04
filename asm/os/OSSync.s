.include "macros.inc"

.section .text, "ax" # 80340a20


.global __OSSystemCallVectorStart 
__OSSystemCallVectorStart :
/* 80340A20 0033D960  7D 30 FA A6 */	mfspr r9, 0x3f0
/* 80340A24 0033D964  61 2A 00 08 */	ori r10, r9, 8
/* 80340A28 0033D968  7D 50 FB A6 */	mtspr 0x3f0, r10
/* 80340A2C 0033D96C  4C 00 01 2C */	isync 
/* 80340A30 0033D970  7C 00 04 AC */	sync 0
/* 80340A34 0033D974  7D 30 FB A6 */	mtspr 0x3f0, r9
/* 80340A38 0033D978  4C 00 00 64 */	rfi 
.global __OSSystemCallVectorEnd 
__OSSystemCallVectorEnd :
/* 80340A3C 0033D97C  60 00 00 00 */	nop 

.global __OSInitSystemCall
__OSInitSystemCall:
/* 80340A40 0033D980  7C 08 02 A6 */	mflr r0
/* 80340A44 0033D984  90 01 00 04 */	stw r0, 4(r1)
/* 80340A48 0033D988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340A4C 0033D98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340A50 0033D990  3C A0 80 00 */	lis r5, 0x80000C00@ha
.global __OSSystemCallVectorStart 
/* 80340A54 0033D994  3C 80 80 34 */	lis r4, __OSSystemCallVectorStart @ha
.global __OSSystemCallVectorEnd 
/* 80340A58 0033D998  3C 60 80 34 */	lis r3, __OSSystemCallVectorEnd @ha
/* 80340A5C 0033D99C  3B E5 0C 00 */	addi r31, r5, 0x80000C00@l
.global __OSSystemCallVectorEnd 
/* 80340A60 0033D9A0  38 03 0A 3C */	addi r0, r3, __OSSystemCallVectorEnd @l
.global __OSSystemCallVectorStart 
/* 80340A64 0033D9A4  38 84 0A 20 */	addi r4, r4, __OSSystemCallVectorStart @l
/* 80340A68 0033D9A8  7F E3 FB 78 */	mr r3, r31
/* 80340A6C 0033D9AC  7C A4 00 50 */	subf r5, r4, r0
/* 80340A70 0033D9B0  4B CC 2A D1 */	bl memcpy
/* 80340A74 0033D9B4  7F E3 FB 78 */	mr r3, r31
/* 80340A78 0033D9B8  38 80 01 00 */	li r4, 0x100
/* 80340A7C 0033D9BC  4B FF AB 91 */	bl DCFlushRangeNoSync
/* 80340A80 0033D9C0  7C 00 04 AC */	sync 0
/* 80340A84 0033D9C4  7F E3 FB 78 */	mr r3, r31
/* 80340A88 0033D9C8  38 80 01 00 */	li r4, 0x100
/* 80340A8C 0033D9CC  4B FF AC 05 */	bl ICInvalidateRange
/* 80340A90 0033D9D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340A94 0033D9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340A98 0033D9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80340A9C 0033D9DC  7C 08 03 A6 */	mtlr r0
/* 80340AA0 0033D9E0  4E 80 00 20 */	blr 
