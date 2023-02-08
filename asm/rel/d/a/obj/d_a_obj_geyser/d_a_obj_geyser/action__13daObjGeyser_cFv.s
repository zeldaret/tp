lbl_80BF744C:
/* 80BF744C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF7450  7C 08 02 A6 */	mflr r0
/* 80BF7454  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF7458  3C 80 80 C0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80BF9068@ha */
/* 80BF745C  38 84 90 68 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80BF9068@l */
/* 80BF7460  3C A0 80 C0 */	lis r5, struct_80BF9240+0x0@ha /* 0x80BF9240@ha */
/* 80BF7464  38 E5 92 40 */	addi r7, r5, struct_80BF9240+0x0@l /* 0x80BF9240@l */
/* 80BF7468  88 07 00 00 */	lbz r0, 0(r7)
/* 80BF746C  7C 00 07 75 */	extsb. r0, r0
/* 80BF7470  40 82 00 58 */	bne lbl_80BF74C8
/* 80BF7474  80 A4 00 88 */	lwz r5, 0x88(r4)
/* 80BF7478  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80BF747C  90 A4 00 AC */	stw r5, 0xac(r4)
/* 80BF7480  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 80BF7484  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80BF7488  90 04 00 B4 */	stw r0, 0xb4(r4)
/* 80BF748C  38 C4 00 AC */	addi r6, r4, 0xac
/* 80BF7490  80 A4 00 94 */	lwz r5, 0x94(r4)
/* 80BF7494  80 04 00 98 */	lwz r0, 0x98(r4)
/* 80BF7498  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80BF749C  90 06 00 10 */	stw r0, 0x10(r6)
/* 80BF74A0  80 04 00 9C */	lwz r0, 0x9c(r4)
/* 80BF74A4  90 06 00 14 */	stw r0, 0x14(r6)
/* 80BF74A8  80 A4 00 A0 */	lwz r5, 0xa0(r4)
/* 80BF74AC  80 04 00 A4 */	lwz r0, 0xa4(r4)
/* 80BF74B0  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80BF74B4  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80BF74B8  80 04 00 A8 */	lwz r0, 0xa8(r4)
/* 80BF74BC  90 06 00 20 */	stw r0, 0x20(r6)
/* 80BF74C0  38 00 00 01 */	li r0, 1
/* 80BF74C4  98 07 00 00 */	stb r0, 0(r7)
lbl_80BF74C8:
/* 80BF74C8  3C A0 80 C0 */	lis r5, struct_80BF9240+0x1@ha /* 0x80BF9241@ha */
/* 80BF74CC  38 E5 92 41 */	addi r7, r5, struct_80BF9240+0x1@l /* 0x80BF9241@l */
/* 80BF74D0  88 07 00 00 */	lbz r0, 0(r7)
/* 80BF74D4  7C 00 07 75 */	extsb. r0, r0
/* 80BF74D8  40 82 00 70 */	bne lbl_80BF7548
/* 80BF74DC  80 A4 00 D0 */	lwz r5, 0xd0(r4)
/* 80BF74E0  80 04 00 D4 */	lwz r0, 0xd4(r4)
/* 80BF74E4  90 A4 01 00 */	stw r5, 0x100(r4)
/* 80BF74E8  90 04 01 04 */	stw r0, 0x104(r4)
/* 80BF74EC  80 04 00 D8 */	lwz r0, 0xd8(r4)
/* 80BF74F0  90 04 01 08 */	stw r0, 0x108(r4)
/* 80BF74F4  38 C4 01 00 */	addi r6, r4, 0x100
/* 80BF74F8  80 A4 00 DC */	lwz r5, 0xdc(r4)
/* 80BF74FC  80 04 00 E0 */	lwz r0, 0xe0(r4)
/* 80BF7500  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80BF7504  90 06 00 10 */	stw r0, 0x10(r6)
/* 80BF7508  80 04 00 E4 */	lwz r0, 0xe4(r4)
/* 80BF750C  90 06 00 14 */	stw r0, 0x14(r6)
/* 80BF7510  80 A4 00 E8 */	lwz r5, 0xe8(r4)
/* 80BF7514  80 04 00 EC */	lwz r0, 0xec(r4)
/* 80BF7518  90 A6 00 18 */	stw r5, 0x18(r6)
/* 80BF751C  90 06 00 1C */	stw r0, 0x1c(r6)
/* 80BF7520  80 04 00 F0 */	lwz r0, 0xf0(r4)
/* 80BF7524  90 06 00 20 */	stw r0, 0x20(r6)
/* 80BF7528  80 A4 00 F4 */	lwz r5, 0xf4(r4)
/* 80BF752C  80 04 00 F8 */	lwz r0, 0xf8(r4)
/* 80BF7530  90 A6 00 24 */	stw r5, 0x24(r6)
/* 80BF7534  90 06 00 28 */	stw r0, 0x28(r6)
/* 80BF7538  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 80BF753C  90 06 00 2C */	stw r0, 0x2c(r6)
/* 80BF7540  38 00 00 01 */	li r0, 1
/* 80BF7544  98 07 00 00 */	stb r0, 0(r7)
lbl_80BF7548:
/* 80BF7548  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BF754C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BF7550  2C 00 00 01 */	cmpwi r0, 1
/* 80BF7554  41 82 00 3C */	beq lbl_80BF7590
/* 80BF7558  40 80 00 10 */	bge lbl_80BF7568
/* 80BF755C  2C 00 00 00 */	cmpwi r0, 0
/* 80BF7560  40 80 00 14 */	bge lbl_80BF7574
/* 80BF7564  48 00 00 44 */	b lbl_80BF75A8
lbl_80BF7568:
/* 80BF7568  2C 00 00 FF */	cmpwi r0, 0xff
/* 80BF756C  41 82 00 08 */	beq lbl_80BF7574
/* 80BF7570  48 00 00 38 */	b lbl_80BF75A8
lbl_80BF7574:
/* 80BF7574  88 03 07 62 */	lbz r0, 0x762(r3)
/* 80BF7578  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BF757C  39 84 00 AC */	addi r12, r4, 0xac
/* 80BF7580  7D 8C 02 14 */	add r12, r12, r0
/* 80BF7584  4B 76 AB 01 */	bl __ptmf_scall
/* 80BF7588  60 00 00 00 */	nop 
/* 80BF758C  48 00 00 1C */	b lbl_80BF75A8
lbl_80BF7590:
/* 80BF7590  88 03 07 62 */	lbz r0, 0x762(r3)
/* 80BF7594  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BF7598  39 84 01 00 */	addi r12, r4, 0x100
/* 80BF759C  7D 8C 02 14 */	add r12, r12, r0
/* 80BF75A0  4B 76 AA E5 */	bl __ptmf_scall
/* 80BF75A4  60 00 00 00 */	nop 
lbl_80BF75A8:
/* 80BF75A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF75AC  7C 08 03 A6 */	mtlr r0
/* 80BF75B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF75B4  4E 80 00 20 */	blr 
