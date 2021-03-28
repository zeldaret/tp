lbl_80C75E18:
/* 80C75E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C75E1C  7C 08 02 A6 */	mflr r0
/* 80C75E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C75E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C75E28  93 C1 00 08 */	stw r30, 8(r1)
/* 80C75E2C  7C 7E 1B 78 */	mr r30, r3
/* 80C75E30  7C 9F 23 78 */	mr r31, r4
/* 80C75E34  48 00 00 45 */	bl moveGate__13daLv6SzGate_cFv
/* 80C75E38  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C75E3C  38 03 00 24 */	addi r0, r3, 0x24
/* 80C75E40  90 1F 00 00 */	stw r0, 0(r31)
/* 80C75E44  7F C3 F3 78 */	mr r3, r30
/* 80C75E48  4B FF FA B9 */	bl setBaseMtx__13daLv6SzGate_cFv
/* 80C75E4C  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 80C75E50  28 03 00 00 */	cmplwi r3, 0
/* 80C75E54  41 82 00 08 */	beq lbl_80C75E5C
/* 80C75E58  4B 40 5B 68 */	b Move__4dBgWFv
lbl_80C75E5C:
/* 80C75E5C  38 60 00 01 */	li r3, 1
/* 80C75E60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C75E64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C75E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75E6C  7C 08 03 A6 */	mtlr r0
/* 80C75E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C75E74  4E 80 00 20 */	blr 
