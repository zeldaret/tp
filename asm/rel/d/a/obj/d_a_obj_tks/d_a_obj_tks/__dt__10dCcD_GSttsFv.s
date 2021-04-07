lbl_80D1256C:
/* 80D1256C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D12570  7C 08 02 A6 */	mflr r0
/* 80D12574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D12578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1257C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D12580  41 82 00 30 */	beq lbl_80D125B0
/* 80D12584  3C 60 80 D1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D12A9C@ha */
/* 80D12588  38 03 2A 9C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D12A9C@l */
/* 80D1258C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D12590  41 82 00 10 */	beq lbl_80D125A0
/* 80D12594  3C 60 80 D1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D12A90@ha */
/* 80D12598  38 03 2A 90 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D12A90@l */
/* 80D1259C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D125A0:
/* 80D125A0  7C 80 07 35 */	extsh. r0, r4
/* 80D125A4  40 81 00 0C */	ble lbl_80D125B0
/* 80D125A8  7F E3 FB 78 */	mr r3, r31
/* 80D125AC  4B 5B C7 91 */	bl __dl__FPv
lbl_80D125B0:
/* 80D125B0  7F E3 FB 78 */	mr r3, r31
/* 80D125B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D125B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D125BC  7C 08 03 A6 */	mtlr r0
/* 80D125C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D125C4  4E 80 00 20 */	blr 
