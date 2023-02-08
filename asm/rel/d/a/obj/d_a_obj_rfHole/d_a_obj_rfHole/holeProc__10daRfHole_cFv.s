lbl_80CB9464:
/* 80CB9464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB9468  7C 08 02 A6 */	mflr r0
/* 80CB946C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB9470  3C 80 80 CC */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CB9ACC@ha */
/* 80CB9474  38 E4 9A CC */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CB9ACC@l */
/* 80CB9478  3C 80 80 CC */	lis r4, data_80CB9C0C@ha /* 0x80CB9C0C@ha */
/* 80CB947C  38 C4 9C 0C */	addi r6, r4, data_80CB9C0C@l /* 0x80CB9C0C@l */
/* 80CB9480  88 06 00 00 */	lbz r0, 0(r6)
/* 80CB9484  7C 00 07 75 */	extsb. r0, r0
/* 80CB9488  40 82 00 70 */	bne lbl_80CB94F8
/* 80CB948C  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80CB9490  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80CB9494  90 87 00 50 */	stw r4, 0x50(r7)
/* 80CB9498  90 07 00 54 */	stw r0, 0x54(r7)
/* 80CB949C  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80CB94A0  90 07 00 58 */	stw r0, 0x58(r7)
/* 80CB94A4  38 A7 00 50 */	addi r5, r7, 0x50
/* 80CB94A8  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80CB94AC  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80CB94B0  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CB94B4  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CB94B8  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80CB94BC  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CB94C0  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80CB94C4  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80CB94C8  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CB94CC  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CB94D0  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80CB94D4  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CB94D8  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80CB94DC  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80CB94E0  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CB94E4  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CB94E8  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80CB94EC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CB94F0  38 00 00 01 */	li r0, 1
/* 80CB94F4  98 06 00 00 */	stb r0, 0(r6)
lbl_80CB94F8:
/* 80CB94F8  88 03 05 AC */	lbz r0, 0x5ac(r3)
/* 80CB94FC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CB9500  39 87 00 50 */	addi r12, r7, 0x50
/* 80CB9504  7D 8C 02 14 */	add r12, r12, r0
/* 80CB9508  4B 6A 8B 7D */	bl __ptmf_scall
/* 80CB950C  60 00 00 00 */	nop 
/* 80CB9510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB9514  7C 08 03 A6 */	mtlr r0
/* 80CB9518  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB951C  4E 80 00 20 */	blr 
