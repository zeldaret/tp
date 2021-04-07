lbl_8024C514:
/* 8024C514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C518  7C 08 02 A6 */	mflr r0
/* 8024C51C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C520  38 84 00 04 */	addi r4, r4, 4
/* 8024C524  4B FF EC 0D */	bl getParam__10dMsgFlow_cFPUc
/* 8024C528  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C52C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C530  80 04 5D C4 */	lwz r0, 0x5dc4(r4)
/* 8024C534  7C 00 1A 14 */	add r0, r0, r3
/* 8024C538  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 8024C53C  38 60 00 01 */	li r3, 1
/* 8024C540  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C544  7C 08 03 A6 */	mtlr r0
/* 8024C548  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C54C  4E 80 00 20 */	blr 
