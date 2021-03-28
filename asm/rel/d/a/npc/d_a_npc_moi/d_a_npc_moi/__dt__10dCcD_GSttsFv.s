lbl_80A7A680:
/* 80A7A680  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7A684  7C 08 02 A6 */	mflr r0
/* 80A7A688  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7A68C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7A690  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7A694  41 82 00 30 */	beq lbl_80A7A6C4
/* 80A7A698  3C 60 80 A8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A7A69C  38 03 BE 70 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A7A6A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80A7A6A4  41 82 00 10 */	beq lbl_80A7A6B4
/* 80A7A6A8  3C 60 80 A8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A7A6AC  38 03 BE 64 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A7A6B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A7A6B4:
/* 80A7A6B4  7C 80 07 35 */	extsh. r0, r4
/* 80A7A6B8  40 81 00 0C */	ble lbl_80A7A6C4
/* 80A7A6BC  7F E3 FB 78 */	mr r3, r31
/* 80A7A6C0  4B 85 46 7C */	b __dl__FPv
lbl_80A7A6C4:
/* 80A7A6C4  7F E3 FB 78 */	mr r3, r31
/* 80A7A6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A7A6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7A6D0  7C 08 03 A6 */	mtlr r0
/* 80A7A6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7A6D8  4E 80 00 20 */	blr 
