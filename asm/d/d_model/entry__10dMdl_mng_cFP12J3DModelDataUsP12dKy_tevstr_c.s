lbl_8009C724:
/* 8009C724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C728  7C 08 02 A6 */	mflr r0
/* 8009C72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C730  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C734  48 2C 5A A1 */	bl _savegpr_27
/* 8009C738  7C 7B 1B 78 */	mr r27, r3
/* 8009C73C  7C 9C 23 78 */	mr r28, r4
/* 8009C740  7C BD 2B 78 */	mr r29, r5
/* 8009C744  7C DE 33 78 */	mr r30, r6
/* 8009C748  4B FF FF 95 */	bl search__10dMdl_mng_cFP12J3DModelDataUsP12dKy_tevstr_c
/* 8009C74C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8009C750  40 82 00 40 */	bne lbl_8009C790
/* 8009C754  88 1B 00 80 */	lbz r0, 0x80(r27)
/* 8009C758  28 00 00 04 */	cmplwi r0, 4
/* 8009C75C  41 80 00 0C */	blt lbl_8009C768
/* 8009C760  38 60 00 00 */	li r3, 0
/* 8009C764  48 00 00 30 */	b lbl_8009C794
lbl_8009C768:
/* 8009C768  54 00 2C F4 */	rlwinm r0, r0, 5, 0x13, 0x1a
/* 8009C76C  7F FB 02 14 */	add r31, r27, r0
/* 8009C770  7F E3 FB 78 */	mr r3, r31
/* 8009C774  7F 84 E3 78 */	mr r4, r28
/* 8009C778  7F A5 EB 78 */	mr r5, r29
/* 8009C77C  7F C6 F3 78 */	mr r6, r30
/* 8009C780  4B FF FE D1 */	bl create__6dMdl_cFP12J3DModelDataUsP12dKy_tevstr_c
/* 8009C784  88 7B 00 80 */	lbz r3, 0x80(r27)
/* 8009C788  38 03 00 01 */	addi r0, r3, 1
/* 8009C78C  98 1B 00 80 */	stb r0, 0x80(r27)
lbl_8009C790:
/* 8009C790  7F E3 FB 78 */	mr r3, r31
lbl_8009C794:
/* 8009C794  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C798  48 2C 5A 89 */	bl _restgpr_27
/* 8009C79C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009C7A0  7C 08 03 A6 */	mtlr r0
/* 8009C7A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8009C7A8  4E 80 00 20 */	blr 
