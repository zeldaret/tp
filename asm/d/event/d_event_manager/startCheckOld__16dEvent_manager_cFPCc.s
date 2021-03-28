lbl_80047A38:
/* 80047A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80047A3C  7C 08 02 A6 */	mflr r0
/* 80047A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80047A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80047A48  7C 7F 1B 78 */	mr r31, r3
/* 80047A4C  38 A0 00 FF */	li r5, 0xff
/* 80047A50  38 C0 FF FF */	li r6, -1
/* 80047A54  4B FF FA C1 */	bl getEventIdx__16dEvent_manager_cFPCcUcl
/* 80047A58  7C 64 1B 78 */	mr r4, r3
/* 80047A5C  7F E3 FB 78 */	mr r3, r31
/* 80047A60  4B FF FF 99 */	bl startCheck__16dEvent_manager_cFs
/* 80047A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80047A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80047A6C  7C 08 03 A6 */	mtlr r0
/* 80047A70  38 21 00 10 */	addi r1, r1, 0x10
/* 80047A74  4E 80 00 20 */	blr 
