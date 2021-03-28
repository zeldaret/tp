lbl_80189F68:
/* 80189F68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80189F6C  7C 08 02 A6 */	mflr r0
/* 80189F70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80189F74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80189F78  7C 7F 1B 78 */	mr r31, r3
/* 80189F7C  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 80189F80  2C 03 00 00 */	cmpwi r3, 0
/* 80189F84  41 82 00 0C */	beq lbl_80189F90
/* 80189F88  38 03 FF FF */	addi r0, r3, -1
/* 80189F8C  B0 1F 03 AC */	sth r0, 0x3ac(r31)
lbl_80189F90:
/* 80189F90  38 00 00 AB */	li r0, 0xab
/* 80189F94  90 01 00 08 */	stw r0, 8(r1)
/* 80189F98  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80189F9C  38 81 00 08 */	addi r4, r1, 8
/* 80189FA0  38 A0 00 00 */	li r5, 0
/* 80189FA4  38 C0 00 00 */	li r6, 0
/* 80189FA8  38 E0 00 00 */	li r7, 0
/* 80189FAC  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 80189FB0  FC 40 08 90 */	fmr f2, f1
/* 80189FB4  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 80189FB8  FC 80 18 90 */	fmr f4, f3
/* 80189FBC  39 00 00 00 */	li r8, 0
/* 80189FC0  48 12 25 4D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80189FC4  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 80189FC8  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 80189FCC  4B E8 CD 15 */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 80189FD0  90 7F 03 B4 */	stw r3, 0x3b4(r31)
/* 80189FD4  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 80189FD8  2C 00 00 00 */	cmpwi r0, 0
/* 80189FDC  41 82 00 0C */	beq lbl_80189FE8
/* 80189FE0  38 00 00 20 */	li r0, 0x20
/* 80189FE4  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_80189FE8:
/* 80189FE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80189FEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80189FF0  7C 08 03 A6 */	mtlr r0
/* 80189FF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80189FF8  4E 80 00 20 */	blr 
