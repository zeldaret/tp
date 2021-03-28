lbl_8031C6F4:
/* 8031C6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031C6F8  7C 08 02 A6 */	mflr r0
/* 8031C6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031C700  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C704  48 04 5A D5 */	bl _savegpr_28
/* 8031C708  7C 7C 1B 78 */	mr r28, r3
/* 8031C70C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031C710  80 64 00 00 */	lwz r3, 0(r4)
/* 8031C714  80 1C 00 04 */	lwz r0, 4(r28)
/* 8031C718  7C 03 02 14 */	add r0, r3, r0
/* 8031C71C  90 04 00 08 */	stw r0, 8(r4)
/* 8031C720  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C724  83 C3 00 08 */	lwz r30, 8(r3)
/* 8031C728  3B A0 00 00 */	li r29, 0
/* 8031C72C  3B E0 00 00 */	li r31, 0
lbl_8031C730:
/* 8031C730  38 9F 00 08 */	addi r4, r31, 8
/* 8031C734  7C 9C 22 14 */	add r4, r28, r4
/* 8031C738  A0 04 00 00 */	lhz r0, 0(r4)
/* 8031C73C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8031C740  41 82 00 0C */	beq lbl_8031C74C
/* 8031C744  7F A3 EB 78 */	mr r3, r29
/* 8031C748  48 00 78 4D */	bl loadTexNo__FUlRCUs
lbl_8031C74C:
/* 8031C74C  3B BD 00 01 */	addi r29, r29, 1
/* 8031C750  28 1D 00 04 */	cmplwi r29, 4
/* 8031C754  3B FF 00 02 */	addi r31, r31, 2
/* 8031C758  41 80 FF D8 */	blt lbl_8031C730
/* 8031C75C  80 6D 94 00 */	lwz r3, __GDCurrentDL(r13)
/* 8031C760  80 03 00 08 */	lwz r0, 8(r3)
/* 8031C764  7F C3 F3 78 */	mr r3, r30
/* 8031C768  7C 9E 00 50 */	subf r4, r30, r0
/* 8031C76C  48 01 EE 71 */	bl DCStoreRange
/* 8031C770  39 61 00 20 */	addi r11, r1, 0x20
/* 8031C774  48 04 5A B1 */	bl _restgpr_28
/* 8031C778  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031C77C  7C 08 03 A6 */	mtlr r0
/* 8031C780  38 21 00 20 */	addi r1, r1, 0x20
/* 8031C784  4E 80 00 20 */	blr 
