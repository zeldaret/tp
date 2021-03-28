lbl_809CE1F8:
/* 809CE1F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CE1FC  7C 08 02 A6 */	mflr r0
/* 809CE200  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CE204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CE208  7C 7F 1B 78 */	mr r31, r3
/* 809CE20C  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CE210  2C 00 00 02 */	cmpwi r0, 2
/* 809CE214  41 82 00 CC */	beq lbl_809CE2E0
/* 809CE218  40 80 01 78 */	bge lbl_809CE390
/* 809CE21C  2C 00 00 00 */	cmpwi r0, 0
/* 809CE220  41 82 00 0C */	beq lbl_809CE22C
/* 809CE224  48 00 01 6C */	b lbl_809CE390
/* 809CE228  48 00 01 68 */	b lbl_809CE390
lbl_809CE22C:
/* 809CE22C  88 1F 0E 50 */	lbz r0, 0xe50(r31)
/* 809CE230  28 00 00 00 */	cmplwi r0, 0
/* 809CE234  41 82 00 50 */	beq lbl_809CE284
/* 809CE238  38 80 00 0D */	li r4, 0xd
/* 809CE23C  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE240  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE244  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE248  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE24C  7D 89 03 A6 */	mtctr r12
/* 809CE250  4E 80 04 21 */	bctrl 
/* 809CE254  7F E3 FB 78 */	mr r3, r31
/* 809CE258  38 80 00 07 */	li r4, 7
/* 809CE25C  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE260  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE264  38 A0 00 00 */	li r5, 0
/* 809CE268  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE26C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE270  7D 89 03 A6 */	mtctr r12
/* 809CE274  4E 80 04 21 */	bctrl 
/* 809CE278  38 00 00 01 */	li r0, 1
/* 809CE27C  98 1F 09 EA */	stb r0, 0x9ea(r31)
/* 809CE280  48 00 00 44 */	b lbl_809CE2C4
lbl_809CE284:
/* 809CE284  38 80 00 0E */	li r4, 0xe
/* 809CE288  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE28C  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE290  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE294  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE298  7D 89 03 A6 */	mtctr r12
/* 809CE29C  4E 80 04 21 */	bctrl 
/* 809CE2A0  7F E3 FB 78 */	mr r3, r31
/* 809CE2A4  38 80 00 00 */	li r4, 0
/* 809CE2A8  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE2AC  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE2B0  38 A0 00 00 */	li r5, 0
/* 809CE2B4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE2B8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE2BC  7D 89 03 A6 */	mtctr r12
/* 809CE2C0  4E 80 04 21 */	bctrl 
lbl_809CE2C4:
/* 809CE2C4  7F E3 FB 78 */	mr r3, r31
/* 809CE2C8  38 80 00 00 */	li r4, 0
/* 809CE2CC  4B FF FA 85 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE2D0  38 00 00 00 */	li r0, 0
/* 809CE2D4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE2D8  38 00 00 02 */	li r0, 2
/* 809CE2DC  B0 1F 0E 46 */	sth r0, 0xe46(r31)
lbl_809CE2E0:
/* 809CE2E0  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809CE2E4  28 00 00 00 */	cmplwi r0, 0
/* 809CE2E8  40 82 00 A8 */	bne lbl_809CE390
/* 809CE2EC  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE2F0  4B 78 23 FC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE2F4  28 03 00 00 */	cmplwi r3, 0
/* 809CE2F8  41 82 00 20 */	beq lbl_809CE318
/* 809CE2FC  7F E3 FB 78 */	mr r3, r31
/* 809CE300  4B FF FC FD */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE304  2C 03 00 00 */	cmpwi r3, 0
/* 809CE308  40 82 00 28 */	bne lbl_809CE330
/* 809CE30C  38 00 00 00 */	li r0, 0
/* 809CE310  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE314  48 00 00 1C */	b lbl_809CE330
lbl_809CE318:
/* 809CE318  7F E3 FB 78 */	mr r3, r31
/* 809CE31C  4B FF FC E1 */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE320  2C 03 00 00 */	cmpwi r3, 0
/* 809CE324  41 82 00 0C */	beq lbl_809CE330
/* 809CE328  38 00 00 00 */	li r0, 0
/* 809CE32C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809CE330:
/* 809CE330  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE334  4B 78 23 B8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE338  28 03 00 00 */	cmplwi r3, 0
/* 809CE33C  41 82 00 14 */	beq lbl_809CE350
/* 809CE340  7F E3 FB 78 */	mr r3, r31
/* 809CE344  38 80 00 02 */	li r4, 2
/* 809CE348  4B FF FA 09 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE34C  48 00 00 44 */	b lbl_809CE390
lbl_809CE350:
/* 809CE350  7F E3 FB 78 */	mr r3, r31
/* 809CE354  38 80 00 00 */	li r4, 0
/* 809CE358  4B FF F9 F9 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE35C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809CE360  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809CE364  7C 04 00 00 */	cmpw r4, r0
/* 809CE368  41 82 00 28 */	beq lbl_809CE390
/* 809CE36C  7F E3 FB 78 */	mr r3, r31
/* 809CE370  38 A0 00 0E */	li r5, 0xe
/* 809CE374  38 C0 00 08 */	li r6, 8
/* 809CE378  38 E0 00 0F */	li r7, 0xf
/* 809CE37C  4B 78 5D 28 */	b step__8daNpcF_cFsiii
/* 809CE380  2C 03 00 00 */	cmpwi r3, 0
/* 809CE384  41 82 00 0C */	beq lbl_809CE390
/* 809CE388  38 00 00 00 */	li r0, 0
/* 809CE38C  B0 1F 0E 46 */	sth r0, 0xe46(r31)
lbl_809CE390:
/* 809CE390  38 60 00 01 */	li r3, 1
/* 809CE394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CE398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CE39C  7C 08 03 A6 */	mtlr r0
/* 809CE3A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CE3A4  4E 80 00 20 */	blr 
