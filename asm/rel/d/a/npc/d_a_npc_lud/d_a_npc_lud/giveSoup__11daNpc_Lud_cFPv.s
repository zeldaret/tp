lbl_80A6E6EC:
/* 80A6E6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6E6F0  7C 08 02 A6 */	mflr r0
/* 80A6E6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6E6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6E6FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6E700  7C 7F 1B 78 */	mr r31, r3
/* 80A6E704  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80A6E708  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E70C  41 82 00 80 */	beq lbl_80A6E78C
/* 80A6E710  40 80 00 C0 */	bge lbl_80A6E7D0
/* 80A6E714  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E718  40 80 00 0C */	bge lbl_80A6E724
/* 80A6E71C  48 00 00 B4 */	b lbl_80A6E7D0
/* 80A6E720  48 00 00 B0 */	b lbl_80A6E7D0
lbl_80A6E724:
/* 80A6E724  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80A6E728  2C 00 00 02 */	cmpwi r0, 2
/* 80A6E72C  41 82 00 28 */	beq lbl_80A6E754
/* 80A6E730  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80A6E734  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6E738  4B 6D 71 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E73C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80A6E740  38 00 00 02 */	li r0, 2
/* 80A6E744  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80A6E748  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E74C  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E750  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80A6E754:
/* 80A6E754  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80A6E758  2C 00 00 04 */	cmpwi r0, 4
/* 80A6E75C  41 82 00 28 */	beq lbl_80A6E784
/* 80A6E760  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80A6E764  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6E768  4B 6D 71 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6E76C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80A6E770  38 00 00 04 */	li r0, 4
/* 80A6E774  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80A6E778  3C 60 80 A7 */	lis r3, lit_4680@ha
/* 80A6E77C  C0 03 FE 60 */	lfs f0, lit_4680@l(r3)
/* 80A6E780  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80A6E784:
/* 80A6E784  38 00 00 02 */	li r0, 2
/* 80A6E788  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80A6E78C:
/* 80A6E78C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80A6E790  2C 00 00 00 */	cmpwi r0, 0
/* 80A6E794  41 82 00 28 */	beq lbl_80A6E7BC
/* 80A6E798  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A6E79C  4B 6D 6F 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6E7A0  38 00 00 00 */	li r0, 0
/* 80A6E7A4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A6E7A8  3C 60 80 A7 */	lis r3, lit_4218@ha
/* 80A6E7AC  C0 03 FE 44 */	lfs f0, lit_4218@l(r3)
/* 80A6E7B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80A6E7B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E7B8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80A6E7BC:
/* 80A6E7BC  38 00 00 00 */	li r0, 0
/* 80A6E7C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80A6E7C4  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80A6E7C8  60 00 00 04 */	ori r0, r0, 4
/* 80A6E7CC  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_80A6E7D0:
/* 80A6E7D0  38 60 00 01 */	li r3, 1
/* 80A6E7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6E7D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6E7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6E7E0  7C 08 03 A6 */	mtlr r0
/* 80A6E7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6E7E8  4E 80 00 20 */	blr 
