lbl_80C44EF8:
/* 80C44EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C44EFC  7C 08 02 A6 */	mflr r0
/* 80C44F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C44F04  3C 80 80 C4 */	lis r4, data_80C4525C@ha /* 0x80C4525C@ha */
/* 80C44F08  38 E4 52 5C */	addi r7, r4, data_80C4525C@l /* 0x80C4525C@l */
/* 80C44F0C  88 07 00 00 */	lbz r0, 0(r7)
/* 80C44F10  7C 00 07 75 */	extsb. r0, r0
/* 80C44F14  40 82 00 34 */	bne lbl_80C44F48
/* 80C44F18  3C 80 80 C4 */	lis r4, mode_proc@ha /* 0x80C451C8@ha */
/* 80C44F1C  38 C4 51 C8 */	addi r6, r4, mode_proc@l /* 0x80C451C8@l */
/* 80C44F20  3C 80 80 C4 */	lis r4, lit_3688@ha /* 0x80C451BC@ha */
/* 80C44F24  38 A4 51 BC */	addi r5, r4, lit_3688@l /* 0x80C451BC@l */
/* 80C44F28  80 85 00 00 */	lwz r4, 0(r5)
/* 80C44F2C  80 05 00 04 */	lwz r0, 4(r5)
/* 80C44F30  90 86 00 00 */	stw r4, 0(r6)
/* 80C44F34  90 06 00 04 */	stw r0, 4(r6)
/* 80C44F38  80 05 00 08 */	lwz r0, 8(r5)
/* 80C44F3C  90 06 00 08 */	stw r0, 8(r6)
/* 80C44F40  38 00 00 01 */	li r0, 1
/* 80C44F44  98 07 00 00 */	stb r0, 0(r7)
lbl_80C44F48:
/* 80C44F48  88 03 05 74 */	lbz r0, 0x574(r3)
/* 80C44F4C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80C44F50  3C 80 80 C4 */	lis r4, mode_proc@ha /* 0x80C451C8@ha */
/* 80C44F54  38 04 51 C8 */	addi r0, r4, mode_proc@l /* 0x80C451C8@l */
/* 80C44F58  7D 80 2A 14 */	add r12, r0, r5
/* 80C44F5C  4B 71 D1 29 */	bl __ptmf_scall
/* 80C44F60  60 00 00 00 */	nop 
/* 80C44F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C44F68  7C 08 03 A6 */	mtlr r0
/* 80C44F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C44F70  4E 80 00 20 */	blr 
