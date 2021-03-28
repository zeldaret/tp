lbl_80AC7ACC:
/* 80AC7ACC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC7AD0  7C 08 02 A6 */	mflr r0
/* 80AC7AD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC7AD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC7ADC  4B 89 A7 00 */	b _savegpr_29
/* 80AC7AE0  7C 7F 1B 78 */	mr r31, r3
/* 80AC7AE4  3C 60 80 AD */	lis r3, m__18daNpc_seiC_Param_c@ha
/* 80AC7AE8  3B C3 92 1C */	addi r30, r3, m__18daNpc_seiC_Param_c@l
/* 80AC7AEC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC7AF0  38 80 00 00 */	li r4, 0
/* 80AC7AF4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC7AF8  7C A3 00 50 */	subf r5, r3, r0
/* 80AC7AFC  4B 53 B9 5C */	b memset
/* 80AC7B00  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC7B04  4B 67 DD 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC7B08  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC7B0C  4B 67 DD 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC7B10  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC7B14  4B 67 DB C0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC7B18  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC7B1C  4B 67 DB B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AC7B20  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AC7B24  4B 67 F1 74 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AC7B28  38 A0 00 00 */	li r5, 0
/* 80AC7B2C  38 60 00 00 */	li r3, 0
/* 80AC7B30  7C A4 2B 78 */	mr r4, r5
/* 80AC7B34  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80AC7B38  38 00 00 02 */	li r0, 2
/* 80AC7B3C  7C 09 03 A6 */	mtctr r0
lbl_80AC7B40:
/* 80AC7B40  7C DF 22 14 */	add r6, r31, r4
/* 80AC7B44  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC7B48  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC7B4C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC7B50  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC7B54  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC7B58  38 63 00 04 */	addi r3, r3, 4
/* 80AC7B5C  38 84 00 06 */	addi r4, r4, 6
/* 80AC7B60  42 00 FF E0 */	bdnz lbl_80AC7B40
/* 80AC7B64  38 00 00 00 */	li r0, 0
/* 80AC7B68  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC7B6C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC7B70  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC7B74  38 00 FF FF */	li r0, -1
/* 80AC7B78  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC7B7C  38 00 00 01 */	li r0, 1
/* 80AC7B80  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC7B84  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80AC7B88  4B 79 FD CC */	b cM_rndF__Ff
/* 80AC7B8C  FC 00 08 1E */	fctiwz f0, f1
/* 80AC7B90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC7B94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC7B98  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC7B9C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AC7BA0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC7BA4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC7BA8  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80AC7BAC  38 80 00 00 */	li r4, 0
/* 80AC7BB0  38 1F 0E 60 */	addi r0, r31, 0xe60
/* 80AC7BB4  7C A3 00 50 */	subf r5, r3, r0
/* 80AC7BB8  4B 53 B8 A0 */	b memset
/* 80AC7BBC  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AC7BC0  28 03 00 00 */	cmplwi r3, 0
/* 80AC7BC4  41 82 00 08 */	beq lbl_80AC7BCC
/* 80AC7BC8  4B 67 DB 9C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80AC7BCC:
/* 80AC7BCC  7F E3 FB 78 */	mr r3, r31
/* 80AC7BD0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AC7BD4  4B 68 2E 44 */	b setAngle__8daNpcT_cFs
/* 80AC7BD8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AC7BDC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC7BE0  41 82 00 24 */	beq lbl_80AC7C04
/* 80AC7BE4  83 BF 0B 80 */	lwz r29, 0xb80(r31)
/* 80AC7BE8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC7BEC  4B 67 DC AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC7BF0  93 BF 0B 80 */	stw r29, 0xb80(r31)
/* 80AC7BF4  38 00 00 00 */	li r0, 0
/* 80AC7BF8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AC7BFC  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AC7C00  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AC7C04:
/* 80AC7C04  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC7C08  4B 89 A6 20 */	b _restgpr_29
/* 80AC7C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC7C10  7C 08 03 A6 */	mtlr r0
/* 80AC7C14  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC7C18  4E 80 00 20 */	blr 
