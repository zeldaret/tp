lbl_80C189E0:
/* 80C189E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C189E4  7C 08 02 A6 */	mflr r0
/* 80C189E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C189EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C189F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C189F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C189F8  7C 9F 23 78 */	mr r31, r4
/* 80C189FC  41 82 00 38 */	beq lbl_80C18A34
/* 80C18A00  3C 80 80 C2 */	lis r4, __vt__Q29nObjMHasu12daObjMHasu_c@ha /* 0x80C18AFC@ha */
/* 80C18A04  38 04 8A FC */	addi r0, r4, __vt__Q29nObjMHasu12daObjMHasu_c@l /* 0x80C18AFC@l */
/* 80C18A08  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C18A0C  41 82 00 18 */	beq lbl_80C18A24
/* 80C18A10  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80C18A14  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80C18A18  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C18A1C  38 80 00 00 */	li r4, 0
/* 80C18A20  4B 40 02 6D */	bl __dt__10fopAc_ac_cFv
lbl_80C18A24:
/* 80C18A24  7F E0 07 35 */	extsh. r0, r31
/* 80C18A28  40 81 00 0C */	ble lbl_80C18A34
/* 80C18A2C  7F C3 F3 78 */	mr r3, r30
/* 80C18A30  4B 6B 63 0D */	bl __dl__FPv
lbl_80C18A34:
/* 80C18A34  7F C3 F3 78 */	mr r3, r30
/* 80C18A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18A3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C18A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18A44  7C 08 03 A6 */	mtlr r0
/* 80C18A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18A4C  4E 80 00 20 */	blr 
