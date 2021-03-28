lbl_80C67464:
/* 80C67464  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67468  7C 08 02 A6 */	mflr r0
/* 80C6746C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67470  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67474  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67478  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C6747C  7C 9F 23 78 */	mr r31, r4
/* 80C67480  41 82 00 38 */	beq lbl_80C674B8
/* 80C67484  3C 80 80 C6 */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80C67488  38 84 76 E4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80C6748C  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C67490  38 04 00 0C */	addi r0, r4, 0xc
/* 80C67494  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80C67498  38 04 00 18 */	addi r0, r4, 0x18
/* 80C6749C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80C674A0  38 80 00 00 */	li r4, 0
/* 80C674A4  4B 40 EA F0 */	b __dt__9dBgS_AcchFv
/* 80C674A8  7F E0 07 35 */	extsh. r0, r31
/* 80C674AC  40 81 00 0C */	ble lbl_80C674B8
/* 80C674B0  7F C3 F3 78 */	mr r3, r30
/* 80C674B4  4B 66 78 88 */	b __dl__FPv
lbl_80C674B8:
/* 80C674B8  7F C3 F3 78 */	mr r3, r30
/* 80C674BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C674C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C674C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C674C8  7C 08 03 A6 */	mtlr r0
/* 80C674CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C674D0  4E 80 00 20 */	blr 
