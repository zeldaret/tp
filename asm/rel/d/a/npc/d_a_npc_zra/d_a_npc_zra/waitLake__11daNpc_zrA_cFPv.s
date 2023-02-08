lbl_80B80228:
/* 80B80228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B8022C  7C 08 02 A6 */	mflr r0
/* 80B80230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B80234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B80238  7C 7F 1B 78 */	mr r31, r3
/* 80B8023C  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B80240  2C 00 00 02 */	cmpwi r0, 2
/* 80B80244  41 82 00 74 */	beq lbl_80B802B8
/* 80B80248  40 80 01 B8 */	bge lbl_80B80400
/* 80B8024C  2C 00 00 00 */	cmpwi r0, 0
/* 80B80250  41 82 00 0C */	beq lbl_80B8025C
/* 80B80254  48 00 01 AC */	b lbl_80B80400
/* 80B80258  48 00 01 A8 */	b lbl_80B80400
lbl_80B8025C:
/* 80B8025C  38 80 00 10 */	li r4, 0x10
/* 80B80260  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80264  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80268  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8026C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B80270  7D 89 03 A6 */	mtctr r12
/* 80B80274  4E 80 04 21 */	bctrl 
/* 80B80278  7F E3 FB 78 */	mr r3, r31
/* 80B8027C  38 80 00 0B */	li r4, 0xb
/* 80B80280  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B80284  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80288  38 A0 00 00 */	li r5, 0
/* 80B8028C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80290  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B80294  7D 89 03 A6 */	mtctr r12
/* 80B80298  4E 80 04 21 */	bctrl 
/* 80B8029C  7F E3 FB 78 */	mr r3, r31
/* 80B802A0  38 80 00 00 */	li r4, 0
/* 80B802A4  4B FF E4 51 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B802A8  38 00 00 00 */	li r0, 0
/* 80B802AC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B802B0  38 00 00 02 */	li r0, 2
/* 80B802B4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
lbl_80B802B8:
/* 80B802B8  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80B802BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B802C0  40 82 01 40 */	bne lbl_80B80400
/* 80B802C4  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80B802C8  28 00 00 00 */	cmplwi r0, 0
/* 80B802CC  40 82 01 34 */	bne lbl_80B80400
/* 80B802D0  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B802D4  4B 5D 04 19 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B802D8  28 03 00 00 */	cmplwi r3, 0
/* 80B802DC  41 82 00 20 */	beq lbl_80B802FC
/* 80B802E0  7F E3 FB 78 */	mr r3, r31
/* 80B802E4  4B FF E6 FD */	bl chkFindPlayer__11daNpc_zrA_cFv
/* 80B802E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B802EC  40 82 00 28 */	bne lbl_80B80314
/* 80B802F0  38 00 00 00 */	li r0, 0
/* 80B802F4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B802F8  48 00 00 1C */	b lbl_80B80314
lbl_80B802FC:
/* 80B802FC  7F E3 FB 78 */	mr r3, r31
/* 80B80300  4B FF E6 E1 */	bl chkFindPlayer__11daNpc_zrA_cFv
/* 80B80304  2C 03 00 00 */	cmpwi r3, 0
/* 80B80308  41 82 00 0C */	beq lbl_80B80314
/* 80B8030C  38 00 00 00 */	li r0, 0
/* 80B80310  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B80314:
/* 80B80314  38 7F 13 1C */	addi r3, r31, 0x131c
/* 80B80318  4B 5D 03 D5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B8031C  28 03 00 00 */	cmplwi r3, 0
/* 80B80320  41 82 00 58 */	beq lbl_80B80378
/* 80B80324  7F E3 FB 78 */	mr r3, r31
/* 80B80328  38 80 00 02 */	li r4, 2
/* 80B8032C  4B FF E3 C9 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B80330  7F E3 FB 78 */	mr r3, r31
/* 80B80334  38 80 00 14 */	li r4, 0x14
/* 80B80338  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8033C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80340  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80344  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B80348  7D 89 03 A6 */	mtctr r12
/* 80B8034C  4E 80 04 21 */	bctrl 
/* 80B80350  7F E3 FB 78 */	mr r3, r31
/* 80B80354  38 80 00 00 */	li r4, 0
/* 80B80358  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B8035C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B80360  38 A0 00 00 */	li r5, 0
/* 80B80364  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B80368  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8036C  7D 89 03 A6 */	mtctr r12
/* 80B80370  4E 80 04 21 */	bctrl 
/* 80B80374  48 00 00 8C */	b lbl_80B80400
lbl_80B80378:
/* 80B80378  7F E3 FB 78 */	mr r3, r31
/* 80B8037C  38 80 00 00 */	li r4, 0
/* 80B80380  4B FF E3 75 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B80384  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B80388  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B8038C  7C 04 00 00 */	cmpw r4, r0
/* 80B80390  41 82 00 2C */	beq lbl_80B803BC
/* 80B80394  7F E3 FB 78 */	mr r3, r31
/* 80B80398  38 A0 00 14 */	li r5, 0x14
/* 80B8039C  38 C0 00 1C */	li r6, 0x1c
/* 80B803A0  38 E0 00 0F */	li r7, 0xf
/* 80B803A4  4B 5D 3D 01 */	bl step__8daNpcF_cFsiii
/* 80B803A8  2C 03 00 00 */	cmpwi r3, 0
/* 80B803AC  41 82 00 54 */	beq lbl_80B80400
/* 80B803B0  38 00 00 00 */	li r0, 0
/* 80B803B4  B0 1F 14 E6 */	sth r0, 0x14e6(r31)
/* 80B803B8  48 00 00 48 */	b lbl_80B80400
lbl_80B803BC:
/* 80B803BC  7F E3 FB 78 */	mr r3, r31
/* 80B803C0  38 80 00 10 */	li r4, 0x10
/* 80B803C4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B803C8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B803CC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B803D0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B803D4  7D 89 03 A6 */	mtctr r12
/* 80B803D8  4E 80 04 21 */	bctrl 
/* 80B803DC  7F E3 FB 78 */	mr r3, r31
/* 80B803E0  38 80 00 0B */	li r4, 0xb
/* 80B803E4  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B803E8  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B803EC  38 A0 00 00 */	li r5, 0
/* 80B803F0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B803F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B803F8  7D 89 03 A6 */	mtctr r12
/* 80B803FC  4E 80 04 21 */	bctrl 
lbl_80B80400:
/* 80B80400  38 60 00 01 */	li r3, 1
/* 80B80404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B80408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B8040C  7C 08 03 A6 */	mtlr r0
/* 80B80410  38 21 00 10 */	addi r1, r1, 0x10
/* 80B80414  4E 80 00 20 */	blr 
