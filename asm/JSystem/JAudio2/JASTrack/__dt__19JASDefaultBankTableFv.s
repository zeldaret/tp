lbl_802934B4:
/* 802934B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802934B8  7C 08 02 A6 */	mflr r0
/* 802934BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802934C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802934C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802934C8  41 82 00 48 */	beq lbl_80293510
/* 802934CC  3C 60 80 3C */	lis r3, __vt__19JASDefaultBankTable@ha /* 0x803C5B68@ha */
/* 802934D0  38 03 5B 68 */	addi r0, r3, __vt__19JASDefaultBankTable@l /* 0x803C5B68@l */
/* 802934D4  90 1F 00 00 */	stw r0, 0(r31)
/* 802934D8  34 1F 04 0C */	addic. r0, r31, 0x40c
/* 802934DC  41 82 00 24 */	beq lbl_80293500
/* 802934E0  34 7F 04 0C */	addic. r3, r31, 0x40c
/* 802934E4  41 82 00 08 */	beq lbl_802934EC
/* 802934E8  38 63 FB F4 */	addi r3, r3, -1036
lbl_802934EC:
/* 802934EC  80 0D 86 10 */	lwz r0, __OSReport_disable-0x8(r13)
/* 802934F0  7C 00 18 40 */	cmplw r0, r3
/* 802934F4  40 82 00 0C */	bne lbl_80293500
/* 802934F8  38 00 00 00 */	li r0, 0
/* 802934FC  90 0D 86 10 */	stw r0, __OSReport_disable-0x8(r13)
lbl_80293500:
/* 80293500  7C 80 07 35 */	extsh. r0, r4
/* 80293504  40 81 00 0C */	ble lbl_80293510
/* 80293508  7F E3 FB 78 */	mr r3, r31
/* 8029350C  48 03 B8 31 */	bl __dl__FPv
lbl_80293510:
/* 80293510  7F E3 FB 78 */	mr r3, r31
/* 80293514  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029351C  7C 08 03 A6 */	mtlr r0
/* 80293520  38 21 00 10 */	addi r1, r1, 0x10
/* 80293524  4E 80 00 20 */	blr 
