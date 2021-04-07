lbl_80D2E2AC:
/* 80D2E2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2E2B0  7C 08 02 A6 */	mflr r0
/* 80D2E2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2E2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2E2BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2E2C0  41 82 00 30 */	beq lbl_80D2E2F0
/* 80D2E2C4  3C 60 80 D3 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D2EAA4@ha */
/* 80D2E2C8  38 03 EA A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D2EAA4@l */
/* 80D2E2CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2E2D0  41 82 00 10 */	beq lbl_80D2E2E0
/* 80D2E2D4  3C 60 80 D3 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D2EA98@ha */
/* 80D2E2D8  38 03 EA 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D2EA98@l */
/* 80D2E2DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D2E2E0:
/* 80D2E2E0  7C 80 07 35 */	extsh. r0, r4
/* 80D2E2E4  40 81 00 0C */	ble lbl_80D2E2F0
/* 80D2E2E8  7F E3 FB 78 */	mr r3, r31
/* 80D2E2EC  4B 5A 0A 51 */	bl __dl__FPv
lbl_80D2E2F0:
/* 80D2E2F0  7F E3 FB 78 */	mr r3, r31
/* 80D2E2F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2E2F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2E2FC  7C 08 03 A6 */	mtlr r0
/* 80D2E300  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2E304  4E 80 00 20 */	blr 
