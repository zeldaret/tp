lbl_8048D5CC:
/* 8048D5CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048D5D0  7C 08 02 A6 */	mflr r0
/* 8048D5D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048D5D8  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D5DC  4B ED 4B FD */	bl _savegpr_28
/* 8048D5E0  7C 7C 1B 78 */	mr r28, r3
/* 8048D5E4  7C 9D 23 78 */	mr r29, r4
/* 8048D5E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048D5EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048D5F0  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8048D5F4  3B C0 00 00 */	li r30, 0
/* 8048D5F8  7F E3 FB 78 */	mr r3, r31
/* 8048D5FC  3C A0 80 49 */	lis r5, d_a_tag_evtmsg__stringBase0@ha /* 0x8048D7EC@ha */
/* 8048D600  38 A5 D7 EC */	addi r5, r5, d_a_tag_evtmsg__stringBase0@l /* 0x8048D7EC@l */
/* 8048D604  38 A5 00 23 */	addi r5, r5, 0x23
/* 8048D608  38 C0 00 03 */	li r6, 3
/* 8048D60C  4B BB AA E1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8048D610  28 03 00 00 */	cmplwi r3, 0
/* 8048D614  41 82 00 08 */	beq lbl_8048D61C
/* 8048D618  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8048D61C:
/* 8048D61C  7F E3 FB 78 */	mr r3, r31
/* 8048D620  7F A4 EB 78 */	mr r4, r29
/* 8048D624  4B BB A7 29 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8048D628  2C 03 00 00 */	cmpwi r3, 0
/* 8048D62C  41 82 00 08 */	beq lbl_8048D634
/* 8048D630  93 DC 05 68 */	stw r30, 0x568(r28)
lbl_8048D634:
/* 8048D634  38 7C 05 68 */	addi r3, r28, 0x568
/* 8048D638  48 00 01 29 */	bl func_8048D760
/* 8048D63C  2C 03 00 00 */	cmpwi r3, 0
/* 8048D640  40 82 00 0C */	bne lbl_8048D64C
/* 8048D644  38 60 00 01 */	li r3, 1
/* 8048D648  48 00 00 08 */	b lbl_8048D650
lbl_8048D64C:
/* 8048D64C  38 60 00 00 */	li r3, 0
lbl_8048D650:
/* 8048D650  39 61 00 20 */	addi r11, r1, 0x20
/* 8048D654  4B ED 4B D1 */	bl _restgpr_28
/* 8048D658  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048D65C  7C 08 03 A6 */	mtlr r0
/* 8048D660  38 21 00 20 */	addi r1, r1, 0x20
/* 8048D664  4E 80 00 20 */	blr 
