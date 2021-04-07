lbl_80D5F48C:
/* 80D5F48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F490  7C 08 02 A6 */	mflr r0
/* 80D5F494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F498  3C 80 80 D6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80D5F980@ha */
/* 80D5F49C  38 E4 F9 80 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80D5F980@l */
/* 80D5F4A0  3C 80 80 D6 */	lis r4, data_80D5FA68@ha /* 0x80D5FA68@ha */
/* 80D5F4A4  38 C4 FA 68 */	addi r6, r4, data_80D5FA68@l /* 0x80D5FA68@l */
/* 80D5F4A8  88 06 00 00 */	lbz r0, 0(r6)
/* 80D5F4AC  7C 00 07 75 */	extsb. r0, r0
/* 80D5F4B0  40 82 00 70 */	bne lbl_80D5F520
/* 80D5F4B4  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80D5F4B8  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80D5F4BC  90 87 00 5C */	stw r4, 0x5c(r7)
/* 80D5F4C0  90 07 00 60 */	stw r0, 0x60(r7)
/* 80D5F4C4  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80D5F4C8  90 07 00 64 */	stw r0, 0x64(r7)
/* 80D5F4CC  38 A7 00 5C */	addi r5, r7, 0x5c
/* 80D5F4D0  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80D5F4D4  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80D5F4D8  90 85 00 0C */	stw r4, 0xc(r5)
/* 80D5F4DC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80D5F4E0  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80D5F4E4  90 05 00 14 */	stw r0, 0x14(r5)
/* 80D5F4E8  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80D5F4EC  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80D5F4F0  90 85 00 18 */	stw r4, 0x18(r5)
/* 80D5F4F4  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80D5F4F8  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80D5F4FC  90 05 00 20 */	stw r0, 0x20(r5)
/* 80D5F500  80 87 00 50 */	lwz r4, 0x50(r7)
/* 80D5F504  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80D5F508  90 85 00 24 */	stw r4, 0x24(r5)
/* 80D5F50C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80D5F510  80 07 00 58 */	lwz r0, 0x58(r7)
/* 80D5F514  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80D5F518  38 00 00 01 */	li r0, 1
/* 80D5F51C  98 06 00 00 */	stb r0, 0(r6)
lbl_80D5F520:
/* 80D5F520  88 03 05 71 */	lbz r0, 0x571(r3)
/* 80D5F524  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D5F528  39 87 00 5C */	addi r12, r7, 0x5c
/* 80D5F52C  7D 8C 02 14 */	add r12, r12, r0
/* 80D5F530  4B 60 2B 55 */	bl __ptmf_scall
/* 80D5F534  60 00 00 00 */	nop 
/* 80D5F538  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F53C  7C 08 03 A6 */	mtlr r0
/* 80D5F540  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F544  4E 80 00 20 */	blr 
