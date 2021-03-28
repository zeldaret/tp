lbl_8009D354:
/* 8009D354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009D358  7C 08 02 A6 */	mflr r0
/* 8009D35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009D360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009D364  48 2A DE 65 */	bl DVDGetDriveStatus
/* 8009D368  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009D36C  41 82 00 20 */	beq lbl_8009D38C
/* 8009D370  2C 1F 00 01 */	cmpwi r31, 1
/* 8009D374  41 82 00 18 */	beq lbl_8009D38C
/* 8009D378  88 0D 8A 30 */	lbz r0, struct_80450FB0+0x0(r13)
/* 8009D37C  28 00 00 00 */	cmplwi r0, 0
/* 8009D380  40 82 00 0C */	bne lbl_8009D38C
/* 8009D384  38 00 00 01 */	li r0, 1
/* 8009D388  98 0D 8A 30 */	stb r0, struct_80450FB0+0x0(r13)
lbl_8009D38C:
/* 8009D38C  88 0D 8A 30 */	lbz r0, struct_80450FB0+0x0(r13)
/* 8009D390  28 00 00 00 */	cmplwi r0, 0
/* 8009D394  41 82 00 64 */	beq lbl_8009D3F8
/* 8009D398  3C 60 80 39 */	lis r3, d_d_error_msg__stringBase0@ha
/* 8009D39C  38 63 D6 40 */	addi r3, r3, d_d_error_msg__stringBase0@l
/* 8009D3A0  7F E4 FB 78 */	mr r4, r31
/* 8009D3A4  4C C6 31 82 */	crclr 6
/* 8009D3A8  4B F6 98 65 */	bl OSReport_Error
/* 8009D3AC  2C 1F 00 00 */	cmpwi r31, 0
/* 8009D3B0  40 82 00 10 */	bne lbl_8009D3C0
/* 8009D3B4  38 00 00 00 */	li r0, 0
/* 8009D3B8  98 0D 8A 30 */	stb r0, struct_80450FB0+0x0(r13)
/* 8009D3BC  48 00 00 3C */	b lbl_8009D3F8
lbl_8009D3C0:
/* 8009D3C0  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 8009D3C4  80 03 00 00 */	lwz r0, 0(r3)
/* 8009D3C8  2C 00 00 00 */	cmpwi r0, 0
/* 8009D3CC  41 82 00 24 */	beq lbl_8009D3F0
/* 8009D3D0  38 1F FF FC */	addi r0, r31, -4
/* 8009D3D4  28 00 00 02 */	cmplwi r0, 2
/* 8009D3D8  40 81 00 0C */	ble lbl_8009D3E4
/* 8009D3DC  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8009D3E0  40 82 00 10 */	bne lbl_8009D3F0
lbl_8009D3E4:
/* 8009D3E4  38 00 00 01 */	li r0, 1
/* 8009D3E8  98 03 00 11 */	stb r0, 0x11(r3)
/* 8009D3EC  48 00 00 0C */	b lbl_8009D3F8
lbl_8009D3F0:
/* 8009D3F0  7F E3 FB 78 */	mr r3, r31
/* 8009D3F4  4B FF FD A1 */	bl draw__14dDvdErrorMsg_cFl
lbl_8009D3F8:
/* 8009D3F8  88 6D 8A 30 */	lbz r3, struct_80450FB0+0x0(r13)
/* 8009D3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009D400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009D404  7C 08 03 A6 */	mtlr r0
/* 8009D408  38 21 00 10 */	addi r1, r1, 0x10
/* 8009D40C  4E 80 00 20 */	blr 
