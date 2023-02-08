lbl_80963B30:
/* 80963B30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80963B34  7C 08 02 A6 */	mflr r0
/* 80963B38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80963B3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80963B40  4B 9F E6 9D */	bl _savegpr_29
/* 80963B44  7C 7D 1B 78 */	mr r29, r3
/* 80963B48  3B C0 00 03 */	li r30, 3
/* 80963B4C  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80963B50  2C 00 00 01 */	cmpwi r0, 1
/* 80963B54  41 82 00 08 */	beq lbl_80963B5C
/* 80963B58  48 00 00 08 */	b lbl_80963B60
lbl_80963B5C:
/* 80963B5C  3B C0 00 02 */	li r30, 2
lbl_80963B60:
/* 80963B60  2C 1E 00 00 */	cmpwi r30, 0
/* 80963B64  41 80 00 2C */	blt lbl_80963B90
/* 80963B68  7C 1E 00 00 */	cmpw r30, r0
/* 80963B6C  41 82 00 24 */	beq lbl_80963B90
/* 80963B70  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80963B74  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80963B78  4B 7E 1D 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80963B7C  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80963B80  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80963B84  3C 60 80 96 */	lis r3, lit_4761@ha /* 0x80967F00@ha */
/* 80963B88  C0 03 7F 00 */	lfs f0, lit_4761@l(r3)  /* 0x80967F00@l */
/* 80963B8C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80963B90:
/* 80963B90  39 61 00 20 */	addi r11, r1, 0x20
/* 80963B94  4B 9F E6 95 */	bl _restgpr_29
/* 80963B98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80963B9C  7C 08 03 A6 */	mtlr r0
/* 80963BA0  38 21 00 20 */	addi r1, r1, 0x20
/* 80963BA4  4E 80 00 20 */	blr 
