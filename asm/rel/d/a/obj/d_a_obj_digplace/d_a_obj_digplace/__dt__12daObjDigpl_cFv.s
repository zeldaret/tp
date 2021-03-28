lbl_8057C158:
/* 8057C158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057C15C  7C 08 02 A6 */	mflr r0
/* 8057C160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057C164  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057C168  93 C1 00 08 */	stw r30, 8(r1)
/* 8057C16C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8057C170  7C 9F 23 78 */	mr r31, r4
/* 8057C174  41 82 00 28 */	beq lbl_8057C19C
/* 8057C178  3C 80 80 58 */	lis r4, __vt__12daObjDigpl_c@ha
/* 8057C17C  38 04 C9 48 */	addi r0, r4, __vt__12daObjDigpl_c@l
/* 8057C180  90 1E 05 BC */	stw r0, 0x5bc(r30)
/* 8057C184  38 80 00 00 */	li r4, 0
/* 8057C188  4B A9 CB 04 */	b __dt__10fopAc_ac_cFv
/* 8057C18C  7F E0 07 35 */	extsh. r0, r31
/* 8057C190  40 81 00 0C */	ble lbl_8057C19C
/* 8057C194  7F C3 F3 78 */	mr r3, r30
/* 8057C198  4B D5 2B A4 */	b __dl__FPv
lbl_8057C19C:
/* 8057C19C  7F C3 F3 78 */	mr r3, r30
/* 8057C1A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057C1A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057C1A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057C1AC  7C 08 03 A6 */	mtlr r0
/* 8057C1B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057C1B4  4E 80 00 20 */	blr 
