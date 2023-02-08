lbl_80C6CE28:
/* 80C6CE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CE2C  7C 08 02 A6 */	mflr r0
/* 80C6CE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CE34  3C 80 80 C7 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C6D560@ha */
/* 80C6CE38  38 E4 D5 60 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C6D560@l */
/* 80C6CE3C  3C 80 80 C7 */	lis r4, data_80C6D6DC@ha /* 0x80C6D6DC@ha */
/* 80C6CE40  38 C4 D6 DC */	addi r6, r4, data_80C6D6DC@l /* 0x80C6D6DC@l */
/* 80C6CE44  88 06 00 00 */	lbz r0, 0(r6)
/* 80C6CE48  7C 00 07 75 */	extsb. r0, r0
/* 80C6CE4C  40 82 00 40 */	bne lbl_80C6CE8C
/* 80C6CE50  80 87 00 64 */	lwz r4, 0x64(r7)
/* 80C6CE54  80 07 00 68 */	lwz r0, 0x68(r7)
/* 80C6CE58  90 87 00 7C */	stw r4, 0x7c(r7)
/* 80C6CE5C  90 07 00 80 */	stw r0, 0x80(r7)
/* 80C6CE60  80 07 00 6C */	lwz r0, 0x6c(r7)
/* 80C6CE64  90 07 00 84 */	stw r0, 0x84(r7)
/* 80C6CE68  38 A7 00 7C */	addi r5, r7, 0x7c
/* 80C6CE6C  80 87 00 70 */	lwz r4, 0x70(r7)
/* 80C6CE70  80 07 00 74 */	lwz r0, 0x74(r7)
/* 80C6CE74  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C6CE78  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C6CE7C  80 07 00 78 */	lwz r0, 0x78(r7)
/* 80C6CE80  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C6CE84  38 00 00 01 */	li r0, 1
/* 80C6CE88  98 06 00 00 */	stb r0, 0(r6)
lbl_80C6CE8C:
/* 80C6CE8C  88 03 07 24 */	lbz r0, 0x724(r3)
/* 80C6CE90  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C6CE94  39 87 00 7C */	addi r12, r7, 0x7c
/* 80C6CE98  7D 8C 02 14 */	add r12, r12, r0
/* 80C6CE9C  4B 6F 51 E9 */	bl __ptmf_scall
/* 80C6CEA0  60 00 00 00 */	nop 
/* 80C6CEA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CEA8  7C 08 03 A6 */	mtlr r0
/* 80C6CEAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CEB0  4E 80 00 20 */	blr 
