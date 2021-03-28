lbl_802DF48C:
/* 802DF48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF490  7C 08 02 A6 */	mflr r0
/* 802DF494  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF498  38 60 00 01 */	li r3, 1
/* 802DF49C  48 07 E6 95 */	bl GXSetNumChans
/* 802DF4A0  38 60 00 01 */	li r3, 1
/* 802DF4A4  48 08 03 ED */	bl GXSetNumTevStages
/* 802DF4A8  38 60 00 01 */	li r3, 1
/* 802DF4AC  48 07 C9 51 */	bl GXSetNumTexGens
/* 802DF4B0  38 60 00 00 */	li r3, 0
/* 802DF4B4  38 80 00 00 */	li r4, 0
/* 802DF4B8  38 A0 00 00 */	li r5, 0
/* 802DF4BC  38 C0 00 04 */	li r6, 4
/* 802DF4C0  48 08 02 35 */	bl GXSetTevOrder
/* 802DF4C4  38 60 00 04 */	li r3, 4
/* 802DF4C8  38 80 00 00 */	li r4, 0
/* 802DF4CC  38 A0 00 00 */	li r5, 0
/* 802DF4D0  38 C0 00 01 */	li r6, 1
/* 802DF4D4  38 E0 00 00 */	li r7, 0
/* 802DF4D8  39 00 00 00 */	li r8, 0
/* 802DF4DC  39 20 00 02 */	li r9, 2
/* 802DF4E0  48 07 E6 8D */	bl GXSetChanCtrl
/* 802DF4E4  38 60 00 00 */	li r3, 0
/* 802DF4E8  38 80 00 00 */	li r4, 0
/* 802DF4EC  48 07 FC AD */	bl GXSetTevOp
/* 802DF4F0  38 60 00 01 */	li r3, 1
/* 802DF4F4  38 80 00 04 */	li r4, 4
/* 802DF4F8  38 A0 00 05 */	li r5, 5
/* 802DF4FC  38 C0 00 0F */	li r6, 0xf
/* 802DF500  48 08 06 F1 */	bl GXSetBlendMode
/* 802DF504  38 60 00 00 */	li r3, 0
/* 802DF508  38 80 00 09 */	li r4, 9
/* 802DF50C  38 A0 00 01 */	li r5, 1
/* 802DF510  38 C0 00 03 */	li r6, 3
/* 802DF514  38 E0 00 00 */	li r7, 0
/* 802DF518  48 07 C0 AD */	bl GXSetVtxAttrFmt
/* 802DF51C  38 60 00 00 */	li r3, 0
/* 802DF520  38 80 00 0B */	li r4, 0xb
/* 802DF524  38 A0 00 01 */	li r5, 1
/* 802DF528  38 C0 00 05 */	li r6, 5
/* 802DF52C  38 E0 00 00 */	li r7, 0
/* 802DF530  48 07 C0 95 */	bl GXSetVtxAttrFmt
/* 802DF534  38 60 00 00 */	li r3, 0
/* 802DF538  38 80 00 0D */	li r4, 0xd
/* 802DF53C  38 A0 00 01 */	li r5, 1
/* 802DF540  38 C0 00 02 */	li r6, 2
/* 802DF544  38 E0 00 0F */	li r7, 0xf
/* 802DF548  48 07 C0 7D */	bl GXSetVtxAttrFmt
/* 802DF54C  48 07 C0 41 */	bl GXClearVtxDesc
/* 802DF550  38 60 00 09 */	li r3, 9
/* 802DF554  38 80 00 01 */	li r4, 1
/* 802DF558  48 07 B9 61 */	bl GXSetVtxDesc
/* 802DF55C  38 60 00 0B */	li r3, 0xb
/* 802DF560  38 80 00 01 */	li r4, 1
/* 802DF564  48 07 B9 55 */	bl GXSetVtxDesc
/* 802DF568  38 60 00 0D */	li r3, 0xd
/* 802DF56C  38 80 00 01 */	li r4, 1
/* 802DF570  48 07 B9 49 */	bl GXSetVtxDesc
/* 802DF574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF578  7C 08 03 A6 */	mtlr r0
/* 802DF57C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF580  4E 80 00 20 */	blr 
