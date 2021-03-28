lbl_807C19C8:
/* 807C19C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C19CC  7C 08 02 A6 */	mflr r0
/* 807C19D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C19D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C19D8  93 C1 00 08 */	stw r30, 8(r1)
/* 807C19DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 807C19E0  7C 9F 23 78 */	mr r31, r4
/* 807C19E4  41 82 00 40 */	beq lbl_807C1A24
/* 807C19E8  3C 80 80 7C */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 807C19EC  38 84 23 5C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 807C19F0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 807C19F4  38 04 00 0C */	addi r0, r4, 0xc
/* 807C19F8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 807C19FC  38 04 00 18 */	addi r0, r4, 0x18
/* 807C1A00  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 807C1A04  38 04 00 24 */	addi r0, r4, 0x24
/* 807C1A08  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 807C1A0C  38 80 00 00 */	li r4, 0
/* 807C1A10  4B 8B 5B E0 */	b __dt__11dBgS_GndChkFv
/* 807C1A14  7F E0 07 35 */	extsh. r0, r31
/* 807C1A18  40 81 00 0C */	ble lbl_807C1A24
/* 807C1A1C  7F C3 F3 78 */	mr r3, r30
/* 807C1A20  4B B0 D3 1C */	b __dl__FPv
lbl_807C1A24:
/* 807C1A24  7F C3 F3 78 */	mr r3, r30
/* 807C1A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C1A2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C1A30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1A34  7C 08 03 A6 */	mtlr r0
/* 807C1A38  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1A3C  4E 80 00 20 */	blr 
