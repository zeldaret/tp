lbl_80B75B30:
/* 80B75B30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B75B34  7C 08 02 A6 */	mflr r0
/* 80B75B38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B75B3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B75B40  4B 7E C6 94 */	b _savegpr_27
/* 80B75B44  7C 7F 1B 78 */	mr r31, r3
/* 80B75B48  3C 60 80 B7 */	lis r3, m__19daNpc_Zelda_Param_c@ha
/* 80B75B4C  3B A3 7F C8 */	addi r29, r3, m__19daNpc_Zelda_Param_c@l
/* 80B75B50  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B75B54  38 1F 0F 9C */	addi r0, r31, 0xf9c
/* 80B75B58  7F 83 00 50 */	subf r28, r3, r0
/* 80B75B5C  3B 60 00 00 */	li r27, 0
/* 80B75B60  3B C0 00 00 */	li r30, 0
lbl_80B75B64:
/* 80B75B64  38 1E 09 6C */	addi r0, r30, 0x96c
/* 80B75B68  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80B75B6C  28 03 00 00 */	cmplwi r3, 0
/* 80B75B70  41 82 00 08 */	beq lbl_80B75B78
/* 80B75B74  4B 5C FB F0 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B75B78:
/* 80B75B78  3B 7B 00 01 */	addi r27, r27, 1
/* 80B75B7C  2C 1B 00 02 */	cmpwi r27, 2
/* 80B75B80  3B DE 00 04 */	addi r30, r30, 4
/* 80B75B84  41 80 FF E0 */	blt lbl_80B75B64
/* 80B75B88  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B75B8C  38 80 00 00 */	li r4, 0
/* 80B75B90  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B75B94  7C A3 00 50 */	subf r5, r3, r0
/* 80B75B98  4B 48 D8 C0 */	b memset
/* 80B75B9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B75BA0  4B 5C FC F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B75BA4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B75BA8  4B 5C FC F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B75BAC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B75BB0  4B 5C FB 24 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B75BB4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B75BB8  4B 5C FB 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B75BBC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B75BC0  4B 5D 10 D8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B75BC4  38 60 00 00 */	li r3, 0
/* 80B75BC8  38 80 00 00 */	li r4, 0
/* 80B75BCC  38 A0 00 00 */	li r5, 0
/* 80B75BD0  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 80B75BD4  38 00 00 02 */	li r0, 2
/* 80B75BD8  7C 09 03 A6 */	mtctr r0
lbl_80B75BDC:
/* 80B75BDC  7C DF 22 14 */	add r6, r31, r4
/* 80B75BE0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B75BE4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B75BE8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B75BEC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B75BF0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B75BF4  38 63 00 04 */	addi r3, r3, 4
/* 80B75BF8  38 84 00 06 */	addi r4, r4, 6
/* 80B75BFC  42 00 FF E0 */	bdnz lbl_80B75BDC
/* 80B75C00  38 00 00 00 */	li r0, 0
/* 80B75C04  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B75C08  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B75C0C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B75C10  38 00 FF FF */	li r0, -1
/* 80B75C14  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B75C18  38 00 00 01 */	li r0, 1
/* 80B75C1C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B75C20  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80B75C24  4B 6F 1D 30 */	b cM_rndF__Ff
/* 80B75C28  FC 00 08 1E */	fctiwz f0, f1
/* 80B75C2C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B75C30  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B75C34  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B75C38  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B75C3C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B75C40  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B75C44  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B75C48  38 80 00 00 */	li r4, 0
/* 80B75C4C  7F 85 E3 78 */	mr r5, r28
/* 80B75C50  4B 48 D8 08 */	b memset
/* 80B75C54  38 60 00 00 */	li r3, 0
/* 80B75C58  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B75C5C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B75C60  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B75C64  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80B75C68  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B75C6C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B75C70  90 01 00 08 */	stw r0, 8(r1)
/* 80B75C74  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80B75C78  7F E3 FB 78 */	mr r3, r31
/* 80B75C7C  38 81 00 08 */	addi r4, r1, 8
/* 80B75C80  4B 5D 4D 1C */	b setAngle__8daNpcT_cF5csXyz
/* 80B75C84  39 61 00 40 */	addi r11, r1, 0x40
/* 80B75C88  4B 7E C5 98 */	b _restgpr_27
/* 80B75C8C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B75C90  7C 08 03 A6 */	mtlr r0
/* 80B75C94  38 21 00 40 */	addi r1, r1, 0x40
/* 80B75C98  4E 80 00 20 */	blr 
