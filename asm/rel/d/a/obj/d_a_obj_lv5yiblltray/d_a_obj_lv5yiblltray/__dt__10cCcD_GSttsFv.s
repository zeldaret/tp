lbl_80C70844:
/* 80C70844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C70848  7C 08 02 A6 */	mflr r0
/* 80C7084C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C70850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C70854  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C70858  41 82 00 1C */	beq lbl_80C70874
/* 80C7085C  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C70B0C@ha */
/* 80C70860  38 05 0B 0C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C70B0C@l */
/* 80C70864  90 1F 00 00 */	stw r0, 0(r31)
/* 80C70868  7C 80 07 35 */	extsh. r0, r4
/* 80C7086C  40 81 00 08 */	ble lbl_80C70874
/* 80C70870  4B 65 E4 CD */	bl __dl__FPv
lbl_80C70874:
/* 80C70874  7F E3 FB 78 */	mr r3, r31
/* 80C70878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7087C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C70880  7C 08 03 A6 */	mtlr r0
/* 80C70884  38 21 00 10 */	addi r1, r1, 0x10
/* 80C70888  4E 80 00 20 */	blr 
