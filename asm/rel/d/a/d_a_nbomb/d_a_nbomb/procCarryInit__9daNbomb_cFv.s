lbl_804C93E0:
/* 804C93E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C93E4  7C 08 02 A6 */	mflr r0
/* 804C93E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C93EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C93F0  93 C1 00 08 */	stw r30, 8(r1)
/* 804C93F4  7C 7E 1B 78 */	mr r30, r3
/* 804C93F8  3C 60 80 4D */	lis r3, lit_5462@ha /* 0x804CC548@ha */
/* 804C93FC  38 83 C5 48 */	addi r4, r3, lit_5462@l /* 0x804CC548@l */
/* 804C9400  80 64 00 00 */	lwz r3, 0(r4)
/* 804C9404  80 04 00 04 */	lwz r0, 4(r4)
/* 804C9408  90 7E 0C 38 */	stw r3, 0xc38(r30)
/* 804C940C  90 1E 0C 3C */	stw r0, 0xc3c(r30)
/* 804C9410  80 04 00 08 */	lwz r0, 8(r4)
/* 804C9414  90 1E 0C 40 */	stw r0, 0xc40(r30)
/* 804C9418  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C941C  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 804C9420  90 1E 0B 4C */	stw r0, 0xb4c(r30)
/* 804C9424  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C9428  3B E3 0C F4 */	addi r31, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 804C942C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804C9430  D0 1E 0C 20 */	stfs f0, 0xc20(r30)
/* 804C9434  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C9438  D0 1E 0C 24 */	stfs f0, 0xc24(r30)
/* 804C943C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C9440  D0 1E 0C 28 */	stfs f0, 0xc28(r30)
/* 804C9444  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804C9448  D0 1E 0C 2C */	stfs f0, 0xc2c(r30)
/* 804C944C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C9450  D0 1E 0C 30 */	stfs f0, 0xc30(r30)
/* 804C9454  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C9458  D0 1E 0C 34 */	stfs f0, 0xc34(r30)
/* 804C945C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 804C9460  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 804C9464  41 82 00 10 */	beq lbl_804C9474
/* 804C9468  38 00 00 02 */	li r0, 2
/* 804C946C  90 1E 00 B0 */	stw r0, 0xb0(r30)
/* 804C9470  48 00 00 0C */	b lbl_804C947C
lbl_804C9474:
/* 804C9474  38 00 00 01 */	li r0, 1
/* 804C9478  90 1E 00 B0 */	stw r0, 0xb0(r30)
lbl_804C947C:
/* 804C947C  80 1E 0B 4C */	lwz r0, 0xb4c(r30)
/* 804C9480  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804C9484  41 82 00 7C */	beq lbl_804C9500
/* 804C9488  4B BD 43 FD */	bl getAlinkArcName__9daAlink_cFv
/* 804C948C  38 80 00 15 */	li r4, 0x15
/* 804C9490  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C9494  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C9498  3C A5 00 02 */	addis r5, r5, 2
/* 804C949C  38 C0 00 80 */	li r6, 0x80
/* 804C94A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804C94A4  4B B7 2E 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804C94A8  7C 64 1B 78 */	mr r4, r3
/* 804C94AC  80 7E 0A 3C */	lwz r3, 0xa3c(r30)
/* 804C94B0  38 A0 00 01 */	li r5, 1
/* 804C94B4  38 C0 FF FF */	li r6, -1
/* 804C94B8  3C E0 80 4D */	lis r7, lit_4216@ha /* 0x804CC37C@ha */
/* 804C94BC  C0 27 C3 7C */	lfs f1, lit_4216@l(r7)  /* 0x804CC37C@l */
/* 804C94C0  38 E0 00 00 */	li r7, 0
/* 804C94C4  39 00 FF FF */	li r8, -1
/* 804C94C8  39 20 00 01 */	li r9, 1
/* 804C94CC  4B B4 43 11 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804C94D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C94D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C94D8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804C94DC  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 804C94E0  38 00 00 00 */	li r0, 0
/* 804C94E4  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 804C94E8  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 804C94EC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 804C94F0  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 804C94F4  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 804C94F8  38 9E 0A 40 */	addi r4, r30, 0xa40
/* 804C94FC  4B E7 CF B5 */	bl PSMTXCopy
lbl_804C9500:
/* 804C9500  3C 60 80 4D */	lis r3, lit_4255@ha /* 0x804CC380@ha */
/* 804C9504  C0 03 C3 80 */	lfs f0, lit_4255@l(r3)  /* 0x804CC380@l */
/* 804C9508  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804C950C  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 804C9510  C0 03 0C F4 */	lfs f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 804C9514  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 804C9518  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C951C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804C9520  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804C9524  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 804C9528  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804C952C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804C9530  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804C9534  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 804C9538  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804C953C  90 1E 07 F8 */	stw r0, 0x7f8(r30)
/* 804C9540  38 60 00 01 */	li r3, 1
/* 804C9544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C9548  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C954C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C9550  7C 08 03 A6 */	mtlr r0
/* 804C9554  38 21 00 10 */	addi r1, r1, 0x10
/* 804C9558  4E 80 00 20 */	blr 
