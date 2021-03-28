lbl_80AB6B0C:
/* 80AB6B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB6B10  7C 08 02 A6 */	mflr r0
/* 80AB6B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6B18  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6B1C  4B 8A B6 C0 */	b _savegpr_29
/* 80AB6B20  7C 7D 1B 78 */	mr r29, r3
/* 80AB6B24  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AB6B28  2C 00 00 02 */	cmpwi r0, 2
/* 80AB6B2C  41 82 00 28 */	beq lbl_80AB6B54
/* 80AB6B30  40 80 00 10 */	bge lbl_80AB6B40
/* 80AB6B34  2C 00 00 01 */	cmpwi r0, 1
/* 80AB6B38  40 80 00 14 */	bge lbl_80AB6B4C
/* 80AB6B3C  48 00 00 28 */	b lbl_80AB6B64
lbl_80AB6B40:
/* 80AB6B40  2C 00 00 04 */	cmpwi r0, 4
/* 80AB6B44  40 80 00 20 */	bge lbl_80AB6B64
/* 80AB6B48  48 00 00 14 */	b lbl_80AB6B5C
lbl_80AB6B4C:
/* 80AB6B4C  3B C0 00 04 */	li r30, 4
/* 80AB6B50  48 00 00 18 */	b lbl_80AB6B68
lbl_80AB6B54:
/* 80AB6B54  3B C0 00 05 */	li r30, 5
/* 80AB6B58  48 00 00 10 */	b lbl_80AB6B68
lbl_80AB6B5C:
/* 80AB6B5C  3B C0 00 06 */	li r30, 6
/* 80AB6B60  48 00 00 08 */	b lbl_80AB6B68
lbl_80AB6B64:
/* 80AB6B64  3B C0 00 07 */	li r30, 7
lbl_80AB6B68:
/* 80AB6B68  2C 1E 00 00 */	cmpwi r30, 0
/* 80AB6B6C  41 80 00 2C */	blt lbl_80AB6B98
/* 80AB6B70  7C 1E 00 00 */	cmpw r30, r0
/* 80AB6B74  41 82 00 24 */	beq lbl_80AB6B98
/* 80AB6B78  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80AB6B7C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AB6B80  4B 68 ED 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB6B84  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80AB6B88  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80AB6B8C  3C 60 80 AC */	lis r3, lit_4579@ha
/* 80AB6B90  C0 03 8F 7C */	lfs f0, lit_4579@l(r3)
/* 80AB6B94  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AB6B98:
/* 80AB6B98  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB6B9C  4B 8A B6 8C */	b _restgpr_29
/* 80AB6BA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB6BA4  7C 08 03 A6 */	mtlr r0
/* 80AB6BA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB6BAC  4E 80 00 20 */	blr 
