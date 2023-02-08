lbl_80C66DD0:
/* 80C66DD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66DD4  7C 08 02 A6 */	mflr r0
/* 80C66DD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66DDC  3C 80 80 C6 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C675EC@ha */
/* 80C66DE0  38 E4 75 EC */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C675EC@l */
/* 80C66DE4  3C 80 80 C6 */	lis r4, data_80C67760@ha /* 0x80C67760@ha */
/* 80C66DE8  38 C4 77 60 */	addi r6, r4, data_80C67760@l /* 0x80C67760@l */
/* 80C66DEC  88 06 00 00 */	lbz r0, 0(r6)
/* 80C66DF0  7C 00 07 75 */	extsb. r0, r0
/* 80C66DF4  40 82 00 58 */	bne lbl_80C66E4C
/* 80C66DF8  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80C66DFC  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C66E00  90 87 00 48 */	stw r4, 0x48(r7)
/* 80C66E04  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80C66E08  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80C66E0C  90 07 00 50 */	stw r0, 0x50(r7)
/* 80C66E10  38 A7 00 48 */	addi r5, r7, 0x48
/* 80C66E14  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80C66E18  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C66E1C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C66E20  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C66E24  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80C66E28  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C66E2C  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80C66E30  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C66E34  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C66E38  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C66E3C  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80C66E40  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C66E44  38 00 00 01 */	li r0, 1
/* 80C66E48  98 06 00 00 */	stb r0, 0(r6)
lbl_80C66E4C:
/* 80C66E4C  88 03 09 40 */	lbz r0, 0x940(r3)
/* 80C66E50  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C66E54  39 87 00 48 */	addi r12, r7, 0x48
/* 80C66E58  7D 8C 02 14 */	add r12, r12, r0
/* 80C66E5C  4B 6F B2 29 */	bl __ptmf_scall
/* 80C66E60  60 00 00 00 */	nop 
/* 80C66E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66E68  7C 08 03 A6 */	mtlr r0
/* 80C66E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66E70  4E 80 00 20 */	blr 
