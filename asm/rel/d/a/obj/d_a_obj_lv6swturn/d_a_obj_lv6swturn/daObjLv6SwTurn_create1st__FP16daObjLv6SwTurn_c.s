lbl_80C845D0:
/* 80C845D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C845D4  7C 08 02 A6 */	mflr r0
/* 80C845D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C845DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C845E0  7C 7F 1B 78 */	mr r31, r3
/* 80C845E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C845E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C845EC  40 82 00 28 */	bne lbl_80C84614
/* 80C845F0  28 1F 00 00 */	cmplwi r31, 0
/* 80C845F4  41 82 00 14 */	beq lbl_80C84608
/* 80C845F8  4B 3F 40 2C */	b __ct__16dBgS_MoveBgActorFv
/* 80C845FC  3C 60 80 C8 */	lis r3, __vt__16daObjLv6SwTurn_c@ha
/* 80C84600  38 03 47 74 */	addi r0, r3, __vt__16daObjLv6SwTurn_c@l
/* 80C84604  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C84608:
/* 80C84608  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C8460C  60 00 00 08 */	ori r0, r0, 8
/* 80C84610  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C84614:
/* 80C84614  7F E3 FB 78 */	mr r3, r31
/* 80C84618  4B FF F6 69 */	bl create1st__16daObjLv6SwTurn_cFv
/* 80C8461C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84624  7C 08 03 A6 */	mtlr r0
/* 80C84628  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8462C  4E 80 00 20 */	blr 
