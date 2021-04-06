lbl_80037B0C:
/* 80037B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80037B10  7C 08 02 A6 */	mflr r0
/* 80037B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80037B18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80037B1C  7C 7F 1B 78 */	mr r31, r3
/* 80037B20  4B FF FF 3D */	bl getItemNo__12daItemBase_cFv
/* 80037B24  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80037B28  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80037B2C  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 80037B30  38 83 C5 A0 */	addi r4, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 80037B34  7D 44 2A 14 */	add r10, r4, r5
/* 80037B38  A8 0A 00 0C */	lha r0, 0xc(r10)
/* 80037B3C  90 01 00 08 */	stw r0, 8(r1)
/* 80037B40  7F E3 FB 78 */	mr r3, r31
/* 80037B44  7C 84 28 2E */	lwzx r4, r4, r5
/* 80037B48  A8 AA 00 04 */	lha r5, 4(r10)
/* 80037B4C  A8 CA 00 06 */	lha r6, 6(r10)
/* 80037B50  38 E0 FF FF */	li r7, -1
/* 80037B54  A9 0A 00 08 */	lha r8, 8(r10)
/* 80037B58  39 20 FF FF */	li r9, -1
/* 80037B5C  A9 4A 00 0A */	lha r10, 0xa(r10)
/* 80037B60  48 10 CB FD */	bl CreateItemHeap__12daItemBase_cFPCcsssssss
/* 80037B64  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80037B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80037B6C  7C 08 03 A6 */	mtlr r0
/* 80037B70  38 21 00 20 */	addi r1, r1, 0x20
/* 80037B74  4E 80 00 20 */	blr 
