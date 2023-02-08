lbl_80BDE6FC:
/* 80BDE6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE700  7C 08 02 A6 */	mflr r0
/* 80BDE704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE708  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BDF944@ha */
/* 80BDE70C  38 E4 F9 44 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80BDF944@l */
/* 80BDE710  3C 80 80 BE */	lis r4, struct_80BDFBDC+0x0@ha /* 0x80BDFBDC@ha */
/* 80BDE714  38 C4 FB DC */	addi r6, r4, struct_80BDFBDC+0x0@l /* 0x80BDFBDC@l */
/* 80BDE718  88 06 00 00 */	lbz r0, 0(r6)
/* 80BDE71C  7C 00 07 75 */	extsb. r0, r0
/* 80BDE720  40 82 00 58 */	bne lbl_80BDE778
/* 80BDE724  80 87 00 34 */	lwz r4, 0x34(r7)
/* 80BDE728  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80BDE72C  90 87 00 58 */	stw r4, 0x58(r7)
/* 80BDE730  90 07 00 5C */	stw r0, 0x5c(r7)
/* 80BDE734  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80BDE738  90 07 00 60 */	stw r0, 0x60(r7)
/* 80BDE73C  38 A7 00 58 */	addi r5, r7, 0x58
/* 80BDE740  80 87 00 40 */	lwz r4, 0x40(r7)
/* 80BDE744  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80BDE748  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BDE74C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BDE750  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80BDE754  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BDE758  80 87 00 4C */	lwz r4, 0x4c(r7)
/* 80BDE75C  80 07 00 50 */	lwz r0, 0x50(r7)
/* 80BDE760  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BDE764  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BDE768  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80BDE76C  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BDE770  38 00 00 01 */	li r0, 1
/* 80BDE774  98 06 00 00 */	stb r0, 0(r6)
lbl_80BDE778:
/* 80BDE778  88 03 06 29 */	lbz r0, 0x629(r3)
/* 80BDE77C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BDE780  39 87 00 58 */	addi r12, r7, 0x58
/* 80BDE784  7D 8C 02 14 */	add r12, r12, r0
/* 80BDE788  4B 78 38 FD */	bl __ptmf_scall
/* 80BDE78C  60 00 00 00 */	nop 
/* 80BDE790  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDE794  7C 08 03 A6 */	mtlr r0
/* 80BDE798  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDE79C  4E 80 00 20 */	blr 
