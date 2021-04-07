lbl_80037B78:
/* 80037B78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037B7C  7C 08 02 A6 */	mflr r0
/* 80037B80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037B84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037B88  7C 7F 1B 78 */	mr r31, r3
/* 80037B8C  4B FF FE D1 */	bl getItemNo__12daItemBase_cFv
/* 80037B90  54 66 25 36 */	rlwinm r6, r3, 4, 0x14, 0x1b
/* 80037B94  38 00 FF FF */	li r0, -1
/* 80037B98  90 01 00 08 */	stw r0, 8(r1)
/* 80037B9C  7F E3 FB 78 */	mr r3, r31
/* 80037BA0  3C 80 80 3B */	lis r4, field_item_res__10dItem_data@ha /* 0x803ADD88@ha */
/* 80037BA4  38 A4 DD 88 */	addi r5, r4, field_item_res__10dItem_data@l /* 0x803ADD88@l */
/* 80037BA8  7C 85 30 2E */	lwzx r4, r5, r6
/* 80037BAC  7D 45 32 14 */	add r10, r5, r6
/* 80037BB0  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037BB4  38 C0 FF FF */	li r6, -1
/* 80037BB8  38 E0 FF FF */	li r7, -1
/* 80037BBC  A9 0A 00 06 */	lha r8, 6(r10)
/* 80037BC0  39 20 FF FF */	li r9, -1
/* 80037BC4  A9 4A 00 08 */	lha r10, 8(r10)
/* 80037BC8  48 10 CB 95 */	bl CreateItemHeap__12daItemBase_cFPCcsssssss
/* 80037BCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037BD4  7C 08 03 A6 */	mtlr r0
/* 80037BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80037BDC  4E 80 00 20 */	blr 
