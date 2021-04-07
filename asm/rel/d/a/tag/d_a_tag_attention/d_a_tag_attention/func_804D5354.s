lbl_804D5354:
/* 804D5354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D5358  7C 08 02 A6 */	mflr r0
/* 804D535C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5364  7C 7F 1B 78 */	mr r31, r3
/* 804D5368  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D536C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D5370  40 82 00 1C */	bne lbl_804D538C
/* 804D5374  28 1F 00 00 */	cmplwi r31, 0
/* 804D5378  41 82 00 08 */	beq lbl_804D5380
/* 804D537C  4B B4 37 E9 */	bl __ct__10fopAc_ac_cFv
lbl_804D5380:
/* 804D5380  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804D5384  60 00 00 08 */	ori r0, r0, 8
/* 804D5388  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804D538C:
/* 804D538C  7F E3 FB 78 */	mr r3, r31
/* 804D5390  4B FF FF 89 */	bl Create__8daAttp_cFv
/* 804D5394  38 60 00 04 */	li r3, 4
/* 804D5398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D539C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D53A0  7C 08 03 A6 */	mtlr r0
/* 804D53A4  38 21 00 10 */	addi r1, r1, 0x10
/* 804D53A8  4E 80 00 20 */	blr 
