lbl_80A43B40:
/* 80A43B40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A43B44  7C 08 02 A6 */	mflr r0
/* 80A43B48  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43B4C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A43B50  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A43B54  7C 7E 1B 78 */	mr r30, r3
/* 80A43B58  3C 60 80 A4 */	lis r3, m__17daNpc_Knj_Param_c@ha
/* 80A43B5C  3B E3 55 10 */	addi r31, r3, m__17daNpc_Knj_Param_c@l
/* 80A43B60  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80A43B64  38 80 00 00 */	li r4, 0
/* 80A43B68  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80A43B6C  7C A3 00 50 */	subf r5, r3, r0
/* 80A43B70  4B 5B F8 E8 */	b memset
/* 80A43B74  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A43B78  4B 70 1D 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A43B7C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A43B80  4B 70 1D 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A43B84  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A43B88  4B 70 1B 4C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A43B8C  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80A43B90  4B 70 1B 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A43B94  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A43B98  4B 70 31 00 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A43B9C  38 A0 00 00 */	li r5, 0
/* 80A43BA0  38 60 00 00 */	li r3, 0
/* 80A43BA4  7C A4 2B 78 */	mr r4, r5
/* 80A43BA8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A43BAC  38 00 00 02 */	li r0, 2
/* 80A43BB0  7C 09 03 A6 */	mtctr r0
lbl_80A43BB4:
/* 80A43BB4  7C DE 22 14 */	add r6, r30, r4
/* 80A43BB8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A43BBC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A43BC0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A43BC4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A43BC8  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80A43BCC  38 63 00 04 */	addi r3, r3, 4
/* 80A43BD0  38 84 00 06 */	addi r4, r4, 6
/* 80A43BD4  42 00 FF E0 */	bdnz lbl_80A43BB4
/* 80A43BD8  38 00 00 00 */	li r0, 0
/* 80A43BDC  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80A43BE0  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80A43BE4  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80A43BE8  38 00 FF FF */	li r0, -1
/* 80A43BEC  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80A43BF0  38 00 00 01 */	li r0, 1
/* 80A43BF4  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80A43BF8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A43BFC  4B 82 3D 58 */	b cM_rndF__Ff
/* 80A43C00  FC 00 08 1E */	fctiwz f0, f1
/* 80A43C04  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A43C08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A43C0C  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80A43C10  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80A43C14  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80A43C18  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80A43C1C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80A43C20  38 80 00 00 */	li r4, 0
/* 80A43C24  38 1E 0E 64 */	addi r0, r30, 0xe64
/* 80A43C28  7C A3 00 50 */	subf r5, r3, r0
/* 80A43C2C  4B 5B F8 2C */	b memset
/* 80A43C30  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80A43C34  28 03 00 00 */	cmplwi r3, 0
/* 80A43C38  41 82 00 08 */	beq lbl_80A43C40
/* 80A43C3C  4B 70 1B 28 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A43C40:
/* 80A43C40  7F C3 F3 78 */	mr r3, r30
/* 80A43C44  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A43C48  4B 70 6D D0 */	b setAngle__8daNpcT_cFs
/* 80A43C4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A43C50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A43C54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A43C58  7C 08 03 A6 */	mtlr r0
/* 80A43C5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A43C60  4E 80 00 20 */	blr 
