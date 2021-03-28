lbl_804DE51C:
/* 804DE51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE520  7C 08 02 A6 */	mflr r0
/* 804DE524  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE52C  7C 7F 1B 78 */	mr r31, r3
/* 804DE530  4B B9 A3 AC */	b MoveBGDelete__16dBgS_MoveBgActorFv
/* 804DE534  7F E3 FB 78 */	mr r3, r31
/* 804DE538  38 80 FF FF */	li r4, -1
/* 804DE53C  4B FF FD BD */	bl __dt__9daCstaF_cFv
/* 804DE540  38 60 00 01 */	li r3, 1
/* 804DE544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE54C  7C 08 03 A6 */	mtlr r0
/* 804DE550  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE554  4E 80 00 20 */	blr 
