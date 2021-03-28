lbl_80C92924:
/* 80C92924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C92928  7C 08 02 A6 */	mflr r0
/* 80C9292C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C92930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C92934  93 C1 00 08 */	stw r30, 8(r1)
/* 80C92938  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9293C  7C 9F 23 78 */	mr r31, r4
/* 80C92940  41 82 00 F4 */	beq lbl_80C92A34
/* 80C92944  34 1E 00 40 */	addic. r0, r30, 0x40
/* 80C92948  41 82 00 84 */	beq lbl_80C929CC
/* 80C9294C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C92950  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C92954  90 7E 00 7C */	stw r3, 0x7c(r30)
/* 80C92958  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C9295C  90 1E 01 60 */	stw r0, 0x160(r30)
/* 80C92960  38 03 00 84 */	addi r0, r3, 0x84
/* 80C92964  90 1E 01 78 */	stw r0, 0x178(r30)
/* 80C92968  34 1E 01 44 */	addic. r0, r30, 0x144
/* 80C9296C  41 82 00 54 */	beq lbl_80C929C0
/* 80C92970  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C92974  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C92978  90 7E 01 60 */	stw r3, 0x160(r30)
/* 80C9297C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C92980  90 1E 01 78 */	stw r0, 0x178(r30)
/* 80C92984  34 1E 01 64 */	addic. r0, r30, 0x164
/* 80C92988  41 82 00 10 */	beq lbl_80C92998
/* 80C9298C  3C 60 80 C9 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C92990  38 03 2D D0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C92994  90 1E 01 78 */	stw r0, 0x178(r30)
lbl_80C92998:
/* 80C92998  34 1E 01 44 */	addic. r0, r30, 0x144
/* 80C9299C  41 82 00 24 */	beq lbl_80C929C0
/* 80C929A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C929A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C929A8  90 1E 01 60 */	stw r0, 0x160(r30)
/* 80C929AC  34 1E 01 44 */	addic. r0, r30, 0x144
/* 80C929B0  41 82 00 10 */	beq lbl_80C929C0
/* 80C929B4  3C 60 80 C9 */	lis r3, __vt__8cM3dGAab@ha
/* 80C929B8  38 03 2D C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C929BC  90 1E 01 5C */	stw r0, 0x15c(r30)
lbl_80C929C0:
/* 80C929C0  38 7E 00 40 */	addi r3, r30, 0x40
/* 80C929C4  38 80 00 00 */	li r4, 0
/* 80C929C8  4B 3F 17 1C */	b __dt__12dCcD_GObjInfFv
lbl_80C929CC:
/* 80C929CC  34 1E 00 04 */	addic. r0, r30, 4
/* 80C929D0  41 82 00 54 */	beq lbl_80C92A24
/* 80C929D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C929D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C929DC  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80C929E0  38 03 00 20 */	addi r0, r3, 0x20
/* 80C929E4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C929E8  34 1E 00 20 */	addic. r0, r30, 0x20
/* 80C929EC  41 82 00 24 */	beq lbl_80C92A10
/* 80C929F0  3C 60 80 C9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C929F4  38 03 2D B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C929F8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C929FC  34 1E 00 20 */	addic. r0, r30, 0x20
/* 80C92A00  41 82 00 10 */	beq lbl_80C92A10
/* 80C92A04  3C 60 80 C9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C92A08  38 03 2D AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C92A0C  90 1E 00 20 */	stw r0, 0x20(r30)
lbl_80C92A10:
/* 80C92A10  34 1E 00 04 */	addic. r0, r30, 4
/* 80C92A14  41 82 00 10 */	beq lbl_80C92A24
/* 80C92A18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C92A1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C92A20  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_80C92A24:
/* 80C92A24  7F E0 07 35 */	extsh. r0, r31
/* 80C92A28  40 81 00 0C */	ble lbl_80C92A34
/* 80C92A2C  7F C3 F3 78 */	mr r3, r30
/* 80C92A30  4B 63 C3 0C */	b __dl__FPv
lbl_80C92A34:
/* 80C92A34  7F C3 F3 78 */	mr r3, r30
/* 80C92A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C92A3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C92A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C92A44  7C 08 03 A6 */	mtlr r0
/* 80C92A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C92A4C  4E 80 00 20 */	blr 
