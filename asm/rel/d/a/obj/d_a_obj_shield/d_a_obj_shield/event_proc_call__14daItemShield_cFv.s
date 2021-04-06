lbl_80CD7E00:
/* 80CD7E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD7E04  7C 08 02 A6 */	mflr r0
/* 80CD7E08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD7E0C  3C 80 80 CE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CD833C@ha */
/* 80CD7E10  38 E4 83 3C */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CD833C@l */
/* 80CD7E14  3C 80 80 CE */	lis r4, struct_80CD8520+0x1@ha /* 0x80CD8521@ha */
/* 80CD7E18  38 C4 85 21 */	addi r6, r4, struct_80CD8520+0x1@l /* 0x80CD8521@l */
/* 80CD7E1C  88 06 00 00 */	lbz r0, 0(r6)
/* 80CD7E20  7C 00 07 75 */	extsb. r0, r0
/* 80CD7E24  40 82 00 70 */	bne lbl_80CD7E94
/* 80CD7E28  80 87 00 80 */	lwz r4, 0x80(r7)
/* 80CD7E2C  80 07 00 84 */	lwz r0, 0x84(r7)
/* 80CD7E30  90 87 00 B0 */	stw r4, 0xb0(r7)
/* 80CD7E34  90 07 00 B4 */	stw r0, 0xb4(r7)
/* 80CD7E38  80 07 00 88 */	lwz r0, 0x88(r7)
/* 80CD7E3C  90 07 00 B8 */	stw r0, 0xb8(r7)
/* 80CD7E40  38 A7 00 B0 */	addi r5, r7, 0xb0
/* 80CD7E44  80 87 00 8C */	lwz r4, 0x8c(r7)
/* 80CD7E48  80 07 00 90 */	lwz r0, 0x90(r7)
/* 80CD7E4C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CD7E50  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CD7E54  80 07 00 94 */	lwz r0, 0x94(r7)
/* 80CD7E58  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CD7E5C  80 87 00 98 */	lwz r4, 0x98(r7)
/* 80CD7E60  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 80CD7E64  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CD7E68  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CD7E6C  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 80CD7E70  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CD7E74  80 87 00 A4 */	lwz r4, 0xa4(r7)
/* 80CD7E78  80 07 00 A8 */	lwz r0, 0xa8(r7)
/* 80CD7E7C  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CD7E80  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CD7E84  80 07 00 AC */	lwz r0, 0xac(r7)
/* 80CD7E88  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CD7E8C  38 00 00 01 */	li r0, 1
/* 80CD7E90  98 06 00 00 */	stb r0, 0(r6)
lbl_80CD7E94:
/* 80CD7E94  88 03 09 4B */	lbz r0, 0x94b(r3)
/* 80CD7E98  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CD7E9C  39 87 00 B0 */	addi r12, r7, 0xb0
/* 80CD7EA0  7D 8C 02 14 */	add r12, r12, r0
/* 80CD7EA4  4B 68 A1 E1 */	bl __ptmf_scall
/* 80CD7EA8  60 00 00 00 */	nop 
/* 80CD7EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7EB0  7C 08 03 A6 */	mtlr r0
/* 80CD7EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7EB8  4E 80 00 20 */	blr 
