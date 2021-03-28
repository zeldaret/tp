lbl_8015F730:
/* 8015F730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015F734  7C 08 02 A6 */	mflr r0
/* 8015F738  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015F73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015F740  4B FF FF 21 */	bl checkRoomRestartStart__9daPy_py_cFv
/* 8015F744  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8015F748  40 82 00 54 */	bne lbl_8015F79C
/* 8015F74C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F750  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F754  37 E3 4E 20 */	addic. r31, r3, 0x4e20
/* 8015F758  41 82 00 44 */	beq lbl_8015F79C
/* 8015F75C  7F E3 FB 78 */	mr r3, r31
/* 8015F760  81 9F 00 00 */	lwz r12, 0(r31)
/* 8015F764  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8015F768  7D 89 03 A6 */	mtctr r12
/* 8015F76C  4E 80 04 21 */	bctrl 
/* 8015F770  28 03 00 00 */	cmplwi r3, 0
/* 8015F774  41 82 00 28 */	beq lbl_8015F79C
/* 8015F778  7F E3 FB 78 */	mr r3, r31
/* 8015F77C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8015F780  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8015F784  7D 89 03 A6 */	mtctr r12
/* 8015F788  4E 80 04 21 */	bctrl 
/* 8015F78C  88 03 00 09 */	lbz r0, 9(r3)
/* 8015F790  54 00 FE FE */	rlwinm r0, r0, 0x1f, 0x1b, 0x1f
/* 8015F794  2C 00 00 17 */	cmpwi r0, 0x17
/* 8015F798  41 82 00 0C */	beq lbl_8015F7A4
lbl_8015F79C:
/* 8015F79C  38 60 00 00 */	li r3, 0
/* 8015F7A0  48 00 00 14 */	b lbl_8015F7B4
lbl_8015F7A4:
/* 8015F7A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F7A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F7AC  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 8015F7B0  54 03 03 18 */	rlwinm r3, r0, 0, 0xc, 0xc
lbl_8015F7B4:
/* 8015F7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015F7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015F7BC  7C 08 03 A6 */	mtlr r0
/* 8015F7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8015F7C4  4E 80 00 20 */	blr 
