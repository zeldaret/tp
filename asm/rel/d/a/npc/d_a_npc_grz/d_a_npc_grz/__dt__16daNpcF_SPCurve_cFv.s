lbl_809EE8C0:
/* 809EE8C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE8C4  7C 08 02 A6 */	mflr r0
/* 809EE8C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE8CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EE8D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EE8D4  41 82 00 1C */	beq lbl_809EE8F0
/* 809EE8D8  3C A0 80 9F */	lis r5, __vt__16daNpcF_SPCurve_c@ha
/* 809EE8DC  38 05 FB D0 */	addi r0, r5, __vt__16daNpcF_SPCurve_c@l
/* 809EE8E0  90 1F 06 08 */	stw r0, 0x608(r31)
/* 809EE8E4  7C 80 07 35 */	extsh. r0, r4
/* 809EE8E8  40 81 00 08 */	ble lbl_809EE8F0
/* 809EE8EC  4B 8E 04 50 */	b __dl__FPv
lbl_809EE8F0:
/* 809EE8F0  7F E3 FB 78 */	mr r3, r31
/* 809EE8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EE8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE8FC  7C 08 03 A6 */	mtlr r0
/* 809EE900  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE904  4E 80 00 20 */	blr 
