lbl_80A60B9C:
/* 80A60B9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A60BA0  7C 08 02 A6 */	mflr r0
/* 80A60BA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A60BA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60BAC  4B 90 16 30 */	b _savegpr_29
/* 80A60BB0  7C 7F 1B 78 */	mr r31, r3
/* 80A60BB4  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A60BB8  3B C3 38 AC */	addi r30, r3, m__19daNpc_Kyury_Param_c@l
/* 80A60BBC  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A60BC0  38 1F 0F D8 */	addi r0, r31, 0xfd8
/* 80A60BC4  7F A3 00 50 */	subf r29, r3, r0
/* 80A60BC8  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80A60BCC  28 03 00 00 */	cmplwi r3, 0
/* 80A60BD0  41 82 00 08 */	beq lbl_80A60BD8
/* 80A60BD4  4B 6E 4B 90 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A60BD8:
/* 80A60BD8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A60BDC  38 80 00 00 */	li r4, 0
/* 80A60BE0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A60BE4  7C A3 00 50 */	subf r5, r3, r0
/* 80A60BE8  4B 5A 28 70 */	b memset
/* 80A60BEC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A60BF0  4B 6E 4C A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A60BF4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A60BF8  4B 6E 4C A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A60BFC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A60C00  4B 6E 4A D4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A60C04  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A60C08  4B 6E 4A CC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A60C0C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A60C10  4B 6E 60 88 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A60C14  38 60 00 00 */	li r3, 0
/* 80A60C18  38 80 00 00 */	li r4, 0
/* 80A60C1C  7C 87 23 78 */	mr r7, r4
/* 80A60C20  7C 86 23 78 */	mr r6, r4
/* 80A60C24  7C 85 23 78 */	mr r5, r4
/* 80A60C28  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A60C2C  38 00 00 02 */	li r0, 2
/* 80A60C30  7C 09 03 A6 */	mtctr r0
lbl_80A60C34:
/* 80A60C34  7D 1F 22 14 */	add r8, r31, r4
/* 80A60C38  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80A60C3C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80A60C40  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80A60C44  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A60C48  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A60C4C  38 63 00 04 */	addi r3, r3, 4
/* 80A60C50  38 84 00 06 */	addi r4, r4, 6
/* 80A60C54  42 00 FF E0 */	bdnz lbl_80A60C34
/* 80A60C58  38 00 00 00 */	li r0, 0
/* 80A60C5C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A60C60  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A60C64  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A60C68  38 00 FF FF */	li r0, -1
/* 80A60C6C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A60C70  38 00 00 01 */	li r0, 1
/* 80A60C74  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A60C78  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A60C7C  4B 80 6C D8 */	b cM_rndF__Ff
/* 80A60C80  FC 00 08 1E */	fctiwz f0, f1
/* 80A60C84  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A60C88  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A60C8C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A60C90  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A60C94  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A60C98  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A60C9C  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A60CA0  4B 6E 4A 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A60CA4  38 7F 0F BC */	addi r3, r31, 0xfbc
/* 80A60CA8  38 80 00 00 */	li r4, 0
/* 80A60CAC  7F A5 EB 78 */	mr r5, r29
/* 80A60CB0  4B 5A 27 A8 */	b memset
/* 80A60CB4  88 1F 0F 88 */	lbz r0, 0xf88(r31)
/* 80A60CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A60CBC  41 82 00 0C */	beq lbl_80A60CC8
/* 80A60CC0  41 80 00 14 */	blt lbl_80A60CD4
/* 80A60CC4  48 00 00 10 */	b lbl_80A60CD4
lbl_80A60CC8:
/* 80A60CC8  38 00 00 01 */	li r0, 1
/* 80A60CCC  98 1F 0F D4 */	stb r0, 0xfd4(r31)
/* 80A60CD0  98 1F 0F D5 */	stb r0, 0xfd5(r31)
lbl_80A60CD4:
/* 80A60CD4  7F E3 FB 78 */	mr r3, r31
/* 80A60CD8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A60CDC  4B 6E 9D 3C */	b setAngle__8daNpcT_cFs
/* 80A60CE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A60CE4  4B 90 15 44 */	b _restgpr_29
/* 80A60CE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A60CEC  7C 08 03 A6 */	mtlr r0
/* 80A60CF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A60CF4  4E 80 00 20 */	blr 
