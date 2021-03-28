lbl_80AC9C0C:
/* 80AC9C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC9C10  7C 08 02 A6 */	mflr r0
/* 80AC9C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC9C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC9C1C  4B 89 85 C0 */	b _savegpr_29
/* 80AC9C20  7C 7F 1B 78 */	mr r31, r3
/* 80AC9C24  3C 60 80 AD */	lis r3, m__18daNpc_seiD_Param_c@ha
/* 80AC9C28  3B C3 B3 5C */	addi r30, r3, m__18daNpc_seiD_Param_c@l
/* 80AC9C2C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC9C30  38 80 00 00 */	li r4, 0
/* 80AC9C34  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC9C38  7C A3 00 50 */	subf r5, r3, r0
/* 80AC9C3C  4B 53 98 1C */	b memset
/* 80AC9C40  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC9C44  4B 67 BC 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC9C48  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC9C4C  4B 67 BC 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC9C50  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC9C54  4B 67 BA 80 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC9C58  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC9C5C  4B 67 BA 78 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC9C60  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC9C64  4B 67 D0 34 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AC9C68  38 A0 00 00 */	li r5, 0
/* 80AC9C6C  38 60 00 00 */	li r3, 0
/* 80AC9C70  7C A4 2B 78 */	mr r4, r5
/* 80AC9C74  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80AC9C78  38 00 00 02 */	li r0, 2
/* 80AC9C7C  7C 09 03 A6 */	mtctr r0
lbl_80AC9C80:
/* 80AC9C80  7C DF 22 14 */	add r6, r31, r4
/* 80AC9C84  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC9C88  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC9C8C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC9C90  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC9C94  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC9C98  38 63 00 04 */	addi r3, r3, 4
/* 80AC9C9C  38 84 00 06 */	addi r4, r4, 6
/* 80AC9CA0  42 00 FF E0 */	bdnz lbl_80AC9C80
/* 80AC9CA4  38 00 00 00 */	li r0, 0
/* 80AC9CA8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC9CAC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC9CB0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC9CB4  38 00 FF FF */	li r0, -1
/* 80AC9CB8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC9CBC  38 00 00 01 */	li r0, 1
/* 80AC9CC0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC9CC4  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80AC9CC8  4B 79 DC 8C */	b cM_rndF__Ff
/* 80AC9CCC  FC 00 08 1E */	fctiwz f0, f1
/* 80AC9CD0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC9CD4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC9CD8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC9CDC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AC9CE0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC9CE4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC9CE8  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AC9CEC  38 80 00 00 */	li r4, 0
/* 80AC9CF0  38 1F 0E 60 */	addi r0, r31, 0xe60
/* 80AC9CF4  7C A3 00 50 */	subf r5, r3, r0
/* 80AC9CF8  4B 53 97 60 */	b memset
/* 80AC9CFC  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AC9D00  28 03 00 00 */	cmplwi r3, 0
/* 80AC9D04  41 82 00 08 */	beq lbl_80AC9D0C
/* 80AC9D08  4B 67 BA 5C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AC9D0C:
/* 80AC9D0C  7F E3 FB 78 */	mr r3, r31
/* 80AC9D10  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AC9D14  4B 68 0D 04 */	b setAngle__8daNpcT_cFs
/* 80AC9D18  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC9D1C  2C 00 00 00 */	cmpwi r0, 0
/* 80AC9D20  41 82 00 24 */	beq lbl_80AC9D44
/* 80AC9D24  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC9D28  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC9D2C  4B 67 BB 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC9D30  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC9D34  38 00 00 00 */	li r0, 0
/* 80AC9D38  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC9D3C  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AC9D40  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC9D44:
/* 80AC9D44  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC9D48  4B 89 84 E0 */	b _restgpr_29
/* 80AC9D4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC9D50  7C 08 03 A6 */	mtlr r0
/* 80AC9D54  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC9D58  4E 80 00 20 */	blr 
