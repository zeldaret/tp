lbl_80C18068:
/* 80C18068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1806C  7C 08 02 A6 */	mflr r0
/* 80C18070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C18078  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1807C  41 82 00 1C */	beq lbl_80C18098
/* 80C18080  3C A0 80 C2 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C181E4@ha */
/* 80C18084  38 05 81 E4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C181E4@l */
/* 80C18088  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1808C  7C 80 07 35 */	extsh. r0, r4
/* 80C18090  40 81 00 08 */	ble lbl_80C18098
/* 80C18094  4B 6B 6C A9 */	bl __dl__FPv
lbl_80C18098:
/* 80C18098  7F E3 FB 78 */	mr r3, r31
/* 80C1809C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C180A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C180A4  7C 08 03 A6 */	mtlr r0
/* 80C180A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C180AC  4E 80 00 20 */	blr 
