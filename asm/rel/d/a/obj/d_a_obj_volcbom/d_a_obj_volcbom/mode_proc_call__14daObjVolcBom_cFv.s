lbl_80D24A2C:
/* 80D24A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D24A30  7C 08 02 A6 */	mflr r0
/* 80D24A34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D24A38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D24A3C  7C 7F 1B 78 */	mr r31, r3
/* 80D24A40  3C 60 80 D2 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80D26C54@ha */
/* 80D24A44  38 C3 6C 54 */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80D26C54@l */
/* 80D24A48  3C 60 80 D2 */	lis r3, struct_80D26EA8+0x0@ha /* 0x80D26EA8@ha */
/* 80D24A4C  38 A3 6E A8 */	addi r5, r3, struct_80D26EA8+0x0@l /* 0x80D26EA8@l */
/* 80D24A50  88 05 00 00 */	lbz r0, 0(r5)
/* 80D24A54  7C 00 07 75 */	extsb. r0, r0
/* 80D24A58  40 82 00 70 */	bne lbl_80D24AC8
/* 80D24A5C  80 66 00 70 */	lwz r3, 0x70(r6)
/* 80D24A60  80 06 00 74 */	lwz r0, 0x74(r6)
/* 80D24A64  90 66 00 A0 */	stw r3, 0xa0(r6)
/* 80D24A68  90 06 00 A4 */	stw r0, 0xa4(r6)
/* 80D24A6C  80 06 00 78 */	lwz r0, 0x78(r6)
/* 80D24A70  90 06 00 A8 */	stw r0, 0xa8(r6)
/* 80D24A74  38 86 00 A0 */	addi r4, r6, 0xa0
/* 80D24A78  80 66 00 7C */	lwz r3, 0x7c(r6)
/* 80D24A7C  80 06 00 80 */	lwz r0, 0x80(r6)
/* 80D24A80  90 64 00 0C */	stw r3, 0xc(r4)
/* 80D24A84  90 04 00 10 */	stw r0, 0x10(r4)
/* 80D24A88  80 06 00 84 */	lwz r0, 0x84(r6)
/* 80D24A8C  90 04 00 14 */	stw r0, 0x14(r4)
/* 80D24A90  80 66 00 88 */	lwz r3, 0x88(r6)
/* 80D24A94  80 06 00 8C */	lwz r0, 0x8c(r6)
/* 80D24A98  90 64 00 18 */	stw r3, 0x18(r4)
/* 80D24A9C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80D24AA0  80 06 00 90 */	lwz r0, 0x90(r6)
/* 80D24AA4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80D24AA8  80 66 00 94 */	lwz r3, 0x94(r6)
/* 80D24AAC  80 06 00 98 */	lwz r0, 0x98(r6)
/* 80D24AB0  90 64 00 24 */	stw r3, 0x24(r4)
/* 80D24AB4  90 04 00 28 */	stw r0, 0x28(r4)
/* 80D24AB8  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 80D24ABC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 80D24AC0  38 00 00 01 */	li r0, 1
/* 80D24AC4  98 05 00 00 */	stb r0, 0(r5)
lbl_80D24AC8:
/* 80D24AC8  7F E3 FB 78 */	mr r3, r31
/* 80D24ACC  88 1F 09 61 */	lbz r0, 0x961(r31)
/* 80D24AD0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D24AD4  39 86 00 A0 */	addi r12, r6, 0xa0
/* 80D24AD8  7D 8C 02 14 */	add r12, r12, r0
/* 80D24ADC  4B 63 D5 A9 */	bl __ptmf_scall
/* 80D24AE0  60 00 00 00 */	nop 
/* 80D24AE4  C0 1F 09 7C */	lfs f0, 0x97c(r31)
/* 80D24AE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D24AEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D24AF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D24AF4  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D24AF8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D24AFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D24B00  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80D24B04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D24B08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D24B0C  7C 08 03 A6 */	mtlr r0
/* 80D24B10  38 21 00 20 */	addi r1, r1, 0x20
/* 80D24B14  4E 80 00 20 */	blr 
