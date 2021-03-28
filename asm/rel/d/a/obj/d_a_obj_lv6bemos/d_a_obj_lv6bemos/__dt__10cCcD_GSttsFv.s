lbl_80C7DE48:
/* 80C7DE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7DE4C  7C 08 02 A6 */	mflr r0
/* 80C7DE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7DE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7DE58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7DE5C  41 82 00 1C */	beq lbl_80C7DE78
/* 80C7DE60  3C A0 80 C8 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C7DE64  38 05 E0 98 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C7DE68  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7DE6C  7C 80 07 35 */	extsh. r0, r4
/* 80C7DE70  40 81 00 08 */	ble lbl_80C7DE78
/* 80C7DE74  4B 65 0E C8 */	b __dl__FPv
lbl_80C7DE78:
/* 80C7DE78  7F E3 FB 78 */	mr r3, r31
/* 80C7DE7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7DE80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7DE84  7C 08 03 A6 */	mtlr r0
/* 80C7DE88  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7DE8C  4E 80 00 20 */	blr 
