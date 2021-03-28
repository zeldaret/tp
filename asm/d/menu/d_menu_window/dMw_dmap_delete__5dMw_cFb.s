lbl_801FC46C:
/* 801FC46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FC470  7C 08 02 A6 */	mflr r0
/* 801FC474  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FC478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FC47C  7C 7F 1B 78 */	mr r31, r3
/* 801FC480  80 63 01 18 */	lwz r3, 0x118(r3)
/* 801FC484  28 03 00 00 */	cmplwi r3, 0
/* 801FC488  41 82 00 4C */	beq lbl_801FC4D4
/* 801FC48C  4B FC 2F 85 */	bl isSync__12dMenu_Dmap_cFv
/* 801FC490  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FC494  40 82 00 0C */	bne lbl_801FC4A0
/* 801FC498  38 60 00 00 */	li r3, 0
/* 801FC49C  48 00 00 70 */	b lbl_801FC50C
lbl_801FC4A0:
/* 801FC4A0  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FC4A4  88 03 01 7F */	lbz r0, 0x17f(r3)
/* 801FC4A8  98 1F 01 4C */	stb r0, 0x14c(r31)
/* 801FC4AC  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 801FC4B0  28 03 00 00 */	cmplwi r3, 0
/* 801FC4B4  41 82 00 18 */	beq lbl_801FC4CC
/* 801FC4B8  38 80 00 01 */	li r4, 1
/* 801FC4BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC4C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801FC4C4  7D 89 03 A6 */	mtctr r12
/* 801FC4C8  4E 80 04 21 */	bctrl 
lbl_801FC4CC:
/* 801FC4CC  38 00 00 00 */	li r0, 0
/* 801FC4D0  90 1F 01 18 */	stw r0, 0x118(r31)
lbl_801FC4D4:
/* 801FC4D4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FC4D8  28 03 00 00 */	cmplwi r3, 0
/* 801FC4DC  41 82 00 24 */	beq lbl_801FC500
/* 801FC4E0  41 82 00 18 */	beq lbl_801FC4F8
/* 801FC4E4  38 80 00 01 */	li r4, 1
/* 801FC4E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801FC4EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FC4F0  7D 89 03 A6 */	mtctr r12
/* 801FC4F4  4E 80 04 21 */	bctrl 
lbl_801FC4F8:
/* 801FC4F8  38 00 00 00 */	li r0, 0
/* 801FC4FC  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FC500:
/* 801FC500  7F E3 FB 78 */	mr r3, r31
/* 801FC504  48 00 0B D1 */	bl checkMemSize__5dMw_cFv
/* 801FC508  38 60 00 01 */	li r3, 1
lbl_801FC50C:
/* 801FC50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FC510  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FC514  7C 08 03 A6 */	mtlr r0
/* 801FC518  38 21 00 10 */	addi r1, r1, 0x10
/* 801FC51C  4E 80 00 20 */	blr 
