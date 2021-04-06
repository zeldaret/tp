lbl_800ECF5C:
/* 800ECF5C  38 A0 00 00 */	li r5, 0
/* 800ECF60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800ECF64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800ECF68  80 04 5F 18 */	lwz r0, 0x5f18(r4)
/* 800ECF6C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 800ECF70  40 82 00 20 */	bne lbl_800ECF90
/* 800ECF74  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800ECF78  28 00 00 45 */	cmplwi r0, 0x45
/* 800ECF7C  41 82 00 14 */	beq lbl_800ECF90
/* 800ECF80  28 00 00 4A */	cmplwi r0, 0x4a
/* 800ECF84  41 82 00 0C */	beq lbl_800ECF90
/* 800ECF88  28 00 00 48 */	cmplwi r0, 0x48
/* 800ECF8C  40 82 00 08 */	bne lbl_800ECF94
lbl_800ECF90:
/* 800ECF90  38 A0 00 01 */	li r5, 1
lbl_800ECF94:
/* 800ECF94  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 800ECF98  4E 80 00 20 */	blr 
