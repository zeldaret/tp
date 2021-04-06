lbl_8024D870:
/* 8024D870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024D874  7C 08 02 A6 */	mflr r0
/* 8024D878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024D87C  7C 86 23 78 */	mr r6, r4
/* 8024D880  38 81 00 08 */	addi r4, r1, 8
/* 8024D884  38 A1 00 0A */	addi r5, r1, 0xa
/* 8024D888  38 C6 00 04 */	addi r6, r6, 4
/* 8024D88C  4B FF D8 65 */	bl getParam__10dMsgFlow_cFPUsPUsPUc
/* 8024D890  A0 01 00 08 */	lhz r0, 8(r1)
/* 8024D894  54 04 28 34 */	slwi r4, r0, 5
/* 8024D898  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024D89C  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024D8A0  7C 60 22 14 */	add r3, r0, r4
/* 8024D8A4  38 63 01 F0 */	addi r3, r3, 0x1f0
/* 8024D8A8  A0 81 00 0A */	lhz r4, 0xa(r1)
/* 8024D8AC  4B DE 6F 65 */	bl onSwitch__12dSv_memBit_cFi
/* 8024D8B0  38 60 00 01 */	li r3, 1
/* 8024D8B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024D8B8  7C 08 03 A6 */	mtlr r0
/* 8024D8BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8024D8C0  4E 80 00 20 */	blr 
