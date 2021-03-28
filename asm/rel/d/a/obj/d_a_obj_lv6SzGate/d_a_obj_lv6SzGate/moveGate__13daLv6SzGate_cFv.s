lbl_80C75E78:
/* 80C75E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75E7C  7C 08 02 A6 */	mflr r0
/* 80C75E80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75E84  3C 80 80 C7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C75E88  38 84 66 68 */	addi r4, r4, cNullVec__6Z2Calc@l
/* 80C75E8C  3C A0 80 C7 */	lis r5, data_80C767FC@ha
/* 80C75E90  38 E5 67 FC */	addi r7, r5, data_80C767FC@l
/* 80C75E94  88 07 00 00 */	lbz r0, 0(r7)
/* 80C75E98  7C 00 07 75 */	extsb. r0, r0
/* 80C75E9C  40 82 00 A0 */	bne lbl_80C75F3C
/* 80C75EA0  80 A4 00 38 */	lwz r5, 0x38(r4)
/* 80C75EA4  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 80C75EA8  90 A4 00 80 */	stw r5, 0x80(r4)
/* 80C75EAC  90 04 00 84 */	stw r0, 0x84(r4)
/* 80C75EB0  80 04 00 40 */	lwz r0, 0x40(r4)
/* 80C75EB4  90 04 00 88 */	stw r0, 0x88(r4)
/* 80C75EB8  38 C4 00 80 */	addi r6, r4, 0x80
/* 80C75EBC  80 A4 00 44 */	lwz r5, 0x44(r4)
/* 80C75EC0  80 04 00 48 */	lwz r0, 0x48(r4)
/* 80C75EC4  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80C75EC8  90 06 00 10 */	stw r0, 0x10(r6)
/* 80C75ECC  80 04 00 4C */	lwz r0, 0x4c(r4)
/* 80C75ED0  90 06 00 14 */	stw r0, 0x14(r6)
/* 80C75ED4  80 A4 00 50 */	lwz r5, 0x50(r4)
/* 80C75ED8  80 04 00 54 */	lwz r0, 0x54(r4)
/* 80C75EDC  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80C75EE0  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80C75EE4  80 04 00 58 */	lwz r0, 0x58(r4)
/* 80C75EE8  90 06 00 20 */	stw r0, 0x20(r6)
/* 80C75EEC  80 A4 00 5C */	lwz r5, 0x5c(r4)
/* 80C75EF0  80 04 00 60 */	lwz r0, 0x60(r4)
/* 80C75EF4  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80C75EF8  90 06 00 28 */	stw r0, 0x28(r6)
/* 80C75EFC  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80C75F00  90 06 00 2C */	stw r0, 0x2c(r6)
/* 80C75F04  80 A4 00 68 */	lwz r5, 0x68(r4)
/* 80C75F08  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80C75F0C  90 A6 00 30 */	stw r5, 0x30(r6)
/* 80C75F10  90 06 00 34 */	stw r0, 0x34(r6)
/* 80C75F14  80 04 00 70 */	lwz r0, 0x70(r4)
/* 80C75F18  90 06 00 38 */	stw r0, 0x38(r6)
/* 80C75F1C  80 A4 00 74 */	lwz r5, 0x74(r4)
/* 80C75F20  80 04 00 78 */	lwz r0, 0x78(r4)
/* 80C75F24  90 A6 00 3C */	stw r5, 0x3c(r6)
/* 80C75F28  90 06 00 40 */	stw r0, 0x40(r6)
/* 80C75F2C  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 80C75F30  90 06 00 44 */	stw r0, 0x44(r6)
/* 80C75F34  38 00 00 01 */	li r0, 1
/* 80C75F38  98 07 00 00 */	stb r0, 0(r7)
lbl_80C75F3C:
/* 80C75F3C  88 03 05 E0 */	lbz r0, 0x5e0(r3)
/* 80C75F40  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C75F44  39 84 00 80 */	addi r12, r4, 0x80
/* 80C75F48  7D 8C 02 14 */	add r12, r12, r0
/* 80C75F4C  4B 6E C1 38 */	b __ptmf_scall
/* 80C75F50  60 00 00 00 */	nop 
/* 80C75F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75F58  7C 08 03 A6 */	mtlr r0
/* 80C75F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C75F60  4E 80 00 20 */	blr 
