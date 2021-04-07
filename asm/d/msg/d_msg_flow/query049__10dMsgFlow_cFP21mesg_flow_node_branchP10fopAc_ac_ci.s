lbl_8024C2A0:
/* 8024C2A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8024C2A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8024C2A8  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 8024C2AC  28 00 00 00 */	cmplwi r0, 0
/* 8024C2B0  40 82 00 0C */	bne lbl_8024C2BC
/* 8024C2B4  38 00 00 00 */	li r0, 0
/* 8024C2B8  48 00 00 3C */	b lbl_8024C2F4
lbl_8024C2BC:
/* 8024C2BC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8024C2C0  28 00 00 13 */	cmplwi r0, 0x13
/* 8024C2C4  41 81 00 0C */	bgt lbl_8024C2D0
/* 8024C2C8  38 00 00 01 */	li r0, 1
/* 8024C2CC  48 00 00 28 */	b lbl_8024C2F4
lbl_8024C2D0:
/* 8024C2D0  28 00 00 27 */	cmplwi r0, 0x27
/* 8024C2D4  41 81 00 0C */	bgt lbl_8024C2E0
/* 8024C2D8  38 00 00 02 */	li r0, 2
/* 8024C2DC  48 00 00 18 */	b lbl_8024C2F4
lbl_8024C2E0:
/* 8024C2E0  28 00 00 3B */	cmplwi r0, 0x3b
/* 8024C2E4  41 81 00 0C */	bgt lbl_8024C2F0
/* 8024C2E8  38 00 00 03 */	li r0, 3
/* 8024C2EC  48 00 00 08 */	b lbl_8024C2F4
lbl_8024C2F0:
/* 8024C2F0  38 00 00 04 */	li r0, 4
lbl_8024C2F4:
/* 8024C2F4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8024C2F8  4E 80 00 20 */	blr 
