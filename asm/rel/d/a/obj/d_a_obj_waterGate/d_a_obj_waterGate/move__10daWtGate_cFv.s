lbl_80D2BECC:
/* 80D2BECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2BED0  7C 08 02 A6 */	mflr r0
/* 80D2BED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2BED8  3C 80 80 D3 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D2BEDC  38 E4 C4 98 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80D2BEE0  3C 80 80 D3 */	lis r4, data_80D2C5C8@ha
/* 80D2BEE4  38 C4 C5 C8 */	addi r6, r4, data_80D2C5C8@l
/* 80D2BEE8  88 06 00 00 */	lbz r0, 0(r6)
/* 80D2BEEC  7C 00 07 75 */	extsb. r0, r0
/* 80D2BEF0  40 82 00 70 */	bne lbl_80D2BF60
/* 80D2BEF4  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80D2BEF8  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80D2BEFC  90 87 00 50 */	stw r4, 0x50(r7)
/* 80D2BF00  90 07 00 54 */	stw r0, 0x54(r7)
/* 80D2BF04  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80D2BF08  90 07 00 58 */	stw r0, 0x58(r7)
/* 80D2BF0C  38 A7 00 50 */	addi r5, r7, 0x50
/* 80D2BF10  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80D2BF14  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80D2BF18  90 85 00 0C */	stw r4, 0xc(r5)
/* 80D2BF1C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80D2BF20  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80D2BF24  90 05 00 14 */	stw r0, 0x14(r5)
/* 80D2BF28  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80D2BF2C  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80D2BF30  90 85 00 18 */	stw r4, 0x18(r5)
/* 80D2BF34  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80D2BF38  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80D2BF3C  90 05 00 20 */	stw r0, 0x20(r5)
/* 80D2BF40  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80D2BF44  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80D2BF48  90 85 00 24 */	stw r4, 0x24(r5)
/* 80D2BF4C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80D2BF50  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80D2BF54  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80D2BF58  38 00 00 01 */	li r0, 1
/* 80D2BF5C  98 06 00 00 */	stb r0, 0(r6)
lbl_80D2BF60:
/* 80D2BF60  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80D2BF64  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D2BF68  39 87 00 50 */	addi r12, r7, 0x50
/* 80D2BF6C  7D 8C 02 14 */	add r12, r12, r0
/* 80D2BF70  4B 63 61 14 */	b __ptmf_scall
/* 80D2BF74  60 00 00 00 */	nop 
/* 80D2BF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2BF7C  7C 08 03 A6 */	mtlr r0
/* 80D2BF80  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2BF84  4E 80 00 20 */	blr 
