lbl_804D51E0:
/* 804D51E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D51E4  7C 08 02 A6 */	mflr r0
/* 804D51E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D51EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D51F0  7C 7F 1B 78 */	mr r31, r3
/* 804D51F4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 804D51F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D51FC  40 82 00 1C */	bne lbl_804D5218
/* 804D5200  28 1F 00 00 */	cmplwi r31, 0
/* 804D5204  41 82 00 08 */	beq lbl_804D520C
/* 804D5208  4B B4 39 5C */	b __ct__10fopAc_ac_cFv
lbl_804D520C:
/* 804D520C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804D5210  60 00 00 08 */	ori r0, r0, 8
/* 804D5214  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804D5218:
/* 804D5218  7F E3 FB 78 */	mr r3, r31
/* 804D521C  4B FF FE FD */	bl create__7daSus_cFv
/* 804D5220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D5228  7C 08 03 A6 */	mtlr r0
/* 804D522C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5230  4E 80 00 20 */	blr 
