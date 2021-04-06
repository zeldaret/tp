lbl_80015DA4:
/* 80015DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015DA8  7C 08 02 A6 */	mflr r0
/* 80015DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80015DB8  7C 7E 1B 78 */	mr r30, r3
/* 80015DBC  7C 9F 23 78 */	mr r31, r4
/* 80015DC0  4B FF FD B5 */	bl __ct__19mDoDvdThd_command_cFv
/* 80015DC4  3C 60 80 3A */	lis r3, __vt__24mDoDvdThd_mountArchive_c@ha /* 0x803A34C8@ha */
/* 80015DC8  38 03 34 C8 */	addi r0, r3, __vt__24mDoDvdThd_mountArchive_c@l /* 0x803A34C8@l */
/* 80015DCC  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80015DD0  9B FE 00 14 */	stb r31, 0x14(r30)
/* 80015DD4  38 00 FF FF */	li r0, -1
/* 80015DD8  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80015DDC  38 00 00 00 */	li r0, 0
/* 80015DE0  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 80015DE4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80015DE8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80015DEC  40 82 00 0C */	bne lbl_80015DF8
/* 80015DF0  88 0D 87 01 */	lbz r0, struct_80450C80+0x1(r13)
/* 80015DF4  98 1E 00 14 */	stb r0, 0x14(r30)
lbl_80015DF8:
/* 80015DF8  7F C3 F3 78 */	mr r3, r30
/* 80015DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015E00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015E08  7C 08 03 A6 */	mtlr r0
/* 80015E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80015E10  4E 80 00 20 */	blr 
