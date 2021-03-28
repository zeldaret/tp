lbl_80D07344:
/* 80D07344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D07348  7C 08 02 A6 */	mflr r0
/* 80D0734C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D07350  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D07354  93 C1 00 08 */	stw r30, 8(r1)
/* 80D07358  7C 7E 1B 78 */	mr r30, r3
/* 80D0735C  7C 9F 23 78 */	mr r31, r4
/* 80D07360  48 00 00 45 */	bl procMain__11daTkraDai_cFv
/* 80D07364  7F C3 F3 78 */	mr r3, r30
/* 80D07368  4B FF FA FD */	bl setBaseMtx__11daTkraDai_cFv
/* 80D0736C  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80D07370  38 03 00 24 */	addi r0, r3, 0x24
/* 80D07374  90 1F 00 00 */	stw r0, 0(r31)
/* 80D07378  80 7E 06 28 */	lwz r3, 0x628(r30)
/* 80D0737C  28 03 00 00 */	cmplwi r3, 0
/* 80D07380  41 82 00 08 */	beq lbl_80D07388
/* 80D07384  4B 37 46 3C */	b Move__4dBgWFv
lbl_80D07388:
/* 80D07388  38 60 00 01 */	li r3, 1
/* 80D0738C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D07390  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D07394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D07398  7C 08 03 A6 */	mtlr r0
/* 80D0739C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D073A0  4E 80 00 20 */	blr 
