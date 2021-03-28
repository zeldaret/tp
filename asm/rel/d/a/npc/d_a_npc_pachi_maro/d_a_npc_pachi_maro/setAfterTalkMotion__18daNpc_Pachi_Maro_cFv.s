lbl_80A98974:
/* 80A98974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A98978  7C 08 02 A6 */	mflr r0
/* 80A9897C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A98980  39 61 00 20 */	addi r11, r1, 0x20
/* 80A98984  4B 8C 98 58 */	b _savegpr_29
/* 80A98988  7C 7D 1B 78 */	mr r29, r3
/* 80A9898C  3B C0 00 09 */	li r30, 9
/* 80A98990  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80A98994  2C 00 00 03 */	cmpwi r0, 3
/* 80A98998  41 82 00 24 */	beq lbl_80A989BC
/* 80A9899C  40 80 00 10 */	bge lbl_80A989AC
/* 80A989A0  2C 00 00 01 */	cmpwi r0, 1
/* 80A989A4  41 82 00 54 */	beq lbl_80A989F8
/* 80A989A8  48 00 00 20 */	b lbl_80A989C8
lbl_80A989AC:
/* 80A989AC  2C 00 00 05 */	cmpwi r0, 5
/* 80A989B0  40 80 00 18 */	bge lbl_80A989C8
/* 80A989B4  48 00 00 10 */	b lbl_80A989C4
/* 80A989B8  48 00 00 40 */	b lbl_80A989F8
lbl_80A989BC:
/* 80A989BC  3B C0 00 07 */	li r30, 7
/* 80A989C0  48 00 00 08 */	b lbl_80A989C8
lbl_80A989C4:
/* 80A989C4  3B C0 00 08 */	li r30, 8
lbl_80A989C8:
/* 80A989C8  2C 1E 00 00 */	cmpwi r30, 0
/* 80A989CC  41 80 00 2C */	blt lbl_80A989F8
/* 80A989D0  7C 1E 00 00 */	cmpw r30, r0
/* 80A989D4  41 82 00 24 */	beq lbl_80A989F8
/* 80A989D8  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80A989DC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80A989E0  4B 6A CE B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A989E4  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80A989E8  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80A989EC  3C 60 80 AA */	lis r3, lit_4673@ha
/* 80A989F0  C0 03 B9 4C */	lfs f0, lit_4673@l(r3)
/* 80A989F4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80A989F8:
/* 80A989F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A989FC  4B 8C 98 2C */	b _restgpr_29
/* 80A98A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A98A04  7C 08 03 A6 */	mtlr r0
/* 80A98A08  38 21 00 20 */	addi r1, r1, 0x20
/* 80A98A0C  4E 80 00 20 */	blr 
