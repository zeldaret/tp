lbl_80A881D8:
/* 80A881D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A881DC  7C 08 02 A6 */	mflr r0
/* 80A881E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A881E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A881E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A881EC  41 82 00 1C */	beq lbl_80A88208
/* 80A881F0  3C A0 80 A9 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A881F4  38 05 8A 8C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A881F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A881FC  7C 80 07 35 */	extsh. r0, r4
/* 80A88200  40 81 00 08 */	ble lbl_80A88208
/* 80A88204  4B 84 6B 38 */	b __dl__FPv
lbl_80A88208:
/* 80A88208  7F E3 FB 78 */	mr r3, r31
/* 80A8820C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A88210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A88214  7C 08 03 A6 */	mtlr r0
/* 80A88218  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8821C  4E 80 00 20 */	blr 
