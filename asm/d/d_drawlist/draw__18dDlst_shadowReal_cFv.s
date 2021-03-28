lbl_800545D4:
/* 800545D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800545D8  7C 08 02 A6 */	mflr r0
/* 800545DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800545E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800545E4  7C 7F 1B 78 */	mr r31, r3
/* 800545E8  88 03 00 01 */	lbz r0, 1(r3)
/* 800545EC  38 6D 80 CC */	la r3, l_color_5004(r13) /* 8045064C-_SDA_BASE_ */
/* 800545F0  98 03 00 03 */	stb r0, 3(r3)
/* 800545F4  80 0D 80 CC */	lwz r0, l_color_5004(r13)
/* 800545F8  90 01 00 08 */	stw r0, 8(r1)
/* 800545FC  38 60 00 01 */	li r3, 1
/* 80054600  38 81 00 08 */	addi r4, r1, 8
/* 80054604  48 30 AD 79 */	bl GXSetTevColor
/* 80054608  3C 60 80 3B */	lis r3, l_shadowProjMat@ha
/* 8005460C  38 63 88 E0 */	addi r3, r3, l_shadowProjMat@l
/* 80054610  38 80 00 40 */	li r4, 0x40
/* 80054614  48 30 B8 DD */	bl GXCallDisplayList
/* 80054618  38 60 00 00 */	li r3, 0
/* 8005461C  38 80 00 00 */	li r4, 0
/* 80054620  38 A0 00 00 */	li r5, 0
/* 80054624  38 C0 00 FF */	li r6, 0xff
/* 80054628  48 30 B0 CD */	bl GXSetTevOrder
/* 8005462C  48 30 6F 61 */	bl GXClearVtxDesc
/* 80054630  38 60 00 09 */	li r3, 9
/* 80054634  38 80 00 01 */	li r4, 1
/* 80054638  48 30 68 81 */	bl GXSetVtxDesc
/* 8005463C  38 60 00 00 */	li r3, 0
/* 80054640  38 80 00 09 */	li r4, 9
/* 80054644  38 A0 00 01 */	li r5, 1
/* 80054648  38 C0 00 04 */	li r6, 4
/* 8005464C  38 E0 00 00 */	li r7, 0
/* 80054650  48 30 6F 75 */	bl GXSetVtxAttrFmt
/* 80054654  38 60 00 00 */	li r3, 0
/* 80054658  48 30 BC 95 */	bl GXSetCurrentMtx
/* 8005465C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80054660  38 80 00 1E */	li r4, 0x1e
/* 80054664  38 A0 00 00 */	li r5, 0
/* 80054668  48 30 BC B9 */	bl GXLoadTexMtxImm
/* 8005466C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80054670  4B FF FD 45 */	bl draw__18dDlst_shadowPoly_cFv
/* 80054674  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80054678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005467C  7C 08 03 A6 */	mtlr r0
/* 80054680  38 21 00 20 */	addi r1, r1, 0x20
/* 80054684  4E 80 00 20 */	blr 
