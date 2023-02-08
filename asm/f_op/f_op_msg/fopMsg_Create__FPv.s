lbl_8001F588:
/* 8001F588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F58C  7C 08 02 A6 */	mflr r0
/* 8001F590  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F598  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F59C  7C 7F 1B 78 */	mr r31, r3
/* 8001F5A0  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8001F5A4  7C 00 07 75 */	extsb. r0, r0
/* 8001F5A8  40 82 00 70 */	bne lbl_8001F618
/* 8001F5AC  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 8001F5B0  38 6D 87 70 */	la r3, fopMsg_MSG_TYPE(r13) /* 80450CF0-_SDA_BASE_ */
/* 8001F5B4  48 00 10 A9 */	bl fpcBs_MakeOfType__FPi
/* 8001F5B8  90 7F 00 C0 */	stw r3, 0xc0(r31)
/* 8001F5BC  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 8001F5C0  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 8001F5C4  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001F5C8  7F E4 FB 78 */	mr r4, r31
/* 8001F5CC  48 00 0F 29 */	bl fopDwTg_Init__FP16create_tag_classPv
/* 8001F5D0  7F E3 FB 78 */	mr r3, r31
/* 8001F5D4  48 00 04 71 */	bl fopMsgM_GetAppend__FPv
/* 8001F5D8  28 03 00 00 */	cmplwi r3, 0
/* 8001F5DC  41 82 00 3C */	beq lbl_8001F618
/* 8001F5E0  80 03 00 00 */	lwz r0, 0(r3)
/* 8001F5E4  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 8001F5E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8001F5EC  D0 1F 00 E0 */	stfs f0, 0xe0(r31)
/* 8001F5F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 8001F5F4  D0 1F 00 E4 */	stfs f0, 0xe4(r31)
/* 8001F5F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8001F5FC  D0 1F 00 E8 */	stfs f0, 0xe8(r31)
/* 8001F600  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8001F604  90 1F 00 EC */	stw r0, 0xec(r31)
/* 8001F608  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8001F60C  90 1F 00 F0 */	stw r0, 0xf0(r31)
/* 8001F610  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8001F614  90 1F 00 F4 */	stw r0, 0xf4(r31)
lbl_8001F618:
/* 8001F618  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 8001F61C  7F E4 FB 78 */	mr r4, r31
/* 8001F620  48 00 2E AD */	bl fpcMtd_Create__FP20process_method_classPv
/* 8001F624  7C 7E 1B 78 */	mr r30, r3
/* 8001F628  2C 1E 00 04 */	cmpwi r30, 4
/* 8001F62C  40 82 00 18 */	bne lbl_8001F644
/* 8001F630  7F E3 FB 78 */	mr r3, r31
/* 8001F634  48 00 23 CD */	bl fpcLf_GetPriority__FPC14leafdraw_class
/* 8001F638  7C 64 07 34 */	extsh r4, r3
/* 8001F63C  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 8001F640  48 00 0E 6D */	bl fopDwTg_ToDrawQ__FP16create_tag_classi
lbl_8001F644:
/* 8001F644  7F C3 F3 78 */	mr r3, r30
/* 8001F648  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F64C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F654  7C 08 03 A6 */	mtlr r0
/* 8001F658  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F65C  4E 80 00 20 */	blr 
