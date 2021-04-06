lbl_800D7768:
/* 800D7768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D776C  7C 08 02 A6 */	mflr r0
/* 800D7770  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D7774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D7778  7C 7F 1B 78 */	mr r31, r3
/* 800D777C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D7780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D7784  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800D7788  7F E4 FB 78 */	mr r4, r31
/* 800D778C  4B F9 D6 C5 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800D7790  2C 03 00 08 */	cmpwi r3, 8
/* 800D7794  40 82 00 1C */	bne lbl_800D77B0
/* 800D7798  7F E3 FB 78 */	mr r3, r31
/* 800D779C  48 0D 3E 01 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800D77A0  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 800D77A4  41 82 00 0C */	beq lbl_800D77B0
/* 800D77A8  38 60 00 01 */	li r3, 1
/* 800D77AC  48 00 00 08 */	b lbl_800D77B4
lbl_800D77B0:
/* 800D77B0  38 60 00 00 */	li r3, 0
lbl_800D77B4:
/* 800D77B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D77B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D77BC  7C 08 03 A6 */	mtlr r0
/* 800D77C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800D77C4  4E 80 00 20 */	blr 
