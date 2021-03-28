lbl_80CB0278:
/* 80CB0278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB027C  7C 08 02 A6 */	mflr r0
/* 80CB0280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB0284  3C 80 80 CB */	lis r4, cNullVec__6Z2Calc@ha
/* 80CB0288  38 E4 0A E8 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80CB028C  3C 80 80 CB */	lis r4, data_80CB0C54@ha
/* 80CB0290  38 C4 0C 54 */	addi r6, r4, data_80CB0C54@l
/* 80CB0294  88 06 00 00 */	lbz r0, 0(r6)
/* 80CB0298  7C 00 07 75 */	extsb. r0, r0
/* 80CB029C  40 82 00 58 */	bne lbl_80CB02F4
/* 80CB02A0  80 87 00 28 */	lwz r4, 0x28(r7)
/* 80CB02A4  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80CB02A8  90 87 00 4C */	stw r4, 0x4c(r7)
/* 80CB02AC  90 07 00 50 */	stw r0, 0x50(r7)
/* 80CB02B0  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80CB02B4  90 07 00 54 */	stw r0, 0x54(r7)
/* 80CB02B8  38 A7 00 4C */	addi r5, r7, 0x4c
/* 80CB02BC  80 87 00 34 */	lwz r4, 0x34(r7)
/* 80CB02C0  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80CB02C4  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CB02C8  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CB02CC  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80CB02D0  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CB02D4  80 87 00 40 */	lwz r4, 0x40(r7)
/* 80CB02D8  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80CB02DC  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CB02E0  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CB02E4  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80CB02E8  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CB02EC  38 00 00 01 */	li r0, 1
/* 80CB02F0  98 06 00 00 */	stb r0, 0(r6)
lbl_80CB02F4:
/* 80CB02F4  88 03 07 33 */	lbz r0, 0x733(r3)
/* 80CB02F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CB02FC  39 87 00 4C */	addi r12, r7, 0x4c
/* 80CB0300  7D 8C 02 14 */	add r12, r12, r0
/* 80CB0304  4B 6B 1D 80 */	b __ptmf_scall
/* 80CB0308  60 00 00 00 */	nop 
/* 80CB030C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB0310  7C 08 03 A6 */	mtlr r0
/* 80CB0314  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB0318  4E 80 00 20 */	blr 
