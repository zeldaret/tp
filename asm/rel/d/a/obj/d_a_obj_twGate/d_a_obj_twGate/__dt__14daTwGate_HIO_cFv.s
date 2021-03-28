lbl_80D2024C:
/* 80D2024C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20250  7C 08 02 A6 */	mflr r0
/* 80D20254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2025C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D20260  41 82 00 40 */	beq lbl_80D202A0
/* 80D20264  3C 60 80 D2 */	lis r3, __vt__14daTwGate_HIO_c@ha
/* 80D20268  38 03 06 74 */	addi r0, r3, __vt__14daTwGate_HIO_c@l
/* 80D2026C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D20270  41 82 00 20 */	beq lbl_80D20290
/* 80D20274  3C 60 80 D2 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha
/* 80D20278  38 03 06 80 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l
/* 80D2027C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D20280  41 82 00 10 */	beq lbl_80D20290
/* 80D20284  3C 60 80 D2 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D20288  38 03 06 8C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D2028C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D20290:
/* 80D20290  7C 80 07 35 */	extsh. r0, r4
/* 80D20294  40 81 00 0C */	ble lbl_80D202A0
/* 80D20298  7F E3 FB 78 */	mr r3, r31
/* 80D2029C  4B 5A EA A0 */	b __dl__FPv
lbl_80D202A0:
/* 80D202A0  7F E3 FB 78 */	mr r3, r31
/* 80D202A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D202A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D202AC  7C 08 03 A6 */	mtlr r0
/* 80D202B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D202B4  4E 80 00 20 */	blr 
