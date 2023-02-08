lbl_80C62B6C:
/* 80C62B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62B70  7C 08 02 A6 */	mflr r0
/* 80C62B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C62B7C  7C 7F 1B 78 */	mr r31, r3
/* 80C62B80  3C 60 80 C6 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80C6319C@ha */
/* 80C62B84  38 C3 31 9C */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80C6319C@l */
/* 80C62B88  3C 60 80 C6 */	lis r3, data_80C632B8@ha /* 0x80C632B8@ha */
/* 80C62B8C  38 A3 32 B8 */	addi r5, r3, data_80C632B8@l /* 0x80C632B8@l */
/* 80C62B90  88 05 00 00 */	lbz r0, 0(r5)
/* 80C62B94  7C 00 07 75 */	extsb. r0, r0
/* 80C62B98  40 82 00 58 */	bne lbl_80C62BF0
/* 80C62B9C  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80C62BA0  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80C62BA4  90 66 00 48 */	stw r3, 0x48(r6)
/* 80C62BA8  90 06 00 4C */	stw r0, 0x4c(r6)
/* 80C62BAC  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 80C62BB0  90 06 00 50 */	stw r0, 0x50(r6)
/* 80C62BB4  38 86 00 48 */	addi r4, r6, 0x48
/* 80C62BB8  80 66 00 30 */	lwz r3, 0x30(r6)
/* 80C62BBC  80 06 00 34 */	lwz r0, 0x34(r6)
/* 80C62BC0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C62BC4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C62BC8  80 06 00 38 */	lwz r0, 0x38(r6)
/* 80C62BCC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C62BD0  80 66 00 3C */	lwz r3, 0x3c(r6)
/* 80C62BD4  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80C62BD8  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C62BDC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C62BE0  80 06 00 44 */	lwz r0, 0x44(r6)
/* 80C62BE4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C62BE8  38 00 00 01 */	li r0, 1
/* 80C62BEC  98 05 00 00 */	stb r0, 0(r5)
lbl_80C62BF0:
/* 80C62BF0  7F E3 FB 78 */	mr r3, r31
/* 80C62BF4  88 1F 05 C1 */	lbz r0, 0x5c1(r31)
/* 80C62BF8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C62BFC  39 86 00 48 */	addi r12, r6, 0x48
/* 80C62C00  7D 8C 02 14 */	add r12, r12, r0
/* 80C62C04  4B 6F F4 81 */	bl __ptmf_scall
/* 80C62C08  60 00 00 00 */	nop 
/* 80C62C0C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C62C10  4B 3E 5C 5D */	bl eventUpdate__17dEvLib_callback_cFv
/* 80C62C14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62C1C  7C 08 03 A6 */	mtlr r0
/* 80C62C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62C24  4E 80 00 20 */	blr 
