lbl_8064E7F0:
/* 8064E7F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064E7F4  7C 08 02 A6 */	mflr r0
/* 8064E7F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064E7FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064E800  7C 7F 1B 79 */	or. r31, r3, r3
/* 8064E804  41 82 00 30 */	beq lbl_8064E834
/* 8064E808  3C 60 80 65 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8064F514@ha */
/* 8064E80C  38 03 F5 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8064F514@l */
/* 8064E810  90 1F 00 00 */	stw r0, 0(r31)
/* 8064E814  41 82 00 10 */	beq lbl_8064E824
/* 8064E818  3C 60 80 65 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8064F508@ha */
/* 8064E81C  38 03 F5 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8064F508@l */
/* 8064E820  90 1F 00 00 */	stw r0, 0(r31)
lbl_8064E824:
/* 8064E824  7C 80 07 35 */	extsh. r0, r4
/* 8064E828  40 81 00 0C */	ble lbl_8064E834
/* 8064E82C  7F E3 FB 78 */	mr r3, r31
/* 8064E830  4B C8 05 0D */	bl __dl__FPv
lbl_8064E834:
/* 8064E834  7F E3 FB 78 */	mr r3, r31
/* 8064E838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064E83C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064E840  7C 08 03 A6 */	mtlr r0
/* 8064E844  38 21 00 10 */	addi r1, r1, 0x10
/* 8064E848  4E 80 00 20 */	blr 
