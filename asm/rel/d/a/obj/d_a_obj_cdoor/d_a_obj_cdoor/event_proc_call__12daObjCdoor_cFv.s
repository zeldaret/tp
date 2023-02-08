lbl_80BC7A14:
/* 80BC7A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC7A18  7C 08 02 A6 */	mflr r0
/* 80BC7A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC7A20  3C 80 80 BC */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BC7D58@ha */
/* 80BC7A24  38 E4 7D 58 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80BC7D58@l */
/* 80BC7A28  3C 80 80 BC */	lis r4, struct_80BC7EB8+0x1@ha /* 0x80BC7EB9@ha */
/* 80BC7A2C  38 C4 7E B9 */	addi r6, r4, struct_80BC7EB8+0x1@l /* 0x80BC7EB9@l */
/* 80BC7A30  88 06 00 00 */	lbz r0, 0(r6)
/* 80BC7A34  7C 00 07 75 */	extsb. r0, r0
/* 80BC7A38  40 82 00 70 */	bne lbl_80BC7AA8
/* 80BC7A3C  80 87 00 78 */	lwz r4, 0x78(r7)
/* 80BC7A40  80 07 00 7C */	lwz r0, 0x7c(r7)
/* 80BC7A44  90 87 00 A8 */	stw r4, 0xa8(r7)
/* 80BC7A48  90 07 00 AC */	stw r0, 0xac(r7)
/* 80BC7A4C  80 07 00 80 */	lwz r0, 0x80(r7)
/* 80BC7A50  90 07 00 B0 */	stw r0, 0xb0(r7)
/* 80BC7A54  38 A7 00 A8 */	addi r5, r7, 0xa8
/* 80BC7A58  80 87 00 84 */	lwz r4, 0x84(r7)
/* 80BC7A5C  80 07 00 88 */	lwz r0, 0x88(r7)
/* 80BC7A60  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BC7A64  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BC7A68  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80BC7A6C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BC7A70  80 87 00 90 */	lwz r4, 0x90(r7)
/* 80BC7A74  80 07 00 94 */	lwz r0, 0x94(r7)
/* 80BC7A78  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BC7A7C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BC7A80  80 07 00 98 */	lwz r0, 0x98(r7)
/* 80BC7A84  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BC7A88  80 87 00 9C */	lwz r4, 0x9c(r7)
/* 80BC7A8C  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 80BC7A90  90 85 00 24 */	stw r4, 0x24(r5)
/* 80BC7A94  90 05 00 28 */	stw r0, 0x28(r5)
/* 80BC7A98  80 07 00 A4 */	lwz r0, 0xa4(r7)
/* 80BC7A9C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80BC7AA0  38 00 00 01 */	li r0, 1
/* 80BC7AA4  98 06 00 00 */	stb r0, 0(r6)
lbl_80BC7AA8:
/* 80BC7AA8  88 03 05 B7 */	lbz r0, 0x5b7(r3)
/* 80BC7AAC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BC7AB0  39 87 00 A8 */	addi r12, r7, 0xa8
/* 80BC7AB4  7D 8C 02 14 */	add r12, r12, r0
/* 80BC7AB8  4B 79 A5 CD */	bl __ptmf_scall
/* 80BC7ABC  60 00 00 00 */	nop 
/* 80BC7AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7AC4  7C 08 03 A6 */	mtlr r0
/* 80BC7AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7ACC  4E 80 00 20 */	blr 
