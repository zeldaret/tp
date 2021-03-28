lbl_80CDA404:
/* 80CDA404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA408  7C 08 02 A6 */	mflr r0
/* 80CDA40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA414  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDA418  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDA41C  7C 9F 23 78 */	mr r31, r4
/* 80CDA420  41 82 00 4C */	beq lbl_80CDA46C
/* 80CDA424  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha
/* 80CDA428  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l
/* 80CDA42C  90 1E 00 00 */	stw r0, 0(r30)
/* 80CDA430  41 82 00 2C */	beq lbl_80CDA45C
/* 80CDA434  3C 80 80 CE */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80CDA438  38 04 B9 FC */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80CDA43C  90 1E 00 00 */	stw r0, 0(r30)
/* 80CDA440  81 83 00 00 */	lwz r12, 0(r3)
/* 80CDA444  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CDA448  7D 89 03 A6 */	mtctr r12
/* 80CDA44C  4E 80 04 21 */	bctrl 
/* 80CDA450  7F C3 F3 78 */	mr r3, r30
/* 80CDA454  38 80 00 00 */	li r4, 0
/* 80CDA458  4B 5A 42 4C */	b __dt__18JPAEmitterCallBackFv
lbl_80CDA45C:
/* 80CDA45C  7F E0 07 35 */	extsh. r0, r31
/* 80CDA460  40 81 00 0C */	ble lbl_80CDA46C
/* 80CDA464  7F C3 F3 78 */	mr r3, r30
/* 80CDA468  4B 5F 48 D4 */	b __dl__FPv
lbl_80CDA46C:
/* 80CDA46C  7F C3 F3 78 */	mr r3, r30
/* 80CDA470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA474  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDA478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA47C  7C 08 03 A6 */	mtlr r0
/* 80CDA480  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA484  4E 80 00 20 */	blr 
