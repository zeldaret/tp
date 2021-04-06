lbl_8015F698:
/* 8015F698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F69C  7C 08 02 A6 */	mflr r0
/* 8015F6A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F6A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015F6A8  4B FF FF B9 */	bl checkRoomRestartStart__9daPy_py_cFv
/* 8015F6AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015F6B0  40 82 00 54 */	bne lbl_8015F704
/* 8015F6B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F6B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F6BC  37 E3 4E 20 */	addic. r31, r3, 0x4e20
/* 8015F6C0  41 82 00 44 */	beq lbl_8015F704
/* 8015F6C4  7F E3 FB 78 */	mr r3, r31
/* 8015F6C8  81 9F 00 00 */	lwz r12, 0(r31)
/* 8015F6CC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8015F6D0  7D 89 03 A6 */	mtctr r12
/* 8015F6D4  4E 80 04 21 */	bctrl 
/* 8015F6D8  28 03 00 00 */	cmplwi r3, 0
/* 8015F6DC  41 82 00 28 */	beq lbl_8015F704
/* 8015F6E0  7F E3 FB 78 */	mr r3, r31
/* 8015F6E4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8015F6E8  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8015F6EC  7D 89 03 A6 */	mtctr r12
/* 8015F6F0  4E 80 04 21 */	bctrl 
/* 8015F6F4  88 03 00 09 */	lbz r0, 9(r3)
/* 8015F6F8  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8015F6FC  2C 00 00 17 */	cmpwi r0, 0x17
/* 8015F700  41 82 00 0C */	beq lbl_8015F70C
lbl_8015F704:
/* 8015F704  38 60 00 00 */	li r3, 0
/* 8015F708  48 00 00 14 */	b lbl_8015F71C
lbl_8015F70C:
/* 8015F70C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8015F710  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8015F714  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 8015F718  54 03 02 D6 */	rlwinm r3, r0, 0, 0xb, 0xb
lbl_8015F71C:
/* 8015F71C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F724  7C 08 03 A6 */	mtlr r0
/* 8015F728  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F72C  4E 80 00 20 */	blr 
