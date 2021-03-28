lbl_8048B6D4:
/* 8048B6D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048B6D8  7C 08 02 A6 */	mflr r0
/* 8048B6DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048B6E0  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 8048B6E4  7C 05 07 74 */	extsb r5, r0
/* 8048B6E8  3C 80 80 45 */	lis r4, struct_80450D64+0x0@ha
/* 8048B6EC  88 04 0D 64 */	lbz r0, struct_80450D64+0x0@l(r4)
/* 8048B6F0  7C 00 07 74 */	extsb r0, r0
/* 8048B6F4  7C 05 00 00 */	cmpw r5, r0
/* 8048B6F8  41 82 00 0C */	beq lbl_8048B704
/* 8048B6FC  38 60 00 00 */	li r3, 0
/* 8048B700  48 00 00 74 */	b lbl_8048B774
lbl_8048B704:
/* 8048B704  88 03 05 72 */	lbz r0, 0x572(r3)
/* 8048B708  2C 00 00 04 */	cmpwi r0, 4
/* 8048B70C  41 82 00 48 */	beq lbl_8048B754
/* 8048B710  40 80 00 1C */	bge lbl_8048B72C
/* 8048B714  2C 00 00 02 */	cmpwi r0, 2
/* 8048B718  41 82 00 2C */	beq lbl_8048B744
/* 8048B71C  40 80 00 30 */	bge lbl_8048B74C
/* 8048B720  2C 00 00 01 */	cmpwi r0, 1
/* 8048B724  40 80 00 18 */	bge lbl_8048B73C
/* 8048B728  48 00 00 44 */	b lbl_8048B76C
lbl_8048B72C:
/* 8048B72C  2C 00 00 06 */	cmpwi r0, 6
/* 8048B730  41 82 00 34 */	beq lbl_8048B764
/* 8048B734  40 80 00 38 */	bge lbl_8048B76C
/* 8048B738  48 00 00 24 */	b lbl_8048B75C
lbl_8048B73C:
/* 8048B73C  4B FF FE 8D */	bl actionArrival__13daTag_Event_cFv
/* 8048B740  48 00 00 30 */	b lbl_8048B770
lbl_8048B744:
/* 8048B744  4B FF FD D1 */	bl actionHunt__13daTag_Event_cFv
/* 8048B748  48 00 00 28 */	b lbl_8048B770
lbl_8048B74C:
/* 8048B74C  4B FF FE B1 */	bl actionHunt2__13daTag_Event_cFv
/* 8048B750  48 00 00 20 */	b lbl_8048B770
lbl_8048B754:
/* 8048B754  4B FF FB 15 */	bl actionReady__13daTag_Event_cFv
/* 8048B758  48 00 00 18 */	b lbl_8048B770
lbl_8048B75C:
/* 8048B75C  4B FF F9 89 */	bl actionNext__13daTag_Event_cFv
/* 8048B760  48 00 00 10 */	b lbl_8048B770
lbl_8048B764:
/* 8048B764  4B FF FA 4D */	bl actionEvent__13daTag_Event_cFv
/* 8048B768  48 00 00 08 */	b lbl_8048B770
lbl_8048B76C:
/* 8048B76C  4B FF FE 89 */	bl actionWait__13daTag_Event_cFv
lbl_8048B770:
/* 8048B770  38 60 00 01 */	li r3, 1
lbl_8048B774:
/* 8048B774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B778  7C 08 03 A6 */	mtlr r0
/* 8048B77C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B780  4E 80 00 20 */	blr 
