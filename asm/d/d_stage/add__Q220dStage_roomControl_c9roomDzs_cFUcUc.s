lbl_80024B44:
/* 80024B44  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80024B48  7C 08 02 A6 */	mflr r0
/* 80024B4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80024B50  39 61 00 30 */	addi r11, r1, 0x30
/* 80024B54  48 33 D6 85 */	bl _savegpr_28
/* 80024B58  7C A6 2B 78 */	mr r6, r5
/* 80024B5C  88 03 00 00 */	lbz r0, 0(r3)
/* 80024B60  28 00 00 00 */	cmplwi r0, 0
/* 80024B64  40 82 00 0C */	bne lbl_80024B70
/* 80024B68  38 60 00 00 */	li r3, 0
/* 80024B6C  48 00 00 98 */	b lbl_80024C04
lbl_80024B70:
/* 80024B70  83 A3 00 04 */	lwz r29, 4(r3)
/* 80024B74  54 9E 15 BA */	rlwinm r30, r4, 2, 0x16, 0x1d
/* 80024B78  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80024B7C  28 00 00 00 */	cmplwi r0, 0
/* 80024B80  40 82 00 80 */	bne lbl_80024C00
/* 80024B84  38 61 00 08 */	addi r3, r1, 8
/* 80024B88  3C 80 80 38 */	lis r4, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80024B8C  38 84 8A 50 */	addi r4, r4, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80024B90  38 84 00 C6 */	addi r4, r4, 0xc6
/* 80024B94  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024B98  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024B9C  38 A5 4E 00 */	addi r5, r5, 0x4e00
/* 80024BA0  54 C6 06 3E */	clrlwi r6, r6, 0x18
/* 80024BA4  4C C6 31 82 */	crclr 6
/* 80024BA8  48 34 19 35 */	bl sprintf
/* 80024BAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024BB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024BB4  80 7F 5C 68 */	lwz r3, 0x5c68(r31)
/* 80024BB8  38 81 00 08 */	addi r4, r1, 8
/* 80024BBC  48 00 DB 7D */	bl dLib_getExpandSizeFromAramArchive__FP14JKRAramArchivePCc
/* 80024BC0  7C 7C 1B 78 */	mr r28, r3
/* 80024BC4  4B FE A2 29 */	bl mDoExt_getArchiveHeap__Fv
/* 80024BC8  7F 84 E3 78 */	mr r4, r28
/* 80024BCC  38 A0 FF E0 */	li r5, -32
/* 80024BD0  48 2A 99 05 */	bl alloc__7JKRHeapFUli
/* 80024BD4  7C 7D F1 2E */	stwx r3, r29, r30
/* 80024BD8  7C 9D F0 2E */	lwzx r4, r29, r30
/* 80024BDC  28 04 00 00 */	cmplwi r4, 0
/* 80024BE0  41 82 00 20 */	beq lbl_80024C00
/* 80024BE4  80 7F 5C 68 */	lwz r3, 0x5c68(r31)
/* 80024BE8  7F 85 E3 78 */	mr r5, r28
/* 80024BEC  38 C1 00 08 */	addi r6, r1, 8
/* 80024BF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80024BF4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80024BF8  7D 89 03 A6 */	mtctr r12
/* 80024BFC  4E 80 04 21 */	bctrl 
lbl_80024C00:
/* 80024C00  7C 7D F0 2E */	lwzx r3, r29, r30
lbl_80024C04:
/* 80024C04  39 61 00 30 */	addi r11, r1, 0x30
/* 80024C08  48 33 D6 1D */	bl _restgpr_28
/* 80024C0C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80024C10  7C 08 03 A6 */	mtlr r0
/* 80024C14  38 21 00 30 */	addi r1, r1, 0x30
/* 80024C18  4E 80 00 20 */	blr 
