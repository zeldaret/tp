lbl_80B27B3C:
/* 80B27B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B27B40  7C 08 02 A6 */	mflr r0
/* 80B27B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B27B48  39 61 00 20 */	addi r11, r1, 0x20
/* 80B27B4C  4B 83 A6 90 */	b _savegpr_29
/* 80B27B50  7C 7D 1B 78 */	mr r29, r3
/* 80B27B54  3B C0 00 11 */	li r30, 0x11
/* 80B27B58  80 83 0B 58 */	lwz r4, 0xb58(r3)
/* 80B27B5C  28 04 00 0B */	cmplwi r4, 0xb
/* 80B27B60  41 81 00 48 */	bgt lbl_80B27BA8
/* 80B27B64  3C 60 80 B3 */	lis r3, lit_4714@ha
/* 80B27B68  38 63 DA B4 */	addi r3, r3, lit_4714@l
/* 80B27B6C  54 80 10 3A */	slwi r0, r4, 2
/* 80B27B70  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B27B74  7C 09 03 A6 */	mtctr r0
/* 80B27B78  4E 80 04 20 */	bctr 
lbl_80B27B7C:
/* 80B27B7C  3B C0 00 0A */	li r30, 0xa
/* 80B27B80  48 00 00 28 */	b lbl_80B27BA8
lbl_80B27B84:
/* 80B27B84  48 00 00 54 */	b lbl_80B27BD8
lbl_80B27B88:
/* 80B27B88  48 00 00 50 */	b lbl_80B27BD8
lbl_80B27B8C:
/* 80B27B8C  3B C0 00 0F */	li r30, 0xf
/* 80B27B90  48 00 00 18 */	b lbl_80B27BA8
lbl_80B27B94:
/* 80B27B94  3B C0 00 0A */	li r30, 0xa
/* 80B27B98  48 00 00 10 */	b lbl_80B27BA8
lbl_80B27B9C:
/* 80B27B9C  3B C0 00 0C */	li r30, 0xc
/* 80B27BA0  48 00 00 08 */	b lbl_80B27BA8
lbl_80B27BA4:
/* 80B27BA4  3B C0 00 10 */	li r30, 0x10
lbl_80B27BA8:
/* 80B27BA8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B27BAC  41 80 00 2C */	blt lbl_80B27BD8
/* 80B27BB0  7C 1E 20 00 */	cmpw r30, r4
/* 80B27BB4  41 82 00 24 */	beq lbl_80B27BD8
/* 80B27BB8  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80B27BBC  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B27BC0  4B 61 DC D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B27BC4  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80B27BC8  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80B27BCC  3C 60 80 B3 */	lis r3, lit_4713@ha
/* 80B27BD0  C0 03 CF 04 */	lfs f0, lit_4713@l(r3)
/* 80B27BD4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B27BD8:
/* 80B27BD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B27BDC  4B 83 A6 4C */	b _restgpr_29
/* 80B27BE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B27BE4  7C 08 03 A6 */	mtlr r0
/* 80B27BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B27BEC  4E 80 00 20 */	blr 
